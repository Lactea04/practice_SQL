
/* DDL
CREATE DATABASE [DATABASE_NAME] --�����ͺ��̽� ����
DROP DATABASE [DATABASE_NAME] --�����ͺ��̽� ����
USE [DATABASE_NAME] --�����ͺ��̽� ����
*/

/* �����ͺ��̽� ���̺�
CREATE TABLE doit_create_table (  --�����ͺ��̽� ���̺� ����
col_1 INT,
col_2 NVARCHAR(50),
col_3 DATETIME
)

DROP TABLE doit_create_table   �����ͺ��̽� ���̺� ����
*/

/*
--INSERT INTO [TABLE] [ROW1, ROW2 --] VALUES [VALUE1, VALUE2 --]

GO -- ���̺� �����ͻ���

INSERT INTO doit_sml (col_1, col_2, col_3)
VALUES (1, 'DoItSQL', '2021-01-01')

-- �� �̸� �����ؼ� ����
INSERT INTO doit_sml
VALUES (2, N'�� �̸� ����', '2021-01-02')

--Ư�� ������ ������ ����
INSERT INTO doit_sml (col_1, col_2)
VALUES (3, N'col_3 �� ����')

--�����ϴ� ������ ���� ����
INSERT INTO doit_sml (col_1, col_3, col_2)
VALUES (4, '2021-01-03', N'�� ���� ����')

--���� ������ �� ���� ����
INSERT INTO doit_sml (col_1, col_2, col_3)
VALUES (5, N'������ �Է�5', '2021-01-03'), (6, N'������ �Է�6', '2021-01-03'), 
(7, N'������ �Է�7', '2021-01-03')
*/

/*
-- UPDATE [TABLE] SET [ROW1 = VALUE1, ROW2 = VALUE2 --] 
WHERE [ROW] = [CONDITION]

--Ư�� �� ������ ���� WHERE ���
UPDATE doit_sml SET col_2 = N'������ ����'
WHERE col_1 = 4

--��ü �� ������ ����
UPDATE doit_sml SET col_1 = col_1 + 10

--Ư�� �� ������ �����ϱ�
DELETE doit_sml WHERE col_1 = 14

--��ü �� ������ �����ϱ�
DELETE doit_sml
*/

/*
-- �θ�-�ڽ� ���̺� ����
CREATE TABLE doit_parent (col_1 INT PRIMARY KEY);
CREATE TABLE doit_child (col_1 INT);

ALTER TABLE doit_child
ADD FOREIGN KEY (col_1) REFERENCES doit_parent(col_1);

-- ������ �߰��� �θ� �����Ϳ� �ִ� �����Ϳ� ���ؼ� �ڽ� ������ ���� ����
INSERT INTO doit_parent VALUES (1)
INSERT INTO doit_child VALUES (1)

--������ �ݴ��
DELETE doit_child WHERE col_1 = 1
DELETE doit_parent WHERE col_1 = 1

DROP TABLE doit_child 
DROP TABLE doit_parent 
*/

/*
--INSERT ... SELECT ��
INSERT [TAEGET TABLE]
SELECT [ROW] FROM [EXISTING TABLE], 3-6 20~21p ����

--SELECT [ROW] INTO [NEW TABLE] FROM stock
SELECT * INTO doit_stock2 FROM stock
WHERE symbol = 'MSFT'
	and date >= '2021-01-01' and date < '2021-02-01';

SELECT * FROM doit_stock2;

DROP TABLE doit_stock2;
*/

CREATE TABLE doit_quiz (
col_1 INT,
col_2 INT,
col_3 INT
)

INSERT INTO doit_quiz (col_1, col_2 , col_3)
VALUES (5, 3, 7), (1, 4, 9)

UPDATE doit_quiz SET col_2 = 5 WHERE col_2 = 3
DELETE doit_quiz WHERE col_1 = 5

SELECT * FROM doit_quiz

DROP TABLE doit_quiz