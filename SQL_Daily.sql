/* Day 1 */
CREATE DATABASE college;

USE college;

CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
age INT ,
branch VARCHAR(20),
email VARCHAR(20) UNIQUE,
created_at DATE DEFAULT '2026-03-01'
);

INSERT INTO students
 values(01 , 'Digambar' , 21 , 'computer' , 'digambar@2004', '2026-03-05');
 
 INSERT INTO students (id , name , age , branch , email , created_at) 
 VALUES
 (02 , 'Kundan' , 20, 'Mechanical' , 'kundan@2005' , '2026-03-05'),
 (03 , 'Shravan' , 21 , 'computer' , 'shravan@2004' , '2026-03-05'),
 (04 , 'Manav' , 21 , 'computer' , 'manav@2004' , '2026-03-05'),
 (05 , 'Pavan' , 20 , 'computer' , 'pavan@2004' , '2026-03-05');
 
 SELECT * FROM students;
 
 UPDATE students
 SET age = 21
 WHERE id = 02;
 
 DELETE FROM students
 WHERE id = 05;
 
 SELECT * FROM students;
 
 SELECT name , branch FROM students;
 
 UPDATE students
 SET branch = 'mechanical'
 WHERE id = 02;
 
 /* Day 2 */
 
 INSERT INTO students VALUES(05 , 'Pavan' , 20 , 'computer' , 'pavan@2004' , '2026-03-05');
 
 SELECT * FROM students;
 
 SELECT name , branch FROM students;
 
 SELECT *FROM students
 WHERE age > 20;
 
 SELECT * FROM students
 WHERE branch = 'computer';
 
 SELECT * FROM students
 WHERE age BETWEEN 21 AND 30;
 
 SELECT * FROM students
 WHERE branch = 'computer' OR branch = 'IT';
 
 SELECT * FROM students
 WHERE name LIKE 'M%';
 
SELECT * FROM students
ORDER BY age ASC;

SELECT * FROM students
ORDER BY age DESC;

/* Day 3 */

INSERT INTO students VALUES(06 , 'Om' , 19 , 'IT' , 'om@2006' , '2026-03-05');

INSERT INTO students 
VALUES
(07 , 'Harshal' , 22 , 'IT' , 'harshal@2006' , '2026-03-04'),
(08 , 'Manas' , 20 , 'civil' , 'manas@2005' , '2026-03-03'),
(09 , 'Aakash' , 23 , 'electrical' , 'Aakash@2003' , '2026-03-04');
 
 SELECT COUNT(*) FROM students;
 SELECT AVG(age) FROM students;
 SELECT COUNT(age) FROM students;
 SELECT MIN(age) FROM students;
 SELECT MAX(age) FROM students;
 SELECT SUM(age) FROM students;
 
 SELECT branch , COUNT(*)
 FROM students
 GROUP BY branch;
 
 SELECT branch , AVG(age)
 FROM students
 GROUP BY branch;
 
 SELECT branch , COUNT(*)
 FROM students
 GROUP BY branch
 HAVING COUNT(*) > 1;
 
  /* day 4 */
 
 CREATE TABLE courses(
 course_id INT PRIMARY KEY,
 course_name VARCHAR(20) NOT NULL,
 duration_month INT ,
 fees INT DEFAULT 10000
 );
 
INSERT INTO courses(course_id , course_name , duration_month , fees)
VALUES
(01 , 'DSA' , 12 , 20000),
(02 , 'JAVA Full Stack' , 4 , 15000),
(03 , 'SQL' , 2 , 5000),
(04 , 'MERN Full Stack' , 6 , 25000);

ALTER TABLE courses
ADD instructor_name VARCHAR(30);

ALTER TABLE courses
ADD CONSTRAINT UNIQUE(course_name);

UPDATE courses
SET instructor_name = 'Digambar Patil'
WHERE course_id = 01;

UPDATE courses
SET instructor_name = 'Kundan Patil'
WHERE course_id = 02;

UPDATE courses
SET instructor_name = 'Shravan Desale'
WHERE course_id = 03;

UPDATE courses
SET instructor_name = 'Aakash Patil'
WHERE course_id = 04;

ALTER TABLE courses
DROP duration_month;

SELECT * FROM courses;

/* Day 5 */
USE college;

CREATE TABLE marks(
student_id INT PRIMARY KEY,
subject VARCHAR(20),
marks INT 
);

INSERT INTO marks(student_id ,subject , marks)
VALUES
(01 , 'Math' , 95),
(02 , 'Physics', 85),
(03 , 'Chemistry' , 79),
(04 , 'Math' , 90),
(05 , 'Chemistry' , 76);


/* Print name and marks */

SELECT name , marks
FROM students
INNER JOIN marks
ON students.id = marks.student_id;


/* Print name , subject and marks */

SELECT name , subject ,marks
FROM students
INNER JOIN marks
ON students.id = marks.student_id;


/* Display all students whose marks greater than 70 */

SELECT name FROM students
INNER JOIN marks
ON students.id = marks.student_id
WHERE marks.marks > 70;


/* Display students from branch = 'CSE' along with their  subject and marks. */

SELECT name , subject , marks
FROM students
INNER JOIN marks
ON students.id = marks.student_id
WHERE students.branch = 'computer';


/* Day 6 */

INSERT INTO marks(student_id , subject)
VALUES
(06 , 'Math'),
(07 , 'Physics');

/* Display all students and their marks using LEFT JOIN. */

SELECT name , marks
FROM students
LEFT JOIN marks
ON students.id = marks.student_id;

SELECT * FROM students;

/* Display student name, subject and marks using LEFT JOIN. */

SELECT name , subject , marks 
FROM students
LEFT JOIN marks
ON students.id = marks.student_id;

/* Display all marks along with student names using RIGHT JOIN. */

SELECT students.name , marks.marks
FROM students
RIGHT JOIN marks
ON students.id = marks.student_id;

/* Find students who do NOT have any marks. */

SELECT name 
FROM students 
LEFT JOIN marks
ON students.id = marks.student_id
WHERE marks.marks IS null;

/*  Display students from branch = 'CSE' along with their marks using LEFT JOIN */

SELECT name , marks
FROM students
LEFT JOIN marks
ON students.id = marks.student_id
WHERE branch = 'computer';

 

