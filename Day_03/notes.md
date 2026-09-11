# Day 03 — AND, OR & NOT

## 1. AND Operator

AND is used to combine multiple conditions.

All conditions must be TRUE for a row to be selected.

Syntax:
SELECT column1, column2
FROM table_name
WHERE condition1 AND condition2;

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10 AND SAL > 2000;


## 2. OR Operator

OR is used to combine multiple conditions.

At least one condition must be TRUE.

Syntax:
SELECT column1, column2
FROM table_name
WHERE condition1 OR condition2;

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10 OR DEPTNO = 20;


## 3. NOT Operator

NOT reverses a condition.

If the condition is TRUE, NOT makes it FALSE.
If the condition is FALSE, NOT makes it TRUE.

Syntax:
SELECT column1, column2
FROM table_name
WHERE NOT condition;

Example:
SELECT *
FROM EMPLOYEE
WHERE NOT DEPTNO = 10;


## 4. Combining AND and OR

AND and OR can be used together to create more specific conditions.

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10 AND SAL > 2000
OR DEPTNO = 20 AND SAL > 3000;


## 5. Using Parentheses

Parentheses make the intended logic clear and control the order in which conditions are evaluated.

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10
AND (SAL > 2000 OR JOB = 'MANAGER');


## 6. AND with Comparison Operators

Example:
SELECT *
FROM EMPLOYEE
WHERE SAL >= 2000 AND SAL <= 4000;

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 20 AND SAL > 2500;


## 7. OR with Comparison Operators

Example:
SELECT *
FROM EMPLOYEE
WHERE SAL = 1250 OR SAL = 3000;

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10 OR DEPTNO = 30;


## 8. NOT with Comparison Operators

Example:
SELECT *
FROM EMPLOYEE
WHERE NOT SAL > 3000;

Example:
SELECT *
FROM EMPLOYEE
WHERE NOT DEPTNO = 20;


## 9. Key Difference

AND → All conditions must be TRUE.

OR → At least one condition must be TRUE.

NOT → Reverses the condition.


## 10. Operator Precedence

When AND and OR are used together:

1. Parentheses
2. NOT
3. AND
4. OR

Example:
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10
OR DEPTNO = 20
AND SAL > 2000;

Here, AND is evaluated before OR.

For clearer logic, use parentheses:

SELECT *
FROM EMPLOYEE
WHERE (DEPTNO = 10 OR DEPTNO = 20)
AND SAL > 2000;


## Key Takeaways

- AND requires all conditions to be TRUE.
- OR requires at least one condition to be TRUE.
- NOT reverses a condition.
- Parentheses should be used when combining complex conditions.
- AND has higher precedence than OR.
- These operators are used with WHERE to filter rows.