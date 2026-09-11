# Day 05 — Advanced Filtering Basics

## NOTES

### IN

IN checks whether a value matches any value in a list.

Syntax:
SELECT *
FROM table_name
WHERE column_name IN (value1, value2, value3);

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO IN (10, 20, 30);

### NOT IN

NOT IN excludes the specified values.

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO NOT IN (10, 20);

### IN with Text Values

SELECT *
FROM EMPLOYEE
WHERE JOB IN ('CLERK', 'MANAGER');

### IN vs OR

These queries produce the same result:

SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10 OR DEPTNO = 20 OR DEPTNO = 30;

SELECT *
FROM EMPLOYEE
WHERE DEPTNO IN (10, 20, 30);

### BETWEEN

BETWEEN checks whether a value falls within a specified range.

BETWEEN is inclusive, so both boundary values are included.

Syntax:
SELECT *
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

Example:
SELECT *
FROM EMPLOYEE
WHERE SAL BETWEEN 2000 AND 4000;

### NOT BETWEEN

NOT BETWEEN selects values outside the specified range.

Example:
SELECT *
FROM EMPLOYEE
WHERE SAL NOT BETWEEN 2000 AND 4000;

### Combining IN and BETWEEN

SELECT *
FROM EMPLOYEE
WHERE DEPTNO IN (10, 20)
AND SAL BETWEEN 2000 AND 4000;

### Key Differences

IN → Checks against a list of values.

NOT IN → Excludes a list of values.

BETWEEN → Checks whether a value is within a range.

NOT BETWEEN → Checks whether a value is outside a range.

### Key Takeaways

- IN is useful for checking multiple specific values.
- IN can replace multiple OR conditions.
- NOT IN excludes specified values.
- BETWEEN checks a range.
- BETWEEN includes both boundary values.
- NOT BETWEEN excludes a range.
- IN and BETWEEN can be combined with AND and OR.