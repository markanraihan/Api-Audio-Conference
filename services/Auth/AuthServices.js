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
            groups: user.groups || [],
            photo: user.profile ? user.profile.photo : null,
        };
    }

}

module.exports = new AuthService();
