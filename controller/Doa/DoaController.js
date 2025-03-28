// DoaController.js
const DoaService = require("../../services/Doa/DoaService");

const getAllDoa = async (req, res) => {
  try {
    const doaList = await DoaService.getAllDoa();
    res.status(200).json(doaList);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const getDoaById = async (req, res) => {
  try {
    const doaId = req.params.id;
    if (!doaId) {
      return res.status(400).json({ message: "ID is required" });
    }

    const doa = await DoaService.getDoaById(doaId);

    if (!doa) {
      return res.status(404).json({ message: "Doa not found" });
    }

    const { perjalanan, ...doaWithoutPerjalanan } = doa;
    res.status(200).json(doaWithoutPerjalanan);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const getDoaByPerjalananId = async (req, res) => {
  try {
    const perjalananId = req.params.perjalananid;
    if (!perjalananId) {
      return res.status(400).json({ message: "perjalananId is required" });
    }

    const doaList = await DoaService.getDoaByPerjalananId(perjalananId);

    const sortedDoaList = doaList.sort((a, b) => a.doa_urut - b.doa_urut);

    res.status(200).json(sortedDoaList);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const getStatusDoaByPerjalananId = async (req, res) => {
  try {
    const { perjalananid, progressid } = req.params;

    if (!perjalananid || !progressid) {
      return res
        .status(400)
        .json({ message: "perjalananId and progressId are required" });
    }

    const statusDoa = await DoaService.getStatusDoaByPerjalananId(
      perjalananid,
      progressid
    );

    res.status(200).json(statusDoa);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const createDoa = async (req, res) => {
  try {
    const { judul_doa, perjalananid, link_audio, ayat } = req.body;
    const newDoa = await DoaService.createDoa({
      judul_doa,
      perjalananid,
      link_audio,
      ayat,
    });
    res.status(201).json(newDoa);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const updateDoa = async (req, res) => {
  try {
    const doaId = req.params.id;
    const { judul_doa, link_audio, ayat } = req.body;
    const updatedDoa = await DoaService.updateDoa(doaId, {
      judul_doa,
      link_audio,
      ayat,
    });
    res.status(200).json(updatedDoa);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const deleteDoa = async (req, res) => {
  try {
    const doaId = req.params.id;
    await DoaService.deleteDoa(doaId);
    res.status(204).send();
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

module.exports = {
  getAllDoa,
  getDoaById,
  getDoaByPerjalananId,
  getStatusDoaByPerjalananId,
  createDoa,
  updateDoa,
  deleteDoa,
};
