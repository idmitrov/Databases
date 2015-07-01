CREATE TABLE Users 
(
	[id] int IDENTITY(1, 1) NOT NULL,
	[username] nvarchar(50) UNIQUE NOT NULL,
	[password] nvarchar(50) NOT NULL,
	[full name] nvarchar(50) NOT NULL,
	[last login time] DateTime,
	CHECK (LEN(password) >= 5),
	CONSTRAINT PK_Users PRIMARY KEY (id)
);