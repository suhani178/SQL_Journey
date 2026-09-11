
# Day 04 — DISTINCT & ORDER BY

## DISTINCT

DISTINCT removes duplicate rows from the result.

Syntax:
SELECT DISTINCT column_name
FROM table_name;

Example:
SELECT DISTINCT DEPTNO
FROM EMPLOYEE;

## DISTINCT with Multiple Columns

DISTINCT considers the combination of all selected columns.

Example:
SELECT DISTINCT DEPTNO, JOB
FROM EMPLOYEE;

## ORDER BY

ORDER BY is used to sort the result.

Syntax:
SELECT column1, column2
FROM table_name
ORDER BY column_name;

## ASC

ASC sorts values in ascending order.

Example:
SELECT *
FROM EMPLOYEE
ORDER BY SAL ASC;

ASC is the default sorting order.

## DESC

DESC sorts values in descending order.

Example:
SELECT *
FROM EMPLOYEE
ORDER BY SAL DESC;

## ORDER BY with Text

Example:
SELECT ENAME, JOB
FROM EMPLOYEE
ORDER BY ENAME ASC;

Example:
SELECT ENAME, JOB
FROM EMPLOYEE
ORDER BY ENAME DESC;

## ORDER BY with Multiple Columns

Multiple columns can be used for sorting.

The first column is sorted first. If two rows have the same value, the next column is used.

Example:
SELECT ENAME, DEPTNO, SAL
FROM EMPLOYEE
ORDER BY DEPTNO ASC, SAL DESC;

## DISTINCT with ORDER BY

Example:
SELECT DISTINCT DEPTNO
FROM EMPLOYEE
ORDER BY DEPTNO ASC;

## WHERE with ORDER BY

WHERE filters the rows and ORDER BY sorts the filtered result.

Example:
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY SAL DESC;

## Clause Order

The basic order is:

SELECT
FROM
WHERE
ORDER BY

Example:
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY SAL DESC;

## DISTINCT vs ORDER BY

DISTINCT → Removes duplicate results.

ORDER BY → Sorts the result.

WHERE → Filters rows.

## Key Takeaways

- DISTINCT removes duplicate results.
- ORDER BY sorts query results.
- ASC means ascending order.
- DESC means descending order.
- ASC is the default sorting direction.
- Multiple columns can be used with ORDER BY.
- WHERE filters rows before ORDER BY sorts the result.