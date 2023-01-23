---- DENSE RANKING FUNCTION ----
SELECT Marks, 
ROW_NUMBER()
OVER (ORDER BY Marks) AS 'ROW NUMBER',
RANK() OVER (ORDER BY Address) AS 'RANK',
DENSE_RANK() OVER (ORDER BY Address) AS 'DENSE RANK'
FROM Persons
WHERE Marks IN (7, 8, 9, 10)