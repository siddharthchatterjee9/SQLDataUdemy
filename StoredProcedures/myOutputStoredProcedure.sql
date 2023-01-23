----OUTPUT PARAMETERS PROCEDURE----
CREATE PROC myOutputSP
@TopPerson varchar(50) OUTPUT
AS
SET @TopPerson = (SELECT TOP(1) PersonID FROM Persons)

DECLARE @outputresult VARCHAR(50)
EXEC myOutputSP @outputresult output
SELECT @outputresult

DROP PROC myOutputSP