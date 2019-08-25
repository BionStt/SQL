DECLARE	@Search VARCHAR(MAX) = ''

SELECT DISTINCT O.TYPE_DESC, SCHEMA_NAME(O.SCHEMA_ID) + '.' + O.name
FROM SYS.SQL_MODULES AS M
JOIN SYS.OBJECTS AS O ON M.OBJECT_ID = O.OBJECT_ID
WHERE M.DEFINITION LIKE '%' + @Search + '%'
ORDER BY 1, 2