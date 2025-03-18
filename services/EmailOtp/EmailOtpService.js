// EmailOtpService.js
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
        const result = await findUserByEmail(email, subject);


        if (result.error) {
            console.log(result.error);
            return { success: false, message: result.error };
        }

        const htmlTemplate = `
        <!DOCTYPE html>
        <html lang="id">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Maqdis Travel OTP</title>
            <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        </head>
        <body style="font-family: 'Poppins', Arial, sans-serif; background-color: #f5f7fa; margin: 0; padding: 0;">
            <table width="100%" cellpadding="0" cellspacing="0" style="background: #f5f7fa; min-width: 320px; font-size: 16px; line-height: 1.5;">
                <tr>
                    <td align="center" style="padding: 40px 0;">
                        <table width="94%" style="max-width: 600px; background: #ffffff; border-radius: 16px; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);">
                            <!-- Header -->
                            <tr>
                                <td style="background: linear-gradient(135deg, #1D8CC6 0%, #125d84 100%);
                                           padding: 35px 40px 30px; text-align: center; border-radius: 16px 16px 0 0;">
                                    <img src="https://berducdn.com/img/600/bsogmh5mbsogr2zrg_2/hjt57wmPWK0Ks9ahjEiJvIVz95S5xUR4uuhOdIzSnFQ.png" 
                                         alt="Maqdis Travel" 
                                         style="max-width: 140px;">
                                </td>
                            </tr>
                            <!-- Content -->
                            <tr>
                                <td style="padding: 40px;">
                                    <h1 style="text-align: center; color: #1c2b33; font-size: 24px; font-weight: 600;">
                                        Ini OTP Anda
                                    </h1>
                                    <p style="text-align: center; color: #566a76; font-size: 16px;">
                                        Gunakan kode berikut untuk menyelesaikan permintaan Anda. Kode OTP ini akan kedaluwarsa dalam 10 menit.
                                    </p>
                                    <div style="text-align: center; margin: 30px auto; max-width: 300px; 
                                                padding: 16px; background-color: #f0f7ff; border: 1px dashed #c0d9e9; 
                                                border-radius: 12px;">
                                        <div style="font-size: 32px; letter-spacing: 5px; font-weight: 700; color: #1D8CC6;">
                                            ${otp}
                                        </div>
                                    </div>
                                    <p style="text-align: center; color: #566a76; font-size: 15px;">
                                        Jika Anda tidak meminta kode ini, abaikan email ini.
                                    </p>
                                </td>
                            </tr>
                            <!-- Tips Keamanan -->
                            <tr>
                                <td style="padding: 0 40px 30px;">
                                    <div style="background-color: #f8f9fa; border-radius: 12px; padding: 20px; margin-top: 10px;">
                                        <p style="margin: 0 0 10px; font-weight: 600; font-size: 15px; color: #1c2b33;">
                                            Tips Keamanan:
                                        </p>
                                        <ul style="margin: 0; padding: 0 0 0 20px; color: #566a76; font-size: 14px;">
                                            <li style="margin-bottom: 5px;">Jangan bagikan OTP Anda ke siapa pun</li>
                                            <li style="margin-bottom: 5px;">Tim Maqdis tidak akan pernah meminta OTP Anda</li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <!-- Footer -->
                            <tr>
                                <td style="background-color: #f5f7fa; padding: 30px 40px; text-align: center; border-top: 1px solid #e8eef3;">
                                    <p style="font-size: 16px; font-weight: 500; color: #1D8CC6;">Perlu bantuan?</p>
                                    <p style="font-size: 14px; color: #566a76;">
                                        Hubungi tim support kami di 
                                        <a href="mailto:support@maqdis.com" 
                                           style="color: #1D8CC6; font-weight: 500; text-decoration: none;">
                                           support@maqdis.com
                                        </a>
                                    </p>
                                    <p style="font-size: 13px; color: #8a97a0;">© 2025 Maqdis Travel. All rights reserved.</p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </body>
        </html>
        `;

        // Kirim email
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
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Maqdis Account Deletion</title>
                <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
            </head>
            <body style="margin: 0; padding: 0; font-family: 'Poppins', Arial, sans-serif; background-color: #f5f7fa;">
                <table cellpadding="0" cellspacing="0" border="0" width="100%" style="background: #f5f7fa; min-width: 320px; font-size: 16px; line-height: 1.5;">
                    <tr>
                        <td align="center" style="padding: 40px 0;">
                            <table cellpadding="0" cellspacing="0" border="0" width="94%" style="max-width: 600px; background: #ffffff; border-radius: 16px; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);">
                                <!-- Header -->
                                <tr>
                                    <td style="background: linear-gradient(135deg, #E74C3C 0%, #C0392B 100%); padding: 35px 40px 30px; border-radius: 16px 16px 0 0; text-align: center;">
                                        <img src="https://berducdn.com/img/600/bsogmh5mbsogr2zrg_2/hjt57wmPWK0Ks9ahjEiJvIVz95S5xUR4uuhOdIzSnFQ.png" alt="Maqdis Travel" style="max-width: 140px; height: auto; filter: drop-shadow(0 2px 4px rgba(0,0,0,0.1));">
                                    </td>
                                </tr>
                                
                                <!-- Content -->
                                <tr>
                                    <td style="padding: 40px 40px 20px;">
                                        <h1 style="margin: 0; font-weight: 600; font-size: 24px; line-height: 1.4; color: #E74C3C; text-align: center;">Akun Anda Telah Dihapus</h1>
                                        <p style="margin: 15px 0 0; text-align: center; color: #566a76; font-size: 18px; font-weight: 500;">Hai, ${name}</p>
                                        
                                        <!-- Message -->
                                        <div style="margin: 30px 0; text-align: center;">
                                            <p style="margin: 0 0 15px; color: #566a76; font-size: 16px; line-height: 1.6;">Akun Anda telah berhasil dihapus dari sistem kami.</p>
                                            <p style="margin: 0; color: #566a76; font-size: 16px; line-height: 1.6;">Jika Anda ingin kembali menggunakan layanan kami di masa mendatang, Anda dapat membuat akun baru kapan saja.</p>
                                        </div>
                                        
                                        <!-- Action Button -->
                                        <div style="text-align: center; margin: 35px 0;">
                                            <a href="https://maqdis.com/register" style="background-color: #E74C3C; color: white; text-decoration: none; padding: 12px 30px; border-radius: 8px; font-weight: 500; font-size: 16px; display: inline-block;">Buat Akun Baru</a>
                                        </div>
                                        
                                        <p style="margin: 30px 0 10px; text-align: center; color: #566a76; font-size: 15px;">Jika Anda tidak melakukan permintaan ini, silakan segera hubungi tim support kami.</p>
                                    </td>
                                </tr>
                                
                                <!-- Footer -->
                                <tr>
                                    <td style="background-color: #f5f7fa; padding: 30px 40px; border-radius: 0 0 16px 16px; text-align: center; border-top: 1px solid #e8eef3;">
                                        <p style="margin: 0 0 15px; font-weight: 500; font-size: 16px; color: #E74C3C;">Perlu bantuan?</p>
                                        <p style="margin: 0 0 20px; font-size: 14px; color: #566a76;">Hubungi tim support kami di <a href="mailto:support@maqdis.com" style="color: #E74C3C; text-decoration: none; font-weight: 500;">support@maqdis.com</a></p>
                                        <p style="margin: 20px 0 0; font-size: 13px; color: #8a97a0;">© 2025 Maqdis Travel. All rights reserved.</p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </body>
            </html>
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