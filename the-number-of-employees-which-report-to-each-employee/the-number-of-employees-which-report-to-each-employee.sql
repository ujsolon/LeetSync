# Write your MySQL query statement below
SELECT t1.reports_to AS employee_id , t2.name, COUNT(CASE WHEN t2.employee_id=t1.reports_to THEN 1 END) AS reports_count , ROUND(AVG(t1.age)) AS average_age ##most diffcult part is on the reports_count, as I found it difficult to count the unders. IF STATEMENTS are difficult in SQL
FROM Employees AS t1 INNER JOIN  Employees AS t2 on t1.reports_to = t2.employee_id 
WHERE t1.reports_to IS NOT NULL
GROUP BY t1.reports_to
ORDER BY t1.reports_to
