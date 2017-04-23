-- 1.) "Number of rates per location" 

select Daily_Rate, count(*) AS "Number of rates per location" 
FROM RESERVATION 
GROUP BY RentalOfficeID;


-- 2.) "COUNT OF EMPLOYEES" 

SELECT TITLE AS "TITLE", COUNT(DISTINCT EmployeeFNAME) 
	AS "Number of employee-positions"  
FROM EMPLOYEE GROUP BY TITLE;

-- 3.) "Sounds like using SOUNDEX" 

SELECT CustomerFName 
FROM CUSTOMER 
WHERE SOUNDEX(CustomerFName) = SOUNDEX('Zitanna');

