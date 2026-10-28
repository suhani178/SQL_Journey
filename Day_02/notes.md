# Day 2: Tables, Rows, Columns, Keys, and Schema

## 1. What Is a Table?

A table stores related data in rows and columns.

Example: STUDENT

| STUDENT_ID | NAME | AGE | DEPARTMENT |
|---:|---|---:|---|
| 101 | Amit | 20 | CSE |
| 102 | Priya | 21 | IT |
| 103 | Rahul | 20 | CSE |

## 2. Rows and Columns

### Row
A row represents one complete record in a table.

Example:
101, Amit, 20, CSE

### Column
A column represents an attribute of the stored data.

Examples:
- STUDENT_ID
- NAME
- AGE
- DEPARTMENT

## 3. What Is a Schema?

A schema describes the structure of a database, including its tables, columns, data types, constraints, and relationships.

Example:

STUDENT(
    STUDENT_ID,
    NAME,
    AGE,
    DEPARTMENT
)

## 4. What Are Keys?

Keys help identify records and establish relationships between tables.

### Primary Key
- Uniquely identifies each row.
- Does not allow duplicate values.
- Does not allow NULL values.

Example: STUDENT_ID

### Foreign Key
- References a key in another table.
- Helps maintain relationships between tables.
- Supports referential integrity.

Example:

A DEPARTMENT_ID in a STUDENT table may reference DEPARTMENT_ID in a DEPARTMENT table.

### Candidate Key
A candidate key is a column or combination of columns that can uniquely identify a row.

A table may have multiple candidate keys, but one is selected as the primary key.

### Composite Key
A composite key consists of two or more columns used together to uniquely identify a row.

Example:
(STUDENT_ID, COURSE_ID)

This combination could identify a student's enrollment in a course.

## 5. Primary Key vs. Foreign Key

| Primary Key | Foreign Key |
|---|---|
| Uniquely identifies a row | References a key in another table |
| Cannot contain NULL values | Can contain NULL values if permitted by the schema |
| Must be unique | May contain duplicate values |
| One primary key constraint per table | A table can have multiple foreign key constraints |

## 6. Why Are Keys Important?

- Prevent duplicate identification of records.
- Connect related tables.
- Maintain data consistency.
- Support reliable database queries.

## 7. Day 2 Summary

- A table stores data in rows and columns.
- A row represents a record.
- A column represents an attribute.
- A schema defines database structure.
- A primary key uniquely identifies a row.
- A foreign key establishes a reference to another table's key.
- Candidate keys can uniquely identify records.
- Composite keys use multiple columns together.

## Key Takeaway

Understanding table structure and keys is essential before learning how to create and query relational tables.
