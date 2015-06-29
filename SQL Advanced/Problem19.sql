--Problem 19.	Write SQL statements to insert several records in the Users and Groups tables.

--INSERT NEW USERS
INSERT INTO Users
(
	[username],
	[password],
	[full name],
	[last login time],
	[GroupID]
)
VALUES
(
	'Stamat',
	123333,
	'Stamat Kirov',
	'2015-05-02',
	1
),
(
	'Misho',
	33224411,
	'Misho Kotov',
	'2014-02-01',
	2
)

GO
--INSERT NEW GROUP
INSERT INTO Groups(name)
VALUES('Admins')