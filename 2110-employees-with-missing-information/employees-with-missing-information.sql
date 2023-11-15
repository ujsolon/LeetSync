# Write your MySQL query statement below

##NO FULL OUTER JOIN :(
WITH temp as (
SELECT s.employee_id as employee_id
FROM Employees e RIGHT JOIN Salaries s ON e.employee_id = s.employee_id 
WHERE ISNULL(e.name)=1
UNION
SELECT e.employee_id as employee_id
FROM Employees e LEFT JOIN Salaries s ON e.employee_id = s.employee_id 
WHERE ISNULL(s.salary)=1)
SELECT employee_id
FROM temp
ORDER BY employee_id ASC