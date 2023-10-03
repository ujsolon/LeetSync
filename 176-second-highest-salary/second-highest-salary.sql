SELECT IFNULL(
  (SELECT salary FROM (
  SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
  FROM Employee ) ranked
  WHERE rnk = 2
  LIMIT 1), Null) as SecondHighestSalary 