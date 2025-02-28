// profileRepository.js
const prisma = require("../../utils/Prisma");

const findAllUsers = async () => {
  return prisma.users.findMany({
    select: {
      id: true,
      name: true,
      email: true,
      whatsapp: true,
      role: true,
      profile: {
        select: {
          photo: true,
        },
      },
    },
  });
};

const findUserById = async (userId) => {
  return prisma.users.findUnique({
    where: { id: userId },
    select: {
      id: true,
      name: true,
      email: true,
      whatsapp: true,
      role: true,
      status_login: true,
      lastLogin: true,
      profile: {
        select: {
          photo: true,
        },
      },
    },
  });
};

const findProfileByUserId = async (userId) => {
  return prisma.profiles.findUnique({
    where: { userId },
  });
};

const updateProfile = async (userId, { name, whatsapp, photo }) => {
  return prisma.profiles.update({
    where: { userId },
    data: { name, whatsapp, photo },
  });
};

const updateUser = async (userId, { name, whatsapp }) => {
  return prisma.users.update({
    where: { id: userId },
    data: { name, whatsapp },
  });
};

const createProfile = async (userId, { name, whatsapp, photo }) => {
  return prisma.profiles.create({
    data: {
      userId,
      name,
      whatsapp,
      photo,
    },
  });
};

const getAllReasons = async () => {
  return await prisma.deleteAccReason.findMany({});
};

const createReason = async (reason) => {
  return await prisma.deleteAccReason.create({
    data: { reason },
  });
};

const updateReason = async (reasonId, newReason) => {
  return await prisma.deleteAccReason.update({
    where: { reasonId },
    data: { reason: newReason },
  });
};

const deleteReason = async (reasonId) => {
  return await prisma.deleteAccReason.delete({
    where: { reasonId },
  });
};

// const deleteUserById = async (userId, email, alasan) => {
//   const user = await prisma.users.findUnique({ where: { id: userId, email } });
//   if (!user) throw new Error("User not found or email doesn't match");

//   await prisma.deletedUsers.create({
//     data: {
//       userId: user.id,
//       name: user.name,
//       email: user.email,
//       alasan,
//     },
//   });

//   return await prisma.users.delete({ where: { id: userId } });
// };

const deleteUserById = async (userId, email, alasan) => {
  // Cek apakah user ada dan email sesuai
  const user = await prisma.users.findUnique({ where: { id: userId, email } });
  if (!user) throw new Error("User not found or email doesn't match");

  // Jalankan transaksi Prisma untuk memastikan semua operasi berjalan atomik
  return await prisma.$transaction(async (prisma) => {
    // Simpan data user ke tabel deletedUsers sebelum dihapus
    await prisma.deletedUsers.create({
      data: {
        userId: user.id,
        name: user.name,
        email: user.email,
        alasan,
      },
    });

    // Hapus semua data terkait dari tabel anak
    await prisma.profiles.deleteMany({ where: { userId } });
    await prisma.grup.deleteMany({ where: { userId } });
    await prisma.peserta_Grup.deleteMany({ where: { userId } });
    await prisma.progress_perjalanan.deleteMany({ where: { userId } });
    await prisma.usersOnRiwayatGrup.deleteMany({ where: { userid: userId } });

    // Hapus user terakhir setelah semua data terkait dihapus
    return await prisma.users.delete({ where: { id: userId } });
  });
};


module.exports = {
  findAllUsers,
  findUserById,
  findProfileByUserId,
  updateProfile,
  updateUser,
  createProfile,
  getAllReasons,
  createReason,
  updateReason,
  deleteReason,
  deleteUserById,
};
