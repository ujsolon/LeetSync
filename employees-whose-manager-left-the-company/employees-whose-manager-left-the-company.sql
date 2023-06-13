# Write your MySQL query statement below
SELECT employee_id 
FROM Employees
WHERE manager_id NOT IN (SELECT employee_id FROM Employees) ##return one column you want to check item inclusion like in python: for item not in range(10)
  AND salary < 30000
ORDER BY employee_id
