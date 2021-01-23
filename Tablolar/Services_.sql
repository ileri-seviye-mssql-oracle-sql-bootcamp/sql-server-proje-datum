CREATE TABLE Services_(
serviceID TINYINT PRIMARY KEY identity(1,1),
serviceName NVARCHAR(50) NOT NULL,
price FLOAT NOT NULL,
description NVARCHAR(100)
)