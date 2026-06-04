Day 6 Assignment

Q1. Display employees whose names start with A.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'A%';

Q2. Display employees whose names start with M.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'M%';

Q3. Display employees whose names end with N.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%N';

Q4. Display employees whose names end with H.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%H';

Q5. Display employees whose names contain A.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%A%';

Q6. Display employees whose names contain S.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%S%';

Q7. Display employees whose names start with S and end with H.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'S%'
AND ENAME LIKE '%H';

Q8. Display employees whose names have exactly 5 characters.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '_____';

Q9. Display employees whose names have exactly 4 characters.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '____';

Q10. Display employees whose second letter is A.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '_A%';

Q11. Display employee names with alias Employee_Name.

SELECT ENAME AS Employee_Name
FROM EMPLOYEE;

Q12. Display salary with alias Employee_Salary.

SELECT SAL AS Employee_Salary
FROM EMPLOYEE;

Q13. Display employee name and salary with aliases Employee_Name and Employee_Salary.

SELECT ENAME AS Employee_Name,
       SAL AS Employee_Salary
FROM EMPLOYEE;

Q14. Display employee names containing the letter T.

SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '%T%';

Q15. Display employee names starting with J.

SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE 'J%';

Q16. Display employee names that start with A and contain N somewhere after it.

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'A%N%';

---

Day 6 Learning Summary

Topics Covered:

- LIKE Operator
- % Wildcard
- _ Wildcard
- Pattern Matching
- Alias (AS)

