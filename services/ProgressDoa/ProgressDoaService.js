// ProgressDoaService.js
const ProgressDoaRepository = require("../../repositories/ProgressDoa/ProgressDoaRepository");
const jwt = require("jsonwebtoken");

const ProgressDoaService = {
  async createProgressDoa(data) {
    return await ProgressDoaRepository.createProgressDoa(data);
  },

  async updateProgressDoa(progress_doaid, data) {
    return await ProgressDoaRepository.updateProgressDoa(progress_doaid, data);
  },

  async getProgressDoaById(progress_doaid) {
    return await ProgressDoaRepository.getProgressDoaById(progress_doaid);
  },

  async getAllProgressDoa() {
    return await ProgressDoaRepository.getAllProgressDoa();
  },

  async getProgressDoaByPerjalananAndGroupId(perjalananid, grupid) {
    return await ProgressDoaRepository.getProgressDoaByPerjalananAndGroupId(
      perjalananid,
      grupid
    );
  },

  async getUserProgressByToken(token) {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decoded.user.id;
    return await ProgressDoaRepository.getUserProgressByUserId(userId);
  },

  async getStatusDoa(perjalananid, grupid, token) {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decoded.user.id;
    return await ProgressDoaRepository.getStatusDoa(
      perjalananid,
      grupid,
      userId
    );
  },
};

module.exports = ProgressDoaService;
