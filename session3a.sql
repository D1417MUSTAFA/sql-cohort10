SELECT FirstName, LastName,  City, Address
FROM customers
WHERE FirstName LIKE "___";

SELECT FirstName,LastName,City
FROM customers
WHERE LastName LIKE "Sch%" OR LastName LIKE "Go%";