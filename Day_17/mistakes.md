Day 17 Mistakes and Learnings

Mistake 1: Forgetting Parentheses

Wrong:

SELECT CURDATE;

Correct:

SELECT CURDATE();

Reason:
Most SQL date functions require parentheses, even when they do not take any arguments.

---

Mistake 2: Confusing DAY() with DAYNAME()

Wrong:

SELECT DAY(CURDATE());

Output:

25

Correct:

SELECT DAYNAME(CURDATE());

Output:

Thursday

Reason:

- DAY() returns the day number.
- DAYNAME() returns the name of the day.

---

Mistake 3: Confusing MONTH() with MONTHNAME()

Wrong:

SELECT MONTH(CURDATE());

Output:

6

Correct:

SELECT MONTHNAME(CURDATE());

Output:

June

Reason:

- MONTH() returns the month number.
- MONTHNAME() returns the month name.

---

Mistake 4: Forgetting DATE() When Extracting Only Date

Wrong:

SELECT NOW();

Output:

2026-06-25 14:35:20

Correct:

SELECT DATE(NOW());

Output:

2026-06-25

Reason:
DATE() extracts only the date part from a DATETIME value.

---

Mistake 5: Using DAYNAME() Instead of DAY()

Question: Display the current day number.

Wrong:

SELECT DAYNAME(CURDATE());

Correct:

SELECT DAY(CURDATE());

Reason:
Read the question carefully before selecting the appropriate function.

---

Key Learnings

- Always use parentheses with SQL date functions.
- CURDATE() returns only the current date.
- NOW() returns the current date and time.
- DAY() and DAYNAME() return different outputs.
- MONTH() and MONTHNAME() return different outputs.
- DATE() extracts only the date from a DATETIME value.
