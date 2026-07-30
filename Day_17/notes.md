Day 17 Notes - Date Functions

What are Date Functions?

Date functions are used to work with dates and time in SQL.

They help in:

- Getting current date
- Getting current date and time
- Extracting year, month and day
- Displaying day and month names

---

1. CURDATE()

Returns the current date.

Example:

SELECT CURDATE();

Output:

2026-06-24

---

2. NOW()

Returns the current date and time.

Example:

SELECT NOW();

Output:

2026-06-24 10:30:45

---

3. YEAR()

Returns the year from a date.

Example:

SELECT YEAR(CURDATE());

Output:

2026

---

4. MONTH()

Returns the month number.

Example:

SELECT MONTH(CURDATE());

Output:

6

---

5. DAY()

Returns the day of the month.

Example:

SELECT DAY(CURDATE());

Output:

24

---

6. DAYNAME()

Returns the day name.

Example:

SELECT DAYNAME(CURDATE());

Output:

Wednesday

---

7. MONTHNAME()

Returns the month name.

Example:

SELECT MONTHNAME(CURDATE());

Output:

June

---

8. DATE()

Extracts only the date part from a datetime value.

Example:

SELECT DATE(NOW());

Output:

2026-06-24

---

Summary 

- CURDATE() → Current Date
- NOW() → Current Date and Time
- YEAR() → Extract Year
- MONTH() → Extract Month Number
- DAY() → Extract Day Number
- DAYNAME() → Day Name
- MONTHNAME() → Month Name
- DATE() → Extract Date from DateTime
