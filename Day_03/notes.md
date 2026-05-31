Day 3 Notes - CREATE TABLE, INSERT and Constraints

CREATE TABLE

Used to create a new table.

Syntax:

CREATE TABLE table_name(
    column1 datatype,
    column2 datatype
);

Example:

CREATE TABLE EMPLOYEE(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT
);

---

INSERT INTO

Used to insert records into a table.

Syntax:

INSERT INTO table_name
VALUES(value1, value2, value3);

Example:

INSERT INTO EMPLOYEE
VALUES(101,'Ram',1000);

---

NULL

NULL means:

- Unknown value
- Missing value

NULL is not:

- 0
- Empty string

Example:

INSERT INTO EMPLOYEE
VALUES(102,'Shyam',NULL);

---

Constraints

Constraints are rules applied to columns.

PRIMARY KEY

Properties:

- Unique
- Cannot be NULL

Example:

EmpID INT PRIMARY KEY

---

NOT NULL

Prevents NULL values.

Example:

Name VARCHAR(50) NOT NULL

---

UNIQUE

Prevents duplicate values.

Example:

Email VARCHAR(100) UNIQUE

---

Difference Between PRIMARY KEY and UNIQUE

PRIMARY KEY:

- Unique
- Cannot be NULL

UNIQUE:

- Unique
- NULL generally allowed

---

Day 3 Summary

Learned:

- CREATE TABLE
- INSERT INTO
- NULL values
- PRIMARY KEY
- UNIQUE
- NOT NULL
