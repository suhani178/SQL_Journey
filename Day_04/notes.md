Day 4 Notes - SELECT, DISTINCT and WHERE Clause

SELECT Statement

Used to retrieve data from a table.

Syntax:

SELECT column_name
FROM table_name;

Example:

SELECT ENAME
FROM EMP;

---

SELECT *

Used to display all columns.

Example:

SELECT *
FROM EMP;

---

DISTINCT

Used to remove duplicate values.

Example:

SELECT DISTINCT JOB
FROM EMP;

Without DISTINCT:

CLERK
CLERK
MANAGER

With DISTINCT:

CLERK
MANAGER

---

WHERE Clause

Used to filter records.

Syntax:

SELECT column_name
FROM table_name
WHERE condition;

Example:

SELECT *
FROM EMP
WHERE DEPTNO = 20;

---

Comparison Operators

Equal To (=)

SELECT *
FROM EMP
WHERE DEPTNO = 20;

Greater Than (>)

SELECT *
FROM EMP
WHERE SAL > 2000;

Less Than (<)

SELECT *
FROM EMP
WHERE SAL < 2000;

Greater Than or Equal To (>=)

SELECT *
FROM EMP
WHERE SAL >= 3000;

Less Than or Equal To (<=)

SELECT *
FROM EMP
WHERE SAL <= 1600;

Not Equal To (<>)

SELECT *
FROM EMP
WHERE DEPTNO <> 30;

---

Key Points

- SELECT retrieves data.
- * means all columns.
- DISTINCT removes duplicates.
- WHERE filters rows.
- <> means Not Equal To.

---

Day 4 Summary

Learned:

- SELECT
- SELECT *
- DISTINCT
- WHERE
- =, >, <, >=, <=, <>
