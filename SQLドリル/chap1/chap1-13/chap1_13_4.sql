SELECT
	author_id AS 著者ID,
	COUNT(*)  AS カウント数,
	CASE
		WHEN COUNT(*) >= 4 THEN '多い'
		WHEN COUNT(*) >= 2 THEN '普通'
		ELSE '少ない'
	END AS 評価
FROM
	author_books
GROUP BY
	author_id
;
