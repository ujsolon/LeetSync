# Write your MySQL query statement below
SELECT user_id, CONCAT(UPPER(LEFT(name,1)),LOWER(RIGHT(name,LENGTH(name)-1))) AS name ##lol no propercase function for sql we only have UPPER and LOWER
FROM Users
ORDER BY user_id
