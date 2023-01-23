---- CTE ----
WITH CTE_Persons
AS
(
	SELECT FirstName, LastName FROM Persons
)

SELECT * FROM CTE_Persons
WHERE FirstName LIKE 'Siddharth%';