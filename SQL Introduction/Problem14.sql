--Problem 14.	Write a SQL query to find the names of all employees whose salary is 25000, 14000, 12500 or 23600.

USE SoftUni
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary IN(25000, 14000, 23600)