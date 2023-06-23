# Write your MySQL query statement below
SELECT id, COUNT(id) num
FROM (
SELECT requester_id as id FROM RequestAccepted ##list all requester_id's
union all ##combines all requester and accepter ids
SELECT accepter_id as id FROM RequestAccepted ##list all accepter_id's
) x ##indicates a proxy table name which is not important
GROUP BY id
ORDER BY num DESC
LIMIT 1