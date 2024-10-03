-- Count the total number of students in the LMS
SELECT COUNT(*) AS TotalStudents FROM Students;

-- Calculate the average number of credits for all courses
SELECT AVG(Credits) AS AverageCredits FROM Courses;

-- Find the most recent enrollment date
SELECT MAX(EnrollmentDate) AS MostRecentEnrollment FROM Enrollments;

-- Find the minimum number of credits required for a course
SELECT MIN(Credits) AS MinimumCredits FROM Courses;

--Calculate the total number of credits for all courses
SELECT SUM(Credits) AS TotalCredits FROM Courses;

--- Combine lists of students and courses
SELECT StudentName AS Name FROM Students
UNION
SELECT CourseName AS Name FROM Courses;

-- Combine lists of students and courses, including duplicates
SELECT StudentName AS Name FROM Students
UNION ALL
SELECT CourseName AS Name FROM Courses;

---  Find names that are present in both students and courses
SELECT StudentName AS Name FROM Students
INTERSECT
SELECT CourseName AS Name FROM Courses;