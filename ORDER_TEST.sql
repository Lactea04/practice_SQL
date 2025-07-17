SELECT * FROM nasdaq_company

--기본 정렬
/*
SELECT * FROM nasdaq_company ORDER BY symbol
SELECT * FROM nasdaq_company ORDER BY high_price

WHERE sector IS NOT NULL AND sector <> ''
ORDER BY sector, industry
*/

--오름/내림차순 정렬 (ASC/DESC)
/*
ORDER BY symbol ASC
ORDER BY symbol DESC

WHERE sector IS NOT NULL AND sector <> ''
ORDER BY sector ASC, symbol DESC
*/

--TOP으로 상위 N개 정렬
/*
SELECT TOP 10* FROM nasdaq_company
ORDER BY ipo_year DESC, symbol ASC

ORDER BY symbol 
OFFSET 1000 ROWS --1000번째까지 건너 뛰기, 1001번째부터 출력

ORDER BY symbol 
OFFSET 1000 ROWS
FETCH NEXT 10 ROWS ONLY -- 건너 뛰기한 다음으로 출력할 데이터 10개로 지정
*/


WHERE ipo_year = '2021' AND sector = 'Finance'
ORDER BY industry ASC, close_price DESC