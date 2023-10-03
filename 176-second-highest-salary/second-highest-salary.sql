SELECT IFNULL(
  (SELECT salary FROM (
  SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk ##added dense_rank, sort first
  FROM Employee ) ranked ##added a temp table name
  WHERE rnk = 2 ##here the 2nd ranked is filtered
  LIMIT 1), Null) as SecondHighestSalary 