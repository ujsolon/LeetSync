# Write your MySQL query statement below
SELECT
teacher_id,
COUNT(DISTINCT(subject_id)) AS cnt #count unique subject ID
FROM
Teacher
GROUP BY
teacher_id #for each teacher see top in COUNT for next step ^
