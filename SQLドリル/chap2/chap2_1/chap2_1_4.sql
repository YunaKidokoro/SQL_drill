SELECT
	CONCAT(u.l_name, u.f_name),
	COUNT(*)
FROM
	usr AS u
INNER JOIN
	rental AS r
ON
	u.user_id = r.user_id
WHERE
	r.returned = 0
GROUP BY
	u.user_id
ORDER BY
	COUNT(*) DESC
;
