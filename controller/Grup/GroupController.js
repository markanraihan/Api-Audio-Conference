// GroupController.js
const prisma = require("../../utils/Prisma");
const { validationResult } = require("express-validator");
const jwt = require("jsonwebtoken");

const GrupController = {
  createGrup: async (req, res) => {
    const { nama_grup } = req.body;
    const { userId } = req.query;

    try {
      const { token } = req.headers; // Ambil token dari header
      const responseJWT = jwt.verify(token, process.env.JWT_SECRET); // Verifikasi JWT

      // Cari user berdasarkan ID dari token
      const user = await prisma.users.findUnique({
        where: { id: responseJWT.user.id },
        select: { name: true, role: true },
      });

      if (!user) {
        return res.status(404).json({ msg: "User not found" });
      }
      if (user.role !== "ustadz") {
        return res
          .status(401)
          .json({ msg: "Hanya ustadz/pembimbing yang bisa membuat grup" });
      }

      // Buat grup baru
      const newGrup = await prisma.grup.create({
        data: {
          nama_grup,
          created_by: user.name, // ID ustadz yang membuat grup
          open_user: 1,
          status: "open",
          userId: responseJWT.user.id, // Relasi ke tabel users
        },
      });

      // Buat tiga data progress untuk grup baru
      const progressData = [
        {
          grupid: newGrup.grupid,
          jenis_perjalanan: "Manasik",
          live: 0,
          status: false,
        },
        {
          grupid: newGrup.grupid,
          jenis_perjalanan: "Umroh",
          live: 0,
          status: false,
        },
        {
          grupid: newGrup.grupid,
          jenis_perjalanan: "Towaf Wada",
          live: 0,
          status: false,
        },
      ];

      await prisma.progress.createMany({ data: progressData });

      res.json({ status: "success", data: newGrup });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  createGrupAdmin: async (req, res) => {
    const { nama_grup } = req.body;

    try {
      const { token } = req.headers; // Ambil token dari header
      const responseJWT = jwt.verify(token, process.env.JWT_SECRET); // Verifikasi JWT

      // Cari user berdasarkan ID dari token
      const user = await prisma.users.findUnique({
        where: { id: responseJWT.user.id },
        select: { name: true, role: true },
      });

      if (!user) {
        return res.status(404).json({ msg: "User not found" });
      }
      if (user.role !== "admin") {
        return res
          .status(401)
          .json({ msg: "Hanya admin yang bisa membuat grup tanpa batasan." });
      }

      // Buat grup baru
      const newGrup = await prisma.grup.create({
        data: {
          nama_grup,
          created_by: user.name,
          open_user: 1,
          status: "open",
          userId: responseJWT.user.id,
        },
      });

      // Buat tiga data progress untuk grup baru
      const progressData = [
        {
          grupid: newGrup.grupid,
          jenis_perjalanan: "Manasik",
          live: 0,
          status: false,
        },
        {
          grupid: newGrup.grupid,
          jenis_perjalanan: "Umroh",
          live: 0,
          status: false,
        },
        {
          grupid: newGrup.grupid,
          jenis_perjalanan: "Towaf Wada",
          live: 0,
          status: false,
        },
      ];

      await prisma.progress.createMany({ data: progressData });

      res.json({ status: "success", data: newGrup });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  joinGrup: async (req, res) => {
    const { grupid } = req.body;
    const { userId } = req.query;

    try {
      const { token } = req.headers;
      const responseJWT = jwt.verify(token, process.env.JWT_SECRET);

      // Cek apakah user sudah berada di grup mana pun
      const existingGroupMember = await prisma.peserta_Grup.findFirst({
        where: {
          userId,
          online: "waiting",
        },
      });

      if (existingGroupMember) {
        return res.status(400).json({
          msg: "Anda sudah berada dalam grup. Silakan keluar dari grup terlebih dahulu sebelum bergabung ke grup lain.",
        });
      }

      // Cari grup berdasarkan grupid dan hanya menyertakan peserta (participants) dalam hasil pencarian.
      const grup = await prisma.grup.findUnique({
        where: { grupid },
        include: { participants: true },
      });

      if (!grup) {
        return res.status(404).json({ msg: "Grup tidak ditemukan." });
      }

      // Tambahkan user ke waiting room dalam grup
      const newParticipant = await prisma.peserta_Grup.create({
        data: {
          grupid,
          userId,
          online: "waiting",
        },
      });

      // Cek role dari user
      const user = await prisma.users.findUnique({
        where: { id: responseJWT.user.id },
        select: { role: true },
      });

      const isUstadz = user.role === "ustadz";

      // Response berbeda tergantung role
      if (isUstadz) {
        res.json({
          status: "success",
          message:
            "Anda berhasil join dan bisa mengakses fitur audio sebagai ustadz",
          roomStatus: "waiting room",
          audioControl: "enabled",
        });
      } else {
        res.json({
          status: "success",
          message:
            "Anda berhasil join grup dan masuk ke waiting room. Anda bisa mendengarkan audio.",
          roomStatus: "waiting room",
          audioControl: "listen-only",
        });
      }
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  exitGrup: async (req, res) => {
    const { grupid } = req.body;
    const { userId } = req.query;
    // Ambil token dari headers
    const { token } = req.headers;
    const responseJWT = jwt.verify(token, process.env.JWT_SECRET);

    // Pastikan token valid dan memiliki informasi user yang sesuai
    if (!responseJWT || responseJWT.user.id !== userId) {
      return res
        .status(403)
        .json({ status: "error", message: "Akses tidak diizinkan." });
    }

    try {
      // Cek apakah user tergabung dalam grup
      const userInGroup = await prisma.peserta_Grup.findUnique({
        where: { grupid_userId: { grupid, userId } },
      });

      if (!userInGroup) {
        return res
          .status(400)
          .json({
            status: "error",
            message: "Anda belum tergabung dalam grup ini.",
          });
      }

      // Hapus peserta dari grup
      await prisma.peserta_Grup.delete({
        where: { peserta_grupid: userInGroup.peserta_grupid },
      });

      res.json({ status: "success", message: "Anda telah keluar dari grup." });
    } catch (err) {
      console.error("Exit Grup Error:", err);
      res
        .status(500)
        .json({ status: "error", message: "Terjadi kesalahan pada server." });
    }
  },

  getGrup: async (req, res) => {
    try {
      const grupList = await prisma.grup.findMany({
        include: {
          room: true,
        },
        orderBy: {
          created_at: 'desc'
        }
      });
      res.json(grupList);
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  // Mengecek detail grup berdasarkan grupid dan menyertakan lebih banyak informasi
  // yang lebih mendetail seperti participants, progress, dan room
  cekGrup: async (req, res) => {
    const { grupid } = req.params;

    try {
      const grup = await prisma.grup.findUnique({
        where: { grupid },
        include: {
          participants: {
            include: {
              user: {
                select: {
                  name: true,
                  role: true,
                },
              },
            },
          },
          progress: true,
          room: true,
        },
      });

      if (!grup) {
        return res.status(404).json({ msg: "Grup tidak ditemukan. a" });
      }

      res.json(grup);
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  // Mengecek apakah user ada dalam grup tertentu
  cekUserGrup: async (req, res) => {
    const { grupid, userId } = req.query;

    try {
      const userInGroup = await prisma.peserta_Grup.findUnique({
        where: { grupid_userId: { grupid, userId } },
        include: {
          user: {
            select: {
              name: true,
              role: true,
              status_login: true,
            },
          },
          room: true,
        },
      });
      if (!userInGroup) {
        return res
          .status(404)
          .json({ msg: "Pengguna tidak ditemukan dalam grup ini" });
      }

      res.json({ msg: "Pengguna ditemukan dalam grup", userInGroup });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  // Mengecek Jumlah peserta yang ada di grup tertentu
  cekPesertaGrup: async (req, res) => {
    const { grupid } = req.body;

    try {
      // Cari semua peserta grup berdasarkan grupid
      const grup = await prisma.peserta_Grup.findMany({
        where: { grupid }, // Filter berdasarkan grupid
        select: {
          user: {
            select: {
              id: true,
              name: true,
              role: true,
              email: true,
              whatsapp: true,
              profile: {
                select: {
                  photo: true,
                },
              },
            },
          },
          online: true, // Tambahkan properti online jika ingin informasi ini juga
        },
      });

      const room = await prisma.grup.findUnique({
        where: { grupid },
        include: {
          room: true,
        },
      });

      if (grup.length === 0) {
        return res.status(404).json({
          status: "error",
          message: "Tidak ada peserta grup untuk grup ini.",
        });
      }

      res.json({
        status: "success",
        roomId: room.roomid,
        data: grup.map((peserta) => ({
          userId: peserta.user.id,
          name: peserta.user.name,
          role: peserta.user.role,
          email: peserta.user.email,
          whatsapp: peserta.user.whatsapp,
          profile: peserta.user.profile?.photo || null,
          online: peserta.online, // Jika informasi online diperlukan
        })),
      });
    } catch (err) {
      console.error(err.message);
      res.status(500).json({
        status: "error",
        message: "Terjadi kesalahan pada server.",
      });
    }
  },

  // Mengecek jumlah user yang online di grup
  cekLive: async (req, res) => {
    const { grupid } = req.params;

    try {
      const liveUsers = await prisma.peserta_Grup.count({
        where: {
          grupid,
          online: "online", // Asumsikan status "online" menandakan user aktif/live
        },
      });

      res.json({
        msg: `Jumlah user yang online dalam grup: ${liveUsers}`,
        liveUsers,
      });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  deleteGrup: async (req, res) => {
    const { grupid } = req.body;

    try {
      const { token } = req.headers;
      const responseJWT = jwt.verify(token, process.env.JWT_SECRET);

      // Cek apakah grup ada
      const grup = await prisma.grup.findUnique({ where: { grupid } });

      if (!grup) {
        return res.status(404).json({ msg: "Grup tidak ditemukan." });
      }

      // Cek apakah user yang sedang login adalah ustadz atau pembuat grup
      const user = await prisma.users.findUnique({
        where: { id: responseJWT.user.id },
        select: { role: true, id: true },
      });

      const isUstadz = user.role === "ustadz";
      const isCreator = grup.created_by === user.id;

      if (!isUstadz && !isCreator) {
        return res
          .status(403)
          .json({ msg: "Anda tidak memiliki hak untuk menghapus grup ini." });
      }

      // *Hapus data berelasi terlebih dahulu*
      await prisma.progress_Doa.deleteMany({
        where: { progress: { grupid } },
      });

      await prisma.progress_perjalanan.deleteMany({ where: { grupid } });
      await prisma.progress.deleteMany({ where: { grupid } });
      await prisma.peserta_Grup.deleteMany({ where: { grupid } });

      // *Hapus grup setelah semua data terkait dihapus*
      await prisma.grup.delete({ where: { grupid } });

      res.json({
        status: "success",
        message: "Grup dan semua data terkait telah berhasil dihapus.",
      });
    } catch (err) {
      console.error(err);
      res.status(500).send("Server error");
    }
  },

  getCekLive: async (req, res) => {
    try {
      const liveProgress = await prisma.progress.findMany({
        where: {
          live: 1,
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
      if (liveProgress.length === 0) {
        return res.status(404).json({ msg: "Tidak ada progress live" });
      }
      return res.status(200).json({
        status: true,
        message: "Progress live ditemukan",
        data: liveProgress.map((progress) => ({
          id_progress: progress.progressid,
          id_grup: progress.grupid,
          jenis_perjalanan: progress.jenis_perjalanan,
          live: progress.live,
          status: progress.status,
          is_finished: progress.is_finished,
          perjalananid: progress.perjalananid,
        })),
      });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  getStatusPerjalanan: async (req, res) => {
    const { grupid } = req.params; // Ambil grupid dari parameter URL

    try {
      // Ambil data progress untuk grup tertentu
      const grupProgress = await prisma.progress.findMany({
        where: {
          grupid: grupid, // Filter berdasarkan grupid
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

      // Jika tidak ada data progress untuk grup ini
      if (grupProgress.length === 0) {
        return res.status(404).json({
          status: false,
          message: "Tidak ada data progress yang ditemukan untuk grup ini.",
        });
      }

      // Response dengan data progress untuk grup tertentu
      return res.status(200).json({
        status: true,
        message: "Data progress berhasil diambil untuk grup ini.",
        data: grupProgress.map((progress) => ({
          id_progress: progress.progressid,
          id_grup: progress.grupid,
          jenis_perjalanan: progress.jenis_perjalanan,
          live: progress.live,
          status: progress.status,
          is_finished: progress.is_finished,
          perjalananid: progress.perjalananid,
        })),
      });
    } catch (err) {
      console.error(err.message);
      res.status(500).json({
        status: false,
        message: "Terjadi kesalahan pada server.",
      });
    }
  },

  tambahAnggotaGrup: async (req, res) => {
    const { grupid, userId } = req.body;

    try {
      // 1. Verifikasi Admin
      const { token } = req.headers;
      const decoded = jwt.verify(token, process.env.JWT_SECRET);
      
      const admin = await prisma.users.findUnique({
        where: { id: decoded.user.id },
        select: { role: true }
      });

      if (!admin || admin.role !== "admin") {
        return res.status(403).json({
          status: "error",
          message: "Akses ditolak. Hanya admin yang boleh menambahkan anggota grup"
        });
      }

      // 2. Validasi Grup
      const grup = await prisma.grup.findUnique({
        where: { grupid }
      });

      if (!grup) {
        return res.status(404).json({
          status: "error",
          message: "Grup tidak ditemukan"
        });
      }

      // 3. Validasi User
      const user = await prisma.users.findUnique({
        where: { id: userId },
        include: { profile: true }
      });

      if (!user) {
        return res.status(404).json({
          status: "error",
          message: "User tidak ditemukan"
        });
      }

      // 4. Cek Keanggotaan
      const existingMember = await prisma.peserta_Grup.findUnique({
        where: {
          grupid_userId: { grupid, userId }
        }
      });

      if (existingMember) {
        return res.status(400).json({
          status: "error",
          message: "User sudah menjadi anggota grup ini"
        });
      }

      // 5. Tambahkan User ke Grup
      const anggotaBaru = await prisma.peserta_Grup.create({
        data: {
          grupid,
          userId,
          online: "offline"
        },
        include: {
          user: {
            select: {
              id: true,
              name: true,
              role: true,
              profile: {
                select: {
                  photo: true
                }
              }
            }
          }
        }
      });

      // 6. Response Sukses
      return res.json({
        status: "success",
        message: `Berhasil menambahkan ${user.name} ke grup ${grup.nama_grup}`,
        data: anggotaBaru
      });

    } catch (err) {
      console.error("Error in tambahAnggotaGrup:", err);
      return res.status(500).json({
        status: "error",
        message: "Terjadi kesalahan server",
        error: err.message
      });
    }
  },
};

module.exports = GrupController;
