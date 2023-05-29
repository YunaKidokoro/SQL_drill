SELECT
	sh.s_name,
	sa.s_value
FROM
	shop AS sh
INNER JOIN
	sales AS sa
ON
	sh.s_id = sa.s_id
WHERE
	sa.s_value <=
	(
		SELECT
			AVG(s_value)
		FROM
			sales
		WHERE
			s_date = '2012-12'
	)
	AND
	sa.s_date = '2012-12'
;
