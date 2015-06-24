SELECT 
	employee.FirstName + ' ' + employee.LastName
AS [Employee Name],
	aemployee.AddressText
AS [Employee Address],
	manager.FirstName + ' ' + manager.LastName
AS [Manager Name],
	amanager.AddressText
AS [Manager Address]
FROM Employees employee JOIN Employees manager
  ON employee.ManagerID = manager.EmployeeID 
  JOIN Addresses aemployee
  ON employee.AddressID = aemployee.AddressID 
  JOIN Addresses amanager
  ON manager.AddressID = amanager.AddressID