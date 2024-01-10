CREATE TABLE IF NOT EXISTS `DB_NOTES_SYSTEM`.`Plans` (
    `Plan_ID` TINYINT(1) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Plan_Name` VARCHAR(30) NOT NULL,
    `Plan_Description` VARCHAR(400) NOT NULL,
    `Plan_Features` JSON NOT NULL,
    `Plan_Active` BIT(1) NOT NULL DEFAULT 1
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;