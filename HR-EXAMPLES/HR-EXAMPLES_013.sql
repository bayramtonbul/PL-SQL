SELECT*FROM EMPLOYEES
ORDER BY COMMISSION_PCT;

SELECT
COMMISSION_PCT,COUNT(*)
FROM EMPLOYEES
GROUP BY COMMISSION_PCT
ORDER BY COMMISSION_PCT;
---------------------------------------------------
CREATE TABLE EMPLOYEES_COMM
AS
SELECT*FROM EMPLOYEES;

CREATE TABLE EMPLOYEES_NULL_COMM
AS
SELECT*FROM EMPLOYEES;

TRUNCATE TABLE EMPLOYEES_COMM;
TRUNCATE TABLE EMPLOYEES_NULL_COMM;
-------------------------------------------------------
SELECT*FROM EMPLOYEES_COMM;
SELECT*FROM EMPLOYEES_NULL_COMM;
---(1)----------------------------------------------------
INSERT ALL
    WHEN COMMISSION_PCT IS NULL THEN
        INTO EMPLOYEES_NULL_COMM
    WHEN COMMISSION_PCT IS NOT NULL THEN
        INTO EMPLOYEES_COMM
SELECT*FROM EMPLOYEES ;
----------------------------------------------------------
TRUNCATE TABLE EMPLOYEES_COMM;
TRUNCATE TABLE EMPLOYEES_NULL_COMM;
---(2)-----------------------------------------------------
INSERT INTO EMPLOYEES_COMM
SELECT*FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;

INSERT INTO EMPLOYEES_NULL_COMM
SELECT*FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL;

-------------------------------------------------------------

SELECT*FROM EMPLOYEES_COMM
ORDER BY COMMISSION_PCT; ----COMMISSION_PCT IS NOT NULL (35 ROWS)

SELECT*FROM EMPLOYEES_NULL_COMM
ORDER BY COMMISSION_PCT;  ----COMMISSION_PCT IS NULL  (72 ROWS)

-----------------------------------------------------------
DROP TABLE EMPLOYEES_COMM;
DROP TABLE EMPLOYEES_NULL_COMM;

---(3)---------------------------------------------------
CREATE TABLE EMPLOYEES_COMM
AS
SELECT*FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL ;

CREATE TABLE EMPLOYEES_NULL_COMM
AS
SELECT*FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL;

----------------------------------

SELECT*FROM EMPLOYEES_COMM;
SELECT*FROM EMPLOYEES_NULL_COMM;
    


ALTER TABLE EMPLOYEES_NULL_COMM 
DROP COLUMN COMMISSION_PCT;

----------------------------------------


