--1�� �ּ�
--select 1

/*
select 2
���� �� �ּ�
*/

/*
SELECT N'��ü ���� �׽�Ʈ'
SELECT N'�κ� ���� �׽�Ʈ'
SELECT N'������ ������ ���콺�� �巡���Ͽ� �� ����'
*/
--SELECT ��(�������� , ��� �׸��� ��ü �����ʹ� * ���) FROM ���̺�
--SELECT * FROM nasdaq_company

--EXEC sp_columns @table_name = N'nasdaq_company', @table_owner = N'dbo';

SELECT sector, industry, symbol, close_price FROM nasdaq_company