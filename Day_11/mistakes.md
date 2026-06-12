Day 11 Mistakes

Mistake 1: Missing Column Separator

Wrong:

SELECT ENAME DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

Reason:
Multiple columns must be separated by commas.

Correct:

SELECT ENAME, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

---

Mistake 2: Wrong Salary Column Name

Wrong:

SELECT ENAME, ESAL, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

Reason:
The salary column is SAL, not ESAL.

Correct:

SELECT ENAME, SAL, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

---

Mistake 3: Missing GROUP BY with Aggregate Functions

Wrong:

SELECT DNAME, COUNT(*)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

Reason:
COUNT(*) is an aggregate function. Department-wise counting requires GROUP BY.

Correct:

SELECT DNAME, COUNT(*)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME;

---

Mistake 4: Using ENAME Instead of DNAME

Wrong:

SELECT ENAME, AVG(SAL)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME;

Reason:
The question asked for department-wise average salary.

Correct:

SELECT DNAME, AVG(SAL)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME;

---

Mistake 5: Missing GROUP BY Before HAVING

Wrong:

SELECT DNAME, AVG(SAL)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
HAVING AVG(SAL) > 2000;

Reason:
HAVING works on groups. GROUP BY must come before HAVING.

Correct:

SELECT DNAME, AVG(SAL)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME
HAVING AVG(SAL) > 2000;

---

Mistake 6: Unnecessary GROUP BY

Wrong:

SELECT ENAME, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME;

Reason:
No aggregate function is used. GROUP BY is unnecessary.

Correct:

SELECT ENAME, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

---

Mistake 7: Missing GROUP BY Before ORDER BY Aggregate

Wrong:

SELECT DNAME, SUM(SAL)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
ORDER BY SUM(SAL) DESC;

Reason:
Department-wise total salary requires grouping first.

Correct:

SELECT DNAME, SUM(SAL)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME
ORDER BY SUM(SAL) DESC;

---

Key Learnings

- INNER JOIN returns matching records from both tables.
- Always use ON with JOIN.
- Aggregate functions usually require GROUP BY.
- HAVING is used after GROUP BY.
- ORDER BY is used for sorting.
- Department-wise = GROUP BY DNAME.
- Employee-wise display usually does not require GROUP BY.