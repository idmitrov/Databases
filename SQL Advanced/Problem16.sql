CREATE VIEW [Users visited the system today] AS
SELECT u.username
FROM Users u
WHERE CONVERT(nvarchar(10), u.[last login time], 105) = CONVERT(nvarchar(10), GETDATE(), 105)