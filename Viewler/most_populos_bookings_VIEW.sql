CREATE VIEW most_populos_bookings AS
SELECT TOP 20 [bookingID]
      ,[customerID]
      ,[number_of_adults]
      ,[number_of_children]
	  ,[number_of_adults] + [number_of_children] AS [Total Number of People]
  FROM [HOTEL].[dbo].[Bookings]
  ORDER BY [number_of_adults] + [number_of_children] DESC