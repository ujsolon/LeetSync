# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE t1
FROM Person AS t1, Person AS t2
WHERE t1.email = t2.email AND t1.id>t2.id ##delete rows where emails are the same