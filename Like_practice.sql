--SELECT [row] FROM [table] WHERE [row] LIKE [conditional_value]

SELECT * FROM nasdaq_company

--%�� Ư�� ���ڸ� �����ϴ� ���ڿ� �˻��ϱ�
/*
WHERE symbol LIKE 'A%' --A�� �����ϴ� ���ڿ�
WHERE symbol LIKE '%DA' --DA�� ������ ���ڿ�
WHERE symbol LIKE '%SF%' --SF�� ���Ե� ���ڿ�
*/

/*
WHERE symbol NOT LIKE 'A%'
*/

--%�� �����ϴ� �� ã��
/*
--���÷� %�� �� �� �����
WITH CTE (col_1) AS (
SELECT 'A%BC' UNION ALL
SELECT 'A_BC' UNION ALL
SELECT 'ABC'
)

SELECT * FROM CTE 
WHERE col_1 LIKE '%/%%' ESCAPE '/' --#,!,/ ������ �� �� ����
*/

--_�� Ư�� ���ڿ��� �����ϴ� Ư�� ������ ���ڿ� �˻��ϱ�
/*
A_: A�� �����ϴ� ���� ���� 2���� ���ڿ�
_A: A�� ������ ���� ���� 2���� ���ڿ�
_A_: �� ���� �� ��� ���ڸ� A�̸� �յڷδ� �����̵� ������� ���ڿ�
*/

/*
WHERE symbol LIKE 'A__C' -- ���� ���� ���̰� 4�̰� A�� �����ϰ� C�� ������ ���ڿ�
WHERE symbol LIKE '__B%' -- __B�� �����ϴ� ���ڿ� 
WHERE symbol LIKE 'A%L_' -- A�� �����ϰ� L_�� ������ ���ڿ�  
*/

--[]�� ���ڳ� ���� ������ ������ ���ڿ� �˻�

/*
WHERE symbol LIKE '[A,B]%' --A Ȥ�� B�� �����ϴ� ���ڿ� ,�� �ƴ� -�ε� ���� ����
WHERE symbol LIKE '%[A-D]' --AȤ�� BȤ�� CȤ�� D�� ������ ���ڿ�
WHERE symbol LIKE 'A[^A-C]%[A-B]' --ù ���ڰ� A�̰� �� ��° ���ڴ� A���� C�� �ƴϰ�
������ ���ڰ� AȤ�� B�� ���ڿ�
*/

--WHERE company_name LIKE '%apple%' 
--WHERE symbol LIKE 'AA%[L,Q]%'
WHERE (close_price LIKE '1[0-9]%' OR close_price LIKE '20')
AND (company_name NOT LIKE '%A%' AND ipo_year LIKE '201[7-9]' OR ipo_year LIKE '202[0,1]')
ORDER BY company_name DESC, ipo_year ASC

