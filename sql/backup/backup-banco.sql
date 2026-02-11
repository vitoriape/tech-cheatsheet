DECLARE @backupDir NVARCHAR(4000);

EXEC xp_instance_regread
    N'HKEY_LOCAL_MACHINE',
    N'Software\Microsoft\MSSQLServer\MSSQLServer',
    N'BackupDirectory',
    @backupDir OUTPUT;

DECLARE @backupPath NVARCHAR(4000);
SET @backupPath = @backupDir + '\SINAL.bak';

BACKUP DATABASE SINAL
TO DISK = @backupPath
WITH FORMAT, INIT,
NAME = 'BackupCompleto';


USE msdb;
GO

SELECT
    database_name,
    backup_finish_date,
    physical_device_name
FROM
    backupset bs
INNER JOIN
    backupmediafamily bmf
ON
    bs.media_set_id = bmf.media_set_id
WHERE
    database_name = 'SINAL'
ORDER BY
    backup_finish_date DESC;