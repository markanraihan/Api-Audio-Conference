/*
  Warnings:

  - You are about to drop the column `userId` on the `RiwayatGrup` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `Progress_Doa` DROP FOREIGN KEY `Progress_Doa_progress_perjalananid_fkey`;

-- DropForeignKey
ALTER TABLE `RiwayatGrup` DROP FOREIGN KEY `RiwayatGrup_userId_fkey`;

-- DropIndex
DROP INDEX `Progress_Doa_progress_perjalananid_fkey` ON `Progress_Doa`;

-- DropIndex
DROP INDEX `RiwayatGrup_userId_fkey` ON `RiwayatGrup`;

-- AlterTable
ALTER TABLE `RiwayatGrup` DROP COLUMN `userId`;
