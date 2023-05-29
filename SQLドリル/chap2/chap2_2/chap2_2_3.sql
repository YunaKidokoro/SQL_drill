SELECT
	b.title,
	COUNT(r.id)
FROM
	books AS b
LEFT JOIN
	rental AS r
ON
	b.isbn = r.isbn
GROUP BY
	b.title
ORDER BY 
	COUNT(r.id) DESC
;
