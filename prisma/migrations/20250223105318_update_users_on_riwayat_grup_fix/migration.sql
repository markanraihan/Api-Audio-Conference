/*
  Warnings:

  - You are about to drop the column `password` on the `UsersOnRiwayatGrup` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `UsersOnRiwayatGrup` DROP COLUMN `password`,
    ADD COLUMN `role` VARCHAR(255) NULL;
