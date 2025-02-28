// ProfileRoutess.js
const express = require("express");
const router = express.Router();
const upload = require("../utils/multer");
const auth = require("../middleware/Users");
const ProfileController = require("../controller/Profile/ProfileController");

router.get("/me", auth, ProfileController.getProfileByToken);
router.get("/", auth, ProfileController.getAllUsers);
router.put("/", auth, upload.single("photo"), ProfileController.updateProfileByToken);

router.get("/reason", ProfileController.getDeleteReasons);
router.post("/reason", ProfileController.createDeleteReason);
router.put("/reason/:reasonId", ProfileController.updateDeleteReason);
router.delete("/reason/:reasonId", ProfileController.deleteDeleteReason);

router.delete("/delete-account", ProfileController.deleteAccount);

module.exports = router;
