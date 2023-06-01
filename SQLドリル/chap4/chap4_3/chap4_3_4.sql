ALTER TABLE
	usr
ADD
	sex VARCHAR(5) DEFAULT '男'
AFTER
	f_name_kana,
ADD
	job VARCHAR(30)
AFTER
	f_name_kana
;
