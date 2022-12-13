-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT Patrons.FirstName, Patrons.Email, COUNT(Loans.BookID) AS NumBooks
FROM Patrons
JOIN Loans ON Patrons.PatronID = Loans.PatronID
GROUP BY Patrons.PatronID
ORDER BY NumBooks;