# Day 16 Notes - String Functions

## What are String Functions?

String functions are used to manipulate and process text values stored in database columns.

They help in:

* Converting text case
* Finding string length
* Joining strings
* Extracting parts of strings

---

## 1. UPPER()

Converts text to uppercase.

Example:

SELECT UPPER(ENAME)
FROM EMPLOYEE;

Output:

RAM
SHYAM
MOHAN

---

## 2. LOWER()

Converts text to lowercase.

Example:

SELECT LOWER(ENAME)
FROM EMPLOYEE;

Output:

ram
shyam
mohan

---

## 3. LENGTH()

Returns the number of characters in a string.

Example:

SELECT ENAME, LENGTH(ENAME)
FROM EMPLOYEE;

Example Output:

RAM      3
SHYAM    5

---

## 4. CONCAT()

Joins two strings together.

Example:

SELECT CONCAT(ENAME,' EMPLOYEE')
FROM EMPLOYEE;

Output:

RAM EMPLOYEE
SHYAM EMPLOYEE

---

## 5. SUBSTR()

Extracts a portion of a string.

Syntax:

SUBSTR(column_name,start_position,length)

Example:

SELECT SUBSTR(ENAME,1,3)
FROM EMPLOYEE;

Output:

RAM
SHY
MOH

---

## Common Examples

First 2 Characters:

SELECT SUBSTR(ENAME,1,2)
FROM EMPLOYEE;

Last 2 Characters:

SELECT SUBSTR(ENAME,-2,2)
FROM EMPLOYEE;

Department Name in Uppercase:

SELECT UPPER(DNAME)
FROM DEPARTMENT;

Department Name with Text:

SELECT CONCAT(DNAME,' DEPARTMENT')
FROM DEPARTMENT;

---

## Memory Tricks

UPPER()   → CAPITAL LETTERS

LOWER()   → small letters

LENGTH()  → count characters

CONCAT()  → join strings

SUBSTR()  → extract part of string

---

## Key Learning

String functions are used to modify, format and extract text values from database columns.

