Day 19 Mistakes and Learnings

Mistake 1: Forgetting GROUP BY Before HAVING

Wrong:

SELECT DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
HAVING AVG(SAL) > 3000;

Correct:

SELECT DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME
HAVING AVG(SAL) > 3000;

Reason:
HAVING filters groups, so GROUP BY must come before HAVING.

---

Mistake 2: Using the Wrong Table for DNAME

Wrong:

SELECT DNAME
FROM EMPLOYEE;

Correct:

SELECT DNAME
FROM DEPARTMENT;

Reason:
The DNAME column belongs to the DEPARTMENT table.

---

Mistake 3: Forgetting FROM in a Subquery

Wrong:

SELECT DEPTNO
WHERE DNAME = 'HR';

Correct:

SELECT DEPTNO
FROM DEPARTMENT
WHERE DNAME = 'HR';

Reason:
Every SELECT statement must specify the table using the FROM clause.

---

Mistake 4: Confusing Company Maximum with Department Maximum

Wrong:

SELECT ENAME
FROM EMPLOYEE
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
);

Correct:

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

Reason:
The first query returns the highest-paid employee in the entire company.
The second query returns the highest-paid employee in each department.

---

Mistake 5: Forgetting the JOIN

Wrong:

SELECT DNAME, COUNT(*)
FROM EMPLOYEE
GROUP BY DNAME;

Correct:

SELECT DNAME, COUNT(*)
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME;

Reason:
DNAME is stored in the DEPARTMENT table, so a JOIN is required.

---

Key Learnings

- Use GROUP BY before HAVING.
- Check which table contains the required column.
- Always include the FROM clause in subqueries.
- Correlated subqueries use the outer query alias (E.DEPTNO).
- Use JOINs whenever data comes from multiple tables.
- Understand the difference between company-wide and department-wise calculations.
