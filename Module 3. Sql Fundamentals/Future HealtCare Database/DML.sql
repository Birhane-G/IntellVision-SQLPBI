--Retrieve all patients from the Patients table.
SELECT * FROM Patients;

-- Add a new patient to the Patients table.
INSERT INTO Patients (PatientName, DateOfBirth, Gender, Address, PhoneNumber)
VALUES ('Mark Taylor', '1985-06-15', 'M', '123 Main St, Springfield', '555-0130');

--Delete a patient from the Patients table with PatientID = 2
DELETE FROM Patients
WHERE PatientID = 2;

-- Update a patient's movie rating
UPDATE PatientMovies
SET Rating = 8.5
WHERE PatientID = 1 AND MovieID = 1;

--Retrieve patients who were born after January 1, 1990, and order them by their names.
-- We can Also Use GETDATE() Method Like what we did on class
SELECT PatientID, PatientName, DateOfBirth
FROM Patients
WHERE DateOfBirth > '1990-01-01'
ORDER BY PatientName;

--Count the number of patients grouped by gender and filter groups with more than 5 patients.
SELECT Gender, COUNT(*) AS PatientCount
FROM Patients
GROUP BY Gender
HAVING COUNT(*) > 5;

--Select doctors who have more than 10 years of experience and order them by experience descending.
SELECT DoctorID, DoctorName, ExperienceYears
FROM Doctors
WHERE ExperienceYears > 10
ORDER BY ExperienceYears DESC;

--Calculate the average rating of movies watched by patients, grouping by MovieID, and only include movies with an average rating greater than 8.5.
SELECT MovieID, AVG(Rating) AS AverageRating
FROM PatientMovies
GROUP BY MovieID
HAVING AVG(Rating) > 8.5
ORDER BY AverageRating DESC;

--Update the phone number of a specific patient (e.g., PatientID = 1) if the current phone number is not NULL.
UPDATE Patients
SET PhoneNumber = '555-9999'
WHERE PatientID = 1 AND PhoneNumber IS NOT NULL;
