--Problem 21.	Write SQL statements to delete some of the records from the Users and Groups tables.

--DELETE Stamat FROM USERS
DELETE FROM Users 
WHERE username = 'Stamat'

GO

--DELETE ADMINISTRATORS FROM GROUPS
DELETE FROM Groups
WHERE name = 'Administrators'