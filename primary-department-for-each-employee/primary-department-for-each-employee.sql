# Write your MySQL query statement below
## ORDER BY does not work as intended in GROUP BY clauses or subqueries

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y' ##cover every multiple department employee
OR employee_id IN (SELECT employee_id  FROM Employee GROUP BY employee_id HAVING count(department_id) = 1) ##cover single department employees
