-- Create the new database if it does not exist
CREATE DATABASE IF NOT EXISTS ssa2db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Switch to the newly created database
USE ssa2db;

-- Create the 'task' table
CREATE TABLE IF NOT EXISTS `task` (
  `id` INT NOT NULL,
  `taskTitle` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskDescription` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taskAssignees` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taskStatus` ENUM('No Status', 'To Do', 'Doing', 'Done') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdOn` DATETIME NOT NULL,
  `updatedOn` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
);

-- Insert data into the 'task' table
INSERT INTO task (id, taskTitle, taskDescription, taskAssignees, taskStatus, createdOn, updatedOn) 
VALUES 
(1, 'TaskTitle1TaskTitle2TaskTitle3TaskTitle4TaskTitle5TaskTitle6TaskTitle7TaskTitle8TaskTitle9TaskTitle0', 
'Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti1Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti2Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti3Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti4Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti5', 
'Assignees1Assignees2Assignees3', 'No Status', '2024-04-22 09:00:00', '2024-04-22 09:00:00'),
(2, 'Repository', '', '', 'To Do', '2024-04-22 09:05:00', '2024-04-22 14:00:00'),
(3, 'ดาต้าเบส', 'ສ້າງຖານຂໍ້ມູນ', 'あなた、彼、彼女 (私ではありません)', 'Doing', '2024-04-22 09:10:00', '2024-04-25 00:00:00'),
(4, ' _Infrastructure_ ', ' _Setup containers_ ', 'ไก่งวง กับ เพนกวิน', 'Done', '2024-04-22 09:15:00', '2024-04-22 10:00:00');
