SELECT 
    c.name AS COLUMN_NAME,
    t.Name AS DATA_TYPE,
    c.max_length AS CHARACTER_MAXIMUM_LENGTH,
    c.is_nullable AS IS_NULLABLE
FROM    
    sys.columns c
INNER JOIN 
    sys.types t ON c.user_type_id = t.user_type_id
WHERE 
    c.object_id = OBJECT_ID('dbo.tabela');
