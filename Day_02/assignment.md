
# Day 02 — Assignment: SQL Commands and Categories

**Learning Objective:** Understand SQL command categories, identify common commands, and practise basic SQL statements.

---

## Section 1: Conceptual Questions

1. What does SQL stand for?
2. What is the purpose of SQL command categories?
3. What is DDL? Name four DDL commands.
4. What is DML? Name three DML commands.
5. What is DQL? Which command is commonly associated with it?
6. What is DCL? Name two commands belonging to this category.
7. What is TCL? Name three commands belonging to this category.
8. Differentiate between DDL and DML.
9. Explain the difference between `DELETE`, `TRUNCATE`, and `DROP`.
10. Differentiate between `COMMIT` and `ROLLBACK`.

## Section 2: Classify the SQL Commands

**Categories:** DDL — Data Definition Language; DML — Data Manipulation Language; DQL — Data Query Language; DCL — Data Control Language; TCL — Transaction Control Language.

Write the correct category for each command.

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

## Section 3: Choose the Appropriate SQL Command

Write the name of the SQL command that best matches each requirement.

1. Create a new database table.
2. Add a new record to a table.
3. Retrieve all columns from a table named `STUDENT`.
4. Modify an existing student's name.
5. Remove a particular student record.
6. Add a new column to an existing table.
7. Grant a specified database privilege to a user.
8. Make the current transaction's changes permanent.
9. Revert uncommitted transaction changes.
10. Remove a table along with its structure.

## Section 4: Query-Writing Practice

Assume the following table structure:

`STUDENT(STUDENT_ID, NAME)`

Write SQL queries to perform the following tasks.

1. Create a `STUDENT` table with `STUDENT_ID` as `INT` and `NAME` as `VARCHAR(50)`.
2. Insert a student with ID `101` and name `'Amit'`.
3. Retrieve all records from the `STUDENT` table.
4. Update the name of the student whose ID is `101` to `'Priya'`.
5. Delete the record whose student ID is `101`.

**Note:** Write each query independently. Before executing a deletion query, verify that the condition identifies the intended record.

---

## Completion Checklist

- [ ] I can explain all five SQL command categories.
- [ ] I can classify common SQL commands correctly.
- [ ] I understand the difference between DDL and DML.
- [ ] I can select an appropriate command for a given requirement.
- [ ] I have written all five SQL queries independently.
- [ ] I have checked my answers and corrected any mistakes.

---

**Next Topic:** Day 03 — `CREATE TABLE`, Data Types, and Constraints.
