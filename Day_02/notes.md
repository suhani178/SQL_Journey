# DAY 02 — SELECT & WHERE

> Focus: Retrieving data and filtering rows

---

## 1. SELECT

`SELECT` is used to retrieve data from a table.

### Basic Syntax

SELECT column_name
FROM table_name;

### Example

SELECT ENAME
FROM EMPLOYEE;

This retrieves the `ENAME` column from the `EMPLOYEE` table.

---

## 2. Selecting Multiple Columns

We can retrieve multiple columns by separating their names with commas.

### Example

SELECT ENAME, SAL
FROM EMPLOYEE;

This retrieves:

- Employee name
- Employee salary

---

## 3. Selecting All Columns

The `*` symbol is used to select all columns.

### Example

SELECT *
FROM EMPLOYEE;

This retrieves all columns and all rows from the `EMPLOYEE` table.

💡 Remember:

`*` means **all columns**.

---

# 4. WHERE Clause

`WHERE` is used to **filter rows based on a condition**.

### Basic Syntax

SELECT column_name
FROM table_name
WHERE condition;

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

This returns only employees whose salary is greater than 3000.

---

# 5. SELECT + WHERE

`SELECT` and `WHERE` are commonly used together.

### Example

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 3000;

### How to Read It

- `SELECT ENAME, SAL` → choose the columns to display
- `FROM EMPLOYEE` → get the data from EMPLOYEE
- `WHERE SAL > 3000` → filter the rows

### Easy Way to Remember

SELECT → **What columns?**

WHERE → **Which rows?**

---

# 6. Comparison Operators

Comparison operators are used to compare values inside a condition.

| Operator | Meaning |
|----------|---------|
| `=` | Equal to |
| `<>` | Not equal to |
| `!=` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |

---

# 7. Equal To (=)

`=` checks whether a value is exactly equal to another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL = 3000;

Meaning:

Return employees whose salary is exactly `3000`.

---

# 8. Not Equal To (<>)

`<>` checks whether a value is different from another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL <> 3000;

Meaning:

Return employees whose salary is not `3000`.

---

# 9. Not Equal To (!=)

`!=` can also be used for "not equal to".

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL != 3000;

In MySQL:

`<>` and `!=` both mean **not equal to**.

---

# 10. Greater Than (>)

`>` checks whether a value is greater than another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

### Result Logic

- `4000` → ✅ Included
- `5000` → ✅ Included
- `3000` → ❌ Not included
- `2500` → ❌ Not included

---

# 11. Less Than (<)

`<` checks whether a value is less than another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL < 3000;

### Result Logic

- `2000` → ✅ Included
- `2500` → ✅ Included
- `3000` → ❌ Not included
- `4000` → ❌ Not included

---

# 12. Greater Than or Equal To (>=)

`>=` means:

**Greater than OR equal to**

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;

### Result Logic

- `5000` → ✅ Included
- `4000` → ✅ Included
- `3000` → ✅ Included
- `2500` → ❌ Not included

---

# 13. Less Than or Equal To (<=)

`<=` means:

**Less than OR equal to**

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL <= 3000;

### Result Logic

- `2000` → ✅ Included
- `2500` → ✅ Included
- `3000` → ✅ Included
- `4000` → ❌ Not included

---

# 14. SELECT vs WHERE

| SELECT | WHERE |
|--------|-------|
| Chooses columns | Filters rows |
| Determines what to display | Determines which rows to display |
| Used to retrieve data | Used to apply conditions |

### Example

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 3000;

Here:

`SELECT ENAME, SAL` → What should I display?

`WHERE SAL > 3000` → Which employees should be displayed?

---

# 15. Does WHERE Modify Data?

❌ No.

`WHERE` only filters the rows returned by a query.

It does not:

- Delete rows
- Change values
- Permanently modify the table

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

This only displays matching employees.

Employees with salary `3000` or below still exist in the table.

---

# 16. Basic SQL Query Pattern

The basic pattern learned today is:

SELECT columns
FROM table_name
WHERE condition;

### Example

SELECT ENAME, JOB
FROM EMPLOYEE
WHERE SAL > 3000;

This pattern will be used throughout the SQL journey.

---

# 17. Practical Examples

### Example 1 — Salary greater than 5000

SELECT *
FROM EMPLOYEE
WHERE SAL > 5000;

### Example 2 — Salary exactly 3000

SELECT *
FROM EMPLOYEE
WHERE SAL = 3000;

### Example 3 — Salary below 2000

SELECT *
FROM EMPLOYEE
WHERE SAL < 2000;

### Example 4 — Salary at least 3000

SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;

### Example 5 — Salary at most 3000

SELECT *
FROM EMPLOYEE
WHERE SAL <= 3000;

### Example 6 — Salary not equal to 3000

SELECT *
FROM EMPLOYEE
WHERE SAL <> 3000;

---

# 18. Important Points to Remember

⭐ `SELECT` → retrieves data

⭐ `*` → all columns

⭐ `WHERE` → filters rows

⭐ `=` → equal to

⭐ `<>` / `!=` → not equal to

⭐ `>` → greater than

⭐ `<` → less than

⭐ `>=` → greater than or equal to

⭐ `<=` → less than or equal to

⭐ `WHERE` does not modify the original table

---

# 19. Interview Questions

### Q1. What is SELECT?

`SELECT` is used to retrieve data from a database table.

### Q2. What is WHERE?

`WHERE` is used to filter rows based on a specified condition.

### Q3. What is the difference between SELECT and WHERE?

`SELECT` determines which columns are retrieved, while `WHERE` determines which rows are returned.

### Q4. What does `*` mean in SELECT?

`*` represents all columns of the selected table.

### Q5. Does WHERE modify the original table?

No. `WHERE` only filters the result returned by the query.

### Q6. What is the difference between `=` and `>`?

`=` checks for equality, while `>` checks whether one value is greater than another.

### Q7. What is the difference between `<>` and `!=`?

Both represent "not equal to" in MySQL.

---

# 20. Quick Revision

SELECT → Retrieve data

WHERE → Filter rows

`*` → All columns

`=` → Equal to

`<>` / `!=` → Not equal to

`>` → Greater than

`<` → Less than

`>=` → Greater than or equal to

`<=` → Less than or equal to

---

# DAY 02 — FINAL TAKEAWAY

The most important query pattern from today is:

SELECT columns
FROM table_name
WHERE condition;

Think of it as:

**SELECT = What do I want?**

**FROM = Where is the data?**

**WHERE = Which rows do I want?**

This is one of the fundamental patterns used in SQL and will be the base for more advanced queries in the upcoming days.
