CREATE TABLE Rooms(
roomID int primary key identity(1,1) not null,
roomTypeID tinyint not null, 
roomStatusID tinyint not null,
roomNumber int not null,
price float not null,
floor_ tinyint not null,
maxCapacity tinyint not null,
numberOfBeds tinyint not null
);