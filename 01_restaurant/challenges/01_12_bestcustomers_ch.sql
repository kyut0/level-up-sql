-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Customers.FirstName, Customers.LastName, Customers.Email, Count(Orders.OrderID) as NumOrders
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID
ORDER BY NumOrders DESC
LIMIT 15;