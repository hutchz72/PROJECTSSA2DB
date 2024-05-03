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
INSERT INTO task (id, taskTitle, taskDescription, taskAssignees, taskStatus) 
VALUES 
(5, 'DevSecOps', '', '', ''),
(6, 'DevSecOps1DevSecOps2DevSecOps3DevSecOps4DevSecOps5DevSecOps6DevSecOps7DevSecOps8DevSecOps9DevSecOps0', 'Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti1Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti2Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti3Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti4Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti5', 'Assignees1Assignees2Assignees3', 'To Do'),
(7, '     _Front End_     ', '     _fix CSS on landing page_     ', '     _ปุยฝ้าย กับ เสือดาว_     ', 'Done')
