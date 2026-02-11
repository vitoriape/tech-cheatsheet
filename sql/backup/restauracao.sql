USE master;
GO

ALTER DATABASE SINAL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

RESTORE DATABASE SINAL
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Backup\SINAL.bak'
WITH FILE = 1, -- File = 1 geralmente é o último backup completo
     NOUNLOAD,
     REPLACE, -- Substitui o banco de dados existente
     STATS = 10; -- Mostra o progresso em incrementos de 10%

ALTER DATABASE SINAL SET MULTI_USER;
GO
