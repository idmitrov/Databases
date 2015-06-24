SELECT
	e.FirstName + ' ' + e.LastName
AS [Employee],
	m.FirstName + ' ' + m.LastName
AS [Employee Manager]
FROM Employees e
JOIN Employees m
  ON e.ManagerID = m.EmployeeID