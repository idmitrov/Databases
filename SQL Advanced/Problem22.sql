/*
	You should submit a SQL file as a part of your homework.
	Problem 22.	Write SQL statements to insert in the Users table the names of all employees from the Employees table.

	Combine the first and last names as a full name. 
	For username use the first letter of the first name + the last name (in lowercase). 
	Use the same for the password, and NULL for last login time.
*/


INSERT INTO Users(username, password, [full name], [last login time], GroupID)
SELECT
	LOWER(SUBSTRING(e.FirstName, 1, 1) + e.LastName) AS [username],
	LOWER(REPLACE(CONVERT(char(6), SUBSTRING(e.FirstName, 1, 1) + e.LastName), ' ', '1')) AS [password],
	e.FirstName + ' ' + e.LastName AS [full name],
	NULL AS [last login time],
	2 AS [GroupID]
FROM Employees e