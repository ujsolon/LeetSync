# Write your MySQL query statement below
SELECT e2.unique_id, e1.name
FROM EmployeeUNI e2 RIGHT JOIN Employees e1 ON e1.id =e2.id