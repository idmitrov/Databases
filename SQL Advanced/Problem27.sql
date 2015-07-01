--Problem 27.	Write a SQL query to display the town where maximal number of employees work.

SELECT towns.Name , MAX(towns.empCount) AS maxCount
FROM
(
	SELECT DISTINCT t.Name, COUNT(*) AS empCount
	FROM Employees e 
	JOIN Addresses a
		ON e.AddressID = a.AddressID
	JOIN Towns t
		ON a.TownID = t.TownID
	GROUP BY t.TownID, t.Name
) towns
GROUP BY towns.Name, towns.empCount
HAVING towns.empCount = 
(
	SELECT MAX(towns.empCount) AS maxCount
	FROM
	(
		SELECT DISTINCT t.Name, COUNT(*) AS empCount
		FROM Employees e 
		JOIN Addresses a
			ON e.AddressID = a.AddressID
		JOIN Towns t
			ON a.TownID = t.TownID
		GROUP BY t.TownID, t.Name
	) towns
)