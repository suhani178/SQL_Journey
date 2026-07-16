Day 5 Assignment

Q1. Display employees from department 20 whose salary is greater than 1500.

SELECT *
FROM EMP
WHERE DEPTNO = 20
AND SAL > 1500;

Q2. Display employee names from department 20 whose salary is greater than 2500.

SELECT ENAME
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2500;

Q3. Display employees from department 30 whose salary is less than 2000.

SELECT *
FROM EMP
WHERE DEPTNO = 30
AND SAL < 2000;

Q4. Display employee names and salaries of employees from department 20 whose salary is greater than or equal to 3000.

SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO = 20
AND SAL >= 3000;

Q5. Display employees from department 10 or department 30.

SELECT *
FROM EMP
WHERE DEPTNO = 10
OR DEPTNO = 30;

Q6. Display employees whose salary is less than 1000 or greater than 3000.

SELECT *
FROM EMP
WHERE SAL < 1000
OR SAL > 3000;

Q7. Display employee names working in department 10 or 20.

SELECT ENAME
FROM EMP
WHERE DEPTNO = 10
OR DEPTNO = 20;

Q8. Display employees whose job is CLERK or MANAGER.

SELECT *
FROM EMP
WHERE JOB = 'CLERK'
OR JOB = 'MANAGER';

Q9. Display employees not working in department 20.

SELECT *
FROM EMP
WHERE NOT DEPTNO = 20;

Q10. Display employees whose salary is not equal to 3000.

SELECT *
FROM EMP
WHERE SAL <> 3000;

Q11. Display employee names not working as CLERK.

SELECT ENAME
FROM EMP
WHERE JOB <> 'CLERK';

Q12. Display employees from departments 10, 20, and 30 using IN.

SELECT *
FROM EMP
WHERE DEPTNO IN (10,20,30);

Q13. Display employee names from departments 10 and 20 using IN.

SELECT ENAME
FROM EMP
WHERE DEPTNO IN (10,20);

Q14. Display employees whose job is CLERK, MANAGER, or ANALYST using IN.

SELECT *
FROM EMP
WHERE JOB IN ('CLERK','MANAGER','ANALYST');

Q15. Display employees whose salary is between 1000 and 3000.

SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;

Q16. Display employee names whose salary is between 1500 and 5000.

SELECT ENAME
FROM EMP
WHERE SAL BETWEEN 1500 AND 5000;

Q17. Display employees whose salary is between 2000 and 4000.

SELECT *
FROM EMP
WHERE SAL BETWEEN 2000 AND 4000;

Q18. Display employee names and salaries whose salary is between 800 and 3000.

SELECT ENAME, SAL
FROM EMP
WHERE SAL BETWEEN 800 AND 3000;

Q19. Display all employees sorted by salary in ascending order.

SELECT *
FROM EMP
ORDER BY SAL ASC;

Q20. Display all employees sorted by salary in descending order.

SELECT *
FROM EMP
ORDER BY SAL DESC;

Q21. Display employee names sorted alphabetically.

SELECT ENAME
FROM EMP
ORDER BY ENAME ASC;

Q22. Display employee names sorted in reverse alphabetical order.

SELECT ENAME
FROM EMP
ORDER BY ENAME DESC;

Q23. Display employee names from department 20 whose salary is between 2000 and 5000.

SELECT ENAME
FROM EMP
WHERE DEPTNO = 20
AND SAL BETWEEN 2000 AND 5000;

Q24. Display employees from department 10 or 20 whose salary is greater than 2500.

SELECT *
FROM EMP
WHERE (DEPTNO = 10 OR DEPTNO = 20)
AND SAL > 2500;

Q25. Display employees not in department 30 and whose salary is greater than 1000.

SELECT *
FROM EMP
WHERE DEPTNO <> 30
AND SAL > 1000;

Q26. Display employee names and jobs from departments 10 and 20.

SELECT ENAME, JOB
FROM EMP
WHERE DEPTNO IN (10,20);

Q27. Display all employees sorted by department number.

SELECT *
FROM EMP
ORDER BY DEPTNO;

Q28. Display employee names whose salary is between 1000 and 5000 and who are not in department 30.

SELECT ENAME
FROM EMP
WHERE SAL BETWEEN 1000 AND 5000
AND DEPTNO <> 30;

---

Day 5 Learning Summary

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
