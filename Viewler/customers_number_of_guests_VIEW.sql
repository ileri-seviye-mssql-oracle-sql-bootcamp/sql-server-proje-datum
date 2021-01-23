CREATE VIEW customers_number_of_guests AS
SELECT TOP 10 [customerID], COUNT([customerID]) AS [Number of Guests]
  FROM [HOTEL].[dbo].[Guest]
  GROUP BY [customerID]
  ORDER BY COUNT([customerID]) DESC