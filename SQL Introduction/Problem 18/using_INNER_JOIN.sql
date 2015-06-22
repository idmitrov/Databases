SELECT
	 Employees.FirstName + ' ' + Employees.LastName 
AS [Employee],
	 Addresses.AddressText 
AS [Address]
FROM Employees
INNER JOIN Addresses
ON Employees.AddressID = Addresses.AddressID