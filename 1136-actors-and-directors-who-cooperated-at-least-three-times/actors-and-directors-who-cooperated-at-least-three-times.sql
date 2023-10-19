# Write your MySQL query statement below
SELECT actor_id, director_id
FROM
(SELECT CONCAT(actor_id, ',',director_id) AS pair_id, count(CONCAT(actor_id, ',',director_id)) AS pair_count, actor_id, director_id
FROM ActorDirector
GROUP BY pair_id
HAVING pair_count>=3)tmp