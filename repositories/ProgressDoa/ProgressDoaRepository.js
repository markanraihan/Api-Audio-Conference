// ProgressDoaRepository.js
const prisma = require("../../utils/Prisma");

const ProgressDoaRepository = {
  async createProgressDoa(data) {
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
      throw new Error("Progress doa sudah selesai dan tidak dapat diperbarui lagi.");
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

  async getAllProgressDoa() {
    return await prisma.progress_Doa.findMany();
  },

  async getProgressDoaByUserIdAndGroupId(userId, perjalananid, grupid) {
    const result = await prisma.progress_Doa.findMany({
      where: {
        userId: userId,
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
        user: {
          select: {
            nama: true,
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
        name: result[0].user.nama,
        userId: userId,
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

};

module.exports = ProgressDoaRepository;