SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE SCHEMA IF NOT EXISTS `ssa2db` DEFAULT CHARACTER SET utf8 ;

USE `ssa2db` ;

grant all privileges on *.* to 'devssa'@'%' ;

CREATE TABLE IF NOT EXISTS `ssa2db`.`status` (
  `id` INT auto_increment NOT NULL,
  `statusName` VARCHAR(50) NOT NULL DEFAULT 'No Status',
  `statusDescription` VARCHAR(200) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `statusName_UNIQUE` (`statusName` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `ssa2db`.`taskv2` (
  `id` INT auto_increment NOT NULL,
  `taskTitle` VARCHAR(100) NOT NULL,
  `taskDescription` VARCHAR(500) NULL,
  `taskAssignees` VARCHAR(30) NULL,
  `taskStatus` INT NOT NULL DEFAULT 1,
  `createdOn` DATETIME NOT NULL,
  `updatedOn` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_taskv2_taskStatus_idx` (`taskStatus` ASC) VISIBLE,
  CONSTRAINT `fk_taskv2_status`
    FOREIGN KEY (`taskStatus`)
    REFERENCES `ssa2db`.`status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -- status
INSERT INTO ssa2db.status (id, statusName, statusDescription) VALUES
(1, 'No Status', 'The default status'),
(2, 'To Do', null ),
(3, 'Doing', 'Being worked on'),
(4, 'Done', 'Finished');


-- -- taskv2
insert INTO taskv2 (id, taskTitle, taskDescription, taskAssignees, taskStatus, createdOn, updatedOn) 
values (1, 'TaskTitle1TaskTitle2TaskTitle3TaskTitle4TaskTitle5TaskTitle6TaskTitle7TaskTitle8TaskTitle9TaskTitle0', 
'Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti1Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti2Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti3Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti4Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti5', 
'Assignees1Assignees2Assignees3', 1, '2024-04-22 09:00:00', '2024-04-22 09:00:00');
