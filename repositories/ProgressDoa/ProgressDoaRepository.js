// ProgressDoaRepository.js
const prisma = require("../../utils/Prisma");

const ProgressDoaRepository = {
  // async createProgressDoa(data) {
  //   return await prisma.progress_Doa.create({ data });
  // },

  async createProgressDoa(data) {
    const existing = await prisma.progress_Doa.findFirst({
      where: {
        progressid: data.progressid,
        doaid: data.doaid,
      },
    });

    if (existing) {
      throw new Error("Progress doa sudah ada!");
    }

    return await prisma.progress_Doa.create({ data });
  },

  async updateProgressDoa(progress_doaid, data) {
    // Cek apakah progress_doa sudah selesai
    const existingProgressDoa = await prisma.progress_Doa.findUnique({
      where: { progress_doaid },
    });

    if (!existingProgressDoa) {
      throw new Error("Progress doa tidak ditemukan.");
    }

    if (existingProgressDoa.cek_doa) {
      throw new Error(
        "Progress doa sudah selesai dan tidak dapat diperbarui lagi."
      );
    }

    // Set waktu selesai
    const doaSelesai = new Date();
    const doaMulai = new Date(existingProgressDoa.doa_mulai);
    const totalSeconds = Math.floor((doaSelesai - doaMulai) / 1000);

    // Konversi durasi ke format MM:SS
    const minutes = Math.floor(totalSeconds / 60);
    const seconds = totalSeconds % 60;
    const formattedDuration = `${minutes}:${seconds.toString().padStart(2, "0")}`;

    return await prisma.progress_Doa.update({
      where: { progress_doaid },
      data: {
        doa_selesai: doaSelesai,
        durasi_doa: formattedDuration,
        cek_doa: true,
      },
    });
  },

  async getProgressDoaById(progress_doaid) {
    return await prisma.progress_Doa.findUnique({
      where: { progress_doaid },
    });
  },

  async getProgressDoaByProgressId(progressId) {
    return await prisma.progress_Doa.findMany({
      where: { progressid: progressId },
      select: {
        doaid: true,
        durasi_doa: true,
      },
    });
  },

  async getAllProgressDoa() {
    return await prisma.progress_Doa.findMany();
  },

  async getProgressDoaByPerjalananAndGroupId(perjalananid, grupid) {
    const result = await prisma.progress_Doa.findMany({
      where: {
        perjalananid: perjalananid,
        grupid: grupid,
      },
      include: {
        doa: {
          select: {
            judul_doa: true,
            doa_id: true,
          },
        },
        perjalanan: {
          select: {
            nama_perjalanan: true,
          },
        },
      },
    });

    // Format data sesuai kebutuhan
    if (result.length > 0) {
      const formattedData = {
        nama_perjalanan: result[0].perjalanan.nama_perjalanan,
        perjalananid: perjalananid,
        grupid: grupid,
        data: result.map((item) => ({
          progress_doaid: item.progress_doaid,
          judul_doa: item.doa.judul_doa,
          doaid: item.doa.doa_id,
          doa_mulai: item.doa_mulai,
          doa_selesai: item.doa_selesai,
          durasi_doa: item.durasi_doa,
          cek_doa: item.cek_doa,
        })),
      };

      return formattedData;
    }

    return null;
  },

  // Mendapatkan grupid berdasarkan userId
  async getUserProgressByUserId(userId) {
    return await prisma.progress_perjalanan.findFirst({
      where: { userId },
      select: {
        grupid: true,
      },
    });
  },

  async getStatusDoa(perjalananid, grupid, userId) {
    const progressList = await prisma.progress_perjalanan.findMany({
      where: {
        perjalananid: perjalananid,
        grupid: grupid,
        userId: userId,
      },
      select: {
        progressid: true,
      },
    });

    if (progressList.length === 0) {
      return { message: "Riwayat doa tidak ditemukan" };
    }

    const progressIds = progressList.map((p) => p.progressid);

    const statusDoa = await prisma.progress_Doa.findMany({
      where: { progressid: { in: progressIds } },
      select: {
        doaid: true,
        durasi_doa: true,
        cek_doa: true,
        doa: {
          select: {
            judul_doa: true,
            doa_urut: true,
          },
        },
      },
      orderBy: {
        doa: {
          doa_urut: "asc",
        },
      },
    });

    return statusDoa.map((doa) => ({
      doaid: doa.doaid,
      judul_doa: doa.doa.judul_doa,
      durasi_doa: doa.durasi_doa,
      cek_doa: doa.cek_doa,
    }));

    if (statusDoa.length === 0) {
      return { message: "Riwayat doa tidak ditemukan" };
    }

    return statusDoa;
  },
};

module.exports = ProgressDoaRepository;
