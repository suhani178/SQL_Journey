# Day 11 — Mistakes and Corrections

## 1. Comparison Operator Mistake

**Question:** Set the salary to 2500 for employees earning less than 2000.

**Incorrect Query:**
UPDATE EMPLOYEE
SET SAL = 2500
WHERE SAL > 2000;

**Correct Query:**
UPDATE EMPLOYEE
SET SAL = 2500
WHERE SAL < 2000;

**Explanation:**
The question asks for employees earning less than 2000.
- `<` means less than.
- `>` means greater than.

Always check the comparison operator against the question.


## 2. Percentage Calculation Mistake

**Question:** Increase the salary of employees earning between 2000 and 3000 by 10%.

**Incorrect Query:**
UPDATE EMPLOYEE
SET SAL = SAL * 1.15
WHERE SAL BETWEEN 2000 AND 3000;

**Correct Query:**
UPDATE EMPLOYEE
SET SAL = SAL * 1.10
WHERE SAL BETWEEN 2000 AND 3000;

**Explanation:**
The multiplier depends on the required percentage increase.

- 10% increase → multiply by 1.10
- 15% increase → multiply by 1.15
- 20% increase → multiply by 1.20

For example, a salary of 2000 after a 10% increase becomes 2200.


## 3. Multiple Column Update Mistake

**Question:** Update the salary to 4000 and department number to 30 for employee 105.

**Incorrect Query:**
UPDATE EMPLOYEE
SET SAL = 4000 AND DEPTNO = 30
WHERE EMPNO = 105;

**Correct Query:**
UPDATE EMPLOYEE
SET SAL = 4000,
    DEPTNO = 30
WHERE EMPNO = 105;

**Explanation:**
Use a comma to separate multiple column assignments in the SET clause.

- SET column1 = value1, column2 = value2
- WHERE condition1 AND condition2

Do not use AND to separate column assignments.


## 4. Important UPDATE Safety Rule

Always verify the WHERE condition before executing an UPDATE statement.

- An incorrect WHERE condition may modify unintended records.
- Omitting WHERE updates every row in the table.
- Use SELECT with the same WHERE condition to check the target rows before updating.


## 5. Key Takeaways

1. Check comparison operators carefully.
2. Calculate percentage increases correctly.
3. Use commas between multiple column assignments.
4. Verify the WHERE condition before updating data.
5. Remember that UPDATE modifies existing records.
