
/* DDL
CREATE DATABASE [DATABASE_NAME] --데이터베이스 생성
DROP DATABASE [DATABASE_NAME] --데이터베이스 삭제
USE [DATABASE_NAME] --데이터베이스 선택
*/

/* 데이터베이스 테이블
CREATE TABLE doit_create_table (  --데이터베이스 테이블 생성
col_1 INT,
col_2 NVARCHAR(50),
col_3 DATETIME
)

DROP TABLE doit_create_table   데이터베이스 테이블 삭제
*/

/*
--INSERT INTO [TABLE] [ROW1, ROW2 --] VALUES [VALUE1, VALUE2 --]

GO -- 테이블에 데이터삽입

INSERT INTO doit_sml (col_1, col_2, col_3)
VALUES (1, 'DoItSQL', '2021-01-01')

-- 열 이름 생략해서 삽입
INSERT INTO doit_sml
VALUES (2, N'열 이름 생략', '2021-01-02')

--특정 열에만 데이터 삽입
INSERT INTO doit_sml (col_1, col_2)
VALUES (3, N'col_3 값 생략')

--삽입하는 데이터 순서 변경
INSERT INTO doit_sml (col_1, col_3, col_2)
VALUES (4, '2021-01-03', N'열 순서 변경')

--여러 데이터 한 번에 삽입
INSERT INTO doit_sml (col_1, col_2, col_3)
VALUES (5, N'데이터 입력5', '2021-01-03'), (6, N'데이터 입력6', '2021-01-03'), 
(7, N'데이터 입력7', '2021-01-03')
*/

/*
-- UPDATE [TABLE] SET [ROW1 = VALUE1, ROW2 = VALUE2 --] 
WHERE [ROW] = [CONDITION]

--특정 열 데이터 수정 WHERE 사용
UPDATE doit_sml SET col_2 = N'데이터 수정'
WHERE col_1 = 4

--전체 열 데이터 수정
UPDATE doit_sml SET col_1 = col_1 + 10

--특정 열 데이터 삭제하기
DELETE doit_sml WHERE col_1 = 14

--전체 열 데이터 삭제하기
DELETE doit_sml
*/

/*
-- 부모-자식 데이블 생성
CREATE TABLE doit_parent (col_1 INT PRIMARY KEY);
CREATE TABLE doit_child (col_1 INT);

ALTER TABLE doit_child
ADD FOREIGN KEY (col_1) REFERENCES doit_parent(col_1);

-- 데이터 추가는 부모 데아터에 있는 데이터에 한해서 자식 데이터 조작 가능
INSERT INTO doit_parent VALUES (1)
INSERT INTO doit_child VALUES (1)

--삭제는 반대로
DELETE doit_child WHERE col_1 = 1
DELETE doit_parent WHERE col_1 = 1

DROP TABLE doit_child 
DROP TABLE doit_parent 
*/

/*
--INSERT ... SELECT 문
INSERT [TAEGET TABLE]
SELECT [ROW] FROM [EXISTING TABLE], 3-6 20~21p 참고

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