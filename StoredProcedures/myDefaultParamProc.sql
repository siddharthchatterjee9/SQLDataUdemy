CREATE PROCEDURE MyDefaultParamProcedure
@Param_Name VARCHAR(50) = 'Pranjal'
AS
SET NOCOUNT ON
SELECT * FROM Persons
WHERE FirstName = @Param_Name

EXEC MyDefaultParamProcedure 'Vinit'