-- Oldest Reservation

SELECT * FROM RESERVATION
WHERE Pick_Up_Date  = (SELECT MIN(Pick_Up_Date) FROM RESERVATION);

-- Customer Reservations with Make and Model of Vehicle

SELECT CUSTOMER.CustomerID, CUSTOMER.CustomerFname AS First_Name, CUSTOMER.CustomerLname AS Last_Name, RESERVES.VIN, VEHICLE.Make, VEHICLE.Model
FROM (((CUSTOMER
INNER JOIN RESERVATION ON CUSTOMER.CustomerID = RESERVATION.CustomerID)
INNER JOIN RESERVES ON RESERVATION.ReservationID = RESERVES.ReservationID)
INNER JOIN VEHICLE ON RESERVES.VIN = VEHICLE.VIN);


-- /*Maintenance Count by Employee*/

SELECT EMPLOYEE.EmployeeID, EMPLOYEE.EmployeeFname AS First_Name, EMPLOYEE.EmployeeLname AS Last_Name, COUNT(MAINTENANCE_LOG.Maintenance_ID) AS Maintenance_Count
FROM EMPLOYEE
INNER JOIN MAINTENANCE_LOG ON EMPLOYEE.EmployeeID = MAINTENANCE_LOG.EmployeeID GROUP BY EMPLOYEE.EmployeeID;

-- /*Sum of Rental Office Reservation by Sales Descending*/

SELECT SUM(RESERVATION.Total) AS Total_Sales,RENTAL_OFFICE_LOCATION.RentalOfficeID FROM RESERVATION
INNER JOIN RENTAL_OFFICE_LOCATION ON RESERVATION.RentalOfficeID = RENTAL_OFFICE_LOCATION.RentalOfficeID GROUP BY RESERVATION.RentalOfficeID ORDER BY SUM(RESERVATION.Total) DESC;

-- /*Sum of Vehicle Sales Descending*/

SELECT VEHICLE.Year, VEHICLE.Make, VEHICLE.Model, RESERVES.VIN, SUM(RESERVATION.Total) AS TOTAL
FROM ((VEHICLE
INNER JOIN RESERVES ON VEHICLE.VIN = RESERVES.VIN)
INNER JOIN RESERVATION ON RESERVES.ReservationID = RESERVATION.ReservationID) GROUP BY VEHICLE.VIN ORDER BY SUM(RESERVATION.Total) DESC;

-- "Number of rates per location" 

select Daily_Rate, count(*) AS "Number of rates per location" 
FROM RESERVATION 
GROUP BY RentalOfficeID;

-- "COUNT OF EMPLOYEES" 

SELECT TITLE AS "TITLE", COUNT(DISTINCT EmployeeFNAME) 
	AS "Number of employee-positions"  
FROM EMPLOYEE GROUP BY TITLE;

-- "Sounds like using SOUNDEX" 

SELECT CustomerFName 
FROM CUSTOMER 
WHERE SOUNDEX(CustomerFName) = SOUNDEX('Zitanna');

-- "Total Per State" 

SELECT STATE, Total
FROM RENTAL_OFFICE_LOCATION r,
     RESERVATION i
WHERE r.RentalOfficeID=i.RentalOfficeID
ORDER BY Total;

-- "Available make and models with mileage at least 10,000 miles but less than 20,000 miles." 

SELECT Make, Model
FROM VEHICLE
WHERE Mileage >= 10000
AND Mileage < 20000;

/*Report shwoing Customer Information, Reservation Information, and Vehicle Information */

SELECT  RESERVATION.ReservationID,CUSTOMER.CustomerFName AS FirstName, CUSTOMER.CustomerLName AS LastName, 
	    CUSTOMER_PHONE_NO.CustomerPhoneNo AS PhoneNumber, RESERVATION.Pick_Up_Date, RESERVATION.Total as RentalPrice, 
		RENTAL_OFFICE_LOCATION.RentalOfficeID AS RentalLocation, VEHICLE.VIN AS VehicleInfo
FROM CUSTOMER, RESERVATION, CUSTOMER_PHONE_NO, RENTAL_OFFICE_LOCATION, VEHICLE, RESERVES
WHERE CUSTOMER.CustomerID = RESERVATION.CustomerID AND 
	CUSTOMER_PHONE_NO.CustomerID = CUSTOMER.CustomerID AND
	RENTAL_OFFICE_LOCATION.RentalOfficeID = RESERVATION.RentalOfficeID AND
	VEHICLE.VIN = RESERVES.VIN AND
	RESERVATION.ReservationID = RESERVES.ReservationID 
ORDER BY ReservationID;

/* Show prices of reservations with the accessory cost added */

