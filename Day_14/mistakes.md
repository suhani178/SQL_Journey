# Day 14 Mistakes

## Mistake 1: Using = Instead of IN

Wrong:

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO =
(
SELECT DEPTNO
FROM DEPARTMENT
);

Reason:
The subquery may return multiple department numbers.

Correct:

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO IN
(
SELECT DEPTNO
FROM DEPARTMENT
);

---

## Mistake 2: Confusing IN and EXISTS

IN

* Compares values.
* Used when multiple values are returned.

Example:

WHERE DEPTNO IN
(
SELECT DEPTNO
FROM DEPARTMENT
);

EXISTS

* Checks whether matching rows exist.
* Returns TRUE or FALSE.

Example:

WHERE EXISTS
(
SELECT *
FROM DEPARTMENT D
WHERE E.DEPTNO = D.DEPTNO
);

---

## Mistake 3: Forgetting NOT IN

Wrong:

WHERE DEPTNO IN (10,20,30);

Reason:
Returns matching department numbers.

Correct:

WHERE DEPTNO NOT IN (10,20,30);

Returns non-matching department numbers.

---

## Mistake 4: Forgetting NOT EXISTS

Wrong:

WHERE EXISTS
(
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO = D.DEPTNO
);

Reason:
Returns matching departments.

Correct:

WHERE NOT EXISTS
(
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO = D.DEPTNO
);

Returns departments without employees.

---

## Mistake 5: Comparing Columns from Wrong Tables

Wrong:

WHERE EMPLOYEE.DEPTNO = EMPLOYEE.DEPTNO

Reason:
Both columns are from the same table.

Correct:

WHERE E.DEPTNO = D.DEPTNO

Always compare related columns from different tables.

---

## Key Learnings

* Use IN when multiple values are returned.
* Use NOT IN to exclude multiple values.
* Use EXISTS to check matching rows.
* Use NOT EXISTS to check non-matching rows.
* IN works with values.
* EXISTS works with rows.

---
