---- RANKING FUNCTIONS ----
SELECT Address FROM Persons
WHERE Marks IN (7, 8, 9, 10)

SELECT Marks, 
ROW_NUMBER()
OVER (ORDER BY Marks) AS 'ROW NUMBER',
RANK() OVER (ORDER BY Address) AS 'RANK'
FROM Persons
WHERE Marks IN (7, 8, 9, 10)

