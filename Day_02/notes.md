
# Day 02 — SQL Commands and Categories

> **Learning Objective:** Understand the major categories of SQL commands, their purposes, and when they are used.

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

DDL commands create or modify database objects, such as tables.

| Command | Purpose |
|---|---|
| `CREATE` | Creates a database object |
| `ALTER` | Modifies an existing object's structure |
| `DROP` | Removes a database object |
| `TRUNCATE` | Removes all rows while retaining the table structure |

**Example:**

```sql
CREATE TABLE STUDENT (
    STUDENT_ID INT,
    NAME VARCHAR(50)
);
```

This creates a table named `STUDENT` with two columns.

## 4. DML — Data Manipulation Language

DML commands modify the data stored in tables.

| Command | Purpose |
|---|---|
| `INSERT` | Adds new records |
| `UPDATE` | Modifies existing records |
| `DELETE` | Removes records |

**Example:**

```sql
INSERT INTO STUDENT (STUDENT_ID, NAME)
VALUES (101, 'Amit');
```

This inserts a new student record into the table.

## 5. DQL — Data Query Language

DQL is used to retrieve data from database tables.

| Command | Purpose |
|---|---|
| `SELECT` | Retrieves data from one or more tables |

**Example:**

```sql
SELECT * FROM STUDENT;
```

The asterisk (`*`) selects all columns from the table.

## 6. DCL — Data Control Language

DCL commands manage access permissions in a database.

| Command | Purpose |
|---|---|
| `GRANT` | Grants specified privileges |
| `REVOKE` | Revokes specified privileges |

These commands are generally used by database administrators or other authorized users.

## 7. TCL — Transaction Control Language

TCL commands manage transactions and changes made during a transaction.

| Command | Purpose |
|---|---|
| `COMMIT` | Makes transaction changes permanent |
| `ROLLBACK` | Reverts uncommitted transaction changes |
| `SAVEPOINT` | Creates a point within a transaction for a possible rollback |

**Example:**

```sql
COMMIT;
```

This commits the current transaction where supported and applicable.

Transaction behavior depends on the database system and its configuration.

## 8. Important Differences

### DDL vs. DML

| DDL | DML |
|---|---|
| Works with database structure | Works with stored data |
| Example: `CREATE` | Example: `INSERT` |
| Defines or modifies database objects | Manipulates records |

### DELETE vs. TRUNCATE vs. DROP

| Command | Effect |
|---|---|
| `DELETE` | Removes records and can use a `WHERE` condition |
| `TRUNCATE` | Removes all rows while retaining the table structure |
| `DROP` | Removes the table itself, including its structure |

**Note:** Transaction and rollback behavior for these commands can vary between database systems.

## 9. Quick Revision

| Requirement | SQL Command |
|---|---|
| Create a table | `CREATE` |
| Change a table's structure | `ALTER` |
| Add a record | `INSERT` |
| Modify a record | `UPDATE` |
| Remove selected records | `DELETE` |
| Retrieve data | `SELECT` |
| Grant permissions | `GRANT` |
| Make transaction changes permanent | `COMMIT` |
| Revert uncommitted transaction changes | `ROLLBACK` |

## Key Takeaways

- **DDL** manages database structures.
- **DML** modifies stored data.
- **DQL** retrieves data.
- **DCL** manages access permissions.
- **TCL** manages transactions.

Understanding these categories helps you identify the purpose of a SQL command before executing it.

---

**Next Topic:** Day 03 — `CREATE TABLE`, Data Types, and Constraints.
