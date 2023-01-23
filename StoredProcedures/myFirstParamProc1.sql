CREATE PROCEDURE MyFirstParamProcedure
@Param_Name VARCHAR(50)
AS
SET NOCOUNT ON
SELECT * FROM Persons
WHERE FirstName = @Param_Name

EXEC MyFirstParamProcedure @Param_Name = 'Siddharth'