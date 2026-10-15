# SQL Day 11 — UPDATE Statement

## 1. What is UPDATE?

The UPDATE statement modifies existing records in a table.

It is used when you want to change the values stored in one or more columns.

## 2. Basic Syntax

UPDATE table_name
SET column_name = value
WHERE condition;

## 3. Update a Single Column

Increase the salary of employee 101 to 3000.

UPDATE EMPLOYEE
SET SAL = 3000
WHERE EMPNO = 101;

## 4. Update Multiple Columns

Change the salary and department of employee 102.

UPDATE EMPLOYEE
SET SAL = 3500,
    DEPTNO = 20
WHERE EMPNO = 102;

## 5. Update Multiple Rows

Increase the salary of every employee in department 10 by 500.

UPDATE EMPLOYEE
SET SAL = SAL + 500
WHERE DEPTNO = 10;

## 6. UPDATE Without WHERE

UPDATE EMPLOYEE
SET SAL = 3000;

This updates the salary of every row in the table.

Be careful when using UPDATE without WHERE.

## 7. UPDATE Using a Condition

Update the salary of employees earning less than 2000.

UPDATE EMPLOYEE
SET SAL = 2000
WHERE SAL < 2000;

## 8. Important Points

- UPDATE modifies existing records.
- SET specifies the column and its new value.
- WHERE identifies the rows to modify.
- Without WHERE, all rows are updated.
- UPDATE belongs to DML (Data Manipulation Language).
- UPDATE does not insert new records.
- UPDATE does not delete records.

## 9. UPDATE vs INSERT

INSERT adds new records.

UPDATE modifies existing records.

## 10. Interview Revision

Q: What is UPDATE used for?
A: To modify existing records in a table.

Q: What is the purpose of SET?
A: It specifies the column values to change.

Q: What happens if WHERE is omitted?
A: All rows in the table are updated.

Q: Which SQL category contains UPDATE?
A: DML.
