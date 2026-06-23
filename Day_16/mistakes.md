# Day 16 Mistakes and Learnings

## Mistake 1: Forgetting FROM Clause

Wrong:

SELECT UPPER(ENAME);

Correct:

SELECT UPPER(ENAME)
FROM EMPLOYEE;

Reason:
String functions operate on column values, so the table must be specified.

---

## Mistake 2: Using SUBSTR Without Column Name

Wrong:

SELECT SUBSTR(1,3)
FROM EMPLOYEE;

Correct:

SELECT SUBSTR(ENAME,1,3)
FROM EMPLOYEE;

Reason:
SUBSTR() needs a string column as input.

Syntax:

SUBSTR(column_name,start_position,length)

---

## Mistake 3: Confusing Start Position and Length

Wrong:

SUBSTR(ENAME,3,1)

Correct:

SUBSTR(ENAME,1,3)

Reason:
The second parameter is the starting position and the third parameter is the number of characters to extract.

---

## Mistake 4: Forgetting Quotes in CONCAT

Wrong:

SELECT CONCAT(ENAME, EMPLOYEE)
FROM EMPLOYEE;

Correct:

SELECT CONCAT(ENAME,' EMPLOYEE')
FROM EMPLOYEE;

Reason:
Text values must be enclosed in single quotes.

---

## Mistake 5: Using Wrong Table

Wrong:

SELECT UPPER(DNAME)
FROM EMPLOYEE;

Correct:

SELECT UPPER(DNAME)
FROM DEPARTMENT;

Reason:
DNAME belongs to the DEPARTMENT table.

---

## Key Learnings

* UPPER() converts text to uppercase.
* LOWER() converts text to lowercase.
* LENGTH() returns the number of characters.
* CONCAT() joins strings together.
* SUBSTR() extracts part of a string.
* Always check which table contains the required column.
