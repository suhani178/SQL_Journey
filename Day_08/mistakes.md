Day 9 Mistakes

Mistake 1

Wrong:

SELECT DEPTNO, AVG(SAL)
FROM EMP
WHERE AVG(SAL) > 2000
GROUP BY DEPTNO;

Reason:
WHERE cannot use aggregate functions.

Correct:

SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 2000;

---

Learning

- WHERE filters rows.
- HAVING filters groups.
- HAVING can use aggregate functions.
- WHERE cannot use aggregate functions.

