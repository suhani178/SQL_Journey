Day 20 Notes - SQL Problem Solving & Interview Practice

Objective

Day 20 focuses on applying SQL concepts by solving practical problems commonly asked in coding interviews, college labs, and placement tests.

This day combines multiple SQL concepts instead of introducing new syntax.

---

Concepts Revised

1. Filtering Data

Used to retrieve specific records.

Example:

SELECT ENAME
FROM EMPLOYEE
WHERE SAL > 3000;

---

2. Aggregate Functions

Used to perform calculations on groups of rows.

Functions:

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

Example:

SELECT DEPTNO, AVG(SAL)
FROM EMPLOYEE
GROUP BY DEPTNO;

---

3. GROUP BY and HAVING

GROUP BY creates groups.

HAVING filters groups.

Example:

SELECT DEPTNO, COUNT()
FROM EMPLOYEE
GROUP BY DEPTNO
HAVING COUNT() > 3;

---

4. Joins

Used to combine data from multiple tables.

Types covered:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

Example:

SELECT ENAME, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

---

5. Subqueries

A query written inside another query.

Example:

SELECT ENAME
FROM EMPLOYEE
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
);

---

6. EXISTS

Checks whether matching rows exist.

Example:

SELECT DNAME
FROM DEPARTMENT D
WHERE EXISTS
(
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO = D.DEPTNO
);

---

7. Correlated Subqueries

The inner query depends on the outer query.

Example:

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

---

8. SQL Functions

String Functions

- UPPER()
- LOWER()
- LENGTH()
- CONCAT()
- SUBSTR()

Date Functions

- CURDATE()
- NOW()
- YEAR()
- MONTH()
- DAY()
- DAYNAME()
- MONTHNAME()
- DATE()

Numeric Functions

- ROUND()
- CEIL()
- FLOOR()
- ABS()
- MOD()
- POWER()
- SQRT()

---

Problem Solving Strategy

While solving SQL questions:

1. Read the question carefully.
2. Identify the required table(s).
3. Decide whether a JOIN is needed.
4. Check if GROUP BY or HAVING is required.
5. Decide if a subquery is needed.
6. Choose the appropriate SQL function.
7. Execute and verify the output.

---

Key Learnings

- Break complex SQL problems into smaller steps.
- Understand relationships between tables.
- Choose the correct JOIN based on the requirement.
- Differentiate between normal and correlated subqueries.
- Use SQL functions wherever required.
- Practice improves SQL query writing speed and accuracy.

