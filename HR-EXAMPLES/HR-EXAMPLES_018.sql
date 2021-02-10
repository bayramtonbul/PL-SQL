 
DESC EMPLOYEES;
SELECT*FROM EMPLOYEES;
--LPAD(expr1, n, expr2)
SELECT
LPAD(FIRST_NAME,20,'*'),
RPAD(LAST_NAME,20,'*')
FROM EMPLOYEES;

--SUBSTR(char, position, substring_length)
SELECT 
SUBSTR(FIRST_NAME,1,1) "FIRST CHARACTER", 
FIRST_NAME 
FROM EMPLOYEES;

SELECT 
SUBSTR(FIRST_NAME,1,3) "FIRST THREE CHARACTERS", 
FIRST_NAME 
FROM EMPLOYEES;


SELECT 
FIRST_NAME,
LENGTH(FIRST_NAME) 
FROM EMPLOYEES;

SELECT 
FIRST_NAME,
INSTR(FIRST_NAME,'a') --KAC TANE 'a' var
FROM EMPLOYEES
ORDER BY 2 DESC;


--LTRIM(char, set)
SELECT
FIRST_NAME,
LTRIM(FIRST_NAME,'A')
FROM EMPLOYEES;

SELECT
FIRST_NAME,
LTRIM(FIRST_NAME,'A')
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%';

SELECT
FIRST_NAME,
REPLACE(FIRST_NAME,'a','A')
FROM EMPLOYEES;

SELECT
MONTHS_BETWEEN
('31-12-2021','31-12-2020')  "Months"
FROM DUAL;

SELECT*FROM EMPLOYEES
WHERE DEPARTMENT_ID=100;

SELECT*FROM EMPLOYEES
WHERE FIRST_NAME LIKE'&AD%';
