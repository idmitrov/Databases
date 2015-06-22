--Problem 1.	Write a SQL query to find the names and salaries of the employees that take the minimal salary in the company.

USE SoftUni
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary = (
	SELECT MIN(Salary)
	FROM Employees
)