# Write your MySQL query statement below
SELECT product_id, year as first_year, quantity,price
FROM Sales
WHERE (product_id,year) in (
SELECT product_id,MIN(year)
FROM Sales ##subquery create a table in where clause
GROUP BY product_id
)