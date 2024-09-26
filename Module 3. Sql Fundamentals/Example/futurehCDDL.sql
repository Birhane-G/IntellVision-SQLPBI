CREATE DATABASE FutureHealthCare;

USE FutureHealthCare;

CREATE TABLE patients(
PatientId INT PRIMARY KEY IDENTITY(1,1),
PatientName VARCHAR(100) NOT NULL,
DateOfBirth DATE NOT NULL,
Gender CHAR(1) CHECK(Gender = 'M' or Gender = 'F'), -- CHECK(Gender IN('M', 'F', 'O'))
Address VARCHAR(100),
PhoneNumber VARCHAR(100)
)

CREATE TABLE Doctors(
DoctorId INT PRIMARY KEY IDENTITY(1,1),
DoctorName VARCHAR(100) NOT NULL,
)

CREATE TABLE PatientDoctors(
PatientDoctorsId INT PRIMARY KEY IDENTITY(1,1),
patientId INT NOT NULL,
DoctorID INT NOT NULL,
FOREIGN KEY (patientId) REFERENCES patients(PatientId) ON DELETE CASCADE,
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorId) ON DELETE CASCADE,
)

-- ON DELETE CASCADE
-- ON DELETE SET NULL

INSERT INTO patients VALUES
('Birhane', '1991/10/1', 'M', 'af', ' +2131sf' );

INSERT INTO Doctors VALUES
('Dr. M');


INSERT INTO PatientDoctors VALUES
(1, 1);


SELECT * FROM patients;

SELECT * FROM Doctors;

SELECT * FROM PatientDoctors;