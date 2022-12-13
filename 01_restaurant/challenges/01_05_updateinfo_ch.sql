-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

-- Find the right Taylor Jenkins
SELECT CustomerID, FirstName, LastName, Address, City, State
FROM Customers
WHERE FirstName = "Taylor" AND LastName = "Jenkins";
-- CustomerID = 26

-- Use CustomerID to update record
UPDATE Customers
SET Address = "74 Pine St.", 
    City = "New York", 
    State = "NY"
WHERE CustomerID = 26;

-- Check to make sure record was updated
SELECT *
FROM Customers
WHERE CustomerID = 26;