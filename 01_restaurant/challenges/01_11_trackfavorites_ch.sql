-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

-- First, let's find Cleo in the Customers table
SELECT *
FROM Customers
WHERE FirstName = "Cleo" AND LastName = "Goldwater";
-- CustomerID = 42

UPDATE Customers
SET FavoriteDish = (
  SELECT DishID
  FROM Dishes
  WHERE Name = "Quinoa Salmon Salad"
)
WHERE CustomerID = 42;
