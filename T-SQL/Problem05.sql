/*
	Problem 5.	Add two more stored procedures WithdrawMoney and DepositMoney.

	Add two more stored procedures WithdrawMoney (AccountId, money) and DepositMoney (AccountId, money) 
	that operate in transactions.
*/

USE MoneySystem

GO

CREATE PROC usp_WithdrawMoney(@acountId INT, @money MONEY)
AS
BEGIN TRAN
	DECLARE @currentBalance MONEY = 
	(
		SELECT balance
		FROM Accounts
		WHERE id = @acountId
	)

	IF (@currentBalance < @money)
		ROLLBACK TRAN 
	ELSE
	BEGIN
		UPDATE Accounts
		SET balance = @currentBalance - @money
		WHERE id = @acountId
		COMMIT TRAN
END

GO

CREATE PROC usp_DepositMoney(@accountId INT, @money MONEY)
AS
BEGIN TRAN
	IF (@money <= 0)
		ROLLBACK TRAN
	ELSE
		UPDATE Accounts
		SET balance += @money
		WHERE id = @accountId
		BEGIN COMMIT TRAN
	END
GO