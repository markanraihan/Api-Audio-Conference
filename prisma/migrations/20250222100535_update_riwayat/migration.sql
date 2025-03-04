-- AlterTable
ALTER TABLE `Progress_Doa` ADD COLUMN `progress_perjalananid` VARCHAR(36) NULL;

-- CreateTable
CREATE TABLE `UsersOnRiwayatGrup` (
    `riwayatgrupid` VARCHAR(36) NOT NULL,
    `userid` VARCHAR(36) NOT NULL,

    PRIMARY KEY (`riwayatgrupid`, `userid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Progress_Doa` ADD CONSTRAINT `Progress_Doa_progress_perjalananid_fkey` FOREIGN KEY (`progress_perjalananid`) REFERENCES `Progress_perjalanan`(`progress_perjalananid`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UsersOnRiwayatGrup` ADD CONSTRAINT `UsersOnRiwayatGrup_riwayatgrupid_fkey` FOREIGN KEY (`riwayatgrupid`) REFERENCES `RiwayatGrup`(`riwayatgrupid`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UsersOnRiwayatGrup` ADD CONSTRAINT `UsersOnRiwayatGrup_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `Users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
