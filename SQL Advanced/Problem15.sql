/*
	Problem 15.	Write a SQL statement to create a table Users.
	Users should have username, password, full name and last login time.
	Choose appropriate data types for the table fields. 
	Define a primary key column with a primary key constraint. 
	Define the primary key column as identity to facilitate inserting records.
	Define unique constraint to avoid repeating usernames. 
	Define a check constraint to ensure the password is at least 5 characters long.
*/

CREATE TABLE Users 
(
	[id] int IDENTITY(1, 1) NOT NULL,
	[username] nvarchar(50) NOT NULL,
	[password] int NOT NULL,
	[full name] nvarchar(50) NOT NULL,
	[last login time] DateTime NOT NULL,
	CHECK (LEN(password) >= 5),
	CONSTRAINT PK_Users PRIMARY KEY (id)
);