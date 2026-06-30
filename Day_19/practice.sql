-- Day 19 Practice SQL
-- Topic: Mixed SQL Revision

-- Q1: Display employee names earning more than the average company salary
SELECT ENAME
FROM EMPLOYEE
WHERE SAL >
(
SELECT AVG(SAL)
FROM EMPLOYEE
);

-- Q2: Display employee names and department names
SELECT ENAME, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

-- Q3: Display department names having employees
SELECT DNAME
FROM DEPARTMENT D
WHERE EXISTS
(
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO = D.DEPTNO
);

-- Q4: Display employee names working in the HR department
SELECT ENAME
FROM EMPLOYEE E
WHERE E.DEPTNO =
(
SELECT DEPTNO
FROM DEPARTMENT
WHERE DNAME = 'HR'
);

-- Q5: Display employee names whose department exists
SELECT ENAME
FROM EMPLOYEE E
WHERE EXISTS
(
SELECT *
FROM DEPARTMENT D
WHERE E.DEPTNO = D.DEPTNO
);

-- Q6: Display employee names in uppercase
SELECT UPPER(ENAME)
FROM EMPLOYEE;

-- Q7: Display the first 3 characters of employee names
SELECT SUBSTR(ENAME,1,3)
FROM EMPLOYEE;

-- Q8: Display the current date and current month name
SELECT CURDATE(),
MONTHNAME(CURDATE());

-- Q9: Display the square root of 144
SELECT SQRT(144);

-- Q10: Display employees earning the maximum salary in their department
SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MAX(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

-- Q11: Display department names and employee count
SELECT DNAME, COUNT(*)
FROM EMPLOYEE E
RIGHT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME;

-- Q12: Display departments having an average salary greater than 3000
SELECT DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DNAME
HAVING AVG(SAL) > 3000;

-- Q13: Display employees earning the minimum salary in their department
SELECT ENAME
FROM EMPLOYEE E
WHERE SAL =
(
SELECT MIN(SAL)
FROM EMPLOYEE
WHERE DEPTNO = E.DEPTNO
);

-- Q14: Display all employees and their department names
SELECT ENAME, DNAME
FROM EMPLOYEE E
LEFT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

-- Q15: Display all departments and their employees
SELECT DNAME, ENAME
FROM EMPLOYEE E
RIGHT JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;
