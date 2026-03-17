-- Which author has the most 5-star reviews?
-- Answer: J.K. Rowling
SELECT
	author,
	SUM("5_star_ratings") AS five_star_reviews
FROM
	goodreads_works
GROUP BY
	author
ORDER BY
	five_star_reviews DESC
LIMIT
	1;