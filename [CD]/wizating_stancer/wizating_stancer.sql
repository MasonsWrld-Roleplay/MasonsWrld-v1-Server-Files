DROP TABLE IF EXISTS `wizating_stancer`;


CREATE TABLE `wizating_stancer` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `plate` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
    `owned` INT(11) NOT NULL DEFAULT '0',
    `stanceData` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `plate` (`plate`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

CREATE TABLE `wizating_stancer_presets` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `creator` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    `presets` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

CREATE TABLE `wizating_stancer_theme` (
    `owner` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_general_ci',
    `theme` LONGTEXT NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;