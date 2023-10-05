# Write your MySQL query statement below

SELECT player_id, event_date AS first_login
FROM 
(SELECT player_id, event_date, RANK() OVER (PARTITION BY player_id ORDER BY event_date ASC) AS rnk
FROM Activity) ranking
WHERE rnk = 1