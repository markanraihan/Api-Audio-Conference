// AuthRepository.js
const prisma = require ('../../utils/Prisma');

// const verifyToken = async (token) => {

// }

class AuthRepository {
    async findByEmail(email) {
        return await prisma.users.findUnique({
            where: { email },
            include: {
                groups: true,
                profile: true,
            },
        });
    }

    async updatePassword(userId, hashedPassword) {
        return await prisma.users.update({
            where: { id: userId },
            data: { password: hashedPassword },
        });
    }

    async createUser(data) {
        return await prisma.users.create({ data });
    }

    async findProfileByUserId(userId) {
        return await prisma.profiles.findUnique({
            where: { userId },
        });
    }

    async createUserProfile(data) {
        return await prisma.profiles.create({ data });
    }

    async updateUserToken(id, token) {
        return await prisma.users.update({
            where: { id },
            data: {
                currentToken: token,
                lastLogin: new Date(),
                status_login: true,
            },
        });
    }
}

module.exports = new AuthRepository();
