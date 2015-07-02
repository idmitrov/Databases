/*
	Problem 3.	Create a function with parameters

	Your task is to create a function that accepts as parameters – 
	sum, yearly interest rate and number of months. 
	It should calculate and return the new sum. 
	Write a SELECT to test whether the function works as expected.
*/

DROP FUNCTION dbo.ufn_CalcSum

USE MoneySystem

GO

CREATE FUNCTION ufn_CalcSum(@sum MONEY, @yearlyRate FLOAT, @months FLOAT)
RETURNS MONEY
AS
BEGIN
	SET @yearlyRate /= 100
	DECLARE @totalYearMonths INT = 12
	DECLARE @monthlyRate FLOAT = (@sum * @yearlyRate) / @totalYearMonths
	RETURN @sum + @monthlyRate * @months
END

GO

SELECT
	 a.balance AS[Old Balance],
	 dbo.ufn_CalcSum(a.balance, 10.00, 2) AS [New Balance (Old balance + interest)]
FROM Accounts a
