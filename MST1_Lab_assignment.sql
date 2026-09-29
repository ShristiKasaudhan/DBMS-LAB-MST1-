CREATE DATABASE StudentManagement;
USE StudentManagement;

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50) NOT NULL
);

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Age INT,
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
INSERT INTO Department 
VALUES(101, 'Computer Science'),
(102, 'Information Technology'),
(103, 'Electronics'),
(104, 'Mechanical'),
(105, 'Civil');

ALTER TABLE Student
ADD City VARCHAR(30);

INSERT INTO Student(Student_ID, Student_Name, Age, Dept_ID, City)
VALUES(1, 'Aman', 20, 101, 'Delhi'),
(2, 'Priya', 19, 102, 'Lucknow'),
(3, 'Rahul', 21, 103, 'Patna'),
(4, 'Neha', 20, 104, 'Jaipur'),
(5, 'Karan', 22, 105, 'Chandigarh');

SELECT * FROM Student
WHERE Dept_ID = 101;

UPDATE Student
SET Dept_ID = 102
WHERE Student_ID = 1;

DELETE FROM Student
WHERE Age > 21;

SELECT * FROM Student;