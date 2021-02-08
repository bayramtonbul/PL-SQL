
SELECT*FROM EMPLOYEES;
SELECT*FROM DEPARTMENTS;

SELECT*FROM
EMPLOYEES E
JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID;
--------------------------------------------
SELECT*FROM
EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID;

SELECT*FROM
EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID
WHERE D.DEPARTMENT_ID IS  NULL; 

---------------------------------------------

SELECT*FROM
EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID
WHERE D.DEPARTMENT_ID IS NOT NULL 
MINUS
SELECT*FROM
EMPLOYEES E
JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID;

-------------------------------------------
SELECT*FROM
EMPLOYEES E
RIGHT JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID;

SELECT*FROM
EMPLOYEES E
RIGHT JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID
WHERE E.DEPARTMENT_ID IS  NULL ;

---------------------------------------------------
SELECT*FROM
EMPLOYEES E
RIGHT JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID
WHERE E.DEPARTMENT_ID IS NOT  NULL
MINUS
SELECT*FROM
EMPLOYEES E
JOIN DEPARTMENTS D ON
D.DEPARTMENT_ID=E.DEPARTMENT_ID;