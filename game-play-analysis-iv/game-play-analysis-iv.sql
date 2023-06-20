# Write your MySQL query statement below
SELECT ROUND(COUNT(DISTINCT t1.player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity), 2) as fraction ##if there's a comparison with the original value, just subquery the original table
FROM Activity as t1
JOIN Activity as t2 ON DATE_ADD(t1.event_date,interval 1 day)=t2.event_date ## the JOIN keyword is not highlighted, but it works!
AND t1.player_id = t2.player_id
AND (t1.player_id,t1.event_date) in (SELECT player_id,MIN(event_date) FROM activity group by player_id) ##tuple search