SELECT
	isbn 貸出数,
	COUNT(*),
	CASE
		WHEN COUNT(*) >= 10 THEN '好評'
		WHEN COUNT(*) >= 5 THEN '普通'
		ELSE '不評'
	END AS 評価
FROM
	rental
GROUP BY
	isbn
;
