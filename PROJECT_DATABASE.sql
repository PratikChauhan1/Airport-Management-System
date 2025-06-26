CREATE SCHEMA Airport_Management_System;

SET SEARCH_PATH TO Airport_Management_System;

CREATE TABLE CITY (
    Cname VARCHAR(50) PRIMARY KEY,
    State VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE AIRPORT (
    AP_name VARCHAR(50) PRIMARY KEY,
    State VARCHAR(50),
    Country VARCHAR(50),
    Cname VARCHAR(50),
    FOREIGN KEY (Cname) REFERENCES CITY(Cname)
);

CREATE TABLE AIRLINE (
    AirlineID INT PRIMARY KEY,
    AL_name VARCHAR(50),
    Three_Digit_Code VARCHAR(10) UNIQUE
);

CREATE TABLE EMPLOYEE (
    SSN INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    M CHAR(1),
    Sex CHAR(1),
    Age INT,
    Phone VARCHAR(15),
    Address TEXT,
    Salary DECIMAL(10,2),
    Jobtype VARCHAR(50),
    AP_name VARCHAR(50),
    FOREIGN KEY (AP_name) REFERENCES AIRPORT(AP_name)
);

CREATE TABLE AdministrativeSupport (
    SSN INT PRIMARY KEY,
    AStype VARCHAR(50),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE Engineer (
    SSN INT PRIMARY KEY,
    Etype VARCHAR(50),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE TrafficMonitor (
    SSN INT PRIMARY KEY,
    Shift VARCHAR(50),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE AirportAuthority (
    SSN INT PRIMARY KEY,
    Position VARCHAR(50),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE FLIGHT (
    Flight_Code VARCHAR(20) PRIMARY KEY,
    Source VARCHAR(50),
    Destination VARCHAR(50),
    Arrival TIME,
    Departure TIME,
    Status VARCHAR(50),
    Duration INT,
    Flighttype VARCHAR(50),
    AirlineID INT,
    FOREIGN KEY (AirlineID) REFERENCES AIRLINE(AirlineID)
);

CREATE TABLE CONNECTING (
    Flight_Code VARCHAR(20) PRIMARY KEY,
    Layover_time INT,
    No_of_stops INT,
    FOREIGN KEY (Flight_Code) REFERENCES FLIGHT(Flight_Code)
);

CREATE TABLE NONSTOP (
    Flight_Code VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (Flight_Code) REFERENCES FLIGHT(Flight_Code)
);

CREATE TABLE PASSENGER (
    PID INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    M CHAR(1),
    Sex CHAR(1),
    Age INT,
    Phone VARCHAR(15),
    Address TEXT,
    PassportNo VARCHAR(20) UNIQUE
);

CREATE TABLE FLIGHT_PASSENGER (
    PID INT,
    Flight_Code VARCHAR(20),
    PRIMARY KEY (PID, Flight_Code),
    FOREIGN KEY (PID) REFERENCES PASSENGER(PID),
    FOREIGN KEY (Flight_Code) REFERENCES FLIGHT(Flight_Code)
);

CREATE TABLE TICKET (
    Ticket_Number INT PRIMARY KEY,
    Class VARCHAR(20),
    SeatNo VARCHAR(10),
    Source VARCHAR(50),
    Destination VARCHAR(50),
    Price DECIMAL(10,2),
    Date_of_travel DATE,
    Date_of_booking DATE,
    Surcharge DECIMAL(10,2),
    PID INT,
    FOREIGN KEY (PID) REFERENCES PASSENGER(PID)
);

CREATE TABLE CANCELLATION (
    Ticket_Number INT PRIMARY KEY,
    Date_of_cancellation DATE,
    FOREIGN KEY (Ticket_Number) REFERENCES TICKET(Ticket_Number)
);

CREATE TABLE EMPLOYEE_FLIGHT (
    SSN INT,
    Flight_Code VARCHAR(20),
    PRIMARY KEY (SSN, Flight_Code),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN),
    FOREIGN KEY (Flight_Code) REFERENCES FLIGHT(Flight_Code)
);

CREATE TABLE AIRPORT_AIRLINE (
    AP_name VARCHAR(50),
    AirlineID INT,
    PRIMARY KEY (AP_name, AirlineID),
    FOREIGN KEY (AP_name) REFERENCES AIRPORT(AP_name),
    FOREIGN KEY (AirlineID) REFERENCES AIRLINE(AirlineID)
);