-- Find all books with "Devil" in title (demonstrates text filtering with ILIKE)

SELECT
	original_title AS title
FROM
	goodreads_works
WHERE
	original_title ILIKE '%devil%'
ORDER BY
	title ASC;