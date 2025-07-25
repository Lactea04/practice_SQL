--�׷츸 ���

/*
SELECT [ROW] FROM [TABLE] WHERE [ROW] 
= [CONDITIONAL_VALUE] GROUP BY [ROW] HAVING [ROW] 
= [CONDITIONAL_VALUE
*/

/*
SELECT sector, industry FROM nasdaq_company
GROUP BY sector, industry
*/

--�ش��ϴ� ���� ���� ����
/*
SELECT sector, industry, COUNT(*) AS cnt FROM nasdaq_company
GROUP BY sector, industry
ORDER BY sector, industry
*/

--HAVING���� ���͸��ϱ�
/*
SELECT sector, industry FROM nasdaq_company
GROUP BY sector, industry
HAVING industry = 'Advertising'

SELECT sector, COUNT(*) AS cnt FROM nasdaq_company
GROUP BY sector
HAVING COUNT(*) > 1000
*/

--DISTINCT�� �ߺ� ���� SELECT DISTINCT [ROW] FROM [TABLE]
/*
SELECT DISTINCT sector, industry 
FROM nasdaq_company 

--GROUP BY�� �ߺ����� (DISTINCT�� ���踸 ���ְ� ����� ���ϱ� ������ ���)
SELECT sector, industry
FROM nasdaq_company
GROUP BY sector, industry
*/

SELECT ipo_year, COUNT(*) AS cnt FROM nasdaq_company
GROUP BY ipo_year
HAVING COUNT(*) > 20
ORDER BY COUNT(*) DESC


