-- AlterTable
ALTER TABLE `progress_perjalanan` ADD COLUMN `grupid` VARCHAR(36) NULL;

-- AddForeignKey
ALTER TABLE `Progress_perjalanan` ADD CONSTRAINT `Progress_perjalanan_grupid_fkey` FOREIGN KEY (`grupid`) REFERENCES `Grup`(`grupid`) ON DELETE SET NULL ON UPDATE CASCADE;
