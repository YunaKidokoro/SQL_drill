SELECT
	CONCAT(e.l_name, e.f_name)   AS 社員氏名,
	CONCAT(em.l_name, em.f_name) AS 上司氏名
FROM
	employee AS e
LEFT JOIN
	employee AS em
ON
	e.b_id = em.s_id
ORDER BY
	e.s_id ASC
;
