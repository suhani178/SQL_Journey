# Day 10 — notes.md

# SQL Day 10 — Database, Tables, Data Types & INSERT

## 1. CREATE DATABASE

Creates a new database.

Syntax:

CREATE DATABASE database_name;

Example:

CREATE DATABASE COMPANY;


## 2. USE

Selects the database that you want to work with.

Syntax:

USE database_name;

Example:

USE COMPANY;


## 3. CREATE TABLE

Creates a new table inside the selected database.

Syntax:

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype
);

Example:

CREATE TABLE EMPLOYEE (
    EMPNO INT,
    ENAME VARCHAR(50),
    SAL DECIMAL(10,2)
);


## 4. Common Data Types

### INT
Stores whole numbers.

Example:

EMPNO INT

### DECIMAL
Stores numbers with decimal values.

Example:

SAL DECIMAL(10,2)

### VARCHAR
Stores variable-length text.

Example:

ENAME VARCHAR(50)

### DATE
Stores dates.

Example:

HIREDATE DATE


## 5. INSERT INTO

Used to add new records to a table.

Syntax:

INSERT INTO table_name
VALUES (value1, value2, value3);

Example:

INSERT INTO EMPLOYEE
VALUES (101, 'SMITH', 2500);


## 6. INSERT Using Column Names

It is safer to specify the column names.

Syntax:

INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);

Example:

INSERT INTO EMPLOYEE (EMPNO, ENAME, SAL)
VALUES (102, 'ALLEN', 3000);


## 7. Insert Multiple Rows

Example:

INSERT INTO EMPLOYEE (EMPNO, ENAME, SAL)
VALUES
(103, 'WARD', 2000),
(104, 'JONES', 3500),
(105, 'MARTIN', 1800);


## 8. Viewing Inserted Data

Use SELECT:

SELECT * FROM EMPLOYEE;


## 9. Important Points

- CREATE DATABASE creates a database.
- USE selects the database.
- CREATE TABLE creates a table.
- Data types define what kind of data a column can store.
- INSERT INTO adds records.
- Text values are written inside single quotes.
- Numeric values normally do not require quotes.
- Column order and inserted values must match when column names are not specified.
- Specifying column names with INSERT is recommended.


## 10. Basic Flow

CREATE DATABASE
↓
USE DATABASE
↓
CREATE TABLE
↓
INSERT INTO
↓
SELECT


## Interview Revision

Q: What is CREATE DATABASE used for?

A: It creates a new database.

Q: What is USE used for?

A: It selects the database on which SQL operations will be performed.

Q: What is CREATE TABLE used for?
A: It creates a new table with specified columns and data types.

Q: What is VARCHAR?
A: A variable-length character/string data type.

Q: What is the purpose of a data type?
A: It defines the type of data that a column can store.

Q: What is INSERT INTO?
A: It is used to add records to a table.