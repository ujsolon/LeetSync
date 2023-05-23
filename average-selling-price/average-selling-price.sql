# Write your MySQL query statement below
SELECT t1.product_id, ROUND(SUM(t2.units*t1.price)/SUM(t2.units),2) AS average_price 
FROM Prices AS t1
RIGHT JOIN UnitsSold AS t2 ON t1.product_id = t2.product_id
WHERE purchase_date BETWEEN start_date AND end_date   
GROUP BY t2.product_id