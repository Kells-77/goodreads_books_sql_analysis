-- Which authors have works that span 3+ decades?
-- Note: 'Anonymous' results are potentially data artifacts and there are works attributed posthumously as well
SELECT
	author,
	MIN(original_publication_year) AS first_book,
	MAX(original_publication_year) AS last_book,
	MAX(original_publication_year) - MIN(original_publication_year) AS span_years
FROM
	goodreads_works
GROUP BY
	author
HAVING
	MAX(original_publication_year) - MIN(original_publication_year) >= 30
ORDER BY
	span_years DESC;