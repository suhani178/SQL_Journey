Day 6 Notes - LIKE, Wildcards and Aliases

LIKE Operator

The LIKE operator is used for pattern matching in SQL.

Syntax:

SELECT column_name
FROM table_name
WHERE column_name LIKE pattern;

Example:

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'S%';

This displays employee names starting with S.

---

Wildcard %

The "%" wildcard represents zero or more characters.

Names Starting With A

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'A%';

Examples:

- ALLEN
- AMIT
- ANURAG

---

Names Ending With N

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%N';

Examples:

- ALLEN
- MARTIN

---

Names Containing A

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%A%';

Examples:

- ALLEN
- JAMES
- MARTIN

---

Wildcard _

The "_" wildcard represents exactly one character.

Names With Exactly 5 Characters

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '_____';

Example:

- SMITH

---

Names With Exactly 4 Characters

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '____';

Example:

- KING

---

Second Letter is A

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '_A%';

Examples:

- RAM
- SAM
- RAHUL

---

Difference Between % and _

%| _
Zero or more characters| Exactly one character
A%| A____
%A%| _A%

Examples:

LIKE 'A%'

Names starting with A.

LIKE '_A%'

Names whose second letter is A.

---

Alias (AS)

An alias gives a temporary name to a column.

