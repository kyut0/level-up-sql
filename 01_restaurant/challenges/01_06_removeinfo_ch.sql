-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

-- Figure out Norby's CustomerID
SELECT *
FROM Customers
WHERE FirstName = "Norby";
-- CustomerID = 64

-- Find Norby's reservation
SELECT *
FROM Reservations
WHERE CustomerID = 64;
-- Date = 2022-07-29 18:30:00, ReservationID = 2000

-- SOLUTION: Instead of two steps, manual, join the tables
SELECT *
FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.FirstName = "Norby"
AND Reservations.Date > "2022-07-24";

-- Remove the reservation
DELETE
FROM Reservations
WHERE ReservationID = 2000;

-- or
UPDATE Reservations
SET Date = NULL
WHERE ReservationID = 2000;