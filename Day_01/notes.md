# Day 01 | Database Fundamentals

> **Objective:** Understand databases, DBMS, RDBMS, and how data is organized.

## 1. What Is Data?

Data refers to raw facts or values that can be stored, processed, and analyzed.

**Examples:**
- Student name: Amit
- Student age: 20
- Department: CSE
- Marks: 85

## 2. What Is a Database?

A database is an organized collection of related data that can be accessed, managed, and updated efficiently.

**Example:** A college database may store student records, faculty details, course information, and examination results.

## 3. What Is a DBMS?

DBMS stands for **Database Management System**.

It is software that enables users to create, store, retrieve, update, and manage data in databases.

**Examples:**
- MySQL
- Oracle Database
- Microsoft SQL Server
- PostgreSQL

## 4. What Is an RDBMS?

RDBMS stands for **Relational Database Management System**.

It organizes data into tables consisting of rows and columns. Relationships between tables can be established using keys.

**Examples:** MySQL, PostgreSQL, Oracle Database, and Microsoft SQL Server.

## 5. DBMS vs. RDBMS

| DBMS | RDBMS |
|---|---|
| General term for database management software | A type of DBMS based on the relational model |
| Data organization depends on the database model | Data is organized into related tables |
| Features depend on the system | Supports relational features such as keys and integrity constraints |

## 6. How Is Data Organized?

Consider a STUDENT table:

| STUDENT_ID | NAME | DEPARTMENT |
|---:|---|---|
| 101 | Amit | CSE |
| 102 | Priya | IT |
| 103 | Rahul | CSE |

- **Table:** The structure that stores related data.
- **Row:** One complete record, such as Amit's details.
- **Column:** An attribute, such as NAME or DEPARTMENT.

## 7. What Is a Database Schema?

A schema describes the structure of a database, including its tables, columns, data types, constraints, and relationships.

For example, the STUDENT table has three columns:

- STUDENT_ID
- NAME
- DEPARTMENT

The schema defines how these columns are organized.

## 8. Day 1 Summary

| Concept | Meaning |
|---|---|
| Data | Individual facts or values |
| Database | Organized collection of data |
| DBMS | Software for managing databases |
| RDBMS | DBMS based on the relational model |
| Table | Data organized into rows and columns |
| Row | One record |
| Column | One attribute |
| Schema | Structure of a database |

## Key Takeaway

Before writing SQL queries, understand what a database stores, how its data is organized, and how a DBMS helps manage it.
