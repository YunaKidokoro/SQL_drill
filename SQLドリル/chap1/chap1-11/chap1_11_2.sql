SELECT
	isbn AS ISBNコード,
	DATE_FORMAT(rental_date, '%Y/%m/%d日') AS 貸出日
FROM
	rental
WHERE
	returned = 0
ORDER BY
	rental_date ASC
;
