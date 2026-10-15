DAY 11 — SQL UPDATE: MISTAKES AND CORRECTIONS

1. Incorrect Comparison Operator

Mistake:
UPDATE EMPLOYEE
SET SAL = 2500
WHERE SAL > 2000;

Correct Query:
UPDATE EMPLOYEE
SET SAL = 2500
WHERE SAL < 2000;

Lesson:
< means less than.
> means greater than.
Always check the condition in the question carefully.


2. Incorrect Percentage Increase

Mistake:
UPDATE EMPLOYEE
SET SAL = SAL * 1.15
WHERE SAL BETWEEN 2000 AND 3000;

Correct Query:
UPDATE EMPLOYEE
SET SAL = SAL * 1.10
WHERE SAL BETWEEN 2000 AND 3000;

Lesson:
1.10 means a 10% increase.
1.15 means a 15% increase.
1.20 means a 20% increase.

Formula:
New Value = Original Value * (1 + Percentage / 100)


3. Incorrect Separator in SET Clause

Mistake:
UPDATE EMPLOYEE
SET SAL = 4000 AND DEPTNO = 30
WHERE EMPNO = 105;

Correct Query:
UPDATE EMPLOYEE
SET SAL = 4000, DEPTNO = 30
WHERE EMPNO = 105;

Lesson:
Use commas to separate multiple column assignments in SET.
Use AND to combine conditions in WHERE.


4. Important Safety Reminder

Always check the WHERE condition before executing UPDATE.

- An incorrect condition may update unintended records.
- Omitting WHERE updates every row in the table.
- Use SELECT with the same WHERE condition to verify which rows will be affected before updating.


DAY 11 — KEY TAKEAWAYS

- Check comparison operators carefully.
- Calculate percentage multipliers correctly.
- Use commas between multiple column assignments.
- Verify the WHERE condition before updating data.
- Check the affected rows after executing an UPDATE statement.
