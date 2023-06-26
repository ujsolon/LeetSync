# Write your MySQL query statement below
WITH Temp as
(
SELECT t2.name as Department, t1.name as Employee, t1.salary as Salary, dense_rank() over(partition by t1.departmentId order by t1.salary DESC) as drank
from Employee t1, Department t2
where t1.departmentId=t2.id
order by t1.salary desc
)
SELECT Department,Employee,Salary
FROM Temp
where drank<4