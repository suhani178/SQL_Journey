Day 3 Assignment

Q1. Create EMPLOYEE Table

CREATE TABLE EMPLOYEE(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Salary INT NOT NULL
);

---

Q2. Insert Records

INSERT INTO EMPLOYEE
VALUES
(101,'Ram','ram@gmail.com',1000),
(102,'Shyam','shyam@gmail.com',2000),
(103,'Rahul','rahul@gmail.com',300);

---

Q3. Display All Records

SELECT * FROM EMPLOYEE;

---

Q4. Constraint Violation

INSERT INTO EMPLOYEE
VALUES
(104,NULL,'amit@gmail.com',4000);

Constraint Violated:

- NOT NULL

Reason:

- Name column cannot contain NULL values.

---

Q5. Constraint Violation

INSERT INTO EMPLOYEE
VALUES
(101,'Amit','amit@gmail.com',4000);

Constraint Violated:

- PRIMARY KEY

Reason:

- EmpID 101 already exists.

---

Q6. Constraint Violation

INSERT INTO EMPLOYEE
VALUES
(105,'Amit','ram@gmail.com',4000);

Constraint Violated:

- UNIQUE

Reason:

- Email already exists.

---

Bonus Question

INSERT INTO TEST
VALUES(1,'Rahul',NULL);

Result:

- Valid

Reason:

- EMAIL has UNIQUE constraint but not NOT NULL constraint.
