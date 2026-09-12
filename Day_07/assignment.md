# Day 07 — Numeric Functions + CASE Assignment

## Part A — Numeric Functions

1. Round the salary of all employees to the nearest integer.

2. Display employee names and their salaries rounded to 2 decimal places.

3. Use CEIL() to round 123.45 upward.

4. Use FLOOR() to round 123.99 downward.

5. Find the absolute value of -250 using ABS().

6. Display EMPNO and the remainder when EMPNO is divided by 2 using MOD().

7. Calculate 5 raised to the power of 2 using POWER().

8. Find the square root of 144 using SQRT().

9. Display ENAME and SAL, along with the remainder of SAL divided by 2.

## Part B — CASE

10. Display ENAME and SAL and classify employees as:
    - 'HIGH' if SAL >= 3000
    - 'MEDIUM' if SAL >= 2000
    - 'LOW' otherwise

11. Display ENAME and JOB and classify employees as:
    - 'LEADERSHIP' for MANAGER
    - 'SUPPORT' for CLERK
    - 'OTHER' for all other jobs

12. Create a CASE expression that classifies employees based on salary:
    - 'VERY HIGH' if SAL >= 4000
    - 'HIGH' if SAL >= 3000
    - 'MEDIUM' if SAL >= 2000
    - 'LOW' otherwise

13. Display ENAME, SAL, and a new column called SALARY_LEVEL using CASE.

14. Create a CASE expression that identifies employees as:
    - 'EVEN' if EMPNO is divisible by 2
    - 'ODD' otherwise

## Part C — Combining Concepts

15. Display ENAME, SAL, and the rounded salary using ROUND(), then classify the rounded salary using CASE.

16. Display ENAME, SAL, and classify employees as 'ABOVE 2500' or '2500 OR BELOW'.

17. Display ENAME, DEPTNO, and create a CASE expression:
    - 'DEPT 10' for department 10
    - 'DEPT 20' for department 20
    - 'OTHER DEPT' otherwise

18. Use MOD() and CASE together to classify EMPNO as EVEN or ODD.

## Part D — Conceptual

19. What is the difference between WHERE and CASE?

20. What is the purpose of ELSE in a CASE expression?

21. What happens if no WHEN condition matches and there is no ELSE?

22. Why does the order of WHEN conditions matter?

23. What does MOD() return?

24. Explain the difference between ROUND(), CEIL(), and FLOOR().

25. Write the general syntax of a CASE expression.