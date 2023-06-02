# Write your MySQL query statement below
SELECT query_name, ROUND(AVG(rating/position),2) AS quality, ROUND(100.0*sum(if(rating<3, 1,0))/count(1),2) as poor_query_percentage ##if+sum statement used to count all the rows satisfying required criteria. count(1) is the total number of rows
FROM Queries
GROUP BY query_name