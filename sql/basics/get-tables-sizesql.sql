SELECT 
    s.name AS SchemaName,
    t.name AS TableName,
    SUM(p.rows) AS [RowCount],
    SUM(a.total_pages) * 8 / 1024 AS TotalSizeMB,
    SUM(a.used_pages) * 8 / 1024 AS UsedSizeMB
FROM 
    sys.tables AS t
INNER JOIN 
    sys.schemas AS s ON t.schema_id = s.schema_id
INNER JOIN 
    sys.indexes AS i ON t.object_id = i.object_id
INNER JOIN 
    sys.partitions AS p ON i.object_id = p.object_id AND i.index_id = p.index_id
INNER JOIN 
    sys.allocation_units AS a ON p.partition_id = a.container_id
GROUP BY 
    s.name, t.name
ORDER BY 
    TotalSizeMB DESC;