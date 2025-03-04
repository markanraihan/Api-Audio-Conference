/*
  Warnings:

  - A unique constraint covering the columns `[googleId]` on the table `Users` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `Users_whatsapp_key` ON `Users`;

-- AlterTable
ALTER TABLE `Users` ADD COLUMN `googleId` VARCHAR(255) NULL,
    MODIFY `password` VARCHAR(255) NULL,
    MODIFY `whatsapp` VARCHAR(255) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Users_googleId_key` ON `Users`(`googleId`);
