Q1)
Drop table Departments;
Drop table Employees;
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);


INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(10, 'HR', 'Delhi'),
(20, 'IT', 'Mumbai'),
(30, 'Finance', 'Pune'),
(50, 'Marketing', 'Chennai');

INSERT INTO Employees (EmpID, EmpName, DeptID, Salary) VALUES
(1, 'Akash', 10, 50000),
(2, 'Nisha', 20, 60000),
(4, 'Simran', 30, 70000),
(5, 'Meena', 30, 55000);

SELECT D.DeptName, COUNT(E.EmpId) AS EmployeeCount, AVG(E.Salary) AS AvgSalary,
CASE WHEN AVG(E.Salary) IS NULL THEN 'No Employees'
WHEN AVG(E.Salary)>=60000 THEN 'High Average'
WHEN AVG(E.Salary) BETWEEN 50000 AND 59999 THEN 'Medium Average'
ELSE 'Low Average' END
AS SalaryCategory
FROM Departments AS D
LEFT JOIN
Employees AS E
ON 
D.DeptId = E.DeptId
GROUP BY DeptName

Q2)
-- Create Triangle table
CREATE TABLE Triangle (
	x INT,
	y INT,
	z INT,
	PRIMARY KEY (x, y, z)
);
 
-- Insert sample data
INSERT INTO Triangle (x, y, z) VALUES
(13, 15, 30),
(10, 20, 15);

select x,y,z,
case
when x + y > z AND x + z > y AND y + z > x
THEN 'Yes'
else 'No'
end as triangle
from Triangle;
