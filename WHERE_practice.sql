--SELECT * FROM nasdaq_company WHERE symbol = 'MSFT'
--WHERE 열 = 조건값

SELECT * FROM nasdaq_company
/*
WHERE ipo_year = 2021 
WHERE ipo_year < 2021
WHERE symbol = 'MSFT'
WHERE symbol < 'MSFT' (MSFT 미만인 행 검색)
WHERE last_crawel_date = '2021-10-14'
WHERE last_crawel_date < '2021-10-14'
*/

/*
WHERE ipo_year BETWEEN 2010 AND 2011
WHERE last_crawel_date BETWEEN '2021-03-17' AND '2021-03-19'
WHERE last_crawel_date = '2021-03-17 00:00:00.000'
where symbol between 'A' and 'B' (symbol 열의 A~B 범윗값 검색)
where symbol not between 'A' AND 'B'
*/

/*
WHERE sector = 'Finance' AND industry = 'Major Banks'
WHERE symbol = 'MSFT' OR symbol = 'XXXX'
WHERE symbol IN ('MSFT', 'AMD', 'AMZN')
WHERE sector IN ('Technology', 'Consumer Services') AND symbol IN ('MSFT', 'AMD', 'AMZN')
*/

--찾고자 하는 값이 NULL일 경우
WHERE sector is NULL