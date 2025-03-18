// EmailOtpRepository.js
const prisma = require("../../utils/Prisma");

const findUserByEmail = async (email, subject) => {
    const user = await prisma.users.findUnique({
        where: { email },
    });

    if (!user) {
        return { error: "Email tidak terdaftar" };
    }

    if (subject != 'Delete Account OTP') {
        if (user.password === null) {
            return { error: "Silakan masuk menggunakan akun Google" };
        }
    }

    return { user }; // Kembalikan user jika ditemukan dan memiliki password
};

const verifyUserByEmail = async (email) => {
    try {
        const updatedUser = await prisma.users.update({
            where: { email },
            data: { is_verified: true },
        });

        return { success: true, user: updatedUser };
    } catch (error) {
        return { error: "Gagal memperbarui status verifikasi" };
    }
};

module.exports = { findUserByEmail, verifyUserByEmail };