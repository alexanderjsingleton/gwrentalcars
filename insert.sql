/* This section populates the Customers table */

INSERT INTO CUSTOMER (CustomerID, CustomerFName, CustomerLName, CustomerEmail, DriversLicense, RewardNumber)
VALUES (000001, 'John', 'Constantine', 'jconstantine@jld.org', '999990013', '0000013');

INSERT INTO CUSTOMER (CustomerID, CustomerFName, CustomerLName, CustomerEmail, DriversLicense, RewardNumber)
VALUES (000002, 'Hal', 'Jordan', 'hjordan@glcorps.org', '999990001', '0000001');

INSERT INTO CUSTOMER (CustomerID, CustomerFName, CustomerLName, CustomerEmail, DriversLicense, RewardNumber)
VALUES (000003, 'Barry', 'Allen', 'ballen@jla.org', '999990002', '0000002');

INSERT INTO CUSTOMER (CustomerID, CustomerFName, CustomerLName, CustomerEmail, DriversLicense, RewardNumber)
VALUES (000004, 'Dinah', 'Lance', 'dlance@jla.org', '999990003', '0000003');

INSERT INTO CUSTOMER (CustomerID, CustomerFName, CustomerLName, CustomerEmail, DriversLicense, RewardNumber)
VALUES (000005, 'Felicity', 'Smoak', 'fsmoak@palmer_tech.com', '999990004', '0000004');

INSERT INTO CUSTOMER (CustomerID, CustomerFName, CustomerLName, CustomerEmail, DriversLicense, RewardNumber)
VALUES (000006, 'Zatanna', 'Zatara', 'zzatara@jld.org', '999990005', '0000005');

/* This section populates the Customer_Phone_No table*/

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000001, '(555)555-1313');

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000002, '(555)555-9999');

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000003, '(555)555-0001');

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000004, '(555)555-8888');

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000005, '(555)555-1612');

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000006, '(555)555-6666');

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000001, '(555)555-1919');

INSERT INTO CUSTOMER_PHONE_NO (CustomerID, CustomerPhoneNo)
VALUES (000002, '(555)555-0101');

/*This section populates the Rental_Office_Location table */

INSERT INTO RENTAL_OFFICE_LOCATION (RentalOfficeID, StreetAddress, City, State, ZipCode)
VALUES (01, '123 Paper Street', 'Portland', 'OR', '12345');

INSERT INTO RENTAL_OFFICE_LOCATION (RentalOfficeID, StreetAddress, City, State, ZipCode)
VALUES (02, '19 Tower Lane', 'Gilead', 'NY', '19991');

INSERT INTO RENTAL_OFFICE_LOCATION (RentalOfficeID, StreetAddress, City, State, ZipCode)
VALUES (03, '237 Overlook View', 'Estes Park', 'CO', '98765');

INSERT INTO RENTAL_OFFICE_LOCATION (RentalOfficeID, StreetAddress, City, State, ZipCode)
VALUES (04, '1 Pennywise Circle', 'Derry', 'ME', '66666');

/* This section populates the EMPLOYEE table */

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (01, 'Victor', 'Stone', 'Office Manager', '999990006');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (02, 'Arthur', 'Curry', 'Office Manager', '999990007');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (03, 'Kara', 'Danvers', 'Office Manager', '999990008');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (04, 'Pamela', 'Isley', 'Office Manager', '999990009');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (05, 'Barbara', 'Gordon', 'Customer Care Specialist', '999990010');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (06, 'Harleen', 'Quinzel', 'Customer Care Specialist', '999990011');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (07, 'John', 'Jones', 'Customer Care Specialist', '999990012');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (08, 'Oliver', 'Queen', 'Customer Care Specialist', '999990014');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (09, 'Bruce', 'Wayne', 'Mechanic', '999990015');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (10, 'Clark', 'Kent', 'Mechanic', '999990016');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (11, 'Lex', 'Luthor', 'Mechanic', '999990017');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeFName, EmployeeLName, Title, SSN)
VALUES (12, 'Edward', 'Nygma', 'Mechanic', '999990018');

/* This section populates the VEHICLE table */

INSERT INTO VEHICLE (VIN, Make, Model, Year, Color, LicensePlate, Mileage)
VALUES ('11111AAAAA', 'Honda', 'Accord', '2014', 'Gold', 'AA11BB22', '27365');

INSERT INTO VEHICLE (VIN, Make, Model, Year, Color, LicensePlate, Mileage)
VALUES ('22222BBBBB', 'Hyundai', 'Veloster', '2016', 'Blue', 'BB22CC33', '13569');

INSERT INTO VEHICLE (VIN, Make, Model, Year, Color, LicensePlate, Mileage)
VALUES ('33333CCCCC', 'Chevy', 'Tahoe', '2012', 'Black', 'CC33DD44', '19999');

