SELECT
	CONCAT(l_name,f_name)
FROM
	usr
WHERE
	NOT EXISTS
	(
		SELECT
			*
		FROM
			rental
		WHERE
			usr.user_id = rental.user_id
	)
;
