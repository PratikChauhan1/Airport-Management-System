
SET SEARCH_PATH TO Airport_Management_System;

INSERT INTO CITY VALUES ('New York', 'New York', 'USA');
INSERT INTO CITY VALUES ('Los Angeles', 'California', 'USA');
INSERT INTO CITY VALUES ('Mumbai', 'Maharashtra', 'India');

INSERT INTO AIRPORT VALUES ('JFK International', 'New York', 'USA', 'New York');
INSERT INTO AIRPORT VALUES ('LAX Airport', 'California', 'USA', 'Los Angeles');
INSERT INTO AIRPORT VALUES ('Chhatrapati Shivaji', 'Maharashtra', 'India', 'Mumbai');

INSERT INTO AIRLINE VALUES (1, 'American Airlines', 'AAL');
INSERT INTO AIRLINE VALUES (2, 'Delta Airlines', 'DAL');
INSERT INTO AIRLINE VALUES (3, 'Air India', 'AI');

INSERT INTO EMPLOYEE VALUES (101, 'John', 'Doe', 'A', 'M', 35, '1234567890', 'NY Address', 75000.00, 'Engineer', 'JFK International');
INSERT INTO EMPLOYEE VALUES (102, 'Jane', 'Smith', 'B', 'F', 28, '0987654321', 'LA Address', 68000.00, 'TrafficMonitor', 'LAX Airport');
INSERT INTO EMPLOYEE VALUES (103, 'Pratik', 'Chauhan', 'B', 'M', 20, '7073719155', 'Mumbai', 80000.00, 'TrafficMonitor', 'JFK International');

INSERT INTO AdministrativeSupport VALUES (103, 'Clerical');

INSERT INTO Engineer VALUES (101, 'Mechanical');

INSERT INTO TrafficMonitor VALUES (102, 'Morning');

INSERT INTO AirportAuthority VALUES (102, 'Manager');

INSERT INTO FLIGHT VALUES ('AA101', 'New York', 'Los Angeles', '08:00:00', '05:00:00', 'On Time', 300, 'Nonstop', 1);
INSERT INTO FLIGHT VALUES ('AI202', 'Mumbai', 'New York', '23:00:00', '08:00:00', 'Delayed', 900, 'Connecting', 3);

INSERT INTO CONNECTING VALUES ('AI202', 120, 1);

INSERT INTO NONSTOP VALUES ('AA101');

INSERT INTO PASSENGER VALUES (201, 'Alice', 'Brown', 'C', 'F', 30, '5678901234', 'USA', 'P123456789');
INSERT INTO PASSENGER VALUES (202, 'Bob', 'White', 'D', 'M', 40, '6789012345', 'India', 'P987654321');

INSERT INTO FLIGHT_PASSENGER VALUES (201, 'AA101');
INSERT INTO FLIGHT_PASSENGER VALUES (202, 'AI202');

INSERT INTO TICKET VALUES (301, 'Economy', '12A', 'New York', 'Los Angeles', 300.00, '2025-04-15', '2025-04-01', 20.00, 201);
INSERT INTO TICKET VALUES (302, 'Business', '2B', 'Mumbai', 'New York', 1000.00, '2025-04-20', '2025-04-05', 50.00, 202);

INSERT INTO CANCELLATION VALUES (302, '2025-04-10');

INSERT INTO EMPLOYEE_FLIGHT VALUES (101, 'AA101');
INSERT INTO EMPLOYEE_FLIGHT VALUES (102, 'AI202');

INSERT INTO AIRPORT_AIRLINE VALUES ('JFK International', 1);
INSERT INTO AIRPORT_AIRLINE VALUES ('LAX Airport', 2);