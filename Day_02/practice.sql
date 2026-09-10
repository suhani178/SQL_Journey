-- Day 02: SELECT, WHERE & Comparison Operators
-- =========================================================
-- 1. SELECT
-- =========================================================

-- Select all columns
SELECT * FROM EMPLOYEE;

-- Select specific columns
SELECT EMPNO, ENAME, SAL FROM EMPLOYEE;

-- Select a single column
SELECT ENAME FROM EMPLOYEE;


-- =========================================================
-- 2. WHERE
-- =========================================================

-- Employees with salary greater than 2000
SELECT * FROM EMPLOYEE
WHERE SAL > 2000;

-- Employees with salary less than 2000
SELECT * FROM EMPLOYEE
WHERE SAL < 2000;

-- Employees with salary equal to 3000
SELECT * FROM EMPLOYEE
WHERE SAL = 3000;


-- =========================================================
-- 3. Comparison Operators
-- =========================================================

-- Equal to
SELECT * FROM EMPLOYEE
WHERE DEPTNO = 10;

-- Not equal to
SELECT * FROM EMPLOYEE
WHERE DEPTNO <> 10;

SELECT * FROM EMPLOYEE
WHERE DEPTNO != 10;

-- Greater than
SELECT * FROM EMPLOYEE
WHERE SAL > 2500;

-- Less than
SELECT * FROM EMPLOYEE
WHERE SAL < 2500;

-- Greater than or equal to
SELECT * FROM EMPLOYEE
WHERE SAL >= 2500;

-- Less than or equal to
SELECT * FROM EMPLOYEE
WHERE SAL <= 2500;


-- =========================================================
-- 4. SELECT + WHERE
-- =========================================================

-- Display employee name and salary
-- for employees earning more than 2500
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 2500;

-- Display employee number and name
-- for employees in department 20
SELECT EMPNO, ENAME
FROM EMPLOYEE
WHERE DEPTNO = 20;

-- Display employee name and job
-- for employees whose job is CLERK
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE JOB = 'CLERK';

-- Display employee name and salary
-- for employees earning 3000 or less
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL <= 3000;


-- =========================================================
-- 5. Practical Filtering Examples
-- =========================================================

-- Employees earning exactly 1250
SELECT * FROM EMPLOYEE
WHERE SAL = 1250;

-- Employees earning more than 1500
SELECT * FROM EMPLOYEE
WHERE SAL > 1500;

-- Employees earning less than 3000
SELECT * FROM EMPLOYEE
WHERE SAL < 3000;

-- Employees in department 30
SELECT ENAME, DEPTNO
FROM EMPLOYEE
WHERE DEPTNO = 30;

-- Employees who are MANAGER
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE JOB = 'MANAGER';


-- =========================================================
-- Key Pattern
-- =========================================================

-- SELECT chooses what columns to display.
-- WHERE chooses which rows to display.

SELECT column1, column2
FROM table_name
WHERE condition;
