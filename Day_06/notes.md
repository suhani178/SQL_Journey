# Day 06 — Basic String Functions

## UPPER()

Converts text to uppercase.

SELECT UPPER(ENAME)
FROM EMPLOYEE;


## LOWER()

Converts text to lowercase.

SELECT LOWER(ENAME)
FROM EMPLOYEE;


## LENGTH()

Returns the number of characters in a string.

SELECT ENAME, LENGTH(ENAME)
FROM EMPLOYEE;


## CONCAT()

Combines two strings.

SELECT CONCAT(ENAME, JOB)
FROM EMPLOYEE;

Multiple strings can be combined using CONCAT() depending on the SQL database.

Example:
SELECT CONCAT(ENAME, ' ', JOB)
FROM EMPLOYEE;


## SUBSTRING()

Extracts part of a string.

Syntax:
SUBSTRING(string, start_position, length);

Example:
SELECT ENAME, SUBSTRING(ENAME, 1, 3)
FROM EMPLOYEE;


## TRIM()

Removes leading and trailing spaces from a string.

SELECT TRIM('  SQL  ');


## LEFT()

Returns characters from the left side of a string.

SELECT LEFT(ENAME, 3)
FROM EMPLOYEE;


## RIGHT()

Returns characters from the right side of a string.

SELECT RIGHT(ENAME, 3)
FROM EMPLOYEE;


## String Functions with SELECT

String functions can be applied directly to table columns.

Example:
SELECT ENAME, UPPER(ENAME)
FROM EMPLOYEE;

Example:
SELECT ENAME, LENGTH(ENAME)
FROM EMPLOYEE;


## String Functions with WHERE

String functions can also be used in filtering conditions.

Example:
SELECT *
FROM EMPLOYEE
WHERE UPPER(JOB) = 'MANAGER';


## Key Takeaways

- UPPER() converts text to uppercase.
- LOWER() converts text to lowercase.
- LENGTH() returns the number of characters.
- CONCAT() combines strings.
- SUBSTRING() extracts part of a string.
- TRIM() removes leading and trailing spaces.
- LEFT() returns characters from the beginning.
- RIGHT() returns characters from the end.