/* 
	Problem 1.	Create a database with two tables
	
	Persons (id (PK), first name, last name, SSN) and Accounts (id (PK), person id (FK), balance). 
	Insert few records for testing. 
	Write a stored procedure that selects the full names of all persons.
*/

USE MoneySystem

GO

CREATE TABLE Persons 
(
	id INT IDENTITY NOT NULL,
	firstName NVARCHAR(50) NOT NULL,
	lastName NVARCHAR(50) NOT NULL,
	SSN NVARCHAR(50) NOT NULL
	CONSTRAINT PK_Persons PRIMARY KEY(id)
);

GO

CREATE TABLE Accounts 
(
	id INT IDENTITY NOT NULL,
	personID INT NOT NULL,
	balance MONEY NOT NULL,
	CONSTRAINT PK_Accounts PRIMARY KEY(id),
	CONSTRAINT FK_Accounts_Persons FOREIGN KEY(personID) REFERENCES Persons(id)
);

GO

INSERT INTO Persons(firstName, lastName, SSN)
VALUES('Gosho', 'Petrov', 'AZ09KL')

INSERT INTO Persons(firstName, lastName, SSN)
VALUES('Pesho', 'Georgiev', 'X0KL92')

INSERT INTO Accounts(personID, balance)
VALUES(1, 20000.00)


INSERT INTO Accounts(personID, balance)
VALUES(2, 1000)

GO

CREATE PROC usp_SelectPersonsFullName
AS
	SELECT firstName + ' ' + lastName AS [Full Name]
	FROM Persons
GO

EXEC usp_SelectPersonsFullName