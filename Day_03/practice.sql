-- Day 3 Practice

CREATE TABLE EMPLOYEE(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Salary INT NOT NULL
);

INSERT INTO EMPLOYEE
VALUES
(101,'Ram','ram@gmail.com',1000),
(102,'Shyam','shyam@gmail.com',2000),
(103,'Rahul','rahul@gmail.com',3000);

SELECT * FROM EMPLOYEE;
