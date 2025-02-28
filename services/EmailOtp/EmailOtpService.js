const nodemailer = require("nodemailer");
const crypto = require("crypto");
const { findUserByEmail } = require("../../repositories/EmailOtp/EmailOtpRepository");
require("dotenv").config();

const transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: parseInt(process.env.SMTP_PORT, 10),
    secure: true,
    auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS,
    },
});

const generateOTP = () => {
  return crypto.randomInt(1000, 9999).toString(); // OTP 4 digit
};

const sendEmail = async (email, subject, otp) => {
    try {
        const result = await findUserByEmail(email);

        if (result.error) {
            console.log(result.error);
            return { success: false, message: result.error };
        }

        const htmlTemplate = `
            <div style="background: #ffffff; font-family: Arial, sans-serif; max-width: 600px; margin: auto; padding: 30px;
                        border: 1px solid #ddd; border-radius: 10px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.05);">
                <!-- Gambar Header -->
                <div style="text-align: center; margin-bottom: 20px;">
                    <img src="https://berducdn.com/img/600/bsogmh5mbsogr2zrg_2/hjt57wmPWK0Ks9ahjEiJvIVz95S5xUR4uuhOdIzSnFQ.png"
                        alt="Maqdis Travel"
                        style="max-width: 120px; height: auto;">
                </div>

                <!-- Judul -->
                <h2 style="text-align: center; color: #1D8CC6; font-weight: 600; margin-bottom: 5px;">Your OTP Code</h2>
                <p style="text-align: center; font-size: 16px; color: #444;">This OTP is required to continue your request.</p>

                <!-- OTP -->
                <div style="text-align: center; font-size: 18px; color: #1D8CC6; margin: 20px 0;">
                    ${otp}
                </div>

                <p style="text-align: center; color: #444; font-size: 14px;">This OTP is valid for 10 minutes. Do not share it with anyone.</p>

                <p style="text-align: center; color: #777; font-size: 14px; margin-top: 20px;">If you didn't request this, please ignore this email.</p>

                <hr style="border: none; border-top: 1px solid #ddd; margin: 25px 0;">

                <!-- Footer -->
                <p style="text-align: center; font-size: 12px; color: #888;">Best regards,<br>
                <b>Support Maqdis</b><br>Maqdis Travel</p>
            </div>
        `;

        await transporter.sendMail({
            from: `"Support Maqdis" <${process.env.SMTP_USER}>`,
            to: email,
            subject,
            html: htmlTemplate,
        });

        return { success: true, message: "OTP dikirim ke email" };
    } catch (error) {
        console.error("Error sending email:", error);
        return { success: false, message: "Gagal mengirim email" };
    }
};

const sendDeletionEmail = async (email, name) => {
    try {
        const htmlTemplate = `
            <div style="background: #ffffff; font-family: Arial, sans-serif; max-width: 600px; margin: auto; padding: 30px;
                        border: 1px solid #ddd; border-radius: 10px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.05);">
                <div style="text-align: center; margin-bottom: 20px;">
                    <img src="https://berducdn.com/img/600/bsogmh5mbsogr2zrg_2/hjt57wmPWK0Ks9ahjEiJvIVz95S5xUR4uuhOdIzSnFQ.png"
                        alt="Maqdis Travel"
                        style="max-width: 120px; height: auto;">
                </div>

                <h2 style="text-align: center; color: #E74C3C; font-weight: 600; margin-bottom: 5px;">Akun Anda Telah Dihapus</h2>
                <p style="text-align: center; font-size: 16px; color: #444;">Hai, ${name}</p>

                <p style="text-align: center; font-size: 16px; color: #444;">
                    Akun Anda telah berhasil dihapus dari sistem kami. Jika Anda ingin kembali menggunakan layanan kami, Anda dapat membuat akun baru kapan saja.
                </p>

                <p style="text-align: center; color: #777; font-size: 14px; margin-top: 20px;">
                    Jika Anda tidak melakukan permintaan ini, silakan segera hubungi tim support kami.
                </p>

                <hr style="border: none; border-top: 1px solid #ddd; margin: 25px 0;">

                <p style="text-align: center; font-size: 12px; color: #888;">Best regards,<br>
                <b>Support Maqdis</b><br>Maqdis Travel</p>
            </div>
        `;

        await transporter.sendMail({
            from: `"Support Maqdis" <${process.env.SMTP_USER}>`,
            to: email,
            subject: "Akun Anda Telah Dihapus",
            html: htmlTemplate,
        });

        return { success: true, message: "Email konfirmasi penghapusan akun dikirim" };
    } catch (error) {
        console.error("Error sending deletion email:", error);
        return { success: false, message: "Gagal mengirim email konfirmasi penghapusan akun" };
    }
};

module.exports = { generateOTP, sendEmail, sendDeletionEmail };
