-- Table LVL ALIAS 
SELECT P.PatientName AS FullName FROM patients AS P;
-- Retrieve the names of patients and their associated doctors
---patients(Name)
---patientdoctor(Relationship)
---doctors(Name)
SELECT p.PatientName, P.Gender, d.DoctorName, D.Specialty
FROM patients p
INNER JOIN PatientDoctors pd ON p.PatientId = pd.patientId
INNER JOIN Doctors d ON pd.DoctorID = d.DoctorId;

-- Get the patients who have seen a doctor with a specialty in 'Cardiology'
-- Patients
-- patientdoctor(Relationship)
-- Doctor(specialty)
SELECT P.PatientName, D.DoctorName, D.Specialty
FROM patients P
INNER JOIN PatientDoctors PD ON P.PatientId = PD.patientId
INNER JOIN Doctors D ON PD.DoctorID = D.DoctorId
WHERE D.Specialty = 'Cardiology';


-- Retrieve all patients and their doctors, including patients without doctors
SELECT P.PatientName, D.DoctorName
FROM patients P
LEFT JOIN PatientDoctors PD ON P.PatientId = PD.patientId
LEFT JOIN Doctors D ON PD.DoctorID = D.DoctorId;

-- Find the number of patients each doctor has
SELECT D.DoctorName, COUNT(PD.patientId) AS PatientCount FROM patients P
LEFT JOIN PatientDoctors PD ON P.PatientId = PD.patientId
LEFT JOIN Doctors D ON PD.DoctorID = D.DoctorId
GROUP BY D.DoctorName;


















-- List patients and the medications they are prescribed
SELECT 
    p.PatientName, 
    m.MedicationName
FROM 
    Patients p
INNER JOIN 
    PatientMedications pm ON p.PatientID = pm.PatientID
INNER JOIN 
    Medications m ON pm.MedicationID = m.MedicationID;

-- Retrieve patients who are not prescribed any medications
SELECT 
    p.PatientName
FROM 
    Patients p
LEFT JOIN 
    PatientMedications pm ON p.PatientID = pm.PatientID
WHERE 
    pm.MedicationID IS NULL;

-- Show medications and their dosages for each patient
SELECT 
    p.PatientName, 
    m.MedicationName, 
    pm.DosageAmount, 
    pm.Frequency
FROM 
    Patients p
INNER JOIN 
    PatientMedications pm ON p.PatientID = pm.PatientID
INNER JOIN 
    Medications m ON pm.MedicationID = m.MedicationID;

-- List patients and the movies they have watched
SELECT 
    p.PatientName, 
    mv.MovieTitle
FROM 
    Patients p
INNER JOIN 
    PatientMovies pm ON p.PatientID = pm.PatientID
INNER JOIN 
    Movies mv ON pm.MovieID = mv.MovieID;

-- Find the average rating for each movie watched by patients
SELECT 
    mv.MovieTitle, 
    AVG(pm.Rating) AS AverageRating
FROM 
    Movies mv
INNER JOIN 
    PatientMovies pm ON mv.MovieID = pm.MovieID
GROUP BY 
    mv.MovieTitle;

-- Get the names of patients who rated movies above 8
SELECT 
    DISTINCT p.PatientName
FROM 
    Patients p
INNER JOIN 
    PatientMovies pm ON p.PatientID = pm.PatientID
WHERE 
    pm.Rating > 8;

-- Count how many medications each patient has
SELECT 
    p.PatientName, 
    COUNT(pm.MedicationID) AS MedicationCount
FROM 
    Patients p
LEFT JOIN 
    PatientMedications pm ON p.PatientID = pm.PatientID
GROUP BY 
    p.PatientName;

-- List patients and their doctors who have more than 5 years of experience
SELECT 
    p.PatientName, 
    d.DoctorName
FROM 
    Patients p
INNER JOIN 
    PatientDoctors pd ON p.PatientID = pd.PatientID
INNER JOIN 
    Doctors d ON pd.DoctorID = d.DoctorID
WHERE 
    d.ExperienceYears > 5;

-- Show movies and their ratings from all patients
SELECT 
    mv.MovieTitle, 
    pm.Rating
FROM 
    Movies mv
INNER JOIN 
    PatientMovies pm ON mv.MovieID = pm.MovieID;

-- List medications along with their prescribing doctors
SELECT 
    m.MedicationName, 
    d.DoctorName
FROM 
    Medications m
INNER JOIN 
    PatientMedications pm ON m.MedicationID = pm.MedicationID
INNER JOIN 
    PatientDoctors pd ON pm.PatientID = pd.PatientID
INNER JOIN 
    Doctors d ON pd.DoctorID = d.DoctorID;

-- Identify patients who have neither doctors nor medications
SELECT 
    p.PatientName
FROM 
    Patients p
LEFT JOIN 
    PatientDoctors pd ON p.PatientID = pd.PatientID
LEFT JOIN 
    PatientMedications pm ON p.PatientID = pm.PatientID
WHERE 
    pd.DoctorID IS NULL AND pm.MedicationID IS NULL;

-- List patients who have watched movies but have no medications
SELECT 
    p.PatientName
FROM 
    Patients p
INNER JOIN 
    PatientMovies pm ON p.PatientID = pm.PatientID
LEFT JOIN 
    PatientMedications pm2 ON p.PatientID = pm2.PatientID
WHERE 
    pm2.MedicationID IS NULL;