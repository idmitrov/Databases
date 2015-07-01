--Problem 28.	Write a SQL query to display the number of managers from each town.

SELECT townManagers.TownName, COUNT(*) AS [Number of Managers]
FROM 
(
	SELECT DISTINCT e.EmployeeID, e.FirstName, e.LastName, t.Name AS TownName
	FROM Employees e
	JOIN Employees m
	  ON m.ManagerID= e.EmployeeID 
	JOIN Addresses a
	  ON e.AddressID = a.AddressID
	JOIN Towns t
	  ON a.TownID = t.TownID
) townManagers
GROUP BY townManagers.TownName