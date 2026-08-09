Day 12 Notes - LEFT JOIN, RIGHT JOIN, FULL JOIN

Revision: INNER JOIN

INNER JOIN returns only matching rows from both tables.

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

Only matching records are displayed.

---

LEFT JOIN

LEFT JOIN returns:

- All rows from the LEFT table
- Matching rows from the RIGHT table

Syntax:

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E
LEFT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

If a match is not found, NULL is returned.

Example:

ENAME| DNAME
RAM| HR
SHYAM| SALES
BHIM| NULL

---

RIGHT JOIN

RIGHT JOIN returns:

- All rows from the RIGHT table
- Matching rows from the LEFT table

Syntax:

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E
RIGHT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

Example:

ENAME| DNAME
RAM| HR
SHYAM| SALES
NULL| IT

---

FULL JOIN

FULL JOIN returns:

- All rows from both tables
- Matching and unmatched records

Syntax:

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E
FULL JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

Example:

ENAME| DNAME
RAM| HR
SHYAM| SALES
BHIM| NULL
NULL| IT

---

Finding Unmatched Employees

Employees without departments:

SELECT E.ENAME
FROM EMPLOYEE E
LEFT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DEPTNO IS NULL;

---

Finding Unmatched Departments

Departments without employees:

SELECT D.DNAME
FROM EMPLOYEE E
RIGHT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
WHERE E.DEPTNO IS NULL;

---

NULL Values

NULL means:

- No value
- Missing value
- Unknown value

Check NULL using:

IS NULL

Example:

WHERE D.DEPTNO IS NULL;

---

Interview Questions

What does LEFT JOIN return?

All rows from the left table and matching rows from the right table.

---

What does RIGHT JOIN return?

All rows from the right table and matching rows from the left table.

---

What does FULL JOIN return?

All rows from both tables.

---

How to find unmatched records?

Use:

IS NULL

---

Quick Comparison

INNER JOIN

Only matching rows

LEFT JOIN

All left rows + matching right rows

RIGHT JOIN

All right rows + matching left rows

FULL JOIN

All rows from both tables

---

Day 12 Summary

Key Learnings:

- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
- NULL Handling
- Unmatched Records
