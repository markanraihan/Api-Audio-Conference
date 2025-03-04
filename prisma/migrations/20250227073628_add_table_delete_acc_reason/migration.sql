-- CreateTable
CREATE TABLE `DeleteAccReason` (
    `reasonId` VARCHAR(191) NOT NULL,
    `reason` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`reasonId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
