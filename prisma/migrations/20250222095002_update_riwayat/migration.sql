-- CreateTable
CREATE TABLE `RiwayatGrup` (
    `riwayatgrupid` VARCHAR(36) NOT NULL,
    `nama_grup` VARCHAR(255) NOT NULL,
    `userId` VARCHAR(36) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`riwayatgrupid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `RiwayatPerjalanan` (
    `riwayatperjalananid` VARCHAR(36) NOT NULL,
    `riwayatgrupid` VARCHAR(36) NOT NULL,
    `perjalananid` VARCHAR(36) NULL,
    `nama_perjalanan` VARCHAR(255) NOT NULL,
    `waktu_mulai` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `time_selesai` DATETIME(3) NULL,
    `durasi_progress` VARCHAR(191) NULL,

    INDEX `RiwayatPerjalanan_perjalananid_idx`(`perjalananid`),
    PRIMARY KEY (`riwayatperjalananid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `RiwayatDoa` (
    `riwayatdoaid` VARCHAR(36) NOT NULL,
    `riwayatperjalananid` VARCHAR(36) NOT NULL,
    `doaid` VARCHAR(36) NULL,
    `judul_doa` VARCHAR(255) NOT NULL,
    `durasi_doa` VARCHAR(191) NULL,
    `cek_doa` BOOLEAN NOT NULL DEFAULT false,

    INDEX `RiwayatDoa_riwayatperjalananid_idx`(`riwayatperjalananid`),
    PRIMARY KEY (`riwayatdoaid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `RiwayatGrup` ADD CONSTRAINT `RiwayatGrup_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `RiwayatPerjalanan` ADD CONSTRAINT `RiwayatPerjalanan_riwayatgrupid_fkey` FOREIGN KEY (`riwayatgrupid`) REFERENCES `RiwayatGrup`(`riwayatgrupid`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `RiwayatPerjalanan` ADD CONSTRAINT `RiwayatPerjalanan_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `Perjalanan`(`perjalananid`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `RiwayatDoa` ADD CONSTRAINT `RiwayatDoa_riwayatperjalananid_fkey` FOREIGN KEY (`riwayatperjalananid`) REFERENCES `RiwayatPerjalanan`(`riwayatperjalananid`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `RiwayatDoa` ADD CONSTRAINT `RiwayatDoa_doaid_fkey` FOREIGN KEY (`doaid`) REFERENCES `Doa`(`doaid`) ON DELETE SET NULL ON UPDATE CASCADE;
