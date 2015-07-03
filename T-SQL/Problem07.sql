/*
	Problem 7.	Define function in the SoftUni database.

	Define a function in the database SoftUni that returns all Employee's names
	(first or middle or last name) and all town's names that are comprised of given set of letters. 
	Example: 'oistmiahf' will return 'Sofia', 'Smith', but not 'Rob' and 'Guy'.
*/

-- Problem 7.	Define function in the SoftUni database.

USE SoftUni

GO
CREATE FUNCTION ufn_chechWord(@string NVARCHAR(100), @word NVARCHAR(100)) RETURNS INT
	BEGIN
		DECLARE  @char nvarchar(1)

		DECLARE @wcount INT, @index INT, @len INT
		SET @wcount= 0
		SET @index = 1
		SET @len= LEN(@word)
	
		WHILE @index <= @len
		BEGIN
			set @char = SUBSTRING(@word, @index, 1)

			if CHARINDEX(@char, @string) = 0
				BEGIN
					RETURN 0
				END

			SET @index= @index+ 1
		END

		RETURN 1
	END
GO