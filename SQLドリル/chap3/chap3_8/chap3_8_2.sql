DELETE FROM
	employee
WHERE
	NOT EXISTS
	(
		SELECT
			depart.depart_id
		FROM
			depart
		WHERE
			depart.depart_id = employee.depart_id
	)
;
