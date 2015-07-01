/*
	Problem 22.	Write SQL statements to insert in the Users table the names of all employees from the Employees table.
	Combine the first and last names as a full name. 
	For username use the first letter of the first name + the last name (in lowercase). 
	Use the same for the password, and NULL for last login time.
*/


--NOTICE USET WINDOWED FUNCTION TO PREVENT username DUPLICATIONS
INSERT INTO Users(username, password, [full name], [last login time], GroupID)
SELECT username, password, [full name], [last login time], GroupID
FROM
(
	SELECT
	LOWER(SUBSTRING(e.FirstName, 1, 1) + e.LastName) AS [username],
	LOWER(REPLACE(CONVERT(char(6), SUBSTRING(e.FirstName, 1, 1) + e.LastName), ' ', '1')) AS [password],
	e.FirstName + ' ' + e.LastName AS [full name],
	NULL AS [last login time],
	2 AS [GroupID],
	ROW_NUMBER() OVER(PARTITION BY LOWER(SUBSTRING(e.FirstName, 1, 1) + e.LastName) ORDER BY FirstName) AS rowNumber
	FROM Employees e
) AS uniqueUsers
WHERE uniqueUsers.rowNumber = 1
