--Daily Full Back Up Code
EXECUTE master.dbo.xp_create_subdir N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\hotel_son'
GO
use [hotel_son];
GO
use [master];
GO
BACKUP DATABASE [hotel_son] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\hotel_son\hotel_son_backup_2021_01_20_162235_9724946.bak' WITH NOFORMAT, NOINIT,  NAME = N'hotel_son_backup_2021_01_20_162235_9724946', SKIP, REWIND, NOUNLOAD,  STATS = 10

--History Clean Up Code (Daily Full Back Up)
declare @dt datetime select @dt = cast(N'2021-01-18T16:23:43' as datetime) exec msdb.dbo.sp_delete_backuphistory @dt
GO
EXEC msdb.dbo.sp_purge_jobhistory  @oldest_date='2021-01-18T16:23:43'
GO
EXECUTE msdb..sp_maintplan_delete_log null,null,'2021-01-18T16:23:43'

--T-Log Back Up Code
use [hotel_son];
GO
use [master];
GO
EXECUTE master.dbo.xp_create_subdir N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\hotel_son'
GO
BACKUP LOG [hotel_son] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\hotel_son\hotel_son_backup_2021_01_20_162427_7188865.trn' WITH NOFORMAT, NOINIT,  NAME = N'hotel_son_backup_2021_01_20_162427_7188865', SKIP, REWIND, NOUNLOAD,  STATS = 10



