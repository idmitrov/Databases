--Problem 6.	Write a SQL query to find the number of employees in the "Sales" department.

SELECT COUNT(e.EmployeeID)
FROM Employees e JOIN Departments d
  ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'

--SELECT COUNT(EmployeeID) 
--FROM Employees e
--WHERE DepartmentID = 
--(
--	SELECT d.DepartmentID
--	FROM Departments d 
--	WHERE d.Name = 'Sales'
--)