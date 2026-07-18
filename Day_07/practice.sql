-- Day 07 Practice SQL
-- Topic: Aggregate Functions

-- Q1: Count total employees
SELECT COUNT(*)
FROM EMPLOYEE;

-- Q2: Count employees having salary greater than 3000
SELECT COUNT(*)
FROM EMPLOYEE
WHERE SAL > 3000;

-- Q3: Find the total salary of all employees
SELECT SUM(SAL)
FROM EMPLOYEE;

-- Q4: Find the average salary of all employees
SELECT AVG(SAL)
FROM EMPLOYEE;

-- Q5: Find the highest salary
SELECT MAX(SAL)
FROM EMPLOYEE;

-- Q6: Find the lowest salary
SELECT MIN(SAL)
FROM EMPLOYEE;

-- Q7: Display the highest and lowest salary together
SELECT MAX(SAL),
MIN(SAL)
FROM EMPLOYEE;

-- Q8: Display total salary and average salary
SELECT SUM(SAL),
AVG(SAL)
FROM EMPLOYEE;

-- Q9: Count employees working in department number 10
SELECT COUNT(*)
FROM EMPLOYEE
WHERE DEPTNO = 10;

-- Q10: Display total salary of employees working in department number 20
SELECT SUM(SAL)
FROM EMPLOYEE
WHERE DEPTNO = 20;
