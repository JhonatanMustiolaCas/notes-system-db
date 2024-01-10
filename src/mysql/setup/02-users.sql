CREATE TABLE IF NOT EXISTS `DB_NOTES_SYSTEM`.`Users` (
    `User_ID` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `User_UUID` CHAR(36) NOT NULL,
    `User_PlanID` TINYINT(1) UNSIGNED NOT NULL,
    `User_Name` VARCHAR(30) NOT NULL,
    `User_LastName` VARCHAR(30) NOT NULL,
    `User_Email` VARCHAR(200) NOT NULL,
    `User_Password` VARCHAR(300) NOT NULL,
    `User_CreatedAt` DATE NOT NULL,
    KEY `IDX_FK_User_Plan` (`User_PlanID`),
    CONSTRAINT `UC_UserEmail` UNIQUE (`User_Email`),
    CONSTRAINT `UC_UserUUID` UNIQUE (`User_UUID`),
    CONSTRAINT `FK_User_Plan` FOREIGN KEY (`User_PlanID`) REFERENCES `Plans` (`Plan_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 
USE `DB_NOTES_SYSTEM`;
-- 
CREATE INDEX `IDX_UserEmail` ON `Users` (`User_Email`);
-- 
CREATE INDEX `IDX_UserCreatedAt` ON `Users` (`User_CreatedAt`);
-- 
CREATE INDEX `IDX_UserUUID` ON `Users` (`User_UUID`);