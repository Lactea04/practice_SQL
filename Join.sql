USE DoItSQL

/*
--Primary INNER JOIN Form
SELECT [ROW]
FROM [TABLE 1]
	INNER JOIN [TABLE 2] ON [TABLE 1.ROW] = [TABLE 2.ROW] 
WHERE [CONDITION]

--INNER JOIN With Three Table
SELECT [ROW]
FROM [TABLE 1]
	INNER JOIN [TABLE 2] ON [TABLE 1.ROW] = [TABLE 2.ROW]
	INNER JOIN [TABLE 3] ON [TABLE 2.ROW] = [TABLE 3.ROW]
WHERE [CONDITION]
*/

/*
SELECT
	a.industry,
	c.company_name
FROM industry_group AS a
	 INNER JOIN industry_group_symbol AS b ON a.num = b.num
	 INNER JOIN nasdaq_company AS c ON b.symbol = c.symbol
WHERE a.industry = 'Oil'
*/

/*
--Primary OUTER JOIN Form
SELECT [ROW]
FROM [TABLE 1]
	<LEFT, RIGHT, FULL> OUTER JOIN [TABLE 2] ON [TABLE 1.ROW] = [TABLE 2.ROW]
WHERE [CONDITION]
*/

SELECT
	a.symbol AS a_symbol,
	a.industry AS a_industry,
	a.company_name AS a_company_name,
	b.symbol AS b_symbol
FROM nasdaq_company AS a
	LEFT OUTER JOIN industry_group_symbol AS b ON a.symbol = b.symbol
WHERE b.symbol IS NULL