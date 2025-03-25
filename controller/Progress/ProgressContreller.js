// ProgressContreller.js
const moment = require('moment-timezone'); // Import moment-timezone
const prisma = require("../../utils/Prisma");
const ProgressServices = require("../../services/Progress/ProgressServices");

const createProgress = async (req, res) => {
  const { grupid, perjalananid } = req.body;
  try {
    const result = await ProgressServices.createProgress(grupid, perjalananid);

    // Format waktu_mulai ke zona waktu Arab sebelum mengirim respons
    if (result.data && result.data.waktu_mulai) {
      result.data.waktu_mulai = moment(result.data.waktu_mulai)
        .tz('Asia/Riyadh')
        .format('YYYY-MM-DD HH:mm:ss');
    }

    return res.status(result.status).json(result.data);
  } catch (err) {
    console.error("Error in createProgress Controller:", err.message);
    return res.status(500).send({ msg: "Server error", error: err.message });
  }
};

const exitProgress = async (req, res) => {
  const { progressid } = req.body;
  try {
    const result = await ProgressServices.exitProgress(progressid);
    res.status(200).json({ msg: "Progress berhasil dihentikan", data: result });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

const getLiveProgress = async (req, res) => {
  try {
    const progress = await ProgressServices.getLiveProgress();
    res.status(200).json({ msg: "Progress live ditemukan", data: progress });
  } catch (err) {
    res.status(500).json({ msg: err.message });
  }
};

const getUserProgressHistoryByToken = async (req, res) => {
  const { token } = req.headers;
  const { grupid } = req.params; // Ambil grupid dari params

  if (!grupid) {
    return res.status(400).json({ msg: "Grup ID diperlukan." });
  }

  try {
    const result = await ProgressServices.getUserProgressHistoryByToken(token);

    if (result.length === 0) {
      return res.status(404).json({ msg: "Tidak ada riwayat perjalanan untuk user ini." });
    }

    // Filter data berdasarkan grupid dari params
    const filteredData = result.filter((item) => item.grupid === grupid);

    if (filteredData.length === 0) {
      return res.status(404).json({ msg: "Tidak ada data untuk grup ini." });
    }

    // Grupkan data berdasarkan grupid
    const groupedData = filteredData.reduce((acc, item) => {
      const { grupid, grup, userId } = item;

      if (!acc[grupid]) {
        acc[grupid] = {
          userId: userId,
          nama_grup: grup.nama_grup,
          grupid: grupid,
          data: [],
        };
      }

      // Format waktu ke zona waktu Mekah (Arab) menggunakan moment-timezone
      const waktu_mulai = moment(item.waktu_mulai).tz('Asia/Riyadh').format('YYYY-MM-DD HH:mm:ss');
      const time_selesai = item.time_selesai
        ? moment(item.time_selesai).tz('Asia/Riyadh').format('YYYY-MM-DD HH:mm:ss')
        : null;

      acc[grupid].data.push({
        perjalanan: {
          nama_perjalanan: item.perjalanan.nama_perjalanan,
          waktu_mulai: waktu_mulai,
          time_selesai: time_selesai,
          durasi_progress: item.durasi_progress,
        },
      });

      return acc;
    }, {});

    const firstGroup = groupedData[grupid];

    return res.status(200).json({
      msg: "Riwayat perjalanan ditemukan",
      userId: firstGroup.userId,
      nama_grup: firstGroup.nama_grup,
      grupid: firstGroup.grupid,
      data: firstGroup.data,
    });
  } catch (err) {
    console.error("Error in getUserProgressHistory Controller:", err.message);
    return res.status(500).json({ msg: "Server error", error: err.message });
  }
};


const getAllGrupByUserId = async (req, res) => {
  const { userId } = req.params;

  try {
    const grups = await ProgressServices.getAllGrupByUserId(userId);
    res.status(200).json({ msg: "Grup ditemukan", data: grups });
  } catch (err) {
    res.status(500).json({ msg: err.message });
  }
};

const getAllGrupByToken = async (req, res) => {
  try {
    const { token } = req.headers;

    const grups = await ProgressServices.getAllGrupByToken(token);

    res.status(200).json({ msg: "Grup ditemukan", data: grups });
  } catch (err) {
    console.error("Error in getAllGrupByToken Controller:", err.message);
    res.status(500).send({ msg: "Server error", error: err.message });
  }
};

const trackLiveGroups = async (req, res) => {
  try {
    // 1. Verifikasi admin
    const admin = await prisma.users.findUnique({
      where: { id: req.user.id },
      select: { role: true }
    });

    if (!admin || admin.role !== 'admin') {
      return res.status(403).json({ 
        status: 'error',
        message: 'Akses ditolak. Hanya admin yang bisa melihat tracking grup' 
      });
    }

    // 2. Query data progress live dengan relasi lengkap
    const liveGroups = await prisma.progress.findMany({
      where: { live: 1 },
      include: {
        grup: {
          include: {
            user: {
              select: {
                name: true,
                role: true
              }
            }
          }
        },
        perjalanan: {
          select: {
            perjalananid: true,
            nama_perjalanan: true
          }
        },
        progressDetails: {
          include: {
            user: {
              include: {
                profile: {
                  select: {
                    photo: true
                  }
                }
              }
            }
          }
        }
      },
      orderBy: {
        waktu_mulai: 'asc' // Urutkan dari yang paling lama
      }
    });

    // 3. Handle jika tidak ada data
    if (liveGroups.length === 0) {
      return res.status(200).json({
        status: 'success',
        message: 'Tidak ada grup yang sedang berjalan',
        data: []
      });
    }

    // 4. Format response sesuai contoh
    const formattedResponse = liveGroups.map((progress) => ({
      progress_id: progress.progressid,
      jenis_perjalanan: progress.jenis_perjalanan,
      waktu_mulai: moment(progress.waktu_mulai).tz('Asia/Riyadh').format('YYYY-MM-DD HH:mm:ss'),
      grup: {
        id: progress.grupid,
        nama_grup: progress.grup.nama_grup,
        pembimbing: progress.grup.user.name,
        role_pembimbing: progress.grup.user.role,
        dibuat_pada: moment(progress.grup.created_at).tz('Asia/Riyadh').format('YYYY-MM-DD HH:mm:ss')
      },
      perjalanan: {
        id: progress.perjalanan.perjalananid,
        nama: progress.perjalanan.nama_perjalanan
      },
      peserta: progress.progressDetails.map((detail) => ({
        user_id: detail.userId,
        nama: detail.user.name,
        foto: detail.user.profile?.photo || null
      }))
    }));

    // 5. Kirim response
    return res.status(200).json({
      status: 'success',
      message: 'Data grup yang sedang berjalan ditemukan',
      data: formattedResponse
    });

  } catch (err) {
    console.error('Error in trackLiveGroups:', err);
    return res.status(500).json({
      status: 'error',
      message: 'Terjadi kesalahan server',
      error: err.message
    });
  }
};

module.exports = {
  createProgress,
  getLiveProgress,
  exitProgress,
  getUserProgressHistoryByToken,
  getAllGrupByUserId,
  getAllGrupByToken,
  trackLiveGroups,
};