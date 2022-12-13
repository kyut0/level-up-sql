-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT COUNT(DISTINCT(Title)) AS PubCount, Published
FROM Books
GROUP BY Published
ORDER BY PubCount DESC;

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT Books.Title, COUNT(Loans.LoanID) AS LoanCount
FROM Loans
JOIN Books ON Books.BookID = Loans.BookID
GROUP BY Books.Title
ORDER BY LoanCount DESC
LIMIT 5;