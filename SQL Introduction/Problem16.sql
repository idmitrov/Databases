/*
	Problem 16.	Write a SQL query to find all employees that 
	have salary more than 50000. Order them in decreasing order by salary.
*/

USE SoftUni
SELECT *
FROM Employees
WHERE Employees.Salary > 50000
ORDER BY Salary DESC