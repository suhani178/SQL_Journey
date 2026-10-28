# Day 1: Database Fundamentals

## 1. What Is Data?

Data refers to raw facts or information that can be stored and processed.

Examples:
- Student name
- Student ID
- Age
- Department
- Marks

## 2. What Is a Database?

A database is an organized collection of related data that can be stored, accessed, managed, and updated efficiently.

Example: A college database may store student details, faculty information, courses, and examination results.

## 3. What Is a DBMS?

DBMS stands for Database Management System.

It is software used to create, store, retrieve, update, and manage data in a database.

Examples:
- MySQL
- Oracle Database
- Microsoft SQL Server
- PostgreSQL

## 4. What Is an RDBMS?

RDBMS stands for Relational Database Management System.

It stores data in tables consisting of rows and columns. Relationships between tables can be established using keys.

Examples:
- MySQL
- PostgreSQL
- Oracle Database
- Microsoft SQL Server

## 5. DBMS vs. RDBMS

| DBMS | RDBMS |
|---|---|
| General term for database management software | A type of DBMS based on the relational model |
| Data storage depends on the system | Data is organized into tables |
| Relationships depend on the database model | Tables can be related using keys |
| Features depend on the system | Relational systems commonly support constraints and referential integrity |

## 6. What Is a Table?

A table organizes related data into rows and columns.

Example: STUDENT

| STUDENT_ID | NAME | AGE | DEPARTMENT |
|---:|---|---:|---|
| 101 | Amit | 20 | CSE |
| 102 | Priya | 21 | IT |
| 103 | Rahul | 20 | CSE |

## 7. Rows and Columns

### Row
A row represents one complete record.

Example:
`101, Amit, 20, CSE`

### Column
A column represents a particular attribute of the records.

Examples:
- STUDENT_ID
- NAME
- AGE
- DEPARTMENT

## 8. What Is a Schema?

A schema describes the structure of a database, including tables, columns, data types, and relationships.

Example:

STUDENT(
    STUDENT_ID,
    NAME,
    AGE,
    DEPARTMENT
)

## 9. What Are Keys?

Keys help identify records and establish relationships between tables.

### Primary Key
- Uniquely identifies each row.
- Cannot contain duplicate values.
- Cannot contain NULL values.

Example: STUDENT_ID

### Foreign Key
- References a key in another table.
- Helps maintain referential integrity between related tables.

Note: Foreign keys and primary keys will be studied in greater detail in the relevant lessons.

## 10. Day 1 Summary

- Data consists of raw facts.
- A database stores organized data.
- A DBMS manages databases.
- An RDBMS organizes relational data into tables.
- Rows represent records.
- Columns represent attributes.
- A schema describes database structure.
- Keys identify records and connect related tables.

## Key Takeaway

Understand how data is organized before learning how to query it using SQL.
