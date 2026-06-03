Day 5 Notes - AND, OR, NOT, IN, BETWEEN, ORDER BY

AND Operator

Used when all conditions must be true.

Example:

SELECT *
FROM EMP
WHERE DEPTNO = 20
AND SAL > 1500;

---

OR Operator

Used when at least one condition must be true.

Example:

SELECT *
FROM EMP
WHERE DEPTNO = 10
OR DEPTNO = 30;

---

NOT Operator

Used to reverse a condition.

Example:

SELECT *
FROM EMP
WHERE NOT DEPTNO = 20;

---

IN Operator

Used to check multiple values in a column.

Example:

SELECT *
FROM EMP
WHERE DEPTNO IN (10,20,30);

Equivalent to:

SELECT *
FROM EMP
WHERE DEPTNO = 10
OR DEPTNO = 20
OR DEPTNO = 30;

---

BETWEEN Operator

Used to check values within a range.

Example:

SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;

Important:

BETWEEN includes both limits.

1000 ≤ SAL ≤ 3000

---

ORDER BY

Used to sort records.

Ascending Order

SELECT *
FROM EMP
ORDER BY SAL ASC;

Descending Order

SELECT *
FROM EMP
ORDER BY SAL DESC;

---

Operator Precedence

AND has higher priority than OR.

Example:

WHERE DEPTNO = 10
OR DEPTNO = 20
AND SAL > 2500

SQL interprets it as:

WHERE DEPTNO = 10
OR (DEPTNO = 20 AND SAL > 2500)

Use parentheses when needed:

WHERE (DEPTNO = 10 OR DEPTNO = 20)
AND SAL > 2500;

---

Interview Questions

Difference between AND and OR?

AND:

- All conditions must be true.

OR:

- At least one condition must be true.

Difference between IN and OR?

These are equivalent:

WHERE DEPTNO = 10
OR DEPTNO = 20
OR DEPTNO = 30;

WHERE DEPTNO IN (10,20,30);

IN is cleaner and easier to read.

Does BETWEEN include endpoints?

Yes.

BETWEEN 1000 AND 3000

means:

1000 ≤ value ≤ 3000

---

Day 5 Summary

Topics Covered:

- AND
- OR
- NOT
- IN
- BETWEEN
- ORDER BY
- ASC
- DESC
- Operator Precedence

