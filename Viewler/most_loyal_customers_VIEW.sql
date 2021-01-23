  CREATE VIEW most_loyal_customers AS
  select TOP 10 C.firstName AS Name, C.lastName AS LastName, COUNT(B.customerID) AS [Number of Accommodation in the Hotel], MAX(B.CheckOutDate) AS [The Last Day at the Hotel]
  FROM [HOTEL].[dbo].[Bookings] AS B
  INNER JOIN Customers AS C ON B.customerID = C.customerID
  WHERE B.statusID <> 3
  GROUP BY B.customerID,C.firstName, C.lastName
  ORDER BY COUNT(B.customerID) DESC