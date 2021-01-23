CREATE TABLE Bookings(
bookingID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
customerID INT NOT NULL, 
dateCreated DATETIME NOT NULL,
CheckInDate DATETIME NOT NULL,
CheckOutDate DATETIME NOT NULL,
ArrivalDateTime DATETIME NOT NULL, 
number_of_adults TINYINT,
number_of_children TINYINT,
additional_info NVARCHAR(255),
statusID TINYINT NOT NULL 
);