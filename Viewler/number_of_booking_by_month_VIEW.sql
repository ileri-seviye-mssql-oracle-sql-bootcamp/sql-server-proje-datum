CREATE VIEW number_of_booking_by_month_VIEW
AS
select top 100 datename(month,CheckInDate) as Month, count(*) as [Number of Booking] from Bookings
group by datename(month,CheckInDate)
order by 2 desc