-- DropForeignKey
ALTER TABLE `progress` DROP FOREIGN KEY `Progress_perjalananid_fkey`;

-- DropIndex
DROP INDEX `Progress_perjalananid_fkey` ON `progress`;

-- AlterTable
ALTER TABLE `progress` MODIFY `perjalananid` VARCHAR(36) NULL;

-- AddForeignKey
ALTER TABLE `Progress` ADD CONSTRAINT `Progress_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `Perjalanan`(`perjalananid`) ON DELETE SET NULL ON UPDATE CASCADE;
