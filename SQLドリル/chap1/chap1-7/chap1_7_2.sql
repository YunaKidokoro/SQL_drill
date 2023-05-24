SELECT
	l_name,
	f_name,
	prefecture
FROM
	usr
WHERE 
		prefecture = '東京都'
	OR
		prefecture = '神奈川県'
	OR
		prefecture = '千葉県'
ORDER BY 
	l_name_kana ASC,
	f_name_kana ASC
