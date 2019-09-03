CREATE TABLE IF NOT EXISTS `sys`.`clickstream` (
  `userId` VARCHAR(45) NOT NULL,
  `time` datetime NOT NULL,
  `action` ENUM('FIRST_INSTALL', 'LIKE_ARTICLE'),
  `objectId` VARCHAR(45) NULL)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `sys`.`articles` (
  `id` VARCHAR(45) NOT NULL,
  `title` VARCHAR(45) NULL,
  `created_by` datetime NULL,
  `updated_by` datetime NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;