CREATE TABLE RestaurantMenu(
MenuID TINYINT PRIMARY KEY identity(1,1),
menuName NVARCHAR(50) NOT NULL,
price FLOAT NOT NULL,
description NVARCHAR(100)
)