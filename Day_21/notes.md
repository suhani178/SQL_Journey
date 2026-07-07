Day 21 Notes - SQL Views

What is a View?

A View is a virtual table created using the result of a SQL query.

A view does not store data itself. It displays data from one or more existing tables.

---

Why Use Views?

- Simplify complex queries.
- Improve security by hiding sensitive columns.
- Reuse frequently used queries.
- Present data in a customized format.

---

Syntax

CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;

---

Example 1: Create a View

CREATE VIEW EMP_VIEW AS
SELECT ENAME, SAL
FROM EMPLOYEE;

This creates a view containing only employee names and salaries.

---

Display Data from a View

SELECT *
FROM EMP_VIEW;

---

Example 2: View with Condition

CREATE VIEW HIGH_SALARY AS
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL > 3000;

Display the view:

SELECT *
FROM HIGH_SALARY;

---

Update a View

CREATE OR REPLACE VIEW EMP_VIEW AS
SELECT ENAME, SAL, DEPTNO
FROM EMPLOYEE;

---

Delete a View

DROP VIEW EMP_VIEW;

---

Advantages of Views

- Simplifies complex SQL queries.
- Restricts access to confidential data.
- Improves code reusability.
- Makes reports easier to generate.

---

Limitations of Views

- Views do not store data.
- Complex views may execute slower than simple queries.
- Some views cannot be updated.

---

Summary

Command| Purpose
CREATE VIEW| Creates a new view
SELECT| Displays data from a view
CREATE OR REPLACE VIEW| Modifies an existing view
DROP VIEW| Deletes a view

---

Key Learning

- A view is a virtual table.
- Views are created using SELECT queries.
- They help simplify complex queries.
- Views improve security by hiding unnecessary columns.
- Views can be created, modified and deleted using SQL commands.
