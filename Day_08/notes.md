Day 8 Notes - GROUP BY

What is GROUP BY?

GROUP BY is used to group rows having the same value.

Syntax:

SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;

---

Average Salary Department-wise

SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO;

---

Total Salary Department-wise

SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO;

---

Highest Salary Department-wise

SELECT DEPTNO, MAX(SAL)
FROM EMP
GROUP BY DEPTNO;

---

Lowest Salary Department-wise

SELECT DEPTNO, MIN(SAL)
FROM EMP
GROUP BY DEPTNO;

---

Employee Count Department-wise

SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO;

---

Job-wise Average Salary

SELECT JOB, AVG(SAL)
FROM EMP
GROUP BY JOB;

---

Job-wise Employee Count

SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB;

---

GROUP BY with WHERE

SELECT DEPTNO, AVG(SAL)
FROM EMP
WHERE SAL > 1000
GROUP BY DEPTNO;

---

Important Rule

Wrong:

SELECT ENAME, AVG(SAL)
FROM EMP
GROUP BY DEPTNO;

Reason:

ENAME is neither grouped nor aggregated.

Correct:

SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO;

---

SQL Execution Order

FROM

↓
WHERE

↓

GROUP BY

↓
SELECT

↓
ORDER BY

---

Interview Questions

What does GROUP BY do?

Groups rows having the same value.

Can GROUP BY be used without aggregate functions?

Yes.

SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO;

---

Day 8 Summary

Topics Covered:

- GROUP BY
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- WHERE + GROUP BY

