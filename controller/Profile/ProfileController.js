// ProfileController.js
const ProfileServices = require("../../services/Profile/profileServices");

const getAllUsers = async (req, res) => {
  try {
    const result = await ProfileServices.getAllUsers(req);
    res.status(result.status).json(result.data);
  } catch (err) {
    console.error("Error in getAllUsers Controller:", err.message);
    res.status(500).send({ msg: "Server error", error: err.message });
  }
};
const getProfileByToken = async (req, res) => {
  try {
    const { token } = req.headers;
    const result = await ProfileServices.getProfileByToken(token, req);
    res.status(result.status).json(result.data);
  } catch (err) {
    console.error("Error in getProfileByToken Controller:", err.message);
    res.status(500).send({ msg: "Server error", error: err.message });
  }
};

const updateProfileByToken = async (req, res) => {
  try {
    const { name, whatsapp } = req.body;
    const photo = req.file ? `/${req.file.filename}` : null;
    const result = await ProfileServices.updateProfileByToken(req.user.id, { name, whatsapp, photo });
    res.status(result.status).json(result.data);
  } catch (err) {
    console.error("Error in updateProfileByToken Controller:", err.message);
    res.status(500).send({ msg: "Server error", error: err.message });
  }
};

const getDeleteReasons = async (req, res) => {
  try {
    const reasons = await ProfileServices.fetchDeleteReasons();
    res.status(200).json({ success: true, data: reasons });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

const createDeleteReason = async (req, res) => {
  try {
    const { reason } = req.body;
    const newReason = await ProfileServices.addDeleteReason(reason);
    res.status(201).json({ success: true, data: newReason });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

const updateDeleteReason = async (req, res) => {
  try {
    const { reasonId } = req.params;
    const { reason } = req.body;
    const updatedReason = await ProfileServices.editDeleteReason(reasonId, reason);
    res.status(200).json({ success: true, data: updatedReason });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

const deleteDeleteReason = async (req, res) => {
  try {
    const { reasonId } = req.params;
    await ProfileServices.removeDeleteReason(reasonId);
    res.status(200).json({ success: true, message: "Reason deleted successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

const deleteAccount = async (req, res) => {
  try {
    const { email, alasan } = req.body;
    const { token } = req.headers;
    if (!email || !alasan) {
      return res.status(400).json({ success: false, message: "Missing fields" });
    }

    await ProfileServices.removeUserAccount(token, email, alasan);
    res.status(200).json({ success: true, message: "Account deleted successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

module.exports = {
  getAllUsers,
  getProfileByToken,
  updateProfileByToken,
  getDeleteReasons,
  createDeleteReason,
  updateDeleteReason,
  deleteDeleteReason,
  deleteAccount,
};
