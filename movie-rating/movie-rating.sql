# Write your MySQL query statement below
(SELECT t2.name AS results
FROM Users AS t2
LEFT JOIN MovieRating AS t3 ON t2.user_id = t3.user_id
GROUP BY t3.user_id
ORDER BY COUNT(t3.rating) DESC, t2.name
LIMIT 1
)

UNION ALL ## vs UNION, which deletes duplicates. This exercise puts into 1 column, different data type i.e. name and title

(SELECT t1.title AS results
FROM Movies AS t1
LEFT JOIN MovieRating AS t3 ON t1.movie_id = t3.movie_id
WHERE MONTH(created_at)='02'
GROUP BY t1.movie_id
ORDER BY AVG(t3.rating) DESC, t1.title
LIMIT 1
)