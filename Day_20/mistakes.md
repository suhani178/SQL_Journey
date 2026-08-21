Day 20 Mistakes and Learnings

Mistake 1: Selecting All Columns Instead of Required Columns

Wrong:

SELECT *
FROM EMPLOYEE;

Correct answer:

SELECT ENAME
FROM EMPLOYEE;

Reason:
Read the question carefully. Select only the required columns instead of using "*".

---

Mistake 2: Forgetting GROUP BY with Aggregate Functions

Wrong:

SELECT DEPTNO, COUNT(*)
FROM EMPLOYEE;

Correct answer:

SELECT DEPTNO, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPTNO;

Reason:
When selecting a normal column with an aggregate function, GROUP BY is required.

---

Mistake 3: Forgetting GROUP BY Before HAVING

Wrong:

SELECT DEPTNO, COUNT()
FROM EMPLOYEE
HAVING COUNT() > 3;

Correct answer :

SELECT DEPTNO, COUNT()
FROM EMPLOYEE
GROUP BY DEPTNO
HAVING COUNT() > 3;

Reason:
HAVING filters grouped data, so GROUP BY must come first.

---

Mistake 4: Confusing Company-Wide and Department-Wise Calculations

Wrong:

SELECT ENAME
FROM EMPLOYEE
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
);

Correct answer:

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

Reason:
The first query returns the highest-paid employee in the company, while the second returns the highest-paid employee in each department.

---

Mistake 5: Using the Wrong JOIN

- INNER JOIN → Returns only matching rows.
- LEFT JOIN → Returns all rows from the left table.
- RIGHT JOIN → Returns all rows from the right table.

Reason:
Choose the JOIN type based on the question.

---

Mistake 6: Forgetting the FROM Clause in a Subquery

Wrong:

SELECT DEPTNO
WHERE DNAME = 'HR';

Correct answer:

SELECT DEPTNO
FROM DEPARTMENT
WHERE DNAME = 'HR';

Reason:
Every SELECT statement must specify the table using the FROM clause.

---

Mistake 7: Using the Wrong SQL Function

Examples:

- Use "UPPER()" to convert text to uppercase.
- Use "MONTHNAME()" to display the month name.
- Use "ROUND()" to round decimal numbers.

Reason:
Choose the function according to the question being asked.

---

Key Learnings:

- Read the question carefully before writing the query.
- Select only the required columns.
- Use GROUP BY with aggregate functions.
- Use HAVING to filter grouped data.
- Understand the difference between JOIN types.
- Know when to use subqueries and correlated subqueries.
- Choose the appropriate SQL function for the task.
- Practice writing queries without looking at notes.
