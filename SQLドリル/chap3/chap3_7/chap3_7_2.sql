DELETE FROM
	access_log
WHERE
		access_date < '2012-06-01'
	OR
		referer = ''
	OR
		referer IS NUll
;
