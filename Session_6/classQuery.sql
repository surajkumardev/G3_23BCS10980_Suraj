q1)

drop table Employees;
drop table Departments;

CREATE TABLE Employees (
    emp_id     INT PRIMARY KEY,
    name       VARCHAR(50),
    dept_id    INT,
    salary     INT
);


CREATE TABLE Departments (
    dept_id     INT PRIMARY KEY,
    dept_name   VARCHAR(50)
);

INSERT INTO Employees (emp_id, name, dept_id, salary) VALUES
(1, 'Asha', 10, 50000),
(2, 'Rohan', 10, 70000),
(3, 'Meera', 20, 40000),
(4, 'Kabir', 20, 55000),
(5, 'Isha', 30, 90000);

INSERT INTO Departments (dept_id, dept_name) VALUES
(10, 'HR'),
(20, 'Finance'),
(30, 'IT');

SELECT D.dept_name, E.name, E.salary, (
SELECT AVG(salary)::NUMERIC(10,0)
FROM Employees
WHERE dept_id = E.dept_id
)AS dept_avg_salary
FROM Departments AS D
LEFT JOIN 
Employees AS E
ON 
D.dept_id = E.dept_id
WHERE E.emp_id = (SELECT emp_id FROM Employees
	WHERE dept_id = E.dept_id
	ORDER BY ABS(salary - (SELECT AVG(salary) FROM Employees WHERE dept_id = E.dept_id)),
	salary DESC
	LIMIT 1
)

q2)
