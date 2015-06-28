--Problem 10.	Write a SQL query to find the count of all employees in each department and for each town.

SELECT 
	t.Name AS [Town],
	d.Name AS [Department],
	COUNT(*) AS [Employees count]
FROM Employees e 
	JOIN Departments d
	  ON e.DepartmentID = d.DepartmentID
	JOIN Addresses a
          ON e.AddressID = a.AddressID
	JOIN Towns t
	  ON t.TownID = a.TownID
GROUP BY d.DepartmentID, d.Name, t.Name
ORDER BY d.Name
