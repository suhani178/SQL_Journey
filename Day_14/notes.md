# Day 14 Notes - IN, NOT IN, EXISTS and NOT EXISTS

## Introduction

Day 14 focuses on handling multiple values and checking whether records exist.

Topics Covered:

* IN
* NOT IN
* EXISTS
* NOT EXISTS
* Multiple Row Subqueries

---

# IN Operator

Used when a subquery returns multiple values.

Example:

```sql
SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO IN
(
    SELECT DEPTNO
    FROM DEPARTMENT
);
```

Meaning:

Display employees whose department number exists in the DEPARTMENT table.

---

# NOT IN Operator

Used to exclude multiple values.

Example:

```sql
SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO NOT IN
(
    SELECT DEPTNO
    FROM DEPARTMENT
);
```

Meaning:

Display employees whose department number does not exist in the DEPARTMENT table.

---

# EXISTS Operator

Checks whether at least one matching row exists.

Example:

```sql
SELECT ENAME
FROM EMPLOYEE E
WHERE EXISTS
(
    SELECT *
    FROM DEPARTMENT D
    WHERE E.DEPTNO = D.DEPTNO
);
```

Meaning:

Display employees whose department exists.

---

# NOT EXISTS Operator

Checks whether no matching row exists.

Example:

```sql
SELECT ENAME
FROM EMPLOYEE E
WHERE NOT EXISTS
(
    SELECT *
    FROM DEPARTMENT D
    WHERE E.DEPTNO = D.DEPTNO
);
```

Meaning:

Display employees whose department does not exist.

---

# Difference Between IN and EXISTS

IN:

* Used for comparing values.
* Works with a list of values.

Example:

```sql
WHERE DEPTNO IN (10,20,30)
```

EXISTS:

* Checks whether matching rows exist.
* Returns TRUE or FALSE.

Example:

```sql
WHERE EXISTS (...)
```

---

# Key Learnings

* Use IN for multiple values.
* Use NOT IN to exclude multiple values.
* Use EXISTS to check matching records.
* Use NOT EXISTS to check non-matching records.
* IN works with values.
* EXISTS works with rows.

---

# Memory Trick

One Value

=, >, <

Multiple Values

IN, NOT IN

Check Existence

EXISTS, NOT EXISTS

---

# Day 14 Summary

Topics Covered:

* IN
* NOT IN
* EXISTS
* NOT EXISTS
* Multiple Row Subqueries

