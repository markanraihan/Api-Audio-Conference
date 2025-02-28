const riwayatGrupService = require("../../services/Riwayat/RiwayatService");

const getRiwayatGrupByUser = async (req, res) => {
    try {
        const { token } = req.headers;
        const riwayatGrupList = await riwayatGrupService.getRiwayatGrupByUser(token);

        res.json({ success: true, data: riwayatGrupList });
    } catch (error) {
        console.error("Error fetching riwayat grup:", error);
        res.status(500).json({ success: false, message: "Internal server error" });
    }
};

const getRiwayatPerjalananDetail = async (req, res) => {
    try {
        const { riwayatgrupid, perjalananid } = req.params;
        const riwayatPerjalanan = await riwayatGrupService.getRiwayatPerjalananDetail(riwayatgrupid, perjalananid);

        if (!riwayatPerjalanan) {
            return res.status(404).json({ success: false, message: "Riwayat perjalanan tidak ditemukan" });
        }

        res.json({ success: true, data: riwayatPerjalanan });
    } catch (error) {
        console.error("Error fetching riwayat perjalanan detail:", error);
        res.status(500).json({ success: false, message: "Internal server error" });
    }
};

module.exports = { getRiwayatGrupByUser, getRiwayatPerjalananDetail };
