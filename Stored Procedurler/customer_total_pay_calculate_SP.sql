create procedure customer_total_pay_calculate_SP
(
@kullanici_id int,
@total_�denecek int output
)
AS

DECLARE @kaldigi_g�n_sayisi int;
DECLARE @kaldigi_oda_fiyati int;
DECLARE @ekstra_harcamalari int;

BEGIN
		IF EXISTS(select customerID from Customers where customerID = @kullanici_id)
			BEGIN
					set @kaldigi_g�n_sayisi = (select DATEDIFF(day,B.CheckInDate,B.CheckOutDate) from Customers C inner join Bookings B on C.customerID = B.customerID
					where B.customerID = @kullanici_id)

					set @kaldigi_oda_fiyati = (select R.price from Customers C
					inner join Bookings B on C.customerID = B.customerID
					inner join BookedRooms BR on B.bookingID = BR.bookingID
					inner join Rooms R on R.roomID = BR.roomID
					where B.customerID = @kullanici_id)

					set @ekstra_harcamalari = (select sum(EE.price) from Customers C
					inner join Bookings B on C.customerID = B.customerID
					inner join ExtraExpenses EE on EE.bookingID = B.bookingID
					where B.customerID = @kullanici_id)

					set @total_�denecek = ((@kaldigi_g�n_sayisi*@kaldigi_oda_fiyati)+@ekstra_harcamalari)
			END
		ELSE
		BEGIN
			PRINT 'B�yle bir kullan�c� bulunamad�'
		END				
END
