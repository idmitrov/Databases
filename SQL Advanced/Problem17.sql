/*
	Problem 17.	Write a SQL statement to create a table Groups. 
	Groups should have unique name (use unique constraint). Define primary key and identity column.
*/

CREATE TABLE Groups 
(
	[id] int IDENTITY NOT NULL,
	[name] nvarchar(50) NOT NULL,
	CONSTRAINT PK_Groups PRIMARY KEY (id),
	CONSTRAINT UC_GroupName UNIQUE(name)
);