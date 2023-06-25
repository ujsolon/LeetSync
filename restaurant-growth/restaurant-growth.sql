# Write your MySQL query statement below
SELECT visited_on, SUM(amount) as amount, ROUND(SUM(amount)/7 , 2) as average_amount ##finally, compute required moving average
FROM
(
SELECT distinct visited_on,
sum(amount) over(order by visited_on rows between 6 preceding and current row) as amount ##next, sum 6 preceeding and current row
FROM
(
SELECT visited_on, SUM(amount) as amount FROM Customer GROUP BY visited_on ##first, group by date
) as t1
) as t2
GROUP BY visited_on
LIMIT 100 OFFSET 6 ##offset clause discards the first 6 entries and lists the 7th entry as 1st row