SELECT DoctorName, ExperienceYears FROM Doctors;

SELECT * FROM patients;

-- Select medication with dosage of 200mg?
SELECT * FROM Medications 
WHERE Dosage = '200mg';

SELECT * FROM Movies;

SELECT * FROM Movies
WHERE ReleaseYear > 2000
ORDER BY ReleaseYear DESC;

SELECT * FROM Movies
WHERE ReleaseYear BETWEEN 2000 AND 2008
ORDER BY ReleaseYear ASC;

SELECT * FROM Movies
WHERE Rating BETWEEN 5.0 AND 9.0
ORDER BY ReleaseYear ASC;

-- Select patients whose age is b/n 20 & 30
SELECT * FROM patients
WHERE DATEDIFF(YEAR, DateOfBirth, GETDATE()) BETWEEN 20 AND 30;
