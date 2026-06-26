-- Day 17 Practice SQL
-- Topic: Date Functions

-- Q1: Display the current date
SELECT CURDATE();

-- Q2: Display the current date and time
SELECT NOW();

-- Q3: Display the current year
SELECT YEAR(CURDATE());

-- Q4: Display the current month number
SELECT MONTH(CURDATE());

-- Q5: Display the current day number
SELECT DAY(CURDATE());

-- Q6: Display the current day name
SELECT DAYNAME(CURDATE());

-- Q7: Display the current month name
SELECT MONTHNAME(CURDATE());

-- Q8: Display only the date from the current date and time
SELECT DATE(NOW());

-- Q9: Display the current year, month and day
SELECT YEAR(CURDATE()),
MONTH(CURDATE()),
DAY(CURDATE());

-- Q10: Display the current date, day name and month name
SELECT CURDATE(),
DAYNAME(CURDATE()),
MONTHNAME(CURDATE());
