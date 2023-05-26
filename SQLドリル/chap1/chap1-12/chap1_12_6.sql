SELECT
	referer,
	COUNT(*)
FROM
	access_log
WHERE
	access_date >= '2013-01-01'
GROUP BY
	referer
HAVING
	COUNT(*) < 5
ORDER BY
	COUNT(*) DESC
;
