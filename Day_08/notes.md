# Day 08 — NULL Handling

## 1. What is NULL?

`NULL` represents a missing, unknown, or unavailable value in SQL.

It does not mean:

- 0
- Empty string
- False
- A value that does not exist

Example:

If an employee does not have a commission value, `COMM` may contain `NULL`.

---

## 2. Checking for NULL

To find rows where a column contains NULL, use `IS NULL`.

### Syntax

SELECT *
FROM table_name
WHERE column_name IS NULL;

### Example

SELECT *
FROM EMPLOYEE
WHERE COMM IS NULL;

This returns employees whose commission is NULL.

---

## 3. IS NOT NULL

`IS NOT NULL` finds rows where a column contains a value.

### Example

SELECT *
FROM EMPLOYEE
WHERE COMM IS NOT NULL;

This returns employees whose commission is available.

---

## 4. Why = NULL Does Not Work

Do not use:

WHERE COMM = NULL;

This does not correctly check for NULL.

Use:

WHERE COMM IS NULL;

Similarly, do not use:

WHERE COMM != NULL;

Use:

WHERE COMM IS NOT NULL;

### Remember

NULL must be checked using:

IS NULL

or

IS NOT NULL

---

## 5. NULL in Comparisons

NULL represents an unknown value.

Therefore, normal comparison operators cannot be used to check whether something is NULL.

Incorrect:

COMM = NULL

COMM <> NULL

COMM > NULL

Correct:

COMM IS NULL

COMM IS NOT NULL

---

## 6. NULL in Calculations

Calculations involving NULL generally produce NULL.

Example:

SELECT ENAME, SAL, COMM, SAL + COMM
FROM EMPLOYEE;

If `COMM` is NULL, the expression:

SAL + COMM

results in NULL.

This happens because the value of COMM is unknown.

---

## 7. COALESCE()

`COALESCE()` is used to return the first non-NULL value from a list of expressions.

### Syntax

COALESCE(value1, value2, value3, ...)

### Example

SELECT ENAME, COALESCE(COMM, 0)
FROM EMPLOYEE;

If `COMM` has a value, that value is returned.

If `COMM` is NULL, `0` is returned.

---

## 8. COALESCE() with Multiple Values

Example:

SELECT COALESCE(NULL, NULL, 100, 200);

Result:

100

SQL checks the values from left to right and returns the first non-NULL value.

---

## 9. Using COALESCE() in Calculations

Suppose we want salary plus commission.

Instead of:

SELECT ENAME, SAL + COMM
FROM EMPLOYEE;

we can use:

SELECT ENAME, SAL + COALESCE(COMM, 0)
FROM EMPLOYEE;

Now employees with NULL commission are treated as having commission 0 for this calculation.

---

## 10. NULL vs 0

`NULL` and `0` are different.

### NULL

Means the value is missing or unknown.

### 0

Means the actual value is zero.

For example:

COMM = NULL

means the commission value is unknown or unavailable.

COMM = 0

means the commission is actually zero.

---

## 11. NULL vs Empty String

An empty string and NULL should not automatically be treated as the same concept.

An empty string represents a string value with no characters.

NULL represents a missing or unknown value.

The exact behavior of empty strings can differ between database systems, so always consider the SQL database you are using.

---

## 12. WHERE with NULL

Example:

SELECT ENAME, COMM
FROM EMPLOYEE
WHERE COMM IS NULL;

This filters the rows and returns only employees with missing commission values.

---

## 13. COALESCE() with a Display Label

COALESCE() can also be used to display meaningful text.

Example:

SELECT ENAME, COALESCE(JOB, 'NOT ASSIGNED')
FROM EMPLOYEE;

If JOB is NULL, the query displays `NOT ASSIGNED`.

---

## 14. Important Rule

`NULL` cannot be checked using:

=
<>
!=
>
<
>=
<=

Use:

IS NULL

or:

IS NOT NULL

---

# Key Takeaways

- NULL represents a missing, unknown, or unavailable value.
- NULL is different from 0.
- NULL is different from an empty string.
- Use `IS NULL` to find NULL values.
- Use `IS NOT NULL` to find non-NULL values.
- Never use `= NULL` to check for NULL.
- `COALESCE()` returns the first non-NULL value.
- COALESCE() is useful for replacing NULL with a default value.
- NULL can cause calculations to produce NULL.
- `COALESCE()` can be used to safely handle NULL values in calculations.

---

# Interview Revision

### What is NULL in SQL?

NULL represents a missing, unknown, or unavailable value.

### How do you check for NULL?

Use `IS NULL`.

### How do you check for a non-NULL value?

Use `IS NOT NULL`.

### Why can't we use = NULL?

NULL represents an unknown value, so normal equality comparison does not correctly test for NULL.

### What is COALESCE()?

COALESCE() returns the first non-NULL value from the given expressions.

### What is the difference between NULL and 0?

NULL represents a missing or unknown value, while 0 is an actual numeric value.