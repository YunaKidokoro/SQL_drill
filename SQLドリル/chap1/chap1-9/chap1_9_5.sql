SELECT
	page_id,
	COUNT(*)
FROM
	access_log
GROUP BY
	page_id
;
