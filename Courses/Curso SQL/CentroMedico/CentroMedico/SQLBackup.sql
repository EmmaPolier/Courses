DECLARE @fecha char(12)
DECLARE @path varchar(100)
DECLARE @name varchar(20)

SET @fecha = CONVERT(char(8), GETDATE(), 112) + REPLACE(CONVERT(char(5), GETDATE(), 108), ':', '')
SET @path = 'C:\Backup_SQL\CentroMedico' + @fecha + '.bak'
SET @name = 'CentroMedico' + @fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name