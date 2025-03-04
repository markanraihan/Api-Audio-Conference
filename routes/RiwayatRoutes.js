const express = require("express");
const router = express.Router();
const RiwayatController = require("../controller/Riwayat/RiwayatController");
const auth = require("../middleware/Users");

router.get("/", auth, RiwayatController.getRiwayatGrupByUser);
router.get("/detail/:riwayatgrupid/:perjalananid", auth, RiwayatController.getRiwayatPerjalananDetail);

module.exports = router