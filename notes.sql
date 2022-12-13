-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.
SELECT * FROM Dishes;
SELECT * FROM Customers;

-- To create a table, use the following structure:
CREATE TABLE TableName (
  Field1 DATATYPE,
  Field2 DATATYPE
);

-- To insert data into existing table:
INSERT INTO TableName (Field1, Field2, ..., FieldN)
VALUES ("Value1", "Value2", ..., "ValueN");