INSERT INTO VEHICLE (VIN, Make, Model, Year, Color, LicensePlate, Mileage)
VALUES ('44444DDDDD', 'Audi', 'A4', '2017', 'Silver', 'DD44EE55', '567');

INSERT INTO VEHICLE (VIN, Make, Model, Year, Color, LicensePlate, Mileage)
VALUES ('55555EEEEE', 'Dodge', 'Charger', '2015', 'Purple', 'EE55FF66', '32641');

/* This section populates the ACCESSORY table */

INSERT INTO ACCESSORY (SerialNumber, Type, Cost, Quantity)
VALUES (12345, 'GPS', '25', '1');

INSERT INTO ACCESSORY (SerialNumber, Type, Cost, Quantity)
VALUES (67890, 'GPS', '25', '1');

INSERT INTO ACCESSORY (SerialNumber, Type, Cost, Quantity)
VALUES (09876, 'Phone Charger', '10', '1');

INSERT INTO ACCESSORY (SerialNumber, Type, Cost, Quantity)
VALUES (01234, 'Phone Charger', '10', '1');

INSERT INTO ACCESSORY (SerialNumber, Type, Cost, Quantity)
VALUES (56789, 'Power Inverter', '50', '1');

/* This section populates the RESERVATION table */

INSERT INTO RESERVATION (ReservationID, Pick Up Date, Return Date, Daily Rate, Total, CustomerID, RentalOfficeID)
VALUES ('01', '06/06/2017', 06/13/2017, '125', '875', '000001', '03')

INSERT INTO RESERVATION (ReservationID, Pick Up Date, Return Date, Daily Rate, Total, CustomerID, RentalOfficeID)
VALUES ('02', '03/01/2017', 03/03/2017, '95', '285', '000002', '01')

INSERT INTO RESERVATION (ReservationID, Pick Up Date, Return Date, Daily Rate, Total, CustomerID, RentalOfficeID)
VALUES ('03', '04/05/2017', 04/19/2017, '80', '1120', '000003', '04')

INSERT INTO RESERVATION (ReservationID, Pick Up Date, Return Date, Daily Rate, Total, CustomerID, RentalOfficeID)
VALUES ('04', '06/06/2017', 06/13/2017, '125', '875', '000004', '02')

INSERT INTO RESERVATION (ReservationID, Pick Up Date, Return Date, Daily Rate, Total, CustomerID, RentalOfficeID)
VALUES ('05', '07/22/2017', 07/27/2017, '115', '575', '000005', '03')

INSERT INTO RESERVATION (ReservationID, Pick Up Date, Return Date, Daily Rate, Total, CustomerID, RentalOfficeID)
VALUES ('06', '08/19/2017', 08/23/2017, '95', '380', '000006', '02')

/* This section populates the EMPLOYING table */

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('01', '01');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('01', '05');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('01', '09');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('02', '02');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('02', '06');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('02', '10');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('03', '03');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('03', '07');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('03', '11');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('04', '04');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('04', '08');

INSERT INTO EMPLOYING (RentalOfficeID, EmployeeID)
VALUES ('04', '12');

/* This section populates the MAINTENANCE_LOG table */

INSERT INTO MAINTENANCE_LOG (EmployeeID, VIN, Maintenance_Date, Procedure)
VALUES ('09', '11111AAAAA', 05/08/2016, 'Oil Change');

INSERT INTO MAINTENANCE_LOG (EmployeeID, VIN, Maintenance_Date, Procedure)
VALUES ('10', '22222BBBBB', 07/27/2016, 'Tire Replacement');

INSERT INTO MAINTENANCE_LOG (EmployeeID, VIN, Maintenance_Date, Procedure)
VALUES ('11', '33333CCCCC', 11/27/2016, 'Annual Maintenance');

INSERT INTO MAINTENANCE_LOG (EmployeeID, VIN, Maintenance_Date, Procedure)
VALUES ('12', '44444DDDDD', 02/08/2017, 'Alignment Check');


/* This section populates the RESERVES table */

INSERT INTO RESERVES (VIN, ReservationID)
VALUES ('11111AAAAA', '01');

INSERT INTO RESERVES (VIN, ReservationID)
VALUES ('22222BBBBB', '02');

INSERT INTO RESERVES (VIN, ReservationID)
VALUES ('33333CCCCC', '03');

INSERT INTO RESERVES (VIN, ReservationID)
VALUES ('44444DDDDD', '04');

INSERT INTO RESERVES (VIN, ReservationID)
VALUES ('55555EEEEE', '05');

/* This section populates the INCLUDES table */

INSERT INTO INCLUDES (SerialNumber, ReservationID)
VALUES ('12345', '01');

INSERT INTO INCLUDES (SerialNumber, ReservationID)
VALUES ('67890', '02');

INSERT INTO INCLUDES (SerialNumber, ReservationID)
VALUES ('01234', '03');

INSERT INTO INCLUDES (SerialNumber, ReservationID)
VALUES ('56789', '04');