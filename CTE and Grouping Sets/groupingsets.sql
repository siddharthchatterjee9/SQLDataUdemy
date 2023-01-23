---- GROUPING SETS ----

SELECT FirstName, LastName, SUM(Marks)
FROM Persons
GROUP BY GROUPING SETS
(
	(FirstName),
	(FirstName, LastName),
	(FirstName, LastName, Address)
)