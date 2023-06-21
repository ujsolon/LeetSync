# Write your MySQL query statement below

## solution is a bit messy, requiring 2 sub queries
## there are better ways to do this for sure
#SELECT CASE WHEN t2.cumulative_sum>1000 THEN t1.person_name END AS person_name
SELECT person_name
FROM 
( ##this table excludes the rows where cumulative is greater than 1000
SELECT CASE WHEN cumulative_sum <= 1000 THEN t1.person_name END as person_name, cumulative_sum
FROM Queue as t1
LEFT JOIN
(SELECT person_name, SUM(weight) OVER (ORDER BY turn) as cumulative_sum ##this table computes the cumulative sum
FROM Queue) as t2
ON t1.person_name = t2.person_name
ORDER BY t1.turn
) as t3
WHERE person_name IS NOT NULL ##remove null entries
ORDER BY cumulative_sum DESC ##Take last row as output
LIMIT 1