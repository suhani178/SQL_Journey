# Day 02 — SQL Commands and Categories

> **Learning objective:** Understand the major categories of SQL commands, their purposes, and when they are used.

---

## 1. What Is SQL?

SQL stands for **Structured Query Language**.

It is used to communicate with relational database systems to retrieve, insert, update, delete, and manage data and database structures.

## 2. Categories of SQL Commands

SQL commands are commonly classified into five categories.

| Category | Full Form | Purpose |
|---|---|---|
| DDL | Data Definition Language | Defines and modifies database structures |
| DML | Data Manipulation Language | Inserts, updates, and deletes data |
| DQL | Data Query Language | Retrieves data |
| DCL | Data Control Language | Manages database permissions |
| TCL | Transaction Control Language | Manages transactions |

## 3. DDL — Data Definition Language

DDL commands are used to create or modify database objects, such as tables.

| Command | Purpose |
|---|---|
| `CREATE` | Creates a database object |
| `ALTER` | Modifies an existing object's structure |
| `DROP` | Removes a database object |
| `TRUNCATE` | Removes all rows from a table while retaining its structure |

**Example:**

```sql
CREATE TABLE STUDENT (
    STUDENT_ID INT,
    NAME VARCHAR(50)
);
