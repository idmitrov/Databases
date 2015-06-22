SELECT 
	FirstName + ' ' + LastName AS Employee, Salary as [Salary (between 20000 - 30000)]
FROM Employees
WHERE Salary BETWEEN 20000 AND 30000