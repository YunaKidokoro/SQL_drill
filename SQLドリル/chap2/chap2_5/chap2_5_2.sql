SELECT
	depart_id,
	depart_name
FROM
	depart
WHERE
	NOT EXISTS
	(
		SELECT
			*
		FROM
			employee
		WHERE
			employee.depart_id = depart.depart_id
	)
;
