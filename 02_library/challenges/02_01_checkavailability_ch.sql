-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(DISTINCT Books.Barcode) 
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title == "Dracula" 
  AND Loans.ReturnedDate != NULL;

SELECT 
  (SELECT COUNT(Books.Title)
    FROM Books
    WHERE Books.Title = "Dracula") - 
  (SELECT COUNT(Books.Title)
    FROM Loans
    JOIN Books ON Loans.BookID = Books.BookID
    WHERE Books.Title == "Dracula"
    AND Loans.ReturnedDate IS NULL)
  AS AvailableCopies;