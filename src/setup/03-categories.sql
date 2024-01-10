CREATE TABLE IF NOT EXISTS `DB_NOTES_SYSTEM`.`Categories` (
    `Categ_ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Categ_UUID` CHAR(36) NOT NULL,
    `Categ_UserID` INT UNSIGNED NOT NULL,
    `Categ_Name` VARCHAR(30) NOT NULL,
    KEY `IDX_FK_Categ_User` (`Categ_UserID`),
    CONSTRAINT `UC_CategUUID` UNIQUE (`Categ_UUID`),
    CONSTRAINT `FK_Categ_User` FOREIGN KEY (`Categ_UserID`) REFERENCES `Users` (`User_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 
USE `DB_NOTES_SYSTEM`;
-- 
CREATE INDEX `IDX_UUID` ON `Categories` (`Categ_UUID`);
-- 
CREATE INDEX `IDX_UserID` ON `Categories` (`Categ_UserID`);