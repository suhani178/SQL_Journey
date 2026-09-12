# Day 07 — Numeric Functions + CASE

## 1. Numeric Functions

Numeric functions are used to perform calculations or manipulate numeric values.

---

## 2. ROUND()

`ROUND()` rounds a number to the specified number of decimal places.

### Syntax

ROUND(number, decimal_places)

### Example

SELECT ROUND(123.4567, 2);

Result:

123.46

### Using a Column

SELECT ENAME, ROUND(SAL, 0)
FROM EMPLOYEE;

---

## 3. CEIL()

`CEIL()` rounds a number up to the next integer.

### Example

SELECT CEIL(123.45);

Result:

124

---

## 4. FLOOR()

`FLOOR()` rounds a number down to the previous integer.

### Example

SELECT FLOOR(123.99);

Result:

123

---

## 5. ABS()

`ABS()` returns the absolute value of a number.

### Examples

SELECT ABS(-25);

Result:

25

SELECT ABS(25);

Result:

25

---

## 6. MOD()

`MOD()` returns the remainder after division.

### Syntax

MOD(number, divisor)

### Example

SELECT MOD(10, 3);

Result:

1

Because:

10 ÷ 3 = 3 remainder 1

### Using a Column

SELECT EMPNO, MOD(EMPNO, 2)
FROM EMPLOYEE;

This can be used to check whether a number is even or odd.

---

## 7. POWER()

`POWER()` raises a number to a specified power.

### Syntax

POWER(number, exponent)

### Example

SELECT POWER(2, 3);

Result:

8

Because:

2 × 2 × 2 = 8

---

## 8. SQRT()

`SQRT()` returns the square root of a number.

### Example

SELECT SQRT(25);

Result:

5

---

# 9. CASE Expression

`CASE` is used to perform conditional logic in SQL.

It is similar to an IF-ELSE structure in programming.

### Basic Syntax

CASE
    WHEN condition THEN result
    WHEN condition THEN result
    ELSE result
END

---

## 10. CASE with Salary

Example:

SELECT ENAME, SAL,
CASE
    WHEN SAL >= 3000 THEN 'HIGH'
    WHEN SAL >= 2000 THEN 'MEDIUM'
    ELSE 'LOW'
END AS SALARY_LEVEL
FROM EMPLOYEE;

The salary is categorized based on the conditions.

---

## 11. CASE Evaluation Order

SQL evaluates the `WHEN` conditions from top to bottom.

Example:

CASE
    WHEN SAL >= 3000 THEN 'HIGH'
    WHEN SAL >= 2000 THEN 'MEDIUM'
    ELSE 'LOW'
END

An employee with salary 3500 satisfies both conditions, but SQL returns `HIGH` because the first matching condition is used.

Therefore, the order of `WHEN` conditions matters.

---

## 12. ELSE in CASE

`ELSE` provides the result when none of the `WHEN` conditions are true.

Example:

CASE
    WHEN SAL >= 3000 THEN 'HIGH'
    WHEN SAL >= 2000 THEN 'MEDIUM'
    ELSE 'LOW'
END

If no ELSE is provided and no condition matches, the CASE expression returns `NULL`.

---

## 13. CASE with SELECT

CASE can be used to create a calculated or categorized column.

Example:

SELECT ENAME, JOB,
CASE
    WHEN JOB = 'MANAGER' THEN 'LEADERSHIP'
    WHEN JOB = 'CLERK' THEN 'SUPPORT'
    ELSE 'OTHER'
END AS JOB_CATEGORY
FROM EMPLOYEE;

---

## 14. CASE with Numeric Functions

Numeric functions and CASE can be combined.

Example:

SELECT ENAME, SAL,
CASE
    WHEN ROUND(SAL) >= 3000 THEN 'HIGH'
    ELSE 'LOW'
END AS SALARY_LEVEL
FROM EMPLOYEE;

---

## 15. CASE vs WHERE

`WHERE` is used to filter rows.

`CASE` is used to produce a conditional result.

### WHERE

SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

This removes rows that do not satisfy the condition.

### CASE

SELECT ENAME, SAL,
CASE
    WHEN SAL > 3000 THEN 'HIGH'
    ELSE 'LOW'
END AS SALARY_LEVEL
FROM EMPLOYEE;

This keeps the rows and creates a category for each row.

---

# Key Takeaways

- `ROUND()` rounds numbers.
- `CEIL()` rounds a number upward.
- `FLOOR()` rounds a number downward.
- `ABS()` returns the absolute value.
- `MOD()` returns the remainder.
- `POWER()` calculates a number raised to a power.
- `SQRT()` calculates the square root.
- `CASE` provides conditional logic in SQL.
- `WHEN` defines a condition.
- `THEN` defines the result when the condition is true.
- `ELSE` handles all remaining cases.
- CASE conditions are evaluated from top to bottom.
- The order of `WHEN` conditions matters.
- `WHERE` filters rows, while `CASE` creates conditional output.

---

# Interview Revision

### What is CASE in SQL?

CASE is an expression used to implement conditional logic and return different results based on conditions.

### What is the difference between WHERE and CASE?

WHERE filters rows from the result, while CASE evaluates conditions and produces a value for each applicable row.

### What happens when no CASE condition matches?

If an ELSE clause exists, its result is returned. If there is no ELSE clause, the result is NULL.

### Does CASE stop after the first matching WHEN?

Yes. SQL uses the result of the first matching WHEN condition.

### What does MOD() return?

MOD() returns the remainder after division.