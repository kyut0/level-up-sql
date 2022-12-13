-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT Books.Title
FROM Books
JOIN Loans ON Books.BookID = Loans.LoanID
WHERE Books.Published >= "1890" AND Books.Published <= "1899"
  AND Loans.ReturnedDate IS NOT NULL
ORDER BY Books.Title;

-- Apparently this approach has some issues?