/*
	
	Problem 9.	Define a .NET aggregate function
	Define a .NET aggregate function StrConcat that takes as input a sequence of strings 
	and return a single string that consists of the input strings separated by ','. 
*/

CREATE FUNCTION ufn_StrConcat(@str NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @strLen INT = LEN(@str)
	DECLARE @currentIndex INT = 1
	
	WHILE(@currentIndex < @strLen)
	BEGIN
		DECLARE @currentChar NVARCHAR(1) = SUBSTRING(@str, @currentIndex, 1)

		IF(@currentChar = ' ' AND @currentIndex <> 1 AND @currentIndex <> @strLen)
		BEGIN
			SET @str = STUFF(@str, @currentIndex, 1, ', ')
			SET @currentIndex += 1
		END

		SET @currentIndex += 1
	END

	RETURN @str
END

GO

SELECT dbo.ufn_StrConcat(FirstName + ' ' + LastName) AS [Concated via StrConcat]
FROM Employees