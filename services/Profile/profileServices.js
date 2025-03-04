// profileService.js
const jwt = require("jsonwebtoken");
const profileRepository = require("../../repositories/Profile/profileRepository");
const emailService = require("../../services/EmailOtp/EmailOtpService");

const getAllUsers = async (req) => {
  try {
    const users = await profileRepository.findAllUsers();
    const usersWithPhoto = users.map((user) => ({
      ...user,
      profile: {
        photo: user.profile?.photo
          ? `${req.protocol}://${req.get("host")}${user.profile.photo}`
          : null,
      },
    }));

    return {
      status: 200,
      data: { msg: "Users fetched", data: usersWithPhoto },
    };
  } catch (err) {
    console.error("Error in getAllUsers Service:", err.message);
    throw new Error(err.message);
  }
};

const getProfileByToken = async (token, req) => {
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    const user = await profileRepository.findUserById(decoded.user.id);

    if (!user) {
      return { status: 404, data: { msg: "Akun tidak ditemukan" } };
    }

    user.profile.photo = user.profile?.photo
      ? user.profile.photo.startsWith("http")
        ? user.profile.photo // ✅ Kalau iya, pakai langsung
        : `${req.protocol}://${req.get("host")}${user.profile.photo}`
      : null;

    return { status: 200, data: { msg: "Profile fetched", data: user } };
  } catch (err) {
    console.error("Error in getProfileByToken Service:", err.message);
    throw new Error(err.message);
  }
};

const updateProfileByToken = async (userId, { name, whatsapp, photo }) => {
  try {
    const profile = await profileRepository.findProfileByUserId(userId);

    if (profile) {
      const updatedProfile = await profileRepository.updateProfile(userId, {
        name,
        whatsapp,
        photo,
      });
      await profileRepository.updateUser(userId, { name, whatsapp });
      return {
        status: 200,
        data: { msg: "Profile updated", data: updatedProfile },
      };
    }

    const newProfile = await profileRepository.createProfile(userId, {
      name,
      whatsapp,
      photo,
    });
    await profileRepository.updateUser(userId, { name, whatsapp });
    return { status: 201, data: { msg: "Profile created", data: newProfile } };
  } catch (err) {
    console.error("Error in updateProfileByToken Service:", err.message);
    throw new Error(err.message);
  }
};

const fetchDeleteReasons = async () => {
  return await profileRepository.getAllReasons();
};

const addDeleteReason = async (reason) => {
  return await profileRepository.createReason(reason);
};

const editDeleteReason = async (reasonId, newReason) => {
  return await profileRepository.updateReason(reasonId, newReason);
};

const removeDeleteReason = async (reasonId) => {
  return await profileRepository.deleteReason(reasonId);
};

const removeUserAccount = async (token, email, alasan) => {
  try {
    console.log("Token:", token);
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decoded.user.id;
    const name = decoded.user.name;
    console.log("userId:", userId);

    const deletedUser = await profileRepository.deleteUserById(
      userId,
      email,
      alasan
    );

    try {
      await emailService.sendDeletionEmail(email, name);
    } catch (emailError) {
      console.error("Failed to send deletion email:", emailError);
    }

    return deletedUser;
  } catch (error) {
    console.error("ERROR in removeUserAccount:", error);
    throw new Error(error.message);
  }
};

module.exports = {
  getAllUsers,
  getProfileByToken,
  updateProfileByToken,
  fetchDeleteReasons,
  addDeleteReason,
  editDeleteReason,
  removeDeleteReason,
  removeUserAccount,
};
