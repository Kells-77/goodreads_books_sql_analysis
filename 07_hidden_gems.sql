-- Are there any 'hidden gems' in this list?
-- Looking for works that have an average rating > 4.5 but fewer than 1000 reviews
SELECT
	original_title AS title,
	avg_rating,
	reviews_count
FROM
	goodreads_works
WHERE
	avg_rating > 4.2
	AND reviews_count < 1000
ORDER BY
	avg_rating DESC,
	reviews_count;