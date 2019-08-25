DECLARE @Table TABLE(Id INT, [Name] VARCHAR(MAX))

INSERT INTO @Table VALUES (1, 'Name 1')
INSERT INTO @Table VALUES (2, 'Name 2')
INSERT INTO @Table VALUES (3, 'Name 3')
INSERT INTO @Table VALUES (4, 'Name 4')
INSERT INTO @Table VALUES (5, 'Name 5')

DECLARE @XML XML = (SELECT * FROM @Table AS TableName FOR XML AUTO, ELEMENTS)

SELECT
	TableName.Columns.value('Id[1]', 'INT') AS Id,
	TableName.Columns.value('Name[1]', 'VARCHAR(100)') AS [Name]
FROM @XML.nodes('TableName') AS TableName(Columns)