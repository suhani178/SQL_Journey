Day 18 Notes - Numeric Functions

What are Numeric Functions?

Numeric functions are used to perform mathematical operations on numbers in SQL.

They help in:

- Rounding numbers
- Finding absolute values
- Calculating remainders
- Performing exponentiation
- Finding square roots

---

1. ROUND()

Rounds a number to the nearest integer or to a specified number of decimal places.

Syntax

SELECT ROUND(number);

Example

SELECT ROUND(45.67);

Output:

46

With decimal places:

SELECT ROUND(45.678,2);

Output:

45.68

---

2. CEIL()

Returns the smallest integer greater than or equal to the given number.

Example

SELECT CEIL(25.1);

Output:

26

---

3. FLOOR()

Returns the largest integer less than or equal to the given number.

Example

SELECT FLOOR(25.9);

Output:

25

---

4. ABS()

Returns the absolute (positive) value of a number.

Example

SELECT ABS(-50);

Output:

50

---

5. MOD()

Returns the remainder after division.

Example

SELECT MOD(20,3);

Output:

2

Because:

20 ÷ 3 = 6 remainder 2

---

6. POWER()

Returns a number raised to a specified power.

Example

SELECT POWER(3,4);

Output:

81

Because:

3 × 3 × 3 × 3 = 81

---

7. SQRT()

Returns the square root of a number.

Example

SELECT SQRT(81);

Output:

9

---

Combined Example

SELECT ROUND(17.45),
CEIL(17.45),
FLOOR(17.45);

Output:

17    18    17

---

Summary

Function| Purpose
ROUND()| Rounds a number
CEIL()| Rounds up
FLOOR()| Rounds down
ABS()| Returns absolute value
MOD()| Returns remainder
POWER()| Raises a number to a power
SQRT()| Returns square root

---

Key Learning

- ROUND() rounds numbers to the nearest value.
- CEIL() always rounds upward.
- FLOOR() always rounds downward.
- ABS() removes the negative sign.
- MOD() returns the remainder after division.
- POWER() calculates exponents.
- SQRT() calculates square roots.

