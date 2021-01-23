create procedure adding_extra_expenses_SP
(
@müsteri_id int,
@menu_id int,
@service_id int,
@quantity int,
@price int
)
as

declare @müsteri_booking_id int = (select bookingID from Bookings where customerID = @müsteri_id)

BEGIN
	SET NOCOUNT ON 
	INSERT INTO [dbo].[ExtraExpenses]
	([bookingID]
	,[menuID]
	,[serviceID]
	,[quantity]
	,[price]
	)
	VALUES 
	(
	@müsteri_booking_id,
	@menu_id,
	@service_id,
	@quantity,
	@price
	)
	
END
