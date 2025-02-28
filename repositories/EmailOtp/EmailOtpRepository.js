const prisma = require("../../utils/Prisma");

const findUserByEmail = async (email) => {
    const user = await prisma.users.findUnique({
        where: { email },
    });

    if (!user) {
        return { error: "Email tidak terdaftar" };
    }

    if (user.password === null) {
        return { error: "Silakan masuk menggunakan akun Google" };
    }

    return { user }; // Kembalikan user jika ditemukan dan memiliki password
};

module.exports = { findUserByEmail };
