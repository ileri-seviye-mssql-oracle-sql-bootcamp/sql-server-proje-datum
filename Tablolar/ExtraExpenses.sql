CREATE TABLE ExtraExpenses(
extraExpensesID int primary key identity(1,1) not null,
bookingID int,
menuID TINYINT,
serviceID TINYINT,
quantity INT,
price FLOAT,
description_ NVARCHAR(255)
);