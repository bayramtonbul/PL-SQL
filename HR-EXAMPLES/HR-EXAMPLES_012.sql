
SELECT*FROM REGIONS;

SELECT*FROM REGIONS2;


CREATE TABLE EMPLOYEES2
AS
SELECT 
EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER
FROM EMPLOYEES;

SELECT*FROM EMPLOYEES2 ORDER BY EMPLOYEE_ID;

INSERT INTO EMPLOYEES2
(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER)
SELECT
EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER
FROM EMPLOYEES
WHERE EMPLOYEE_ID=100;

TRUNCATE TABLE EMPLOYEES2;



SELECT*FROM USER_OBJECTS
WHERE OBJECT_TYPE='TABLE';

---------------------------------

DESC EMPLOYEES;

CREATE TABLE NAMES
(
FIRST_NAME VARCHAR2(25)
);

CREATE TABLE SURNAMES
(
LAST_NAME VARCHAR2(25)
);

INSERT ALL
INTO NAMES (FIRST_NAME) VALUES (FIRST_NAME)
INTO SURNAMES (LAST_NAME) VALUES (LAST_NAME)
SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES
ORDER BY EMPLOYEE_ID;

SELECT*FROM NAMES;
SELECT*FROM SURNAMES;
SELECT*FROM EMPLOYEES;

DROP TABLE NAMES;
DROP TABLE SURNAMES;

CREATE TABLE NAMES
AS
SELECT FIRST_NAME FROM EMPLOYEES
ORDER BY EMPLOYEE_ID;

CREATE TABLE SURNAMES
AS
SELECT LAST_NAME FROM EMPLOYEES
ORDER BY EMPLOYEE_ID;

SELECT*FROM NAMES;
SELECT*FROM SURNAMES;
SELECT*FROM EMPLOYEES;



-------------------------------------------------

SELECT *FROM COUNTRIES
ORDER BY REGION_ID;

SELECT 
REGION_ID,COUNT(*)
FROM COUNTRIES
GROUP BY REGION_ID
ORDER BY REGION_ID;

SELECT
C.REGION_ID,R.REGION_NAME,
C.COUNTRY_ID,C.COUNTRY_NAME
FROM COUNTRIES C
JOIN REGIONS R ON
C.REGION_ID=R.REGION_ID
ORDER BY C.REGION_ID;


CREATE TABLE REGION_NAME
AS
SELECT
C.REGION_ID,R.REGION_NAME,
C.COUNTRY_ID,C.COUNTRY_NAME
FROM COUNTRIES C
JOIN REGIONS R ON
C.REGION_ID=R.REGION_ID
ORDER BY 1,2,3,4;

SELECT*FROM REGION_NAME;
--------------------------------------





