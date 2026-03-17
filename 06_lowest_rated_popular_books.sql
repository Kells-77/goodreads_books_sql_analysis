-- Which popular books have the lowest ratings?
-- Business context: Looking at how well popularity drives ratings
SELECT
	author,
	original_title AS title,
	ratings_count,
	avg_rating
FROM
	goodreads_works
WHERE
	ratings_count > 1000000
ORDER BY
	ratings_count DESC,
	avg_rating ASC
LIMIT
	25;