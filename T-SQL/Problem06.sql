/*
	Problem 6.	Create table Logs.
	Create another table – Logs (LogID, AccountID, OldSum, NewSum). 
	Add a trigger to the Accounts table that enters a new entry into the Logs table every time the sum on an account changes.
*/

USE MoneySystem

GO

CREATE TABLE Logs
(
	LogID INT IDENTITY NOT NULL,
	AccountID INT NOT NULL,
	OldSum MONEY NOT NULL,
	NewSum MONEY NOT NULL,
	CONSTRAINT PK_Logs PRIMARY KEY(LogID),
	CONSTRAINT FK_Logs_Accounts FOREIGN KEY(AccountID) REFERENCES Accounts(id)
);

GO

CREATE TRIGGER OnAccountsChange
ON Accounts
FOR UPDATE
AS
	INSERT INTO Logs(AccountID, OldSum, NewSum)
	SELECT old.id, old.balance, new.balance
	FROM INSERTED new JOIN DELETED old
	  ON old.id = new.id
GO