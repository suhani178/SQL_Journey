
# Day 02 — SQL Commands and Categories

> **Objective:** Understand SQL command categories, identify common commands, and distinguish between database structure, data manipulation, permissions, and transactions.

---

## Section 1: Conceptual Understanding

Answer the following questions in your own words.

1. What does SQL stand for, and what is it used for?
2. What are the five commonly taught categories of SQL commands?
3. Explain DDL and mention its common commands.
4. Explain DML and mention its common commands.
5. What is DQL? Which command is commonly associated with it?
6. What is the purpose of DCL?
7. What is the purpose of TCL?
8. Differentiate between DDL and DML.
9. Explain the difference between `DELETE`, `TRUNCATE`, and `DROP`.
10. Differentiate between `COMMIT` and `ROLLBACK`.

## Section 2: Classify the SQL Commands

Identify the correct category for each command.

Use these categories:

- DDL — Data Definition Language
- DML — Data Manipulation Language
- DQL — Data Query Language
- DCL — Data Control Language
- TCL — Transaction Control Language

| No. | SQL Command |
|---:|---|
| 1 | `CREATE` |
| 2 | `INSERT` |
| 3 | `SELECT` |
| 4 | `UPDATE` |
| 5 | `GRANT` |
| 6 | `COMMIT` |
| 7 | `ALTER` |
| 8 | `DELETE` |
| 9 | `REVOKE` |
| 10 | `ROLLBACK` |
| 11 | `DROP` |
| 12 | `TRUNCATE` |

## Section 3: Choose the Appropriate SQL Command

Identify the SQL command that best matches each requirement.

1. Create a new database table.
2. Add a new record to an existing table.
3. Retrieve records from a table.
4. Modify an existing record.
5. Remove a specific record from a table.
6. Add a new column to an existing table.
7. Grant a database user a specified privilege.
8. Make the current transaction's changes permanent.
9. Revert uncommitted transaction changes.
10. Remove a table and its structure.

## Section 4: SQL Query-Writing Practice

Assume the following table structure:

`STUDENT(STUDENT_ID, NAME)`

Write SQL queries to perform these tasks.

1. Create a `STUDENT` table with `STUDENT_ID` of type `INT` and `NAME` of type `VARCHAR(50)`.
2. Insert a student with ID `101` and name `'Amit'`.
3. Retrieve all records from the `STUDENT` table.
4. Change the name of the student with ID `101` to `'Priya'`.
5. Delete the record of the student whose ID is `101`.

## Submission Guidelines

- Attempt every question independently.
- Use correct SQL syntax and appropriate command names.
- Keep query formatting readable.
- Review each query before executing it.
- Do not execute data-modification queries on important databases without verifying the target records.

---

**Day 02 Complete:** Review your answers and identify concepts that need further practice.

**Next Topic:** Day 03 — `CREATE TABLE`, Data Types, and Constraints.
