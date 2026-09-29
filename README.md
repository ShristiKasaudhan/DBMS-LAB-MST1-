# Database Management System (DBMS) - Lab MST 1

## Student Information
| Field | Details |
| :--- | :--- |
| **Name** | **Shristi Kasaudhan** |
| **UID** | **25BAI70609** |
| **Course** | Database Management Systems Lab |
| **Assignment** | Lab MST 1 Activity |
| **Database** | `StudentManagement` |

---

## 📌 Project Overview
This repository contains the SQL scripts and relational schema implementation developed for the **Student Management System** as part of the DBMS Lab MST 1 practical. The assignment demonstrates the end-to-end design, alteration, data manipulation, and querying of relational database tables using foreign key constraints in MySQL Workbench.

---

## 🗄️ Database & Schema Design

### 1. Database Initialization
```sql
CREATE DATABASE StudentManagement;
USE StudentManagement;
```

---

### 2. Entity Specifications

#### **A. Department Table**
Stores department details.
* **`Dept_ID`**: `INT` (Primary Key)
* **`Dept_Name`**: `VARCHAR(50)` (NOT NULL)

```sql
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50) NOT NULL
);
```

#### **B. Student Table**
Stores student records and links each student to their respective department.
* **`Student_ID`**: `INT` (Primary Key)
* **`Student_Name`**: `VARCHAR(50)` (NOT NULL)
* **`Age`**: `INT`
* **`Dept_ID`**: `INT` (Foreign Key referencing `Department(Dept_ID)`)
* **`City`**: `VARCHAR(30)` *(Added via `ALTER TABLE`)*

```sql
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Age INT,
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
```

---

## ⚙️ Operations & Query Walkthrough

### 1. Schema Alteration (DDL)
Added a new attribute `City` to the `Student` entity:
```sql
ALTER TABLE Student
ADD City VARCHAR(30);
```

---

### 2. Data Insertion (DML)
Populated both entities with sample records:

**Departments:**
```sql
INSERT INTO Department 
VALUES(101, 'Computer Science'),
(102, 'Information Technology'),
(103, 'Electronics'),
(104, 'Mechanical'),
(105, 'Civil');
```

**Students:**
```sql
INSERT INTO Student(Student_ID, Student_Name, Age, Dept_ID, City)
VALUES(1, 'Aman', 20, 101, 'Delhi'),
(2, 'Priya', 19, 102, 'Lucknow'),
(3, 'Rahul', 21, 103, 'Patna'),
(4, 'Neha', 20, 104, 'Jaipur'),
(5, 'Karan', 22, 105, 'Chandigarh');
```

---

### 3. Data Querying & Filtering
Filtered all students enrolled in the **Computer Science** department (`Dept_ID = 101`):
```sql
SELECT * FROM Student
WHERE Dept_ID = 101;
```

---

### 4. Data Manipulation (UPDATE & DELETE)
* **Update Record:** Transferred student with ID `1` to department `102`:
  ```sql
  UPDATE Student
  SET Dept_ID = 102
  WHERE Student_ID = 1;
  ```

* **Conditional Delete:** Removed student records where age exceeds `21`:
  ```sql
  DELETE FROM Student
  WHERE Age > 21;
  ```

* **Final Verification:**
  ```sql
  SELECT * FROM Student;
  ```

---

## 🚀 How to Execute the Script
1. Open **MySQL Workbench** or your preferred MySQL client.
2. Open the script file [`MST1_Lab_assignment.sql`](MST1_Lab_assignment.sql).
3. Execute the full script (`Ctrl + Shift + Enter` or `Cmd + Shift + Enter` on macOS).
