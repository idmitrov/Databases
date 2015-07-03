/*
	Problem 8.	Using database cursor write a T-SQL

	Using database cursor write a T-SQL script that scans all employees and
	their addresses and prints all pairs of employees that live in the same town.
*/

USE SoftUni

GO

DECLARE empCursor CURSOR READ_ONLY FOR (SELECT
	e.FirstName,
	e.LastName,
	t.Name
FROM Employees e
JOIN Addresses a
	ON a.AddressID = e.AddressID
JOIN Towns t
	ON t.TownID = a.TownID)

OPEN empCursor
DECLARE @firstName CHAR(50), @lastName CHAR(50), @town CHAR(50), @string CHAR(50)
FETCH NEXT FROM empCursor INTO @firstName, @lastName, @town

SET @string = 'isofagrek'

WHILE @@FETCH_STATUS = 0
  BEGIN
    FETCH NEXT FROM empCursor INTO @firstName, @lastName, @town
	IF dbo.ufn_chechWord(@string, @firstName) = 1
		BEGIN
			print @firstName
		END
	
	IF dbo.ufn_chechWord(@string, @lastName) = 1
		BEGIN
			print @lastName
		END
	
	IF dbo.ufn_chechWord(@string, @town) = 1
		BEGIN
			print @town
		END
	
  END

CLOSE empCursor
DEALLOCATE empCursor