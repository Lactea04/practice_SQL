USE DoItSQL
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

/*
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
*/

/*
4. OUTER JOIN
--PrimaryForm

SELECT [ROW]
FROM [TABLE 1]
<LEFT, RIGHT, FULL> OUTER JOIN [TABLE 2] ON [TABLE 1.ROW] = [TABLE 2]
WHERE [CONDITION]
*/

/*
5. LEFT OUTER JOIN
SELECT
	a.symbol AS a_symbol,
	b.symbol AS b_symbol
FROM nasdaq_company AS a
	LEFT OUTER JOIN industry_group_symbol AS b ON a.symbol = b.symbol
WHERE b.symbol IS NULL
*/

/*
6. RIGHT JOIN
SELECT
	a.symbol AS a_symbol,
	b.symbol AS b_symbol
FROM industry_group_symbol AS a
	RIGHT OUTER JOIN nasdaq_company AS b ON a.symbol = b.symbol
WHERE a.symbol IS NULL
*/

/*
7. FULL OUTER JOIN
SELECT
	a.symbol AS a_symbol,
	b.symbol AS b_symbol
FROM industry_group_symbol AS a
	FULL OUTER JOIN nasdaq_company AS b ON a.symbol = b.symbol
*/

/*
SELECT
	a.symbol AS a_symbol,
	b.symbol AS b_symbol
FROM nasdaq_company AS a
	FULL OUTER JOIN industry_group_symbol AS b ON a.symbol = b.symbol
WHERE a.symbol IS NULL
	OR b.symbol IS NULL
*/

/*
8. CROSS JOIN
--PrimaryForm

SELECT [ROW
FROM [TABLE 1]
	CROSS JOIN [TABLE 2]
WHERE [CONDITION]
*/

/*
--MakeSampleData

CREATE TABLE doit_cross1(num INT);
CREATE TABLE doit_cross2(name NVARCHAR(10));
INSERT INTO doit_cross1 VALUES (1),(2),(3)
INSERT INTO doit_cross2 VALUES ('Do'),('It'),('SQL')
*/

/*
SELECT
	a.num, b.name
FROM doit_cross1 AS a
	CROSS JOIN doit_cross2 AS b
WHERE a.num =1
*/

/*
--DeleteSampleData
DROP TABLE doit_cross1
DROP TABLE doit_cross2
*/


--9. SELF JOIN
SELECT
	a.[date] AS a_date,
	a.[close] AS a_close,
	b.[date] AS b_date,
	b.[close] AS b_close,
	b.[close] - a.[close] AS diff_close
FROM stock AS a
	LEFT OUTER JOIN stock AS b ON a.date = dateadd(day, -1, b.date)
WHERE a.symbol = 'MSFT' AND b.symbol = 'MSFT'
	AND a.date >= '2021-10-01' AND a.date < '2021-11-01'
	AND b.date >= '2021-10-01' AND b.date < '2021-11-01'
