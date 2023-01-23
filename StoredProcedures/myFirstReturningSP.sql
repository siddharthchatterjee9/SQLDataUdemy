----RETURNING VALUES FROM STORED PROCEDURES----
CREATE PROC myFirstReturningSP
AS
RETURN 12

DECLARE @returnvalue INT
EXEC @returnvalue = myFirstReturningSP --capture the returning value to a variable
SELECT @returnvalue