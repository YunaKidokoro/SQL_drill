DELETE FROM
	sales
WHERE
	NOT EXISTS
	(
	SELECT
		shop.s_id
	FROM
		shop
	WHERE
		sales.s_id = shop.s_id
	)
;
