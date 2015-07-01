--Problem 30.	Issue few SQL statements to insert, update and delete of some data in the table.

INSERT INTO WorkHours(employeeID, onDate, task, hours, comments)
VALUES
(2, GETDATE(), 'Maintenance', 3, 'Completed successiful')

INSERT INTO WorkHours(employeeID, onDate, task, hours, comments)
VALUES
(1, GETDATE(), 'Coffee Break', 1, 'Enjoyed')


UPDATE WorkHours
SET comments = 'Fired'
WHERE task = 'Coffee Break'

DELETE WorkHours
WHERE comments = 'Fired'