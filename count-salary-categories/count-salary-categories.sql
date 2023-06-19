# Write your MySQL query statement below
SELECT 'Low Salary' AS category, COUNT(CASE WHEN income< 20000 then 1 end) AS accounts_count
FROM Accounts
 ##cant union 2 tables with non-similar column numbers
UNION

SELECT 'Average Salary', COUNT(CASE WHEN income>= 20000 AND income<=50000 then 1 end)
FROM Accounts

UNION

SELECT 'High Salary', COUNT(CASE WHEN income>50000 then 1 end)
FROM Accounts