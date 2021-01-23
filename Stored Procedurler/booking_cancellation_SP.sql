create procedure booking_cancellation_SP
(
@kullanici_id int
)
AS
	DECLARE @booking_id int = (select B.bookingID from Customers C inner join Bookings B on C.customerID = B.customerID where C.customerID = @kullanici_id)
	DECLARE	@room_id int = (select R.roomID from Customers C inner join Bookings B on C.customerID = B.customerID inner join BookedRooms BR on BR.bookingID = B.bookingID inner join Rooms R on R.roomID = BR.RoomID where C.customerID = @kullanici_id)
	DECLARE @booking_status int = (select BS.statusID from Customers C inner join Bookings B on C.customerID = B.customerID inner join BookingStatus BS on B.statusID = BS.statusID where C.customerID = @kullanici_id)
	DECLARE @room_status int = (select RS.roomStatusID from Customers C inner join Bookings B on C.customerID = B.customerID inner join BookedRooms BR on BR.bookingID = B.bookingID inner join Rooms R on R.roomID = BR.RoomID inner join RoomStatus RS on RS.roomStatusID = R.roomStatusID where C.customerID = @kullanici_id)	
BEGIN
	IF @booking_status <> 2 AND @room_status <> 3
		BEGIN
			BEGIN
			UPDATE Bookings SET statusID = 2 WHERE bookingID = @booking_id
			END
			BEGIN
			UPDATE Rooms SET roomStatusID = 3 WHERE roomID = @room_id	
			END
		END
			ELSE 
				BEGIN
					PRINT 'BU REZERVASYON ÖNCEDEN ÝPTAL EDÝLMÝÞTÝR.'
				END
								
END

