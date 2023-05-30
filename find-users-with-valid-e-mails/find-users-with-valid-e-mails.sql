# Write your MySQL query statement below
SELECT user_id, name, mail
FROM Users
WHERE RIGHT(mail, 13)='@leetcode.com'
AND LEFT(mail,LENGTH(mail) - 13) RLIKE '^[A-Za-z][A-Za-z0-9._-]*$' ##well I would never have guessed this syntax jeez
##%[^A-Za-z0-9._-]% signifies all the characters expect 'A-Z','a-z','0-9','.','_','-' which are supposed to be irrelevant characters