SELECT
	author_id,
	COUNT(*)
FROM
	author_books
GROUP BY
	author_id
HAVING
	COUNT(*) >= 3
;
