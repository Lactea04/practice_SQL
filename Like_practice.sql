--SELECT [row] FROM [table] WHERE [row] LIKE [conditional_value]

SELECT * FROM nasdaq_company

--%로 특정 문자를 포함하는 문자열 검색하기
/*
WHERE symbol LIKE 'A%' --A로 시작하는 문자열
WHERE symbol LIKE '%DA' --DA로 끝나는 문자열
WHERE symbol LIKE '%SF%' --SF가 포함된 문자열
*/

/*
WHERE symbol NOT LIKE 'A%'
*/

--%를 포함하는 열 찾기
/*
--예시로 %가 들어간 열 만들기
WITH CTE (col_1) AS (
SELECT 'A%BC' UNION ALL
SELECT 'A_BC' UNION ALL
SELECT 'ABC'
)

SELECT * FROM CTE 
WHERE col_1 LIKE '%/%%' ESCAPE '/' --#,!,/ 등으로 할 수 있음
*/

--_로 특정 문자열을 포함하는 특정 길이의 문자열 검색하기
/*
A_: A로 시작하는 글자 수가 2개인 문자열
_A: A로 끝나는 글자 수가 2개인 문자열
_A_: 세 글자 중 가운데 글자만 A이며 앞뒤로는 무엇이든 상관없는 문자열
*/

/*
WHERE symbol LIKE 'A__C' -- 문자 열의 길이가 4이고 A로 시작하고 C로 끝나는 문자열
WHERE symbol LIKE '__B%' -- __B로 시작하는 문자열 
WHERE symbol LIKE 'A%L_' -- A로 시작하고 L_로 끝나는 문자열  
*/

--[]로 문자나 문자 범위를 지정해 문자열 검색

/*
WHERE symbol LIKE '[A,B]%' --A 혹은 B로 시작하는 문자열 ,가 아닌 -로도 구분 가능
WHERE symbol LIKE '%[A-D]' --A혹은 B혹은 C혹은 D로 끝나는 문자열
WHERE symbol LIKE 'A[^A-C]%[A-B]' --첫 글자가 A이고 두 번째 글자는 A에서 C가 아니고
마지막 글자가 A혹은 B인 문자열
*/

--WHERE company_name LIKE '%apple%' 
--WHERE symbol LIKE 'AA%[L,Q]%'
WHERE (close_price LIKE '1[0-9]%' OR close_price LIKE '20')
AND (company_name NOT LIKE '%A%' AND ipo_year LIKE '201[7-9]' OR ipo_year LIKE '202[0,1]')
ORDER BY company_name DESC, ipo_year ASC

