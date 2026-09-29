# Student Management System - SQL Lab Assignment (MST-1)

This repository contains SQL scripts executed on MySQL Workbench for the **StudentManagement** database activity.

## Schema Details

### 1. `Department` Table
- `Dept_ID` (INT, Primary Key)
- `Dept_Name` (VARCHAR(50), NOT NULL)

### 2. `Student` Table
- `Student_ID` (INT, Primary Key)
- `Student_Name` (VARCHAR(50), NOT NULL)
- `Age` (INT)
- `Dept_ID` (INT, Foreign Key referencing `Department(Dept_ID)`)
- `City` (VARCHAR(30))

## Operations Covered
- **Database & Table Creation**: Initialized `StudentManagement` database and relational tables with foreign key constraints.
- **DDL Alterations**: Added `City` attribute to `Student` table.
- **Data Insertion**: Populated records for departments and students.
- **Data Retrieval (Queries)**: Filtered students by department.
- **Data Manipulation**: Performed `UPDATE` and `DELETE` operations based on specific criteria.
