const { OAuth2Client } = require("google-auth-library");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const authRepository = require("../../repositories/Auth/AuthRepository");

const googleClient = new OAuth2Client(process.env.GOOGLE_CLIENT_ID);

class AuthService {
    async hashPassword(password) {
        const salt = await bcrypt.genSalt(10);
        return await bcrypt.hash(password, salt);
    }

    async comparePassword(password, hashedPassword) {
        return await bcrypt.compare(password, hashedPassword);
    }

    async createUserByAdmin({ name, email, password, whatsapp, role }) {
        // Cek apakah email sudah ada
        const existingUser = await authRepository.findByEmail(email);
        if (existingUser) {
            throw new Error("Akun sudah pernah didaftarkan");
        }

        // Hash password
        const hashedPassword = await this.hashPassword(password);

        // Buat pengguna baru
        const newUser = await authRepository.createUser({
            name,
            email,
            password: hashedPassword,
            whatsapp,
            role: role || "user", // Default role adalah 'user' jika tidak disediakan
            is_verified: true, // Admin membuat akun, langsung diverifikasi
        });

        // Buat profil untuk pengguna baru
        await authRepository.createUserProfile({
            name: newUser.name, // Menyimpan nama pengguna
            userId: newUser.id, // Menggunakan ID pengguna yang baru dibuat
            photo: `https://api.dicebear.com/8.x/identicon/svg?seed=${newUser.name}`,
            whatsapp: newUser.whatsapp, // Generasi URL foto
        });

        return { status: "success", message: "Pembuatan akun berhasil" };
    }

    async resetPasswordByEmail(email, newPassword) {
        const user = await authRepository.findByEmail(email);
        if (!user) {
            throw new Error("User not found");
        }

        if (newPassword.length < 6) {
            throw new Error("New password must be at least 6 characters long");
        }

        const hashedPassword = await this.hashPassword(newPassword);
        await authRepository.updatePassword(user.id, hashedPassword);

        return { message: "Password updated successfully" };
    }

    async verifyGoogleToken(idToken) {
        const ticket = await googleClient.verifyIdToken({
            idToken,
            audience: process.env.GOOGLE_CLIENT_ID,
        });

        return ticket.getPayload(); // Mengembalikan informasi user dari Google
    }

    async signInWithGoogle(idToken) {
        const payload = await this.verifyGoogleToken(idToken);
        const { sub, email, name, picture } = payload;

        let user = await authRepository.findByEmail(email);

        if (!user) {
            user = await authRepository.createUser({
                name,
                email,
                is_verified: true,
                googleId: sub,
                whatsapp: "",
                role: "user",
                createdAt: new Date(),
                updatedAt: new Date(),
                status_login: true,
            });
        }

        // 🔍 Cek apakah user sudah punya profile
        const existingProfile = await authRepository.findProfileByUserId(user.id);

        if (!existingProfile) {
            // 🚀 Jika belum ada profile, buat yang baru
            await authRepository.createUserProfile({
                userId: user.id,
                name: user.name,
                whatsapp: "",
                photo: picture, // Pakai foto dari Google
            });
        }

        const grup = user.groups?.length ? await authRepository.findRoomByGrupId(user.groups[0].grupid) : null;

        // Generate JWT Token
        const token = jwt.sign(
            {
                user: {
                    id: user.id,
                    role: user.role,
                    name: user.name,
                },
            },
            process.env.JWT_SECRET,
            { expiresIn: "30d" }
        );

        await authRepository.updateUserToken(user.id, token);

        return {
            status: "success",
            username: user.name,
            id: user.id,
            role: user.role,
            email: user.email,
            token,
            room: grup?.roomid || null,
            groups: user.groups || [],
            photo: user.profile ? user.profile.photo : null,
        };
    }

}

module.exports = new AuthService();
