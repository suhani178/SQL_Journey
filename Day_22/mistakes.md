Day 22 Mistakes and Learnings

Mistake 1: Using Multiple PRIMARY KEY Constraints

Wrong:

CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    EMAIL VARCHAR(100) PRIMARY KEY
);

Correct:

CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    EMAIL VARCHAR(100) UNIQUE
);

Reason:
A table can have only one PRIMARY KEY, but it can have multiple UNIQUE constraints.

---

Mistake 2: Confusing PRIMARY KEY and UNIQUE

Wrong Assumption:

PRIMARY KEY and UNIQUE are the same.

Correct:

- PRIMARY KEY → Unique + NOT NULL
- UNIQUE → Unique, but NULL values are allowed (DBMS-dependent)

Reason:
PRIMARY KEY uniquely identifies each record, whereas UNIQUE only prevents duplicate values.

---

Mistake 3: Creating a FOREIGN KEY Without a PRIMARY KEY

Wrong:

CREATE TABLE EMPLOYEE (
    DEPTNO INT,
    FOREIGN KEY (DEPTNO)
    REFERENCES DEPARTMENT(DEPTNO)
);

Reason:
"DEPARTMENT(DEPTNO)" should be a PRIMARY KEY or UNIQUE column before it can be referenced.

---

Mistake 4: Writing an Invalid CHECK Constraint

Wrong:

AGE INT CHECK (AGE >)

Correct:

AGE INT CHECK (AGE >= 18)

Reason:
A CHECK constraint must contain a valid logical condition.

---

Mistake 5: Forgetting Quotes in DEFAULT

Wrong:

CITY VARCHAR(30) DEFAULT Kolkata

Correct:

CITY VARCHAR(30) DEFAULT 'Kolkata'

Reason:
String values must be enclosed in single quotes.

---

Mistake 6: Assuming NOT NULL and PRIMARY KEY Are the Same

Wrong Assumption:

NOT NULL can replace PRIMARY KEY.

Correct:

- NOT NULL → Prevents NULL values.
- PRIMARY KEY → Prevents NULL values and ensures uniqueness.

Reason:
These constraints serve different purposes.

---

Key Learnings

- Use only one PRIMARY KEY per table.
- Use UNIQUE to prevent duplicate values.
- FOREIGN KEY creates relationships between tables.
- CHECK validates data before insertion.
- DEFAULT assigns a value automatically when none is provided.
- Choose the correct constraint based on the data validation requirement.
