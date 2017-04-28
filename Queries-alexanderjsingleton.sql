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

-- 4.) "Total Per State" 

SELECT STATE, Total
FROM RENTAL_OFFICE_LOCATION r,
     RESERVATION i
WHERE r.RentalOfficeID=i.RentalOfficeID
ORDER BY Total;

-- 5.) "Available make and models with mileage at least 10,000 miles but less than 20,000 miles."  
-- 		The query should only display the models within the above range, which this case should be two different
--  	makes and the two corresponding models.

SELECT Make, Model
FROM VEHICLE
WHERE Mileage >= 10000
AND Mileage < 20000;