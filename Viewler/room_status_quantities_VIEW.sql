  CREATE VIEW room_status_quantities AS
  SELECT TOP 7 RS.status_ AS [Status], COUNT(R.RoomID) AS [Number of rooms] 
  FROM [HOTEL].[dbo].[Rooms] AS R
  INNER JOIN RoomStatus AS RS ON R.roomStatusID = RS.roomStatusID
  GROUP BY RS.status_
  ORDER BY COUNT(R.RoomID) DESC