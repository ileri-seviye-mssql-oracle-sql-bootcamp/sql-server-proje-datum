CREATE TABLE Guest(
guestID int primary key identity(1,1) not null,
customerID int not null,
firstName NVARCHAR(50) not null,
lastName NVARCHAR(50) not null,
address_1 NVARCHAR(255) not null,
address_2 NVARCHAR(255) not null,
countryID tinyint not null,
cityID int not null,
postCode NVARCHAR(5) not null,
gender char(1) not null,
phoneNumber NVARCHAR(15) not null,
email NVARCHAR(50) not null,
dateOfBirth date not null,
identityNumber NVARCHAR(11) unique not null
);