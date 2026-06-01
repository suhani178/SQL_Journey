Day 4 Assignment

Q1. Display all records.

SELECT *
FROM EMPLOYEE;

---

Q2. Display employee names only.

SELECT ENAME
FROM EMPLOYEE;

---

Q3. Display employee names and jobs.

SELECT ENAME, JOB
FROM EMPLOYEE;

---

Q4. Display employee names and salaries.

SELECT ENAME, SAL
FROM EMPLOYEE;

---

Q5. Display all distinct jobs.

SELECT DISTINCT JOB
FROM EMPLOYEE;

---

Q6. Display all distinct department numbers.

SELECT DISTINCT DEPTNO
FROM EMPLOYEE;

---

Q7. Display employees from department 20.

SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 20;

---

Q8. Display employees from department 10.

SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10;

---

Q9. Display employees whose salary is greater than 2000.

SELECT *
FROM EMPLOYEE
WHERE SAL > 2000;

---

Q10. Display employees whose salary is less than 2000.

SELECT *
FROM EMPLOYEE
WHERE SAL < 2000;

---

Q11. Display employees whose salary is greater than or equal to 3000.

SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;

---

Q12. Display employees whose salary is less than or equal to 1600.

SELECT *
FROM EMPLOYEE
WHERE SAL <= 1600;

---

Q13. Display employees who are not in department 30.

SELECT *
FROM EMPLOYEE
WHERE DEPTNO <> 30;

---

Q14. Display employees whose salary is not equal to 3000.

SELECT *
FROM EMPLOYEE
WHERE SAL <> 3000;

---

Q15. Display employee names of employees working in department 20.

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO = 20;

---

Q16. Display employee names and salaries of employees working in department 10.

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE DEPTNO = 10;

---

Q17. Display all columns of employees whose salary is greater than 2500.

SELECT *
FROM EMPLOYEE
WHERE SAL > 2500;

---

Q18. Display only the JOB column.

SELECT JOB
FROM EMPLOYEE;

---

Q19. Display EMPNO and ENAME.

SELECT EMPNO, ENAME
FROM EMPLOYEE;

---

Q20. Display all distinct salaries.

SELECT DISTINCT SAL
FROM EMPLOYEE;

---

Q21. Display employee names whose department number is not 20.

SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO <> 20;
