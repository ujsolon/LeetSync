# Write your MySQL query statement below
SELECT t2.contest_id, ROUND(COUNT(t1.user_id)/(SELECT COUNT(user_name) FROM Users)*100,2) AS percentage ##as I am unable to store a constant with the WITH clause, I have computed the total number of users with a separate SELECT FROM clause
FROM Users AS t1
RIGHT JOIN Register AS t2 ON t1.user_id = t2.user_id ##right join here just for style
GROUP BY t2.contest_id
ORDER BY percentage DESC,
contest_id 