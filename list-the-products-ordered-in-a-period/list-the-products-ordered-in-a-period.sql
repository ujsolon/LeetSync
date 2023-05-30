# Write your MySQL query statement below
SELECT product_name, sum(unit) AS unit
FROM Products AS t1
LEFT JOIN Orders AS t2 ON t1.product_id = t2.product_id
WHERE t2.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY product_name
HAVING SUM(unit) >= 100