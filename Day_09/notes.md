# Day 09 — SQL Language Categories

## 1. SQL Command Categories

SQL commands are commonly divided into five major categories:

1. DDL — Data Definition Language
2. DML — Data Manipulation Language
3. DQL — Data Query Language
4. DCL — Data Control Language
5. TCL — Transaction Control Language

Each category has a different purpose.

---

## 2. DDL — Data Definition Language

DDL is used to define and modify the structure of database objects such as tables.

Common DDL commands:

- CREATE
- ALTER
- DROP
- TRUNCATE

### CREATE

Used to create a database object.

Example:

CREATE TABLE EMPLOYEE (
    EMPNO INT,
    ENAME VARCHAR(50),
    SAL DECIMAL(10,2)
);

### ALTER

Used to modify the structure of an existing table.

Example:

ALTER TABLE EMPLOYEE
ADD COMM DECIMAL(10,2);

### DROP

Used to remove a database object completely.

Example:

DROP TABLE EMPLOYEE;

### TRUNCATE

Used to remove all rows from a table while keeping the table structure.

Example:

TRUNCATE TABLE EMPLOYEE;

---

## 3. DML — Data Manipulation Language

DML is used to add, modify, and remove data stored in tables.

Common DML commands:

- INSERT
- UPDATE
- DELETE

### INSERT

Adds new rows to a table.

Example:

INSERT INTO EMPLOYEE (EMPNO, ENAME, SAL)
VALUES (101, 'SMITH', 2000);

### UPDATE

Modifies existing rows.

Example:

UPDATE EMPLOYEE
SET SAL = 2500
WHERE EMPNO = 101;

### DELETE

Removes rows from a table.

Example:

DELETE FROM EMPLOYEE
WHERE EMPNO = 101;

---

## 4. DQL — Data Query Language

DQL is used to retrieve data from the database.

The main command is:

- SELECT

Example:

SELECT *
FROM EMPLOYEE;

Another example:

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2000;

SELECT retrieves data but does not modify the stored data.

---

## 5. DCL — Data Control Language

DCL is used to control access and permissions on database objects.

Common commands:

- GRANT
- REVOKE

### GRANT

Provides permissions to a user or role.

Example:

GRANT SELECT
ON EMPLOYEE
TO user1;

### REVOKE

Removes previously granted permissions.

Example:

REVOKE SELECT
ON EMPLOYEE
FROM user1;

---

## 6. TCL — Transaction Control Language

TCL is used to manage transactions.

Common commands:

- COMMIT
- ROLLBACK
- SAVEPOINT

### COMMIT

Permanently saves the changes made during a transaction.

Example:

COMMIT;

### ROLLBACK

Undoes uncommitted changes.

Example:

ROLLBACK;

### SAVEPOINT

Creates a point within a transaction to which you can later roll back.

Example:

SAVEPOINT sp1;

ROLLBACK TO sp1;

---

## 7. DDL vs DML vs DQL

### DDL

Works mainly with database structure.

Examples:

CREATE
ALTER
DROP
TRUNCATE

### DML

Works with the data stored in tables.

Examples:

INSERT
UPDATE
DELETE

### DQL

Retrieves data.

Example:

SELECT

---

## 8. DCL vs TCL

### DCL

Controls user permissions.

Examples:

GRANT
REVOKE

### TCL

Controls transactions and changes made during a transaction.

Examples:

COMMIT
ROLLBACK
SAVEPOINT

---

## 9. Important Difference: DELETE vs TRUNCATE vs DROP

### DELETE

Removes rows from a table.

Example:

DELETE FROM EMPLOYEE
WHERE DEPTNO = 10;

The table structure remains.

### TRUNCATE

Removes all rows from a table.

Example:

TRUNCATE TABLE EMPLOYEE;

The table structure remains.

### DROP

Removes the table itself.

Example:

DROP TABLE EMPLOYEE;

The table structure and its data are removed.

---

## 10. Quick Classification

CREATE → DDL

ALTER → DDL

DROP → DDL

TRUNCATE → DDL

INSERT → DML

UPDATE → DML

DELETE → DML

SELECT → DQL

GRANT → DCL

REVOKE → DCL

COMMIT → TCL

ROLLBACK → TCL

SAVEPOINT → TCL

---

## Key Takeaways

- DDL defines and changes database structure.
- DML modifies data stored in tables.
- DQL retrieves data.
- DCL manages permissions and access.
- TCL manages transactions.
- CREATE, ALTER, DROP, and TRUNCATE are DDL commands.
- INSERT, UPDATE, and DELETE are DML commands.
- SELECT is commonly classified as DQL.
- GRANT and REVOKE are DCL commands.
- COMMIT, ROLLBACK, and SAVEPOINT are TCL commands.
- DELETE removes rows.
- TRUNCATE removes all rows but keeps the table structure.
- DROP removes the table itself.