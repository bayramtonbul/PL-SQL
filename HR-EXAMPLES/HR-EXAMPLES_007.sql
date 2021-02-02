CREATE OR REPLACE PROCEDURE RAISE_AMOUNT 
(
  E_ID IN NUMBER,
  RAISE_AMT IN NUMBER DEFAULT 0
) 
AS 
BEGIN
  UPDATE EMPLOYEES 
  SET SALARY=SALARY*(1+RAISE_AMT )
  WHERE EMPLOYEE_ID=E_ID;
END RAISE_AMOUNT; 



SELECT*FROM EMPLOYEES
WHERE EMPLOYEE_ID=100; -----SALARY=24000


BEGIN

RAISE_AMOUNT(100,0.1);

END;

SELECT*FROM EMPLOYEES
WHERE EMPLOYEE_ID=100; -----SALARY=24000*1.1=26400


UPDATE EMPLOYEES 
SET SALARY=24000
WHERE EMPLOYEE_ID=100;


