
# Day 02 — Assignment: SQL Commands and Categories

**Learning Objective:** Identify SQL command categories and understand the purpose of common SQL commands.

---

## Section 1: Conceptual Questions

1. What does SQL stand for?
2. What is the purpose of SQL command categories?
3. What is DDL? Name four DDL commands.
4. What is DML? Name three DML commands.
5. What is DQL? Which command is commonly associated with it?
6. What is the purpose of DCL?
7. What is the purpose of TCL?
8. Differentiate between DDL and DML.
9. Explain the difference between `DELETE`, `TRUNCATE`, and `DROP`.
10. What is the difference between `COMMIT` and `ROLLBACK`?

## Section 2: Classify the Commands

Identify the category of each command: DDL, DML, DQL, DCL, or TCL.

| No. | SQL Command | Category |
|---:|---|---|
| 1 | `CREATE` | |
| 2 | `INSERT` | |
| 3 | `SELECT` | |
| 4 | `UPDATE` | |
| 5 | `GRANT` | |
| 6 | `COMMIT` | |
| 7 | `ALTER` | |
| 8 | `DELETE` | |
| 9 | `REVOKE` | |
| 10 | `ROLLBACK` | |
| 11 | `DROP` | |
| 12 | `TRUNCATE` | |

## Section 3: Identify the Appropriate Command

Write the SQL command that best matches each requirement.

1. Create a new database table.
2. Add a new record to a table.
3. Retrieve all columns from a table named `STUDENT`.
4. Change an existing student's name.
5. Remove a particular student record.
6. Add a new column to an existing table.
7. Grant a database user a specified privilege.
8. Make the current transaction's changes permanent.
9. Revert uncommitted transaction changes.
10. Remove a table and its structure.

## Section 4: Query-Writing Practice

Assume the following table structure:

`STUDENT(STUDENT_ID, NAME)`

Write SQL queries to:

1. Create the `STUDENT` table with `STUDENT_ID` as `INT` and `NAME` as `VARCHAR(50)`.
2. Insert a student with ID `101` and name `'Amit'`.
3. Retrieve all records from the `STUDENT` table.
4. Update the name of the student whose ID is `101` to `'Priya'`.
5. Delete the record whose student ID is `101`.

**Important:** Write each query independently. Do not execute the deletion query on important data without checking the target record.

---

## Completion Checklist

- [ ] I can explain all five SQL command categories.
- [ ] I can classify common SQL commands.
- [ ] I understand the difference between structure changes and data changes.
- [ ] I can identify the correct command for a given requirement.
- [ ] I have written all five SQL queries independently.
- [ ] I have reviewed and corrected my mistakes.
- [ ] 
