DECLARE @Table TABLE(Id INT, [Name] VARCHAR(MAX))

INSERT INTO @Table (Id, [Name]) VALUES (1, 'Name 1')
INSERT INTO @Table (Id, [Name]) VALUES (2, 'Name 2')
INSERT INTO @Table (Id, [Name]) VALUES (3, 'Name 3')
INSERT INTO @Table (Id, [Name]) VALUES (4, 'Name 4')
INSERT INTO @Table (Id, [Name]) VALUES (5, 'Name 5')

DECLARE @Names VARCHAR(MAX)
SELECT	@Names = COALESCE(@Names + ', ', '') + [Name] FROM @Table
SELECT	@Names