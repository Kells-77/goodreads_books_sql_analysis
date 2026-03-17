-- How many distinct authors are in this dataset?
-- Answer: 5,554
SELECT
	COUNT(DISTINCT author)
FROM
	goodreads_works;