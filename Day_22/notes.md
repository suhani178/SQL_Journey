Day 22 Notes - SQL Constraints

What are Constraints?

Constraints are rules applied to table columns to ensure the accuracy, validity, and integrity of data stored in a database.

They help prevent invalid or duplicate data from being inserted.

---

Types of Constraints

- NOT NULL
- UNIQUE
- PRIMARY KEY
- FOREIGN KEY
- CHECK
- DEFAULT

---

1. NOT NULL

Ensures that a column cannot contain NULL values.

Example:

CREATE TABLE EMPLOYEE (
    EMPNO INT NOT NULL,
    ENAME VARCHAR(50) NOT NULL
);

---

2. UNIQUE

Ensures that all values in a column are different.

Example:

CREATE TABLE EMPLOYEE (
    EMAIL VARCHAR(100) UNIQUE
);

No two employees can have the same email.

---

3. PRIMARY KEY

Uniquely identifies each row in a table.

Properties:

- Must be unique.
- Cannot contain NULL values.
- Only one PRIMARY KEY is allowed per table.

Example:

CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50)
);

---

4. FOREIGN KEY

Creates a relationship between two tables.

Example:

CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50),
    DEPTNO INT,
    FOREIGN KEY (DEPTNO)
    REFERENCES DEPARTMENT(DEPTNO)
);

An employee's department number must exist in the DEPARTMENT table.

---

5. CHECK

Restricts the values that can be inserted into a column.

Example:

CREATE TABLE EMPLOYEE (
    AGE INT CHECK (AGE >= 18)
);

Only employees aged 18 or above can be inserted.

---

6. DEFAULT

Assigns a default value if no value is provided.

Example:

CREATE TABLE EMPLOYEE (
    CITY VARCHAR(30) DEFAULT 'Kolkata'
);

If CITY is not specified, it will automatically be set to Kolkata.

---

Summary

Constraint| Purpose
NOT NULL| Prevents NULL values
UNIQUE| Prevents duplicate values
PRIMARY KEY| Uniquely identifies each record
FOREIGN KEY| Maintains relationship between tables
CHECK| Restricts values based on a condition
DEFAULT| Assigns a default value

---

Key Learnings

- Constraints improve data integrity.
- PRIMARY KEY uniquely identifies each row.
- FOREIGN KEY connects related tables.
- UNIQUE prevents duplicate values.
- CHECK validates data before insertion.
- DEFAULT provides a value when none is supplied.
