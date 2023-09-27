# Write your MySQL query statement below
SELECT Department, Employee, Salary
FROM (SELECT d.name Department, e.name Employee , e.salary Salary, RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) as myrank
FROM
Employee e LEFT JOIN Department d ON e.departmentId = d.id) as t
WHERE t.myrank = 1