-- Who are the top 5 most prolific authors in this dataset?
SELECT
	author,
	COUNT(*) AS num_of_books
FROM
	goodreads_works
GROUP BY
	author
ORDER BY
	num_of_books DESC
LIMIT
	5;