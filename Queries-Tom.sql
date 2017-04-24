SELECT EmployeeID, EmployeeLName, EmployeeFName
FROM EMPLOYEE
GROUP BY EmployeeLName;
 
SELECT VIN, CustomerID, Total
FROM VEHICLE, RESERVATION
ORDER BY Total;

SELECT *
FROM MAINTENANCE_LOG
ORDER BY Maintenance_Date;

SELECT RentalOfficeID, Pick_Up_Date, Return_Date, Daily_Rate, Total
FROM RESERVATION
GROUP BY RentalOfficeID;

Select Type, Cost
FROM ACCESSORY
ORDER BY Cost DESC;