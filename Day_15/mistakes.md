# Day 15 Mistakes

## Mistake 1: Forgetting the Outer Alias

Wrong:

SELECT ENAME
FROM EMPLOYEE
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
WHERE DEPTNO = DEPTNO
);

Reason:

The inner query is not linked to the outer query.

Correct:

SELECT ENAME
FROM EMPLOYEE E
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

---

## Mistake 2: Using Wrong Alias

Wrong:

WHERE DEPTNO = D.DEPTNO

Reason:

Alias D does not exist in the query.

Correct:

WHERE DEPTNO = E.DEPTNO

Use the alias from the outer query.

---

## Mistake 3: Using MAX Instead of AVG

Question:

Employees earning more than average salary of their department.

Wrong:

SELECT MAX(SAL)

Correct:

SELECT AVG(SAL)

Read the question carefully.

---

## Mistake 4: Using > Instead of =

Question:

Employees earning maximum salary in their department.

Wrong:

SAL > MAX(SAL)

Correct:

SAL = MAX(SAL)

Maximum salary means equal to the maximum value.

---

## Mistake 5: Confusing Normal and Correlated Subqueries

Normal Subquery:

SELECT AVG(SAL)
FROM EMPLOYEE;

Correlated Subquery:

SELECT AVG(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO;

Remember:

Correlated subqueries use values from the outer query.

---

## Key Learnings

* Correlated subqueries use outer query aliases.
* E.DEPTNO links inner and outer queries.
* AVG() for average salary.
* MAX() for highest salary.
* MIN() for lowest salary.
* EXISTS checks matching rows.
* NOT EXISTS checks non-matching rows.

