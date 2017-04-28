-- 1.) This query will pull employee information, and group the results by their last name.

SELECT EmployeeID, EmployeeLName, EmployeeFName
FROM EMPLOYEE
GROUP BY EmployeeLName;
 
-- 2.) This query will pull vehicle and customer identification information from existing reservations, and display them in order based on the total cost of the reservation.

SELECT VIN, CustomerID, Total
FROM RESERVES, RESERVATION
WHERE RESERVES.ReservationID=RESERVATION.ReservationID
ORDER BY Total;

-- 3.) This query will pull all rows from the maintenance log, and will order them by date from most recent to oldest.
SELECT *
FROM MAINTENANCE_LOG
ORDER BY Maintenance_Date;

-- 4.) This query will pull reservation date and cost information, and will display it organized by office location.

SELECT RentalOfficeID, Pick_Up_Date, Return_Date, Daily_Rate, Total
FROM RESERVATION
GROUP BY RentalOfficeID;

-- 5.) This query will list each accessory type and its related cost, and will organize the data in descending order by said cost.

Select Type, Cost
FROM ACCESSORY
ORDER BY Cost DESC;