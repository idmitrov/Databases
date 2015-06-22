USE SoftUni
SELECT FirstName, LastName,
		FirstName + '.' + LastName + '@softuni.bg' AS [Full Email Adresses]
FROM Employees