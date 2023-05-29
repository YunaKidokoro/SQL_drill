SELECT
	om.order_date AS 発注日,
	od.po_id 	  AS 注文コード,
	CONCAT(us.l_name, us.f_name) AS 利用者氏名,
	pd.p_name AS 商品名,
	pd.price  AS 商品単価,
	od.quantity AS 購入数
FROM
	(
			order_main AS om
		INNER JOIN
			usr AS us
		ON
			om.user_id = us.user_id
	)
INNER JOIN
	(
			order_desc AS od
		INNER JOIN
			product AS pd
		ON
			od.p_id = pd.p_id
	)
ON
	om.po_id = od.po_id
WHERE
	om.delivery_date IS NULL
ORDER BY
	om.order_date ASC,
	od.po_id ASC,
	pd.p_id ASC
;
