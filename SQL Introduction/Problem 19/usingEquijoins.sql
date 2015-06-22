SELECT
	FirstName + ' ' + LastName 
AS Employee, 
	Addresses.AddressText 
AS [Address]
FROM Employees, Addresses
WHERE Employees.AddressID = Addresses.AddressID