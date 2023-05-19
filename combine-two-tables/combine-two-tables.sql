# Write your MySQL query statement below
SELECT FirstName,LastName,City,State
FROM Person
LEFT JOIN Address
USING(PersonId) #use primary key of the main table, here, table Person