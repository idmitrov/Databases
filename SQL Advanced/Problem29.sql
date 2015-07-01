/*
	Problem 29.	Write a SQL to create table WorkHours to store work reports for each employee.
	
	Each employee should have id, date, task, hours and comments. 
	Don't forget to define identity, primary key and appropriate foreign key.
*/

CREATE TABLE WorkHours
(
	id INT IDENTITY NOT NULL,
	employeeID INT,
	onDate DATETIME,
	task NVARCHAR(MAX),
	hours INT,
	comments NVARCHAR(MAX),
	CONSTRAINT PK_WorkHours PRIMARY KEY(id),
	CONSTRAINT FK_WorkHours FOREIGN KEY(employeeID) REFERENCES Employees(EmployeeID)
);