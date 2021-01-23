CREATE VIEW top_5_foreign_countries AS 
SELECT TOP 5 CO.countryName AS Country, COUNT(C.countryID) AS [Number of Customers]
  FROM [HOTEL].[dbo].[Customers] AS C
  INNER JOIN Countries AS CO ON C.countryID = CO.countryID
  WHERE CO.countryName NOT IN ('Turkey')
  GROUP BY C.countryID, CO.countryName
  ORDER BY COUNT(C.countryID) DESC