Day 9 Notes - HAVING Clause

Why HAVING?

WHERE filters rows.

HAVING filters groups.

---

Problem

Wrong:

SELECT DEPTNO, AVG(SAL)
FROM EMP
WHERE AVG(SAL) > 2000
GROUP BY DEPTNO;

Reason:

WHERE cannot use aggregate functions.

---

HAVING Syntax

SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;

---

Example 1

Departments whose average salary is greater than 2000.

SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 2000;

---

Example 2

Departments whose total salary is greater than 10000.

SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) > 10000;

---

Example 3

Departments having more than 3 employees.

SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 3;

---

WHERE vs HAVING

WHERE:

- Filters rows
- Used before GROUP BY
- Cannot use aggregate functions

HAVING:

- Filters groups
- Used after GROUP BY
- Can use aggregate functions

---

WHERE + HAVING

SELECT DEPTNO, AVG(SAL)
FROM EMP
WHERE SAL > 1000
GROUP BY DEPTNO
HAVING AVG(SAL) > 2000;

---

SQL Execution Order

FROM
↓
WHERE
↓
GROUP BY
↓
HAVING
↓
SELECT
↓
ORDER BY

---

Interview Questions

Difference between WHERE and HAVING?

WHERE filters rows.

HAVING filters groups.

Can HAVING use aggregate functions?

Yes.

Can WHERE use aggregate functions?

No.

---

Day 9 Summary

Key Learnings:

- HAVING
- WHERE vs HAVING
- GROUP BY + HAVING
- Aggregate Functions with HAVING

