Day 8 Mistakes

Mistake 1

Wrong:

SELECT DEPTNO, AVG(SAL)
WHERE SAL > 1000
FROM EMP;

Reason:
SQL clause order is incorrect.

Correct:

SELECT DEPTNO, AVG(SAL)
FROM EMP
WHERE SAL > 1000
GROUP BY DEPTNO;

---

Learning

- GROUP BY groups rows.
- Aggregate functions work with GROUP BY.
- WHERE comes before GROUP BY.
- Department-wise = GROUP BY DEPTNO.
- Job-wise = GROUP BY JOB.

