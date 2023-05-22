# Write your MySQL query statement below
SELECT m.name AS name
FROM Employee AS m
JOIN Employee AS e ON m.id = e.managerId
GROUP BY m.name
HAVING COUNT(e.id) >= 5;