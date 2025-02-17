// ProgressContreller.js 
const moment = require('moment-timezone'); // Import moment-timezone

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

const getUserProgressHistory = async (req, res) => {
  const { userId } = req.params;

  try {
    const result = await ProgressServices.getUserProgressHistory(userId);

    if (result.length === 0) {
      return res.status(404).json({ msg: "Tidak ada riwayat perjalanan untuk user ini." });
    }

    const groupedData = result.reduce((acc, item) => {
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

    const firstGroup = Object.values(groupedData)[0];

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

module.exports = {
  createProgress,
  getLiveProgress,
  exitProgress,
  getUserProgressHistory,
  getAllGrupByUserId,
};