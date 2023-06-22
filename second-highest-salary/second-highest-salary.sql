# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee 
WHERE Salary != (SELECT MAX(salary) FROM Employee) ##get highest salary, exclude it from next query for the highest salary
