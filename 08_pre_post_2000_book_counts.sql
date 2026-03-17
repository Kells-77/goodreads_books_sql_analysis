-- How many books were released prior to 2000 versus those released after 2000?
-- Answer: Post-2000 - 11515; Pre-2000 - 1992
-- Reveals how the dataset is skewed towards more modern works
SELECT
	'Pre-2000' AS era,
	COUNT(*) AS book_count
FROM
	goodreads_works
WHERE
	original_publication_year < 2000
UNION ALL
SELECT
	'Post-2000' AS era,
	COUNT(*) AS book_count
FROM
	goodreads_works
WHERE
	original_publication_year >= 2000
ORDER BY
	book_count DESC;