# Write your MySQL query statement below

SELECT u.user_id as buyer_id, u.join_date, SUM(IF(o.order_date BETWEEN '2019-01-01' AND '2019-12-31',1,0 ) ) as orders_in_2019
FROM Users u LEFT JOIN Orders o ON u.user_id = o.buyer_id
GROUP BY u.user_id, u.join_date