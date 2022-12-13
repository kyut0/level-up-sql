-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT *
FROM Customers
WHERE FirstName = "Sam" AND LastName = "McAdams";
-- Returns nothing, so Sam needs to be added to the Customers table

-- Add Sam to Customers table
INSERT INTO Customers (FirstName, LastName, Email)
VALUES ("Sam", "McAdams", "smac@kinetecoinc.com");

-- Add Sam's reservation to the Reservations table
INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (
  (SELECT CustomerID
    FROM Customers
    WHERE FirstName = "Sam" AND LastName = "McAdams"),
  "2022-08-12 18:00:00",
  5
);

-- Check to see if Reservations table was updated
SELECT *
FROM Reservations
ORDER BY ReservationID DESC;