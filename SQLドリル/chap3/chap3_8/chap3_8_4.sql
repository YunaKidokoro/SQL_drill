DELETE FROM
	books
WHERE
		books.isbn
	IN
		(
		SELECT
			rental.isbn
		FROM
			rental
		WHERE
			returned = 9
		)
;
