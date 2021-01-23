CREATE TABLE Cities(
cityID INT primary key identity(1,1) not null,
countryID tinyint not null,
cityName NVARCHAR(50)
);