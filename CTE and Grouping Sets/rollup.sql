---- ROLLUP ----
SELECT FirstName, LastName, SUM(Marks)
FROM Persons
GROUP BY ROLLUP
(
	(FirstName, LastName, Address)
)