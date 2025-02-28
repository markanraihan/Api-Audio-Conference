const { generateOTP, sendEmail } = require("../../services/EmailOtp/EmailOtpService");

const otpStore = {}; // Simpan OTP sementara : development Only

const requestOTP = async (req, res) => {
    const { email, type } = req.body;
    if (!email || !type) return res.status(400).json({ message: "Email dan type diperlukan" });

    const otp = generateOTP();
    const subject = type === "reset" ? "Reset Password OTP" : "Delete Account OTP";
    const message = `Your OTP for ${type} is: ${otp}. It will expire in 10 minutes.`;

    const result = await sendEmail(email, subject, message);
    if (!result.success) return res.status(400).json({ message: result.message });

    otpStore[email] = { otp, type }; // Simpan OTP dan tipenya
    setTimeout(() => delete otpStore[email], 10 * 60 * 1000); // Hapus setelah 10 menit

    res.json({ message: "OTP dikirim" });
};

const verifyOTP = (req, res) => {
    const { email, otp } = req.body;
    if (!email || !otp) return res.status(400).json({ message: "Email dan OTP diperlukan" });

    if (!otpStore[email] || otpStore[email].otp !== otp)
        return res.status(400).json({ message: "OTP salah atau kadaluarsa" });

    const type = otpStore[email].type; // Ambil tipe OTP
    delete otpStore[email]; // Hapus OTP setelah verifikasi

    res.json({ message: "OTP valid", type });
};

module.exports = { requestOTP, verifyOTP };
