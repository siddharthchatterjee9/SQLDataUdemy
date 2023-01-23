---- XML DATATYPE ----

INSERT INTO samplexml VALUES 
('<note>
<to>Tove</to>
<from>Jani</from>
<heading>Reminder</heading>
<body>Dont forget me this weekend!</body>
</note>'
)

SELECT * FROM samplexml
SELECT * FROM Persons
FOR XML AUTO, ELEMENTS, ROOT ('PersonID')

SELECT xmldata.query('/note/to') AS [to]
FROM samplexml

SELECT xmldata.value('(/note/to)[1]', 'varchar(10)') AS [to]
FROM samplexml

DECLARE @xmlhandle INT
DECLARE @xmldocument XML

set @xmldocument = (SELECT * FROM Persons
FOR XML AUTO, ELEMENTS, ROOT('PersonID'))

EXEC sp_xml_preparedocument @xmlhandle output, @xmldocument

SELECT * FROM openxml(@xmlhandle, '/PersonID/Persons', 2)
WITH (PersonID INT, FirstName varchar(50))

EXEC sp_xml_removedocument @xmlhandle