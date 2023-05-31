UPDATE
	employee
SET
	class = 
	(
	CASE
		class
			WHEN '部長' THEN 'リーダ'
			WHEN '課長' THEN 'マネージャ'
		ELSE class
	END
	)
;
