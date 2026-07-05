-- Day 20 Practice SQL
-- Topic: SQL Problem Solving & Interview Practice

-- Q1: Display all employee names
SELECT ENAME
FROM EMPLOYEE;

-- Q2: Display employee names whose salary is greater than 3000
SELECT ENAME
FROM EMPLOYEE
WHERE SAL > 3000;

-- Q3: Display employee names working in the HR department
SELECT ENAME
FROM EMPLOYEE E
WHERE E.DEPTNO =
(
SELECT DEPTNO
FROM DEPARTMENT
WHERE DNAME = 'HR'
);

-- Q4: Display department number and employee count
SELECT DEPTNO, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPTNO;

-- Q5: Display department numbers having more than 3 employees
SELECT DEPTNO, COUNT()
FROM EMPLOYEE
GROUP BY DEPTNO
HAVING COUNT() > 3;

-- Q6: Display employee names and department names
SELECT ENAME, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

-- Q7: Display all employees and their department names
SELECT ENAME, DNAME
FROM EMPLOYEE E
LEFT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

-- Q8: Display all departments and their employees
SELECT DNAME, ENAME
FROM EMPLOYEE E
RIGHT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

-- Q9: Display employee names earning more than the average company salary
SELECT ENAME
FROM EMPLOYEE
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
);

-- Q10: Display employee names earning less than the average company salary
SELECT ENAME
FROM EMPLOYEE
WHERE SAL <
(
SELECT AVG(SAL)
FROM EMPLOYEE
);

-- Q11: Display employees earning the maximum salary in their department
SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

-- Q12: Display employees earning the minimum salary in their department
SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MIN(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

-- Q13: Display department names having employees
SELECT DNAME
FROM DEPARTMENT D
WHERE EXISTS
(
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO = D.DEPTNO
);

-- Q14: Display department names having no employees
SELECT DNAME
FROM DEPARTMENT D
WHERE NOT EXISTS
(
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO = D.DEPTNO
);

-- Q15: Display employee names in uppercase
SELECT UPPER(ENAME)
FROM EMPLOYEE;

-- Q16: Display the first 3 characters of employee names
SELECT SUBSTR(ENAME,1,3)
FROM EMPLOYEE;

-- Q17: Display the current date
SELECT CURDATE();

-- Q18: Display the current month name
SELECT MONTHNAME(CURDATE());

-- Q19: Display the square root of 144
SELECT SQRT(144);

-- Q20: Display 45.678 rounded to 2 decimal places
SELECT ROUND(45.678,2);
