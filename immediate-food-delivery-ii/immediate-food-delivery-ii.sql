# Write your MySQL query statement below
select round(avg(temp.order_date=temp.customer_pref_delivery_date) * 100, 2) as immediate_percentage
from (select *, RANK() OVER(partition by customer_id order by order_date) as r from Delivery) as temp #applies an ORDER BY clause to the table before grouping by GROUP BY
where temp.r = 1