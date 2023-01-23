---- GROUP BY ----

SELECT PersonID, FirstName, NULL, SUM(Marks)
FROM Persons
GROUP BY FirstName, PersonID

UNION ALL

SELECT PersonID, FirstName, LastName, SUM(Marks)
FROM Persons
GROUP BY FirstName, PersonID, LastName
