CREATE VIEW top_5_services AS
SELECT TOP 5 EE.[serviceID], S.serviceName AS [Service Name], count(EE.[serviceID]) AS [Number of Purchases]
FROM [HOTEL].[dbo].[ExtraExpenses] AS EE
INNER JOIN Services_ AS S ON EE.[serviceID] = S.[serviceID]
group by EE.[serviceID], S.serviceName
ORDER BY count(EE.[serviceID]) DESC