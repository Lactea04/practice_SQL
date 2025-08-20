/*
1. INNER JOIN
--PrimaryForm

SELECT [ROW]
FROM [TABLE 1]
INNER JOIN [TABLE 2] ON [TABLE 1] = [TABLE 2, ROW]
WHERE [CONDITION]
*/

/*
SELECT
	a.symbol,
	a.company_name,
	a.ipo_year,
	a.sector,
	a.industry,
	b.date,
	b.[open],
	b.[high],
	b.[low],
	b.[close],
	b.adj_close,
	b.volume
FROM nasdaq_company AS a --별칭 사용 안하면 오류 발생
	INNER JOIN stock AS b ON a.symbol = b.symbol
WHERE a.symbol = 'MSFT'
	AND b.date >= '2021-10-01'
	AND b.date < '2021-11-01'
*/

/*
2. Double Condition INNER JOIN
SELECT
	a.symbol,
	a.last_crawel_date,
	b.date
FROM nasdaq_company AS a 
	INNER JOIN stock AS b ON a.symbol = b.symbol AND a.last_crawel_date = b.date
WHERE a.symbol = 'MSFT'
*/

/*
3. Triple Conditons INNER JOIN
--PrimaryForm

SELECT [ROW]
FROM [TABLE 1]
INNER JOIN [TABLE 2] ON [TABLE 1.ROW] = [TABLE 2.ROW]
INNER JOIN [TABLE 3] ON [TABLE 2.ROW] = [TABLE 3.ROW]
WHERE [CONDITION]
*/

SELECT
	a.industry,
	c.symbol,
	c.company_name,
	c.ipo_year,
	c.sector
FROM industry_group AS a
	INNER JOIN industry_group_symbol AS b ON a.num = b.num
	INNER JOIN nasdaq_company AS c ON b.symbol = c.symbol 
WHERE a.industry = N'자동차'
ORDER BY symbol
