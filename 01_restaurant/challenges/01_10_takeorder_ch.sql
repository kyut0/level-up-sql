-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Find the customer
SELECT *
FROM Customers
WHERE FirstName = "Loretta" AND LastName = "Hundey"
-- Her CustomerID = 70

-- Create the order record
INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, "2022-09-20 14:00:00");

-- Find the OrderID
SELECT OrderID
FROM Orders
WHERE CustomerID = 70 AND OrderDate = "2022-09-20 14:00:00"
-- OrderID = 1001

-- Check out the Orders table
SELECT *
FROM Orders
ORDER BY OrderDate DESC;

-- Check out the OrdersDishes table
SELECT *
FROM OrdersDishes
ORDER BY OrdersDishesID DESC

-- Add items to the order
INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 
  (SELECT DishID
  FROM Dishes
  WHERE Name = "House Salad")
);
INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 
  (SELECT DishID
  FROM Dishes
  WHERE Name = "Mini Cheeseburgers")
);
INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 
  (SELECT DishID
  FROM Dishes
  WHERE Name = "Tropical Blue Smoothie")
);
-- Note: can accomplish this with one INSERT INTO statement, with VALUES added in nested parenthesis

-- Look at the entire order
SELECT *
FROM OrdersDishes
JOIN Dishes ON OrdersDishes.DishID = Dishes.DishID
WHERE OrdersDishes.OrderID = 1001;

-- Find the total cost
SELECT Sum(Dishes.Price)
FROM Dishes
JOIN OrdersDishes ON OrdersDishes.DishID = Dishes.DishID
WHERE OrdersDishes.OrderID = 1001;
