# Write your MySQL query statement below

SELECT customer_number 
FROM
(SELECT customer_number, COUNT(customer_number) cnt
FROM Orders
GROUP BY customer_number 
ORDER BY cnt DESC
) tmp
LIMIT 1