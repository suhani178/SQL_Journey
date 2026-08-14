# Day 23 Notes - SQL Indexes

## What is an Index?

An Index is a database structure used to improve the speed of data retrieval from a table.

It works similar to the index of a book. Instead of searching through every page, the index helps locate the required information quickly.

---

## Why Use Indexes?

Indexes are useful when:

- A table contains a large amount of data.
- A column is frequently searched.
- A column is frequently used in WHERE conditions.
- Columns are frequently used in JOIN conditions.
- Columns are used for sorting or searching.

---

## Creating an Index

### Syntax

CREATE INDEX index_name
ON table_name(column_name);

### Example

CREATE INDEX IDX_ENAME
ON EMPLOYEE(ENAME);

This creates an index named `IDX_ENAME` on the `ENAME` column.

---

## Unique Index

A UNIQUE INDEX prevents duplicate values in the indexed column.

### Example

CREATE UNIQUE INDEX IDX_EMAIL
ON EMPLOYEE(EMAIL);

This ensures that duplicate email values are not allowed.

---

## Viewing Indexes

In MySQL:

SHOW INDEX
FROM EMPLOYEE;

This displays the indexes associated with the `EMPLOYEE` table.

---

## Dropping an Index

In MySQL:

DROP INDEX IDX_ENAME
ON EMPLOYEE;

This removes the `IDX_ENAME` index.

---

## Index with WHERE

Indexes can improve queries that frequently search using a particular column.

Example:

SELECT *
FROM EMPLOYEE
WHERE ENAME = 'RAM';

An index on `ENAME` can help the database find matching records more efficiently.

---

## Index with JOIN

Indexes can also be useful for columns frequently used to join tables.

Example:

SELECT ENAME, DNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPTNO = D.DEPTNO;

---

## Composite Index

An index can contain more than one column.

Example:

CREATE INDEX IDX_EMP
ON EMPLOYEE(DEPTNO, SAL);

This is called a **Composite Index** or **Multi-column Index**.

It can be useful when multiple columns are commonly used together in queries.

---

## Primary Key and Index

A PRIMARY KEY is generally indexed automatically by the database.

Example:

CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50)
);

Therefore, we normally do not need to create another ordinary index on the same primary-key column just for searching.

---

## Advantages of Indexes

- Faster data retrieval.
- Faster searching.
- Can improve JOIN performance.
- Can improve sorting and filtering performance.

---

## Disadvantages of Indexes

- Require additional storage.
- INSERT operations may become more expensive.
- UPDATE operations may become more expensive.
- DELETE operations may become more expensive.
- Too many indexes can negatively affect database performance.

---

## Important Point

Indexes are not always beneficial.

The database optimizer decides whether using an index will improve a particular query.

An index may provide little benefit when:

- The table is very small.
- A column has very few distinct values.
- The index is not useful for the particular query.

---

## Composite Index Column Order

The order of columns in a composite index matters.

For example:

CREATE INDEX IDX_EMP
ON EMPLOYEE(DEPTNO, SAL);

is not exactly the same as:

CREATE INDEX IDX_EMP
ON EMPLOYEE(SAL, DEPTNO);

The order can affect which queries can efficiently use the index.

---

## Summary

| Concept | Purpose |
|---------|---------|
| CREATE INDEX | Creates an index |
| UNIQUE INDEX | Prevents duplicate indexed values |
| SHOW INDEX | Displays indexes |
| DROP INDEX | Removes an index |
| Composite Index | Index on multiple columns |

---

## Key Learning

- Indexes improve data retrieval performance.
- Indexes require additional storage.
- Indexes can make INSERT, UPDATE, and DELETE operations more expensive.
- PRIMARY KEY columns are generally indexed automatically.
- Composite indexes can contain multiple columns.
- More indexes do not always mean better performance.
