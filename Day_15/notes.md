# Day 15 Notes - Correlated Subqueries

## What is a Correlated Subquery?

A correlated subquery is a subquery that depends on the outer query.

The inner query uses a column from the outer query.

Example:

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

Here, E.DEPTNO comes from the outer query.

---

## Difference Between Normal and Correlated Subquery

Normal Subquery:

* Runs once.
* Independent of outer query.

Example:

SELECT ENAME
FROM EMPLOYEE
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
);

Correlated Subquery:

* Runs for each row.
* Depends on outer query.

Example:

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

---

## Common Patterns

Maximum Salary in Department

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

Minimum Salary in Department

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MIN(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

---

## Memory Trick

Average salary of company
→ Normal Subquery

Average salary of their department
→ Correlated Subquery

Maximum salary in their department
→ Correlated Subquery

Minimum salary in their department
→ Correlated Subquery

---
