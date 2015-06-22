/*
	Problem 19.	Write a SQL query to find all employees and their address.
	Use equijoins (conditions in the WHERE claus.
*/

USE SoftUni
SELECT FirstName + ' ' + LastName
AS [Employee],
	AddressText
AS [Address]
FROM Employees, Addresses
WHERE Employees.AddressID = Addresses.AddressID