SELECT RESERVATION.ReservationID, (RESERVATION.Total + ACCESSORY.Cost) AS TotalCost, CustomerLName AS LastName
FROM RESERVATION, INCLUDES, ACCESSORY, CUSTOMER
WHERE RESERVATION.ReservationID = INCLUDES.ReservationID AND
	  INCLUDES.SerialNumber = ACCESSORY.SerialNumber AND
	  CUSTOMER.CustomerID = RESERVATION.CustomerID
ORDER BY RESERVATION.ReservationID;

/*Vehicle Age with model and make*/

SELECT VEHICLE.LicensePlate, VEHICLE.Make, VEHICLE.Model, (YEAR(RESERVATION.Pick_Up_Date) - VEHICLE.Year) AS VehicleAge
FROM VEHICLE, RESERVES, RESERVATION
WHERE RESERVATION.ReservationID = RESERVES.ReservationID AND
	  VEHICLE.VIN = RESERVES.VIN;
	  
/* Employee count by rental office */

SELECT RENTAL_OFFICE_LOCATION.RentalOfficeID, RENTAL_OFFICE_LOCATION.City AS Location, COUNT(EMPLOYEE.EmployeeID) AS EmployeeCount
FROM RENTAL_OFFICE_LOCATION, EMPLOYEE, EMPLOYING
WHERE RENTAL_OFFICE_LOCATION.RentalOfficeID = EMPLOYING.RentalOfficeID AND
	  EMPLOYING.EmployeeID = EMPLOYEE.EmployeeID
GROUP BY RENTAL_OFFICE_LOCATION.RentalOfficeID;

/*Show vehicles with maintenance record*/

SELECT MAINTENANCE_LOG.Maintenance_ID, MAINTENANCE_LOG.Maintenance_Date, MAINTENANCE_LOG.Maintenance_Procedure,
	   VEHICLE.LicensePlate, VEHICLE.Model, EMPLOYEE.EmployeeID, EMPLOYEE.EmployeeLName AS LastName
FROM MAINTENANCE_LOG, VEHICLE, EMPLOYEE
WHERE MAINTENANCE_LOG.EmployeeID = EMPLOYEE.EmployeeID AND
	  MAINTENANCE_LOG.VIN = VEHICLE.VIN;

/*Reservation Count by Office Location*/

 SELECT RESERVATION.RentalOfficeID,RENTAL_OFFICE_LOCATION.City,RENTAL_OFFICE_LOCATION.State,COUNT(RESERVATION.RESERVATIONID) AS RESERVATIONCOUNT
 FROM RESERVATION,RENTAL_OFFICE_LOCATION,RESERVES
 WHERE RESERVATION.RentalOfficeID = RENTAL_OFFICE_LOCATION.RentalOfficeID
   AND RESERVATION.ReservationID = RESERVES.ReservationID
 GROUP BY RENTAL_OFFICE_LOCATION.RentalOfficeID;
    
/*Customer Accessory Selection*/

Select RESERVATION.ReservationID,CUSTOMER.CustomerID,CUSTOMER.CustomerFName AS FirstName,CUSTOMER.CustomerLName AS LastName,RENTAL_OFFICE_LOCATION.City,RENTAL_OFFICE_LOCATION.State,ACCESSORY.Type,ACCESSORY.QUANTITY
FROM RESERVATION, INCLUDES, ACCESSORY, CUSTOMER, RENTAL_OFFICE_LOCATION
WHERE RESERVATION.ReservationID = INCLUDES.ReservationID AND
 INCLUDES.SerialNumber = ACCESSORY.SerialNumber AND
 CUSTOMER.CustomerID = RESERVATION.CustomerID AND
 RESERVATION.RentalOfficeID = RENTAL_OFFICE_LOCATION.RentalOfficeID
ORDER BY CUSTOMER.CustomerLName;

/*Number of Rental Days*/

SELECT RESERVATION.ReservationID,VEHICLE.VIN,VEHICLE.MAKE,VEHICLE.MODEL,DATEDIFF(RESERVATION.Pick_Up_Date,RESERVATION.Return_Date) AS NumOfRentalDays
FROM RESERVATION,VEHICLE,RESERVES
WHERE RESERVATION.ReservationID = RESERVES.ReservationID
 AND RESERVES.VIN = VEHICLE.VIN;


-- Tom

SELECT EmployeeID, EmployeeLName, EmployeeFName
FROM EMPLOYEE
GROUP BY EmployeeLName;
 
-- 

SELECT VIN, CustomerID, Total
FROM VEHICLE, RESERVATION
ORDER BY Total;

-- 

SELECT *
FROM MAINTENANCE_LOG
ORDER BY Maintenance_Date;

-- 

SELECT RentalOfficeID, Pick_Up_Date, Return_Date, Daily_Rate, Total
FROM RESERVATION
GROUP BY RentalOfficeID;

-- 

Select Type, Cost
FROM ACCESSORY
ORDER BY Cost DESC;