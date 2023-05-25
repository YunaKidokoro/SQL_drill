SELECT
	prefecture AS 都道府県,
	COUNT(*)   AS ユーザ数
FROM
	usr
GROUP BY
	prefecture
;
