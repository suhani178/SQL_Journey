-- Day 21 Practice SQL
-- Topic: SQL Views

-- Q1: Create a view to display employee names and salaries
CREATE VIEW EMP_VIEW AS
SELECT ENAME, SAL
FROM EMPLOYEE;

-- Q2: Display all records from EMP_VIEW
SELECT *
FROM EMP_VIEW;

-- Q3: Create a view for employees with salary greater than 3000
CREATE VIEW HIGH_SALARY AS
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 3000;

-- Q4: Display all records from HIGH_SALARY
SELECT *
FROM HIGH_SALARY;

-- Q5: Create a view displaying employee names and department numbers
CREATE VIEW EMP_DEPT AS
SELECT ENAME, DEPTNO
FROM EMPLOYEE;

-- Q6: Modify EMP_VIEW to include department number
CREATE OR REPLACE VIEW EMP_VIEW AS
SELECT ENAME, SAL, DEPTNO
FROM EMPLOYEE;

-- Q7: Create a view for employees working in the HR department
CREATE VIEW HR_EMPLOYEES AS
SELECT E.ENAME, E.SAL
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'HR';

-- Q8: Display all records from HR_EMPLOYEES
SELECT *
FROM HR_EMPLOYEES;

-- Q9: Delete the HIGH_SALARY view
DROP VIEW HIGH_SALARY;

-- Q10: Delete the EMP_VIEW view
DROP VIEW EMP_VIEW;
