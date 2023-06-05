# Write your MySQL query statement below
SELECT
DATE_FORMAT(trans_date,'%Y-%m') AS month, ##MONTH and YEAR does not show correct format
country, count(*) AS trans_count,
COUNT(CASE WHEN state='approved' THEN 1 END) AS approved_count, ##COUNTIF counterpart
SUM(amount) AS trans_total_amount,
SUM(IF(state='approved',amount,0)) AS approved_total_amount ##CASE WHEN statement can also be used here I think
FROM Transactions 
GROUP BY month, country

