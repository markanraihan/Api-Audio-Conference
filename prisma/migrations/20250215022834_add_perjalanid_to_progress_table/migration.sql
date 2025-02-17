/*
  Warnings:

  - Added the required column `perjalananid` to the `Progress` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `progress` ADD COLUMN `perjalananid` VARCHAR(36) NOT NULL;

-- AddForeignKey
ALTER TABLE `Progress` ADD CONSTRAINT `Progress_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `Perjalanan`(`perjalananid`) ON DELETE RESTRICT ON UPDATE CASCADE;
