  // ProgressRepository.js
  const prisma = require("../../utils/Prisma");
  const moment = require('moment-timezone'); // Import moment-timezone
  const crypto = require("crypto");

  const findGrupById = async (grupid) => {
    return prisma.grup.findUnique({ where: { grupid } });
  };

  const findPerjalananById = async (perjalananid) => {
    return prisma.perjalanan.findUnique({ where: { perjalananid } });
  };

  const findOnlineParticipants = async (grupid) => {
    return prisma.peserta_Grup.findMany({
      where: {
        grupid,
        online: "1",
      },
    });
  };

  const createProgressTransaction = async (grupid, jenis_perjalanan, perjalananid, participants) => {
    return prisma.$transaction(async (prisma) => {
      // Gunakan moment-timezone untuk waktu mulai dalam zona waktu Arab
      const waktuMulai = moment().tz('Asia/Riyadh').toDate(); // Konversi ke zona waktu Arab

      // Cari perjalanan berdasarkan nama_perjalanan
      const perjalanan = await prisma.perjalanan.findFirst({
        where: { nama_perjalanan: jenis_perjalanan },
      });

      if (!perjalanan) {
        throw new Error("Perjalanan tidak ditemukan.");
      }

      // Cek apakah progress sudah ada
      const existingProgress = await prisma.progress.findFirst({
        where: {
          grupid,
          jenis_perjalanan,
        },
      });

      if (existingProgress && existingProgress.is_finished === true) {
        throw new Error("Progress ini sudah dihentikan sebelumnya dan tidak dapat diaktifkan lagi.");
      }

      if (existingProgress) {
        if (existingProgress.live === 1) {
          throw new Error("Progress sudah aktif, tidak bisa diaktifkan lagi.");
        }

        // Jika progress ada tapi belum selesai, update live jadi 1
        const updatedProgress = await prisma.progress.update({
          where: { progressid: existingProgress.progressid },
          data: { live: 1, waktu_mulai: waktuMulai, perjalananid: perjalanan.perjalananid },
        });

        return {
          msg: "Progress diperbarui ke status live",
          data: updatedProgress,
        };
      }

      // Buat progress baru
      const newProgress = await prisma.progress.create({
        data: {
          grupid,
          jenis_perjalanan,
          live: 1,
          status: true,
          is_finished: false,
          waktu_mulai: waktuMulai, // Simpan waktu dalam zona waktu Arab
          perjalananid: perjalanan.perjalananid,
        },
      });

      // Pastikan ada peserta online
      if (participants.length === 0) {
        throw new Error("Tidak ada peserta yang online.");
      }

      // Insert peserta ke progress_perjalanan
      await prisma.progress_perjalanan.create({
        data: {
          progress_perjalananid: crypto.randomUUID(),
          progressid: newProgress.progressid,
          grupid: grupid, // Simpan grupid ke dalam tabel Progress_perjalanan
          perjalananid: perjalanan.perjalananid,
          waktu_mulai: waktuMulai, // Simpan waktu dalam zona waktu Arab
          time_selesai: null,
          durasi_progress: 0,
        },
      });

      return {
        msg: "Progress berhasil dibuat dan peserta ditambahkan",
        data: newProgress,
      };
    });
  };

  const exitProgress = async (progressid) => {
    return prisma.$transaction(async (prisma) => {
      // Ambil data progress yang sedang dihentikan
      const progress = await prisma.progress.findUnique({
        where: { progressid },
        include: { grup: true, perjalanan: true },
      });

      if (!progress) {
        throw new Error("Progress tidak ditemukan.");
      }

      if (progress.live === 0) {
        throw new Error("Progress sudah dihentikan sebelumnya.");
      }

      // Gunakan zona waktu Mekah (Arab)
      const timeNow = moment().tz('Asia/Riyadh').toDate(); // Menggunakan moment-timezone untuk waktu sekarang
      const waktuMulai = progress.waktu_mulai
        ? moment(progress.waktu_mulai).tz('Asia/Riyadh').toDate() // Menggunakan moment-timezone untuk waktu mulai
        : moment().tz('Asia/Riyadh').toDate();

      const totalSeconds = Math.floor((timeNow - waktuMulai) / 1000);
      const minutes = Math.floor(totalSeconds / 60);
      const seconds = totalSeconds % 60;
      const formattedDuration = `${minutes}:${seconds.toString().padStart(2, "0")}`;

      // Ambil peserta dalam grup ini
      const participants = await prisma.peserta_Grup.findMany({
        where: { grupid: progress.grupid },
        select: { userId: true },
      });

      if (participants.length === 0) {
        throw new Error("Tidak ada peserta dalam grup ini.");
      }

      // Buat progress_perjalanan baru untuk setiap peserta
      const progressPerjalananData = participants.map((participant) => ({
        progress_perjalananid: crypto.randomUUID(),
        progressid,
        grupid: progress.grupid, // Simpan grupid
        userId: participant.userId,
        perjalananid: progress.perjalananid,
        waktu_mulai: waktuMulai,
        time_selesai: timeNow,
        durasi_progress: formattedDuration,
      }));

      await prisma.progress_perjalanan.createMany({
        data: progressPerjalananData,
      });

      // Update progress untuk menandai sesi selesai
      await prisma.progress.update({
        where: { progressid },
        data: { live: 0, is_finished: true },
      });

      return {
        msg: "Progress berhasil dihentikan dan perjalanan dicatat.",
        time_selesai: timeNow,
        durasi_progress: formattedDuration,
      };
    });
  };

  const getValidationProgress = async (progressid) => {
    return await prisma.progress.findUnique({
      where: { progressid },
      include: {
        progressDetails: true,
      },
    });
  };

  const getLiveProgress = async () => {
    return await prisma.progress.findMany({
      where: {
        live: 1,
        status: true,
      },
      select: {
        progressid: true,
        grupid: true,
        jenis_perjalanan: true,
        live: true,
        status: true,
        is_finished: true,
        perjalananid: true,
      },
    });
  };

  const updateProgressLiveStatus = async (progressid, live) => {
    return await prisma.progress.update({
      where: { progressid },
      data: { live: 0 },
    });
  };

  const updateProgressTimeSelesai = async (progressid, timeNow) => {
    return await prisma.$transaction(async (prisma) => {
      const progress = await prisma.progress.findUnique({
        where: { progressid },
        include: { progressDetails: true },
      });

      if (!progress) {
        throw new Error("Progress tidak ditemukan.");
      }

      const waktuMulai = progress.waktu_mulai || new Date();

      // Hitung durasi dalam detik
      const totalSeconds = Math.floor((timeNow - waktuMulai) / 1000);

      // Konversi durasi ke format MM:SS
      const minutes = Math.floor(totalSeconds / 60);
      const seconds = totalSeconds % 60;
      const formattedDuration = `${minutes}:${seconds.toString().padStart(2, "0")}`;

      await prisma.progress_perjalanan.updateMany({
        where: { progressid },
        data: {
          time_selesai: timeNow,
          durasi_progress: formattedDuration, // Update durasi_progress dalam format MM:SS
        },
      });

      return {
        msg: "Waktu selesai dan durasi_progress berhasil diupdate.",
        durasi_progress: formattedDuration,
      };
    });
  };

  const getUserProgressHistory = async (userId) => {
    return await prisma.progress_perjalanan.findMany({
      where: { userId },
      select: {
        userId: true,
        grupid: true,
        grup: {
          select: {
            nama_grup: true,
          },
        },
        perjalanan: {
          select: {
            nama_perjalanan: true,
          },
        },
        waktu_mulai: true,
        time_selesai: true,
        durasi_progress: true,
      },
      orderBy: {
        waktu_mulai: "desc", // Urutkan berdasarkan waktu_mulai secara descending
      },
    });
  };

  const getAllGrupByUserId = async (userId) => {
    try {
      // Ambil semua progress_perjalanan yang terkait dengan userId
      const userProgress = await prisma.progress_perjalanan.findMany({
        where: { userId },
        select: {
          grupid: true,
          grup: {
            select: {
              nama_grup: true,
            },
          },
        },
        distinct: ['grupid'], // Hanya ambil grup yang unik
      });

      // Format data sesuai dengan respons yang diharapkan
      const formattedData = userProgress.map((progress) => ({
        nama_grup: progress.grup.nama_grup,
        grupid: progress.grupid,
      }));

      return formattedData;
    } catch (err) {
      console.error("Error in getAllGrupByUserId Service:", err.message);
      throw new Error(err.message);
    }
  };

  module.exports = {
    findGrupById,
    findPerjalananById,
    findOnlineParticipants,
    getLiveProgress,
    exitProgress,
    getValidationProgress,
    updateProgressLiveStatus,
    updateProgressTimeSelesai,
    createProgressTransaction,
    getUserProgressHistory,
    getAllGrupByUserId,
  };