-- Provide a list of all titles and authors in the 'Fantasy' genre
SELECT
	author,
	original_title AS title
FROM
	goodreads_works
WHERE
	genres ILIKE ('%fantasy%')
ORDER BY
	title ASC;