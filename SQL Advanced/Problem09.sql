--Problem 9.	Write a SQL query to find all departments and the average salary for each of them.

SELECT d.Name
AS [Department], 
	AVG(e.Salary)
AS [Average Salary]
FROM Departments d JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
  GROUP BY d.Name
