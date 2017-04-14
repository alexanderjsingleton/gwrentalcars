CREATE TABLE VEHICLE
(
  VIN INT NOT NULL,
  Make INT NOT NULL,
  Model INT NOT NULL,
  Year INT NOT NULL,
  Color INT NOT NULL,
  LicensePlate INT NOT NULL,
  Mileage INT NOT NULL,
  PRIMARY KEY (VIN),
  UNIQUE (LicensePlate)
);

CREATE TABLE EMPLOYEE
(
  EmployeeFName INT NOT NULL,
  EmployeeID INT NOT NULL,
  EmployeeLName INT NOT NULL,
  Title INT NOT NULL,
  SSN INT NOT NULL,
  PRIMARY KEY (EmployeeID),
  UNIQUE (SSN)
);

CREATE TABLE ACCESSORY
(
  SerialNumber INT NOT NULL,
  Type INT NOT NULL,
  Cost INT NOT NULL,
  Quantity INT NOT NULL,
  PRIMARY KEY (SerialNumber)
);

CREATE TABLE CUSTOMER
(
  CustomerID INT NOT NULL,
  CustomerFName INT NOT NULL,
  CustomerLName INT NOT NULL,
  CustomerEmail INT NOT NULL,
  DriversLicense INT NOT NULL,
  RewardNumber INT,
  PRIMARY KEY (CustomerID),
  UNIQUE (DriversLicense)
);

CREATE TABLE CUSTOMER_PHONE_NO
(
  CustomerPhoneNo INT NOT NULL,
  CustomerID INT NOT NULL,
  PRIMARY KEY (CustomerID),
  FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
);

CREATE TABLE RENTAL_OFFICE_LOCATION
(
  RentalOfficeID INT NOT NULL,
  StreetAddress INT NOT NULL,
  City INT NOT NULL,
  State INT NOT NULL,
  ZipCode INT NOT NULL,
  PRIMARY KEY (RentalOfficeID)
);

CREATE TABLE MAINTENANCE_LOG
(
  Date INT NOT NULL,
  Procedure INT NOT NULL,
  VIN INT NOT NULL,
  EmployeeID INT NOT NULL,
  PRIMARY KEY (VIN, EmployeeID),
  FOREIGN KEY (VIN) REFERENCES VEHICLE(VIN),
  FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE(EmployeeID)
);

CREATE TABLE RESERVATION
(
  ReservationID INT NOT NULL,
  Date INT NOT NULL,
  Daily_Rate INT NOT NULL,
  Total INT NOT NULL,
  CustomerID INT NOT NULL,
  RentalOfficeID INT NOT NULL,
  PRIMARY KEY (ReservationID),
  FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
  FOREIGN KEY (RentalOfficeID) REFERENCES RENTAL_OFFICE_LOCATION(RentalOfficeID)
);

CREATE TABLE EMPLOYING
(
  RentalOfficeID INT NOT NULL,
  EmployeeID INT NOT NULL,
  PRIMARY KEY (RentalOfficeID, EmployeeID),
  FOREIGN KEY (RentalOfficeID) REFERENCES RENTAL_OFFICE_LOCATION(RentalOfficeID),
  FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE(EmployeeID)
);

CREATE TABLE RESERVES
(
  VIN INT NOT NULL,
  ReservationID INT NOT NULL,
  PRIMARY KEY (VIN, ReservationID),
  FOREIGN KEY (VIN) REFERENCES VEHICLE(VIN),
  FOREIGN KEY (ReservationID) REFERENCES RESERVATION(ReservationID)
);

CREATE TABLE INCLUDES
(
  SerialNumber INT NOT NULL,
  ReservationID INT NOT NULL,
  PRIMARY KEY (SerialNumber, ReservationID),
  FOREIGN KEY (SerialNumber) REFERENCES ACCESSORY(SerialNumber),
  FOREIGN KEY (ReservationID) REFERENCES RESERVATION(ReservationID)
);