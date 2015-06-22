--Problem 17.	Write a SQL query to find the top 5 best paid employees.

USE SoftUni
SELECT TOP 5 Salary
FROM Employees
ORDER BY Salary  DESC