# DAY 02 — PRACTICE
# SELECT, WHERE & COMPARISON OPERATORS

# Database/Table:
# EMPLOYEE

# ============================================
# PART A — SELECT
# ============================================

# 1. Display all columns and all rows.
SELECT *
FROM EMPLOYEE;


# 2. Display only employee name and salary.
SELECT ENAME, SAL
FROM EMPLOYEE;


# 3. Display employee name, job and salary.
SELECT ENAME, JOB, SAL
FROM EMPLOYEE;


# ============================================
# PART B — WHERE + COMPARISON OPERATORS
# ============================================

# 4. Employees whose salary is greater than 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;


# 5. Employees whose salary is exactly 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL = 3000;


# 6. Employees whose salary is less than 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL < 3000;


# 7. Employees whose salary is greater than or equal to 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;


# 8. Employees whose salary is less than or equal to 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL <= 3000;


# 9. Employees whose salary is not equal to 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL <> 3000;


# 10. Employees whose salary is not equal to 3000 using !=.
SELECT *
FROM EMPLOYEE
WHERE SAL != 3000;


# ============================================
# PART C — SELECT + WHERE
# ============================================

# 11. Display employee name and job
#     where salary is greater than 2500.
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE SAL > 2500;


# 12. Display employee name and salary
#     where salary is less than 2000.
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL < 2000;


# 13. Display employee name and job
#     where salary is exactly 5000.
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE SAL = 5000;


# 14. Display all columns
#     where salary is greater than or equal to 1500.
SELECT *
FROM EMPLOYEE
WHERE SAL >= 1500;


# 15. Display employee name and salary
#     where salary is less than or equal to 3000.
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL <= 3000;


# 16. Display employee name and salary
#     where salary is not equal to 1250.
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL <> 1250;


# ============================================
# PART D — PRACTICE YOURSELF
# ============================================

# 17. Display all employees whose salary is greater than 4000.


# 18. Display employee name and salary
#     of employees whose salary is less than 2500.


# 19. Display employee name and job
#     of employees whose salary is greater than or equal to 3000.


# 20. Display employee name and salary
#     of employees whose salary is not equal to 1500.


# ============================================
# QUICK REFERENCE
# ============================================

# SELECT → Retrieves data
# WHERE  → Filters rows
#
# =      → Equal to
# <>     → Not equal to
# !=     → Not equal to
# >      → Greater than
# <      → Less than
# >=     → Greater than or equal to
# <=     → Less than or equal to
#
# Basic pattern:
#
# SELECT columns
# FROM table_name
# WHERE condition;
