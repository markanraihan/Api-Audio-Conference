// ProgressDoaRoutes
const express = require("express");
const router = express.Router();
const ProgressDoaController = require("../controller/ProgressDoa/ProgressDoaController");

router.post("/", ProgressDoaController.createProgressDoa);
router.put("/:progress_doaid", ProgressDoaController.updateProgressDoa);
router.get("/:progress_doaid", ProgressDoaController.getProgressDoaById);
router.get("/", ProgressDoaController.getAllProgressDoa);
router.get("/user_progress/:perjalananid/:grupid", ProgressDoaController.getProgressDoaByPerjalananAndGroupId);
router.get("/status/:perjalananid/:grupid", ProgressDoaController.getStatusDoa);

module.exports = router;