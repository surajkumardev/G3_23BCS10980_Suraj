-- G3_23BCS10980_Suraj Kumar Dev
CREATE TABLE Employee (
    emp_id     INT PRIMARY KEY,
    emp_name   VARCHAR(50),
    department VARCHAR(50),
    salary     DECIMAL(10,2)
);
INSERT INTO Employee (emp_id, emp_name, department, salary)
VALUES 
(101, 'Suraj',      'IT',        55000.00),
(102, 'Ananya',     'HR',        48000.00),
(103, 'Rahul',      'Finance',   62000.00),
(104, 'Priya',      'Marketing', 51000.00),
(105, 'Vikram',     'IT',        60000.00);
CREATE VIEW Employee_View AS
SELECT 
    emp_id,
    emp_name,
    department,
    salary
FROM Employee;
CREATE ROLE Analyst;
GRANT SELECT ON Employee_View TO Analyst;

SELECT * FROM Employee_View;
