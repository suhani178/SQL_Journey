Day 12 Mistakes

Mistake 1: Using INNER JOIN for Unmatched Records

Wrong:

SELECT ENAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
WHERE DNAME IS NULL;

Reason:
INNER JOIN only returns matching rows.

Correct:
Use LEFT JOIN or RIGHT JOIN depending on the requirement.

---

Mistake 2: Wrong NULL Check

Wrong:

SELECT ENAME
FROM EMPLOYEE E
LEFT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
WHERE E.DEPTNO IS NULL;

Reason:
Employee exists. Department is missing.

Correct:

WHERE D.DEPTNO IS NULL;

---

Mistake 3: Using WHERE with FULL JOIN for All Records

Wrong:

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E
FULL JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DEPTNO IS NULL OR E.DEPTNO IS NULL;

Reason:
Returns only unmatched rows.

Correct:

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E
FULL JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

---

Mistake 4: Incorrect JOIN Selection

Employees without departments

Correct:

LEFT JOIN + D.DEPTNO IS NULL

Departments without employees

Correct:

RIGHT JOIN + E.DEPTNO IS NULL

---

Key Learnings

- INNER JOIN → Matching records only
- LEFT JOIN → All left table records
- RIGHT JOIN → All right table records
- FULL JOIN → All records from both tables
- Use IS NULL to find unmatched rows
- Choose JOIN based on which table must be preserved
