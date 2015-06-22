--Problem 15.	Write a SQL query to find all employees that do not have manager.

USE SoftUni
SELECT * 
FROM Employees
WHERE Employees.ManagerID IS NULL