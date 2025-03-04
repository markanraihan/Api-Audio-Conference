/*
  Warnings:

  - You are about to drop the column `usersGoogleId` on the `Peserta_Grup` table. All the data in the column will be lost.
  - You are about to drop the column `usersGoogleId` on the `Progress_perjalanan` table. All the data in the column will be lost.
  - You are about to drop the `UsersGoogle` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Peserta_Grup` DROP FOREIGN KEY `Peserta_Grup_usersGoogleId_fkey`;

-- DropForeignKey
ALTER TABLE `Progress_perjalanan` DROP FOREIGN KEY `Progress_perjalanan_usersGoogleId_fkey`;

-- DropForeignKey
ALTER TABLE `UsersGoogle` DROP FOREIGN KEY `UsersGoogle_grupGrupid_fkey`;

-- DropForeignKey
ALTER TABLE `UsersGoogle` DROP FOREIGN KEY `UsersGoogle_profilesProfileid_fkey`;

-- DropIndex
DROP INDEX `Peserta_Grup_usersGoogleId_fkey` ON `Peserta_Grup`;

-- DropIndex
DROP INDEX `Progress_perjalanan_usersGoogleId_fkey` ON `Progress_perjalanan`;

-- AlterTable
ALTER TABLE `Peserta_Grup` DROP COLUMN `usersGoogleId`;

-- AlterTable
ALTER TABLE `Progress_perjalanan` DROP COLUMN `usersGoogleId`;

-- DropTable
DROP TABLE `UsersGoogle`;
