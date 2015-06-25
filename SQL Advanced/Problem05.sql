--Problem 5.	Write a SQL query to find the average salary in the "Sales" department.

SELECT AVG(Salary)
FROM Employees e JOIN Departments d
  ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'

--SELECT AVG(Salary)
--FROM Employees e
--WHERE e.DepartmentID = 
--(
--	SELECT DepartmentID
--	FROM Departments d
--	WHERE Name = 'Sales'
--)