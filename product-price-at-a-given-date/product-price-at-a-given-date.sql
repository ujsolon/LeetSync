# Write your MySQL query statement below
SELECT DISTINCT a.product_id, coalesce(b.new_price, 10) AS price
FROM Products AS a
LEFT JOIN #coalesce clause checks if new_price is null, if yes, then return 10

(SELECT product_id, rank() over(partition by product_id ORDER BY change_date DESC) AS xrank, new_price FROM Products ##this is how you order, then group
WHERE change_date<='2019-08-16') AS b

ON a.product_id = b.product_id AND b.xrank=1; ##includes all first ranked entries, first tiem seeing an AND statement on a JOIN clause