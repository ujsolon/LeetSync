# Write your MySQL query statement below
SELECT
 t1.machine_id,
 ROUND(AVG(t2.timestamp-t1.timestamp),3) AS processing_time
FROM Activity AS t1, Activity AS t2
WHERE t2.activity_type = 'end' AND t1.activity_type = 'start' AND t2.machine_id = t1.machine_id AND t2.process_id = t1.process_id
GROUP BY machine_id