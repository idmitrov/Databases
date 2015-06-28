--Problem 11.	Write a SQL query to find all managers that have exactly 5 employees.

SELECT e.FirstName, e.LastName, [Employees Count]
FROM Employees e JOIN 
(
	SELECT 
		m.ManagerID, 
		COUNT(m.ManagerID) AS [Employees Count]
	FROM Employees m
	GROUP BY m.ManagerID
) AS Managers
  ON e.EmployeeID = Managers.ManagerID
WHERE [Employees Count] = 5