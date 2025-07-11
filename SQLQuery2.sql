--1줄 주석
--select 1

/*
select 2
여러 줄 주석
*/

/*
SELECT N'전체 쿼리 테스트'
SELECT N'부분 쿼리 테스트'
SELECT N'실행할 쿼리를 마우스로 드래그하여 블럭 저장'
*/
--SELECT 열(여러개는 , 사용 그리고 전체 데이터는 * 사용) FROM 테이블
--SELECT * FROM nasdaq_company

--EXEC sp_columns @table_name = N'nasdaq_company', @table_owner = N'dbo';

SELECT sector, industry, symbol, close_price FROM nasdaq_company