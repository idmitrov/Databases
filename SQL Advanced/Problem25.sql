--Problem 25.	Write a SQL query to display the average employee salary by department and job title.

SELECT d.Name, e.JobTitle, AVG(e.Salary)
FROM Employees e JOIN Departments d
  ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name, e.JobTitle