Day 2 Notes - Keys, Schema and SQL Categories

Keys in SQL

Keys are used to uniquely identify records and create relationships between tables.

Primary Key

A Primary Key uniquely identifies each row in a table.

Properties:

- Unique
- Cannot be NULL

Example:

CREATE TABLE STUDENT(
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

Candidate Key

A column that can uniquely identify records.

Example:

- RollNo
- Email

Both can be Candidate Keys.

Alternate Key

Candidate Keys that are not selected as Primary Key.

Composite Key

A key formed using multiple columns.

Example:

(StudentID, CourseID)

Foreign Key

A column that references the Primary Key of another table.

Used to create relationships between tables.

---

Schema

Schema is the structure or blueprint of a table.

Example:

STUDENT(
    RollNo INT,
    Name VARCHAR(50),
    Age INT
)

---

Common Data Types

INT

Stores integer values.

Example:

Age INT

VARCHAR(n)

Stores variable length text.

Example:

Name VARCHAR(50)

CHAR(n)

Stores fixed length text.

Example:

Gender CHAR(1)

DATE

Stores dates.

Example:

DOB DATE

DECIMAL

Stores decimal numbers.

Example:

Salary DECIMAL(10,2)

---

SQL Categories

DDL (Data Definition Language)

Commands:

- CREATE
- ALTER
- DROP
- TRUNCATE

DML (Data Manipulation Language)

Commands:

- INSERT
- UPDATE
- DELETE

DQL (Data Query Language)

Command:

- SELECT

DCL (Data Control Language)

Commands:

- GRANT
- REVOKE

TCL (Transaction Control Language)

Commands:

- COMMIT
- ROLLBACK
- SAVEPOINT

---

Day 2 Summary

Key Learnings:

- Keys
- Schema
- Data Types
- SQL Categories
