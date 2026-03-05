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
 

