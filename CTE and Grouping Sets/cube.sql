---- CUBE ----
SELECT FirstName, LastName, SUM(Marks)
FROM Persons
GROUP BY CUBE
(
	(FirstName, LastName, Address)
)