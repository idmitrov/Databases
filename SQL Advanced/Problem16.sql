/*
	Problem 16.	Write a SQL statement to create a view that
	displays the users from the Users table that have been in the system today.
	Test if the view works correctly.
*/

CREATE VIEW [Users visited the system today] AS
SELECT u.username
FROM Users u
WHERE CONVERT(nvarchar(10), u.[last login time], 105) = CONVERT(nvarchar(10), GETDATE(), 105)