-- Retrieve the names of students along with their enrollment dates
SELECT 
    s.StudentName, 
    e.EnrollmentDate
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID;

-- Get the names of students and the courses they are enrolled in
SELECT 
    s.StudentName, 
    c.CourseName
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID
INNER JOIN 
    Courses c ON e.CourseID = c.CourseID;

-- Retrieve all students and their enrollment dates, including those who have not enrolled in any courses.
SELECT 
    s.StudentName, 
    e.EnrollmentDate
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.StudentID = e.StudentID;

--  Find the number of courses each student is enrolled in
SELECT 
    s.StudentName, 
    COUNT(e.CourseID) AS EnrollmentCount
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.StudentID = e.StudentID
GROUP BY 
    s.StudentName;

--  List courses and the names of students enrolled in each course
SELECT 
    c.CourseName, 
    s.StudentName
FROM 
    Courses c
INNER JOIN 
    Enrollments e ON c.CourseID = e.CourseID
INNER JOIN 
    Students s ON e.StudentID = s.StudentID;

-- Retrieve the names of students who are not enrolled in any courses
SELECT 
    s.StudentName
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.StudentID = e.StudentID
WHERE 
    e.CourseID IS NULL;

-- Count how many students are enrolled in each course
SELECT 
    c.CourseName, 
    COUNT(e.StudentID) AS StudentCount
FROM 
    Courses c
LEFT JOIN 
    Enrollments e ON c.CourseID = e.CourseID
GROUP BY 
    c.CourseName;

-- Show students along with their enrollment dates for each course they are taking
SELECT 
    s.StudentName, 
    c.CourseName, 
    e.EnrollmentDate
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID
INNER JOIN 
    Courses c ON e.CourseID = c.CourseID;

-- Find students who are enrolled in more than one course
SELECT 
    s.StudentName
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID
GROUP BY 
    s.StudentName
HAVING 
    COUNT(e.CourseID) > 1;

-- Get the names of students enrolled in a specific course along with their enrollment dates
SELECT 
    s.StudentName, 
    e.EnrollmentDate
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID
WHERE 
    e.CourseID = 1;

--  List courses that currently have no students enrolled
SELECT 
    c.CourseName
FROM 
    Courses c
LEFT JOIN 
    Enrollments e ON c.CourseID = e.CourseID
WHERE 
    e.StudentID IS NULL;

--Get the first course each student enrolled in along with the enrollment date
SELECT 
    s.StudentName, 
    c.CourseName,
    MIN(e.EnrollmentDate) AS FirstEnrollmentDate
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID
INNER JOIN 
    Courses c ON e.CourseID = c.CourseID
GROUP BY 
    s.StudentName, c.CourseName;


-- Find students enrolled in courses during a specific date range
SELECT 
    s.StudentName, 
    c.CourseName, 
    e.EnrollmentDate
FROM 
    Students s
INNER JOIN 
    Enrollments e ON s.StudentID = e.StudentID
INNER JOIN 
    Courses c ON e.CourseID = c.CourseID
WHERE 
    e.EnrollmentDate BETWEEN '2023-01-01' AND '2023-12-31';

-- Identify the most popular courses based on student enrollments
SELECT 
    c.CourseName, 
    COUNT(e.StudentID) AS EnrollmentCount
FROM 
    Courses c
INNER JOIN 
    Enrollments e ON c.CourseID = e.CourseID
GROUP BY 
    c.CourseName
ORDER BY 
    EnrollmentCount DESC;

-- Find students who are taking the same course
SELECT 
    e1.StudentID AS Student1, 
    e2.StudentID AS Student2, 
    c.CourseName
FROM 
    Enrollments e1
INNER JOIN 
    Enrollments e2 ON e1.CourseID = e2.CourseID AND e1.StudentID <> e2.StudentID
INNER JOIN 
    Courses c ON e1.CourseID = c.CourseID;