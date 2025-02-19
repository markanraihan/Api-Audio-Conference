// ProgressRoutes.js
const express = require("express");
const router = express.Router();
const ProgressControllers = require("../controller/Progress/ProgressContreller");

router.post("/", ProgressControllers.createProgress);
router.put("/", ProgressControllers.exitProgress);
router.get("/", ProgressControllers.getLiveProgress);
router.get("/user-progress/", ProgressControllers.getUserProgressHistoryByToken); // Endpoint untuk riwayat user
router.get("/user-grup/:userId", ProgressControllers.getAllGrupByUserId); // untuk history seluruh grup yang di lalui oleh si user
router.get("/riwayat-grup", ProgressControllers.getAllGrupByToken);

module.exports = router 