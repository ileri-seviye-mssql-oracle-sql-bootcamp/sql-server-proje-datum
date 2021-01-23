CREATE VIEW top_5_menu AS
SELECT TOP 5 EE.[menuID], RM.menuName AS [Menu Adý], count(EE.[menuID]) AS [Number of Purchases]
FROM [HOTEL].[dbo].[ExtraExpenses] EE
INNER JOIN RestaurantMenu RM ON EE.menuID = RM.MenuID
group by EE.[menuID], RM.menuName
ORDER BY count(EE.[menuID]) DESC