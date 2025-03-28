// RiwayatService.js
const riwayatGrupRepository = require("../../repositories/Riwayat/RiwayatRepository");
const jwt = require("jsonwebtoken");

const getRiwayatGrupByUser = async (token) => {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decoded.user.id;
    return await riwayatGrupRepository.getRiwayatGrupByUserId(userId);
};

const getRiwayatPerjalananDetail = async (riwayatgrupid, perjalananid) => {
    return await riwayatGrupRepository.getRiwayatPerjalananDetailById(riwayatgrupid, perjalananid);
};

const getAllRiwayatPerjalanan = async () => {
    return await riwayatGrupRepository.getAllRiwayatPerjalanan();
};

module.exports = { getRiwayatGrupByUser, getRiwayatPerjalananDetail, getAllRiwayatPerjalanan };