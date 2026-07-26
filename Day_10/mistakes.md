Day 10 Mistakes

Mistake 1

Wrong:

SELECT JOB, COUNT(*)
FROM EMPLOYEE
GROUP BY JOB
ORDER BY COUNT(*);

Reason:
Question asked for descending order.

Correct:

SELECT JOB, COUNT(*)
FROM EMPLOYEE
GROUP BY JOB
ORDER BY COUNT(*) DESC;

---

Mistake 2

Wrong:

SELECT DEPARTMENT, JOB, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPARTMENT, JOB
ORDER BY DEPARTMENT, JOB DESC;

Reason:
Question asked to sort by employee count.

Correct:

SELECT DEPARTMENT, JOB, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPARTMENT, JOB
ORDER BY COUNT(*) DESC;

---

Key Learnings

- ORDER BY can sort aggregate results.
- Multiple columns can be used in GROUP BY.
- COUNT(*), SUM(), AVG(), MAX(), MIN() can be sorted using ORDER BY.

