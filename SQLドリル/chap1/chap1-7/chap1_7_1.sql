SELECT
	title,
	price
FROM
	books
WHERE
	price between 2500 AND 3499
ORDER BY
	price ASC
;
