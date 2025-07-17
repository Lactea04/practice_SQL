SELECT * FROM nasdaq_company

--�⺻ ����
/*
SELECT * FROM nasdaq_company ORDER BY symbol
SELECT * FROM nasdaq_company ORDER BY high_price

WHERE sector IS NOT NULL AND sector <> ''
ORDER BY sector, industry
*/

--����/�������� ���� (ASC/DESC)
/*
ORDER BY symbol ASC
ORDER BY symbol DESC

WHERE sector IS NOT NULL AND sector <> ''
ORDER BY sector ASC, symbol DESC
*/

--TOP���� ���� N�� ����
/*
SELECT TOP 10* FROM nasdaq_company
ORDER BY ipo_year DESC, symbol ASC

ORDER BY symbol 
OFFSET 1000 ROWS --1000��°���� �ǳ� �ٱ�, 1001��°���� ���

ORDER BY symbol 
OFFSET 1000 ROWS
FETCH NEXT 10 ROWS ONLY -- �ǳ� �ٱ��� �������� ����� ������ 10���� ����
*/


WHERE ipo_year = '2021' AND sector = 'Finance'
ORDER BY industry ASC, close_price DESC