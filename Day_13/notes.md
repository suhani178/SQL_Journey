Day 13 Notes - Introduction to Subqueries

What is a Subquery?

A subquery is a query inside another query.

SQL executes the inner query first and uses its result in the outer query.

Syntax:

SELECT column_name
FROM table_name
WHERE column_name operator
(
    SELECT column_name
    FROM table_name
);

---

How SQL Executes a Subquery

Example:

Display employees earning more than average salary.

SELECT ENAME
FROM EMPLOYEE
WHERE SAL >
(
    SELECT AVG(SAL)
    FROM EMPLOYEE
);

Execution:

Step 1:

SELECT AVG(SAL)
FROM EMPLOYEE;

Result:

2500

Step 2:

SELECT ENAME
FROM EMPLOYEE
WHERE SAL > 2500;

---

AVG() with Subquery

Display employees earning more than average salary.

SELECT ENAME
FROM EMPLOYEE
WHERE SAL >
(
    SELECT AVG(SAL)
    FROM EMPLOYEE
);

Display employees earning less than average salary.

SELECT ENAME
FROM EMPLOYEE
WHERE SAL <
(
    SELECT AVG(SAL)
    FROM EMPLOYEE
);

---

MAX() with Subquery

Display employees earning maximum salary.

SELECT ENAME
FROM EMPLOYEE
WHERE SAL =
(
    SELECT MAX(SAL)
    FROM EMPLOYEE
);

---

MIN() with Subquery

Display employees earning minimum salary.

SELECT ENAME
FROM EMPLOYEE
WHERE SAL =
(
    SELECT MIN(SAL)
    FROM EMPLOYEE
);

---

Subquery with Another Table

Display employees working in HR department.

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO =
(
    SELECT DEPTNO
    FROM DEPARTMENT
    WHERE DNAME = 'HR'
);

SQL first finds the department number of HR and then finds employees belonging to that department.

---

When to Use Subqueries

Use a subquery when SQL must find a value first.

Examples:

- Average Salary
- Maximum Salary
- Minimum Salary
- Department Number from Department Name

---

When Not to Use Subqueries

If the value is already known, use a simple query.

Example:

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO = 20;

No subquery is needed because the department number is already known.

---

Key Learnings

- A subquery is a query inside another query.
- SQL executes the inner query first.
- AVG(), MAX(), and MIN() are commonly used with subqueries.
- Subqueries can retrieve values from the same table or another table.
- Avoid unnecessary subqueries when the value is already known.

---

Day 13 Summary

Topics Covered:

- Introduction to Subqueries
- AVG() with Subquery
- MAX() with Subquery
- MIN() with Subquery
- Subquery with Another Table
- Single Row Subqueries
