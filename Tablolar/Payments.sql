CREATE TABLE Payments(
paymentID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
customerID INT NOT NULL,
bookingID INT NOT NULL, 
paymentMethodID TINYINT NOT NULL, 
paymentAmount FLOAT NOT NULL,
paymentDate DATE NOT NULL
);