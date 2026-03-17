-- Top 10 rated books with over 1000 pages
SELECT
	original_title AS title,
	num_pages,
	avg_rating
FROM
	goodreads_works
WHERE
	num_pages > 1000
ORDER BY
	avg_rating DESC
LIMIT
	10;