# Write your MySQL query statement below

(SELECT name FROM SalesPerson) ##query list of all SalesPerson
EXCEPT ##remove names which got commisions from Company 'RED'
SELECT temp.name
FROM
(SELECT sp.name, o.com_id
FROM Orders o LEFT JOIN SalesPerson sp ON o.sales_id = sp.sales_id) temp
LEFT JOIN Company c ON temp.com_id = c.com_id
WHERE c.name='RED'