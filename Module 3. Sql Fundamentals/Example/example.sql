CREATE DATABASE Learning;

USE Learning;

-- Create Table without AUTOINCRIMENT

CREATE TABLE Students(
StudentId INT PRIMARY KEY,
FirstName VARCHAR(10),
LastName VARCHAR(10)
);

INSERT INTO Students VALUES
(1, 'Hilina', 'So');

SELECT * FROM Students;

INSERT INTO Students VALUES
(2, 'Hilina', 'afa');

DROP TABLE Students;

-- Create Table with AUTO INCREMENT

CREATE TABLE Students(
StudentId INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(10),
LastName VARCHAR(10)
);

INSERT INTO Students VALUES
('Hilina', 'So');

SELECT * FROM Students;


INSERT INTO Students VALUES
('Birhane', 'So'),
('solomon', 'So'),
('kalifa', 'So'),
('abnet', 'So'),
('helen', 'So');

-- ALTER EXAMPLE

ALTER TABLE Students
ADD Email VARCHAR(100);

ALTER TABLE Students
ADD Status VARCHAR(10) NOT NULL CHECK(Status = 'Active' or Status = 'Inactive') DEFAULT 'Active' WITH VALUES;

SELECT * FROM Students;


INSERT INTO Students VALUES
('test', 'Kebede', 'abebe@gmail.com', 'Inactive');

CREATE TABLE deparment(
departmentid INT IDENTITY(1,1) PRIMARY KEY,
DepartmentName VARCHAR(20) NOT NULL
);