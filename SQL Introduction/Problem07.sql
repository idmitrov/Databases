--Problem 7.	Write a SQL to find the full name of each employee.

USE SoftUni
SELECT FirstName + ' ' + LastName
AS [Full Name]
FROM Employees