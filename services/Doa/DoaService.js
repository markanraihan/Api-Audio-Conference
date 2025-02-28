// DoaService.js
const DoaRepository = require("../../repositories/Doa/DoaRepository");
const ProgressDoaRepository = require("../../repositories/ProgressDoa/ProgressDoaRepository");

const getAllDoa = async () => {
  return await DoaRepository.getAllDoa();
};

const getDoaById = async (doaId) => {
  if (!doaId) {
    throw new Error("doaId is required");
  }

  return await DoaRepository.getDoaById(doaId);
};

const getStatusDoaByPerjalananId = async (perjalananId, progressId) => {
  if (!perjalananId || !progressId) {
    throw new Error("perjalananId and progressId are required");
  }

  const doaList = await DoaRepository.getStatusDoaByPerjalananId(perjalananId);

  const progressDoaList = await ProgressDoaRepository.getProgressDoaByProgressId(progressId);

  const progressMap = new Map();
  progressDoaList.forEach((progress) => {
    progressMap.set(progress.doaid, progress.durasi_doa);
  });

  const result = doaList.map((doa) => ({
    doaid: doa.doaid,
    judul_doa: doa.judul_doa,
    perjalananid: doa.perjalananid,
    durasi_doa: progressMap.get(doa.doaid) || "00:00",
  }));

  return result;
};

const getDoaByPerjalananId = async (perjalananId) => {
  if (!perjalananId) {
    throw new Error("perjalananId is required");
  }

  return await DoaRepository.getDoaByPerjalananId(perjalananId);
};

const createDoa = async ({ judul_doa, perjalananid, link_audio, ayat }) => {
  return await DoaRepository.createDoa({ judul_doa, perjalananid, link_audio, ayat });
};

const updateDoa = async (doaId, { judul_doa, link_audio, ayat }) => {
  return await DoaRepository.updateDoa(doaId, { judul_doa, link_audio, ayat });
};

const deleteDoa = async (doaId) => {
  return await DoaRepository.deleteDoa(doaId);
};

module.exports = {
  getAllDoa,
  getDoaById,
  getStatusDoaByPerjalananId,
  getDoaByPerjalananId,
  createDoa,
  updateDoa,
  deleteDoa,
};