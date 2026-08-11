Day 10 Notes - ORDER BY with GROUP BY

ORDER BY with GROUP BY

Used to sort grouped results.

Example:

SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
ORDER BY SUM(SAL) DESC;

---

Sorting Aggregate Results

Total Salary Descending

SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
ORDER BY SUM(SAL) DESC;

Average Salary Descending

SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO
ORDER BY AVG(SAL) DESC;

Employee Count Descending

SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO
ORDER BY COUNT(*) DESC;

---

Multiple Column GROUP BY

Department and Job wise grouping:

SELECT DEPTNO, JOB, COUNT(*)
FROM EMP
GROUP BY DEPTNO, JOB;

---

Examples

Department and Job-wise Average Salary

SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB;

Department and Job-wise Total Salary

SELECT DEPTNO, JOB, SUM(SAL)
FROM EMP
GROUP BY DEPTNO, JOB;

Department and Job-wise Maximum Salary

SELECT DEPTNO, JOB, MAX(SAL)
FROM EMP
GROUP BY DEPTNO, JOB;

---

GROUP BY + HAVING + ORDER BY

SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 2000
ORDER BY AVG(SAL) DESC;

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

Interview Tips

Department-wise:

GROUP BY DEPTNO

Job-wise:

GROUP BY JOB

Department and Job-wise:

GROUP BY DEPTNO, JOB

---

Day 10 Summary

Key Learnings:

- ORDER BY with GROUP BY
- Aggregate Sorting
- Multiple Column GROUP BY
- GROUP BY + HAVING + ORDER BY

