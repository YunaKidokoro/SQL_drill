SELECT
	mc.title  AS メニュー名,
	mn.title AS 親メニュー
FROM
	menu AS mc
INNER JOIN
	menu AS mn
ON
	mn.page_id = mc.parent
ORDER BY
	mc.page_id ASC
;
