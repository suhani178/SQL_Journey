Day 13 Mistakes

Mistake 1: Comparing Different Data Types

Wrong:

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO = (
SELECT DNAME
FROM DEPARTMENT
WHERE DEPTNO = 20
);

Reason:
DEPTNO is numeric.
DNAME is text.

Correct:
Compare DEPTNO with DEPTNO.

---

Mistake 2: Using a Subquery When Value Is Already Known

Wrong:

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO = (
SELECT DEPTNO
FROM DEPARTMENT
WHERE DEPTNO = 20
);

Reason:
Department number is already known.

Correct:

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO = 20;

---

Mistake 3: Forgetting What SQL Must Find First

For subqueries always ask:

What value should SQL find first?

Examples:

- AVG(SAL)
- MAX(SAL)
- MIN(SAL)
- DEPTNO from DNAME

Then use that result in the outer query.

---

Key Learnings

- A subquery is a query inside another query.
- SQL executes the inner query first.
- AVG(), MAX(), and MIN() are common with subqueries.
- Use subqueries when a value must be found first.
- Avoid unnecessary subqueries when the value is already known.

