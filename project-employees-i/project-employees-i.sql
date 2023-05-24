# Write your MySQL query statement below
SELECT t1.project_id, ROUND(AVG(t2.experience_years),2) AS average_years ##counts the average of all the experience years in each project id (again due to group by)
FROM Project AS t1
LEFT JOIN Employee AS t2 ON t1.employee_id = t2.employee_id ##left join Employee table
GROUP BY t1.project_id ##group by project_id since it seems like primary key in final table