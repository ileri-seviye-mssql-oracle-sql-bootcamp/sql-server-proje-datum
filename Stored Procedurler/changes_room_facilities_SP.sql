CREATE PROCEDURE changes_room_facilities_SP
(
@oda int,
@ozellik Nvarchar(20),
@islem bit
)
as
BEGIN
	DECLARE @sql2 nvarchar(max) = CONCAT('UPDATE RoomFacilities SET ', @ozellik, '=',  @islem, 'WHERE roomID = ', @oda);
	EXEC(@sql2)
END











