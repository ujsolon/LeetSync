DELETE t1
FROM Person as t1, Person as t2
WHERE t1.email=t2.email AND t1.id>t2.id