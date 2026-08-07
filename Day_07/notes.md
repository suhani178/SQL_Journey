Day 7 Notes - Aggregate Functions

What are Aggregate Functions?

Aggregate functions operate on multiple rows and return a single result.

Examples:

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

---

COUNT()

Counts rows.

SELECT COUNT(*)
FROM EMP;

Count non-NULL values:

SELECT COUNT(COMM)
FROM EMP;

---

SUM()

Returns the total of a numeric column.

SELECT SUM(SAL)
FROM EMP;

---

AVG()

Returns the average value.

SELECT AVG(SAL)
FROM EMP;

---

MIN()

Returns the smallest value.

SELECT MIN(SAL)
FROM EMP;

---

MAX()

Returns the largest value.

SELECT MAX(SAL)
FROM EMP;

---

Aggregate Functions with WHERE

Highest salary in department 20:

SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO = 20;

Number of clerks:

SELECT COUNT(*)
FROM EMP
WHERE JOB = 'CLERK';

---

Important Notes

- Aggregate functions ignore NULL values.
- COUNT(*) counts all rows.
- COUNT(column_name) counts only non-NULL values.

---

Interview Questions

Difference between COUNT(*) and COUNT(column)?

COUNT(*) counts all rows.

COUNT(column) counts only non-NULL values.

Which aggregate functions ignore NULL values?

- COUNT(column)
- SUM()
- AVG()
- MIN()
- MAX()

---

Day 7 Summary

Key Learnings:

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- Aggregate Functions with WHERE


