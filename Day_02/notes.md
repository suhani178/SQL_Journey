# DAY 02 — SELECT & WHERE

## 1. SELECT

`SELECT` is used to retrieve data from a table.

### Syntax

SELECT column_name
FROM table_name;

### Example

SELECT ENAME
FROM EMPLOYEE;

This retrieves the `ENAME` column from the `EMPLOYEE` table.

---

## 2. Selecting Multiple Columns

Multiple columns can be retrieved by separating their names with commas.

### Example

SELECT ENAME, JOB, SAL
FROM EMPLOYEE;

This retrieves the employee name, job, and salary.

---

## 3. Selecting All Columns

The `*` symbol is used to select all columns.

### Example

SELECT *
FROM EMPLOYEE;

This retrieves all columns and all rows from the `EMPLOYEE` table.

> `*` means all columns.

---

## 4. WHERE

`WHERE` is used to filter rows based on a condition.

### Syntax

SELECT column_name
FROM table_name
WHERE condition;

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

This returns only employees whose salary is greater than 3000.

---

## 5. SELECT with WHERE

`SELECT` determines which columns to retrieve, while `WHERE` determines which rows to return.

### Example

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 3000;

### Breakdown

- `SELECT ENAME, SAL` → selects the columns to display
- `FROM EMPLOYEE` → specifies the table
- `WHERE SAL > 3000` → filters the rows

A simple way to remember:

**SELECT → What do I want to see?**

**WHERE → Which rows do I want?**

---

## 6. Comparison Operators

Comparison operators are used to create conditions in SQL.

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

## 7. Equal To (=)

`=` checks whether a value is equal to another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL = 3000;

Returns employees whose salary is exactly 3000.

---

## 8. Not Equal To (<>)

`<>` checks whether a value is not equal to another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL <> 3000;

Returns employees whose salary is not 3000.

---

## 9. Not Equal To (!=)

`!=` can also be used to check for inequality.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL != 3000;

In MySQL, both `<>` and `!=` mean "not equal to".

---

## 10. Greater Than (>)

`>` checks whether a value is greater than another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

For a salary of 3000:

- 4000 → included
- 5000 → included
- 3000 → not included
- 2500 → not included

---

## 11. Less Than (<)

`<` checks whether a value is less than another value.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL < 3000;

For a salary of 3000:

- 2000 → included
- 2500 → included
- 3000 → not included
- 4000 → not included

---

## 12. Greater Than or Equal To (>=)

`>=` means greater than OR equal to.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;

For a salary of 3000:

- 5000 → included
- 4000 → included
- 3000 → included
- 2500 → not included

---

## 13. Less Than or Equal To (<=)

`<=` means less than OR equal to.

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL <= 3000;

For a salary of 3000:

- 2000 → included
- 2500 → included
- 3000 → included
- 4000 → not included

---

## 14. SELECT vs WHERE

| SELECT | WHERE |
|--------|-------|
| Retrieves data | Filters rows |
| Determines which columns are returned | Determines which rows are returned |
| Specifies what to display | Specifies the condition |

### Example

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 3000;

Here:

- `SELECT ENAME, SAL` → chooses the columns
- `WHERE SAL > 3000` → filters the rows

---

## 15. Does WHERE Modify Data?

No.

`WHERE` only filters the rows returned by a query.

It does not:

- Delete data
- Update data
- Permanently modify the table

### Example

SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

This only displays matching rows. The other rows remain unchanged in the table.

---

## 16. Basic Query Pattern

The basic SQL query pattern learned in Day 02 is:

SELECT columns
FROM table_name
WHERE condition;

### Example

SELECT ENAME, JOB
FROM EMPLOYEE
WHERE SAL > 3000;

---

## 17. Key Takeaways

- `SELECT` is used to retrieve data.
- `*` represents all columns.
- Specific columns can be selected by name.
- `WHERE` is used to filter rows.
- Comparison operators are used to create conditions.
- `=` means equal to.
- `<>` and `!=` mean not equal to.
- `>` means greater than.
- `<` means less than.
- `>=` means greater than or equal to.
- `<=` means less than or equal to.
- `WHERE` does not modify the original table.
- `SELECT` and `WHERE` are commonly used together.

---

## Interview Revision

**What is SELECT?**

`SELECT` is used to retrieve data from a database table.

**What is WHERE?**

`WHERE` is used to filter rows based on a specified condition.

**What is the difference between SELECT and WHERE?**

`SELECT` determines which columns are retrieved, while `WHERE` determines which rows are returned.

**What does `*` mean in SELECT?**

`*` represents all columns of the selected table.

**Does WHERE modify the original table?**

No. `WHERE` only filters the result returned by the query.
