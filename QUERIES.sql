SET SEARCH_PATH TO Airport_Management_System;

SELECT Flight_Code FROM FLIGHT WHERE AirlineID = 3;

SELECT P.Fname, P.Lname 
FROM PASSENGER P
JOIN FLIGHT_PASSENGER FP ON P.PID = FP.PID
JOIN FLIGHT F ON FP.Flight_Code = F.Flight_Code
WHERE F.Source = 'New York' AND F.Destination = 'Los Angeles';

SELECT Fname, Lname FROM EMPLOYEE WHERE AP_name = 'JFK International';

SELECT T.Ticket_Number, P.Fname, P.Lname
FROM CANCELLATION C
JOIN TICKET T ON C.Ticket_Number = T.Ticket_Number
JOIN PASSENGER P ON T.PID = P.PID;

SELECT 'Connecting' AS Type, COUNT(*) FROM CONNECTING
UNION
SELECT 'Nonstop' AS Type, COUNT(*) FROM NONSTOP;
