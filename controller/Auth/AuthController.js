// AuthController.js
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const { validationResult } = require("express-validator");
const prisma = require("../../utils/Prisma");
const AuthServices = require("../../services/Auth/AuthServices");

const AuthController = {
  register: async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const { name, email, password, whatsapp, role } = req.body;
    try {
      // Cek apakah email sudah ada
      const existingUser = await prisma.users.findUnique({
        where: { email },
      });
      if (existingUser) {
        return res
          .status(400)
          .json({ errors: [{ msg: "Akun sudah pernah didaftarkan" }] });
      }

      // Hash password
      const salt = await bcrypt.genSalt(10);
      const hashedPassword = await bcrypt.hash(password, salt);

      // Buat pengguna baru
      const newUser = await prisma.users.create({
        data: {
          name,
          email,
          password: hashedPassword,
          whatsapp,
          role: role || "user",
        },
      });

      // Buat profil untuk pengguna baru
      await prisma.profiles.create({
        data: {
          name: newUser.name, // Menyimpan nama pengguna
          userId: newUser.id, // Menggunakan ID pengguna yang baru dibuat
          photo: `https://api.dicebear.com/8.x/identicon/svg?seed=${newUser.name}`,
          whatsapp: newUser.whatsapp, // Generasi URL foto
        },
      });

      res.json({ status: "success", message: "Pembuatan akun anda berhasil" });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error, harap mencoba beberapa saat lagi");
    }
  },

  createUserByAdmin: async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const { name, email, password, whatsapp, role } = req.body;

    try {
      // Panggil service untuk membuat user oleh admin
      const result = await AuthServices.createUserByAdmin({
        name,
        email,
        password,
        whatsapp,
        role,
      });

      res.json({ status: "success", message: "Pembuatan akun oleh admin berhasil" });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error, harap mencoba beberapa saat lagi");
    }
  },

  login: async (req, res) => {
    const { email, password } = req.body;

    try {
      // Validasi user berdasarkan email
      const user = await prisma.users.findUnique({
        where: { email },
        include: {
          groups: true, // Muat data grup terkait user
          profile: true,
        },
      });

      const grup = user.groups?.length
        ? await prisma.grup.findUnique({
          where: { grupid: user.groups[0].grupid },
          include: { room: true },
        })
        : null;

      // Jika user tidak ditemukan
      if (!user) {
        return res
          .status(404)
          .json({ errors: [{ msg: "User tidak ditemukan" }] });
      }

      // Cek password terlebih dahulu
      const isMatch = await bcrypt.compare(password, user.password);
      if (!isMatch) {
        return res
          .status(400)
          .json({ errors: [{ msg: "Email atau kata sandi salah" }] });
      }

      // Setelah password benar, cek apakah akun sudah diverifikasi
      if (!user.is_verified) {
        return res
          .status(403)
          .json({
            errors: [
              {
                msg: "Akun belum diverifikasi. Silakan verifikasi email anda terlebih dahulu",
              },
            ],
          });
      }

      // Generate token baru
      const payload = {
        user: {
          id: user.id,
          role: user.role,
          name: user.name,
        },
      };

      jwt.sign(
        payload,
        process.env.JWT_SECRET,
        { expiresIn: "30d" },
        async (err, token) => {
          if (err) throw err;

          // Simpan token baru di database
          await prisma.users.update({
            where: { id: user.id },
            data: {
              status_login: true,
              lastLogin: new Date(),
              currentToken: token, // Simpan token aktif
            },
          });

          return res.status(200).json({
            status: "success",
            username: user.name,
            id: user.id,
            role: user.role,
            email: user.email,
            token,
            room: grup?.roomid || null,
            groups: user.groups, // Sertakan grup dalam response
            photo: user.profile ? user.profile.photo : null,
          });
        }
      );
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ errors: [{ msg: "Server error" }] });
    }
  },

  googleLogin: async (req, res) => {
    try {
      const { idToken } = req.body;
      if (!idToken)
        return res.status(400).json({ message: "Token is required" });

      const result = await AuthServices.signInWithGoogle(idToken);
      res.json(result);
    } catch (error) {
      console.error("Google Sign-In Error:", error);
      res.status(500).json({ message: "Internal Server Error" });
    }
  },

  resetPassword: async (req, res) => {
    const { email, newPassword } = req.body;

    try {
      const result = await AuthServices.resetPasswordByEmail(email, newPassword);
      res.json(result);
    } catch (error) {
      res.status(400).json({ msg: error.message });
    }
  },

  changePassword: async (req, res) => {
    const { oldPassword, newPassword } = req.body;

    try {
      // Verifikasi pengguna
      const user = await prisma.users.findUnique({
        where: {
          id: req.user.id,
        },
      });

      if (!user) {
        return res.status(404).json({ msg: "User not found" });
      }

      // Verifikasi kata sandi lama
      const isMatch = await bcrypt.compare(oldPassword, user.password);
      if (!isMatch) {
        return res.status(400).json({ msg: "Incorrect old password" });
      }

      // Validasi kata sandi baru
      if (newPassword.length < 6) {
        return res
          .status(400)
          .json({ msg: "New password must be at least 6 characters long" });
      }

      // Enkripsi kata sandi baru
      const salt = await bcrypt.genSalt(10);
      const hashedPassword = await bcrypt.hash(newPassword, salt);

      // Perbarui kata sandi di basis data
      await prisma.users.update({
        where: {
          id: req.user.id,
        },
        data: {
          password: hashedPassword,
        },
      });

      res.json({ msg: "Password updated successfully" });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },

  logout: async (req, res) => {
    try {
      // Ambil user ID dari payload JWT atau session
      const userId = req.user.id;

      // Perbarui status login menjadi false
      await prisma.users.update({
        where: { id: userId },
        data: { status_login: false },
      });

      // Hapus token JWT dari cookie di klien
      res.clearCookie("token");

      // Kirimkan respons berhasil
      res.json({ status: "success", message: "Logout berhasil" });
    } catch (err) {
      console.error(err.message);
      res.status(500).send("Server error");
    }
  },
};

module.exports = AuthController;
