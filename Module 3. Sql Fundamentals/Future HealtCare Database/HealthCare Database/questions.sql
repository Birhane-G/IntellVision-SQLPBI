-- Count the total number of patients
SELECT COUNT(*) AS totalNumberOFPatient FROM patients;

SELECT * FROM patients;
-- Count the number of doctors by specialty
SELECT * FROM Doctors;
SELECT Specialty, COUNT(*) AS NumberofDoctors 
FROM Doctors
GROUP BY Specialty;

-- Calculate the average experience of doctors

SELECT * FROM Doctors;
SELECT AVG(ExperienceYears) AS AverageExp FROM Doctors;
-- Get the minimum rating of movies watched by patients

SELECT MIN(Rating) AS mini FROM PatientMovies;
SELECT MAX(Rating) AS Maxi FROM PatientMovies;

-- Calculate total medications prescribed to each patient
SELECT PatientID, COUNT(MedicationID) AS TotalMedication FROM PatientMedications GROUP BY PatientID;
SELECT * FROM PatientMedications;

-- Find the average rating of movies watched by patients
SELECT AVG(Rating) AS AverageRating FROM PatientMovies;

-- Count how many patients have seen a specific movie
SELECT MovieID, COUNT(PatientID) AS numberofpatient 
FROM PatientMovies 
GROUP BY MovieID;

SELECT * FROM PatientMovies;
-- Get the total number of patients and the total number of doctors

-- Get a list of patients who have not seen any movies
SELECT * FROM patients;
SELECT * FROM PatientMovies;
--UNION
--UNION ALL
--INTERSECT
--EXCEPT
SELECT PatientId FROM patients 
EXCEPT
SELECT PatientId FROM PatientMovies;

-- Get the list of unique medications from both PatientMedications and Medications

-- Find all patients who have both seen movies and taken medications


-- Get the list of all doctors and all medications, regardless of relationships


-- Get the list of patients along with their doctors name
-- JOIN