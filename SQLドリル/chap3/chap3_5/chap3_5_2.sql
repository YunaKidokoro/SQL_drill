UPDATE
	employee
SET
	class = '主任',
	last_update = CURRENT_DATE
WHERE
	CONCAT(l_name, f_name ) = '山田奈美'
;
