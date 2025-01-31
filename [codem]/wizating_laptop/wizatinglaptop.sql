
CREATE TABLE IF NOT EXISTS `wizating_handling_presets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wizating_tuned_vehicles` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`plate` VARCHAR(50) NOT NULL,
	`model` VARCHAR(55) NOT NULL,
	`owned` INT(11) NOT NULL DEFAULT '0',
	`currentTune` LONGTEXT NOT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `plate` (`plate`) USING BTREE
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
