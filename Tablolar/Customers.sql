CREATE TABLE Customers(
customerID int primary key identity(1,1) not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
address_1 varchar(255) not null,
address_2 varchar(255) not null,
countryID tinyint not null,
cityID int not null,
postCode varchar(5) not null,
gender CHAR(1) not null,
phoneNumber varchar(15) not null,
email varchar(50) not null,
dateOfBirth date not null,
identityNumber varchar(11) unique not null
);