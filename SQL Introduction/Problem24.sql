/*
	Problem 24.	Write a SQL query to find the names of all employees from the departments
	 "Sales" and "Finance" whose hire year is between 1995 and 2005.
*/

USE SoftUni
SELECT *
FROM Employees e, Departments d
WHERE d.Name IN('Sales', 'Finance') AND e.DepartmentID = d.DepartmentID AND e.HireDate BETWEEN '1995-01-01' AND '2005-12-12'