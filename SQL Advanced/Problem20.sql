--Problem 20.	Write SQL statements to update some of the records in the Users and Groups tables.

--UPDATE USER Misho GroupID
UPDATE Users
SET GroupID = 5
WHERE username = 'Misho'

GO

--CHANGE GROUP NAME ADMINS TO ADMINISTRATORS 
UPDATE Groups
SET name = 'Administrators'
WHERE name = 'Admins'