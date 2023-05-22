# Write your MySQL query statement below
WITH temp AS (SELECT * FROM Students, Subjects) ##combine Students and Subjects table
SELECT t1.student_id,
 t1.student_name,
 t1.subject_name,
 IFNULL(COUNT(t2.subject_name),0) AS attended_exams ##count subjects in Examinations table, if null, return 0
FROM temp as t1
LEFT JOIN Examinations AS t2 USING(student_id,subject_name) ##first time used USING, instead of ON
GROUP BY
t1.student_id,
t1.subject_name
ORDER BY
t1.student_id,
t1.subject_name