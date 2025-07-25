--그룹만 출력

/*
SELECT [ROW] FROM [TABLE] WHERE [ROW] 
= [CONDITIONAL_VALUE] GROUP BY [ROW] HAVING [ROW] 
= [CONDITIONAL_VALUE
*/

/*
SELECT sector, industry FROM nasdaq_company
GROUP BY sector, industry
*/

--해당하는 열의 개수 세기
/*
SELECT sector, industry, COUNT(*) AS cnt FROM nasdaq_company
GROUP BY sector, industry
ORDER BY sector, industry
*/

--HAVING으로 필터링하기
/*
SELECT sector, industry FROM nasdaq_company
GROUP BY sector, industry
HAVING industry = 'Advertising'

SELECT sector, COUNT(*) AS cnt FROM nasdaq_company
GROUP BY sector
HAVING COUNT(*) > 1000
*/

--DISTINCT로 중복 제거 SELECT DISTINCT [ROW] FROM [TABLE]
/*
SELECT DISTINCT sector, industry 
FROM nasdaq_company 

--GROUP BY로 중복제거 (DISTINCT는 집계만 해주고 계산을 못하기 때문에 사용)
SELECT sector, industry
FROM nasdaq_company
GROUP BY sector, industry
*/

SELECT ipo_year, COUNT(*) AS cnt FROM nasdaq_company
GROUP BY ipo_year
HAVING COUNT(*) > 20
ORDER BY COUNT(*) DESC


