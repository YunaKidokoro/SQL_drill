UPDATE
	books
SET
	category_id = 'XXXXX'
WHERE
	books.isbn
	IN
	(
		SELECT
			isbn
		FROM
			rental
		WHERE
			returned = 9
	)
;
