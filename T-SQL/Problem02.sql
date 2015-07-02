/*
	Problem 2.	Create a stored procedure

	Your task is to create a stored procedure that accepts a number as a parameter 
	and returns all persons who have more money in their accounts than the supplied number.
*/

USE MoneySystem

GO

CREATE PROC usp_returnPersonsMoneyMoreThan(@value money)
AS
	SELECT p.id, p.firstName, p.lastName, p.SSN, a.balance
	FROM Persons p JOIN Accounts a
	  ON p.id = a.personID
	WHERE a.balance > @value
GO

EXEC usp_returnPersonsMoneyMoreThan 9000