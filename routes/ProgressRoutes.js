// ProgressRoutes.js
const express = require("express");
const router = express.Router();
const ProgressControllers = require("../controller/Progress/ProgressContreller");
const admin = require('../middleware/admin'); 

router.post("/", ProgressControllers.createProgress);
router.put("/", ProgressControllers.exitProgress);
router.get("/", ProgressControllers.getLiveProgress);
router.get("/riwayat-perjalanan/:grupid", ProgressControllers.getUserProgressHistoryByToken); // Endpoint untuk riwayat user
router.get("/user-grup/:userId", ProgressControllers.getAllGrupByUserId); // untuk history seluruh grup yang di lalui oleh si user
router.get("/riwayat-grup", ProgressControllers.getAllGrupByToken);

router.get('/track-live-groups', admin, ProgressControllers.trackLiveGroups); // tracking grup yang berjalan oleh admin

module.exports = router