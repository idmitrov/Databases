--Problem 8.	Write a SQL query to find the email addresses of each employee.

/*
	Write a SQL query to find the email addresses of each employee.(by his first and last name).
	 Consider that the mail domain is softuni.bg. Emails should look like “John.Doe@softuni.bg". 
	 The produced column should be named "Full Email Addresses".
*/

USE SoftUni
SELECT FirstName + '.' + LastName + '@softuni.bg'
AS [Full Email Adress] 
FROM Employees