--SELECT * FROM nasdaq_company WHERE symbol = 'MSFT'
--WHERE �� = ���ǰ�

SELECT * FROM nasdaq_company
/*
WHERE ipo_year = 2021 
WHERE ipo_year < 2021
WHERE symbol = 'MSFT'
WHERE symbol < 'MSFT' (MSFT �̸��� �� �˻�)
WHERE last_crawel_date = '2021-10-14'
WHERE last_crawel_date < '2021-10-14'
*/

/*
WHERE ipo_year BETWEEN 2010 AND 2011
WHERE last_crawel_date BETWEEN '2021-03-17' AND '2021-03-19'
WHERE last_crawel_date = '2021-03-17 00:00:00.000'
where symbol between 'A' and 'B' (symbol ���� A~B ������ �˻�)
where symbol not between 'A' AND 'B'
*/

/*
WHERE sector = 'Finance' AND industry = 'Major Banks'
WHERE symbol = 'MSFT' OR symbol = 'XXXX'
WHERE symbol IN ('MSFT', 'AMD', 'AMZN')
WHERE sector IN ('Technology', 'Consumer Services') AND symbol IN ('MSFT', 'AMD', 'AMZN')
*/

--ã���� �ϴ� ���� NULL�� ���
WHERE sector is NULL