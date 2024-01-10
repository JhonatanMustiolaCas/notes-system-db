CREATE TABLE IF NOT EXISTS `DB_NOTES_SYSTEM`.`Notes` (
    `Note_ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Note_UUID` CHAR(36) NOT NULL,
    `Note_CategID` BIGINT UNSIGNED NOT NULL,
    `Note_UserID` INT UNSIGNED NOT NULL,
    `Note_Title` VARCHAR(100) NOT NULL DEFAULT 'No title',
    `Note_Text` TEXT NOT NULL,
    `Note_CreatedAt` DATE,
    `Note_LastModified` DATE,
    KEY `IDX_FK_Note_Categ` (`Note_CategID`),
    KEY `IDX_FX_Note_User` (`Note_UserID`),
    CONSTRAINT `UC_NoteUUID` UNIQUE (`Note_UUID`),
    CONSTRAINT `FK_Note_Categ` FOREIGN KEY (`Note_CategID`) REFERENCES `Categories` (`Categ_ID`),
    CONSTRAINT `FK_Note_User` FOREIGN KEY (`Note_UserID`) REFERENCES `Users` (`User_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 
USE `DB_NOTES_SYSTEM`;
-- 
CREATE INDEX `IDX_UserID` ON `Notes` (`Note_UserID`);
-- 
CREATE INDEX `IDX_CategID` ON `Notes` (`Note_CategID`);
-- 
CREATE INDEX `IDX_UUID` ON `Notes` (`Note_UUID`);
-- 
CREATE INDEX `IDX_CreatedAt` ON `Notes` (`Note_CreatedAt`);
-- 
CREATE INDEX `IDX_UserID_CreatedAt` ON `Notes` (`Note_UserID`, `Note_CreatedAt`);
-- 
CREATE INDEX `IDX_UserID_CategID` ON `Notes` (`Note_UserID`, `Note_CategID`);