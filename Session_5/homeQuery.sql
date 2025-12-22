--G3 SURAJ KUMAR DEV 23BCS10980
SELECT
    Employee.name, Bonus.bonus
FROM
    Employee
        LEFT OUTER JOIN
    Bonus ON Employee.empid = Bonus.empid
    WHERE
    bonus < 1000 OR bonus IS NULL
;
