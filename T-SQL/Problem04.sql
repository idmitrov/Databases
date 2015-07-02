/*
	Problem 4.	Create a stored procedure that uses the function from the previous example.

	Your task is to create a stored procedure that uses the function from the previous example 
	to give an interest to a person's account for one month. 
	It should take the AccountId and the interest rate as parameters.
*/

USE MoneySystem

GO

CREATE PROC usp_givePersonInterest(@id INT, @interestRate FLOAT)
AS
	DECLARE @monthsToSet INT = 1
	UPDATE Accounts
	SET balance = dbo.ufn_CalcSum(balance, @interestRate, @monthsToSet)
	WHERE id = @id
GO

EXEC usp_givePersonInterest 1, 120