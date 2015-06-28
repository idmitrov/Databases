/*
	Problem 14.	Write a SQL query to display the current date and time in the following format 
	"day.month.year hour:minutes:seconds:milliseconds". 
*/

SELECT 
	CONVERT(nvarchar, GETDATE(), 4) + ' ' +
	CONVERT(nvarchar, GETDATE(), 114) AS [DateTime]