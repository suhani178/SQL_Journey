# Day 04 — DISTINCT & ORDER BY

## NOTES

### 1. DISTINCT

DISTINCT removes duplicate rows from the result.

Syntax:
SELECT DISTINCT column_name
FROM table_name;

Example:
SELECT DISTINCT DEPTNO
FROM EMPLOYEE;


### 2. DISTINCT with Multiple Columns

DISTINCT considers the combination of all selected columns.

Example:
SELECT DISTINCT DEPTNO, JOB
FROM EMPLOYEE;


### 3. ORDER BY

ORDER BY is used to sort the result.

Syntax:
SELECT column1, column2
FROM table_name
ORDER BY column_name;


### 4. ASC

ASC sorts values in ascending order.

Example:
SELECT *
FROM EMPLOYEE
ORDER BY SAL ASC;

ASC is the default sorting order.


### 5. DESC

DESC sorts values in descending order.

Example:
SELECT *
FROM EMPLOYEE
ORDER BY SAL DESC;


### 6. ORDER BY with Text

Example:
SELECT ENAME, JOB
FROM EMPLOYEE
ORDER BY ENAME ASC;

Example:
SELECT ENAME, JOB
FROM EMPLOYEE
ORDER BY ENAME DESC;


### 7. ORDER BY Multiple Columns

Multiple columns can be used for sorting.

The first column is sorted first. If two rows have the same value, the next column is used.

Example:
SELECT ENAME, DEPTNO, SAL
FROM EMPLOYEE
ORDER BY DEPTNO ASC, SAL DESC;


### 8. DISTINCT with ORDER BY

Example:
SELECT DISTINCT DEPTNO
FROM EMPLOYEE
ORDER BY DEPTNO ASC;


### 9. WHERE with ORDER BY

WHERE filters the rows and ORDER BY sorts the filtered result.

Example:
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY SAL DESC;


### 10. Clause Order

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


### 11. DISTINCT vs ORDER BY

DISTINCT → Removes duplicate results.

ORDER BY → Sorts the result.

WHERE → Filters rows.


### KEY TAKEAWAYS

- DISTINCT removes duplicate results.
- ORDER BY sorts query results.
- ASC means ascending order.
- DESC means descending order.
- ASC is the default order.
- Multiple columns can be used with ORDER BY.
- WHERE filters rows before ORDER BY sorts the result.


# PRACTICE.SQL

SELECT DISTINCT DEPTNO
FROM EMPLOYEE;

SELECT DISTINCT JOB
FROM EMPLOYEE;

SELECT DISTINCT DEPTNO, JOB
FROM EMPLOYEE;

SELECT *
FROM EMPLOYEE
ORDER BY SAL ASC;

SELECT *
FROM EMPLOYEE
ORDER BY SAL DESC;

SELECT ENAME, JOB
FROM EMPLOYEE
ORDER BY ENAME ASC;

SELECT ENAME, JOB
FROM EMPLOYEE
ORDER BY ENAME DESC;

SELECT ENAME, DEPTNO, SAL
FROM EMPLOYEE
ORDER BY DEPTNO ASC, SAL DESC;

SELECT DISTINCT DEPTNO
FROM EMPLOYEE
ORDER BY DEPTNO ASC;

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY SAL DESC;

SELECT DISTINCT JOB
FROM EMPLOYEE
ORDER BY JOB ASC;

SELECT ENAME, SAL
FROM EMPLOYEE
ORDER BY SAL DESC;


# ASSIGNMENT

## Part A — DISTINCT

1. Display all unique department numbers.

2. Display all unique job titles.

3. Display unique combinations of department number and job.

4. Display unique department numbers in ascending order.

5. Display unique job titles in descending alphabetical order.


## Part B — ORDER BY

6. Display all employees sorted by salary in ascending order.

7. Display all employees sorted by salary in descending order.

8. Display employee names and salaries sorted by salary from highest to lowest.

9. Display employee names and jobs sorted alphabetically by employee name.

10. Display employee names and jobs sorted by job in descending order.


## Part C — Multiple Columns

11. Display employee name, department number and salary. Sort by department number in ascending order and salary in descending order.

12. Display employee name, job and salary. Sort by job in ascending order and salary in descending order.

13. Display employee name, department number and salary. Sort by department number in descending order and salary in ascending order.


## Part D — WHERE + ORDER BY

14. Display employees earning more than 2000, sorted by salary in descending order.

15. Display employees working in department 20, sorted by salary in ascending order.

16. Display employee names and salaries of employees earning less than 3000, sorted by salary in descending order.

17. Display employees in department 10 or 30, sorted by employee name in ascending order.


## Part E — Conceptual

18. What is the purpose of DISTINCT?

19. What is the difference between ASC and DESC?

20. What happens when multiple columns are used with ORDER BY?

21. Which sorting order is used by default if ASC or DESC is not specified?

22. What is the difference between DISTINCT and ORDER BY?


## Rules

- Use only concepts covered up to Day 04.
- Do not use IN, BETWEEN, LIKE, aggregate functions, GROUP BY, HAVING, JOINs or subqueries.


# MISTAKES

No mistakes recorded yet for Day 04.