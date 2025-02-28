-- CreateTable
CREATE TABLE `DeletedUsers` (
    `deletedId` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL DEFAULT 'Unknown',
    `email` VARCHAR(191) NULL,
    `alasan` VARCHAR(191) NOT NULL,
    `deletedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `DeletedUsers_userId_key`(`userId`),
    PRIMARY KEY (`deletedId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `deleteAccReason` (
    `reasonId` VARCHAR(191) NOT NULL,
    `reason` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`reasonId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
