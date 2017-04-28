-- This query will count all records within the Daily_Rate column using the count-function returning the number of records within a table
-- grouped by RentalOfficeID from the Reservation-table, which will then be displayed as an alias-table entitled, "Number of rates per location." 

SELECT Daily_Rate, count(*) AS "Number of rates per location" 
FROM RESERVATION 
GROUP BY RentalOfficeID;

-- This query will count all of the employed positions by selecting the Title Column from the Employee-table using the COUNT method in conjucnction with the DISTINCT method to effectively 
-- count all unique last-names then grouping the count of unique last names corresponding to those employee-positions by Title from the EMPLOYEE-Table displayed in an alias-table "COUNT OF EMPLOYEES." 

SELECT TITLE AS "TITLE", COUNT(DISTINCT EmployeeLNAME) 
	AS "Number of employee-positions"  
FROM EMPLOYEE GROUP BY TITLE;

-- The query utilizes the SOUNDEX-method to find a customer that sound phoentically similar to "Zitanna" (e.g. "Find name that sounds like using Zitanna").
-- According to Wikipedia, "was developed in 1985 by genealogist Gary Mokotoff and later improved by genealogist Randy Daitch because of problems they encountered 
-- while trying to apply the Russell Soundex to Jews with Germanic or Slavic surnames (such as Moskowitz vs. Moskovitz or Levine vs. Lewin)." (https://en.wikipedia.org/wiki/Soundex)

SELECT CustomerFName 
FROM CUSTOMER 
WHERE SOUNDEX(CustomerFName) = SOUNDEX('Zitanna');

-- This query will display the total-revenue collected per state by utiliziing an implicit-join format in addition to alias tables to effectively
-- display the total-revenue collected by state effectively corresponding to the "RentalOfficeID" column contain within the two separate tables, effectively
-- joining or "zipping-up" the separated data.  According to OracleSQL blog-spot, the "implicit join notation" simply lists the tables for joinning (http://sql-plsql.blogspot.com/2011/02/explicit-implicit-sql-joins.html)

SELECT STATE, Total
FROM RENTAL_OFFICE_LOCATION r,
     RESERVATION i
WHERE r.RentalOfficeID=i.RentalOfficeID
ORDER BY Total;

-- "Available make and models with mileage at least 10,000 miles but less than 20,000 miles."  
--  The query should only display the models within the above range, which this case should be two different
--  makes and the two corresponding models.

SELECT Make, Model
FROM VEHICLE
WHERE Mileage >= 10000
AND Mileage < 20000;
