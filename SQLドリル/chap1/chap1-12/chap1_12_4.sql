SELECT
	publish,
	category_id,
	count(*)
FROM
	books
GROUP BY
	publish,
	category_id
HAVING
	COUNT(*) < 3
;
