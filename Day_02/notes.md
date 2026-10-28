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
This creates a table named STUDENT with two columns.
4. DML — Data Manipulation Language
DML commands modify the data stored in tables.
Command Purpose
INSERT Adds new records
UPDATE Modifies existing records
DELETE Removes selected records
Example:
This inserts a new student record into the table.
5. DQL — Data Query Language
DQL is used to retrieve data from database tables.
Command Purpose
The * symbol selects all columns from the table.
6. DCL — Data Control Language
DCL commands manage access permissions in a database.
Command Purpose
GRANT Grants specified privileges
REVOKE Revokes specified privileges
These commands are generally used by database administrators or authorized users.
7. TCL — Transaction Control Language
TCL commands manage transactions and changes made during a transaction.
Command Purpose
COMMIT Makes transaction changes permanent
ROLLBACK Reverts uncommitted transaction changes
SAVEPOINT Creates a point within a transaction for a possible rollback
Example:
