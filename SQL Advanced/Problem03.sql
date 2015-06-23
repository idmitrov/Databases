SELECT e.FirstName + ' ' + e.LastName 
AS [Full Name],
	e.Salary,
	d.Name
FROM Employees e, Departments d
WHERE Salary = 
(
	SELECT MIN(Salary)
	FROM Employees
	WHERE DepartmentID =  e.DepartmentID
) AND d.DepartmentID = e.DepartmentID
ORDER BY e.DepartmentID
