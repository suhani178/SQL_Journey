# Day 04 — DISTINCT and ORDER BY

## 1. DISTINCT

DISTINCT removes duplicate rows from the query result.

### Syntax

SELECT DISTINCT column_name
FROM table_name;

### Example

SELECT DISTINCT DEPTNO
FROM EMPLOYEE;

This returns each department number only once.

---

## 2. DISTINCT with Multiple Columns

When multiple columns are used with DISTINCT, SQL removes duplicate combinations of those columns.

### Example

SELECT DISTINCT DEPTNO, JOB
FROM EMPLOYEE;

Here, SQL returns each unique DEPTNO + JOB combination.

Important:
DISTINCT does not make each column individually unique.
It removes duplicate result rows based on the selected columns.

---

## 3. ORDER BY

ORDER BY sorts the result of a query.

### Ascending Order

SELECT *
FROM EMPLOYEE
ORDER BY SAL ASC;

ASC means ascending order.

For numbers:
Small → Large

For text:
A → Z

---

## 4. Descending Order

SELECT *
FROM EMPLOYEE
ORDER BY SAL DESC;

DESC means descending order.

For numbers:
Large → Small

For text:
Z → A

---

## 5. ORDER BY Without ASC or DESC

If no sorting direction is specified, ASC is the default.

Example:

SELECT *
FROM EMPLOYEE
ORDER BY SAL;

This is equivalent to:

SELECT *
FROM EMPLOYEE
ORDER BY SAL ASC;

---

## 6. ORDER BY with Multiple Columns

SQL can sort using multiple columns.

### Example

SELECT ENAME, DEPTNO, SAL
FROM EMPLOYEE
ORDER BY DEPTNO ASC, SAL DESC;

SQL first sorts by DEPTNO.

If multiple employees have the same DEPTNO, their salaries are sorted from highest to lowest.

General syntax:

ORDER BY column1 ASC, column2 DESC;

---

## 7. DISTINCT with ORDER BY

DISTINCT and ORDER BY can be used together.

### Example

SELECT DISTINCT DEPTNO
FROM EMPLOYEE
ORDER BY DEPTNO ASC;

DISTINCT removes duplicate department numbers, and ORDER BY sorts them.

---

## 8. WHERE with ORDER BY

WHERE filters rows, while ORDER BY sorts the remaining rows.

### Example

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY SAL DESC;

The query:

1. Selects employee names and salaries.
2. Keeps employees whose salary is greater than 2000.
3. Sorts the result by salary from highest to lowest.

---

## 9. Basic Clause Order

For the concepts learned so far:

SELECT
FROM
WHERE
ORDER BY

### Example

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY SAL DESC;

The query is written as:

SELECT → FROM → WHERE → ORDER BY