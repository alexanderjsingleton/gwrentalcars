-- This query uses a sub-query to view a reservation with the oldest date.

SELECT * FROM RESERVATION
WHERE Pick_Up_Date  = (SELECT MIN(Pick_Up_Date) FROM RESERVATION);

--  This query will display customer reservations with the make and model of vehicle using three inner joins. 

SELECT CUSTOMER.CustomerID, CUSTOMER.CustomerFname AS First_Name, CUSTOMER.CustomerLname AS Last_Name, RESERVES.VIN, VEHICLE.Make, VEHICLE.Model
FROM (((CUSTOMER
INNER JOIN RESERVATION ON CUSTOMER.CustomerID = RESERVATION.CustomerID)
INNER JOIN RESERVES ON RESERVATION.ReservationID = RESERVES.ReservationID)
INNER JOIN VEHICLE ON RESERVES.VIN = VEHICLE.VIN);

-- This query counts the maintenance records that each employee has completed. 

SELECT EMPLOYEE.EmployeeID, EMPLOYEE.EmployeeFname AS First_Name, EMPLOYEE.EmployeeLname AS Last_Name, COUNT(MAINTENANCE_LOG.Maintenance_ID) AS Maintenance_Count
FROM EMPLOYEE
INNER JOIN MAINTENANCE_LOG ON EMPLOYEE.EmployeeID = MAINTENANCE_LOG.EmployeeID GROUP BY EMPLOYEE.EmployeeID;

--This query adds the total rervations of each rental office by sales in descending order. The SUM function, a join, group by and order by are used. 

SELECT SUM(RESERVATION.Total) AS Total_Sales,RENTAL_OFFICE_LOCATION.RentalOfficeID FROM RESERVATION
INNER JOIN RENTAL_OFFICE_LOCATION ON RESERVATION.RentalOfficeID = RENTAL_OFFICE_LOCATION.RentalOfficeID GROUP BY RESERVATION.RentalOfficeID ORDER BY SUM(RESERVATION.Total) DESC;

--This query looks at the total reservations sales by vehicle in descending order. 

SELECT VEHICLE.Year, VEHICLE.Make, VEHICLE.Model, RESERVES.VIN, SUM(RESERVATION.Total) AS TOTAL
FROM ((VEHICLE
INNER JOIN RESERVES ON VEHICLE.VIN = RESERVES.VIN)
INNER JOIN RESERVATION ON RESERVES.ReservationID = RESERVATION.ReservationID) GROUP BY VEHICLE.VIN ORDER BY SUM(RESERVATION.Total) DESC;

