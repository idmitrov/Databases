--Problem 4.	Write a SQL query to find the average salary in the department #1.

SELECT AVG(Salary)
FROM Employees
WHERE DepartmentID = 1