--Problem 18.	Write a SQL query to find all employees along with their address (Use inner join with ON clause.).

USE SoftUni
SELECT FirstName + ' ' + LastName
AS [Employee],
	AddressText
AS[Address]
FROM Employees INNER JOIN Addresses
ON Employees.AddressID = Addresses.AddressID