CREATE VIEW number_of_payment_methot_VIEW
AS
select top 100 PM.paymentMethod, count(*) as sayi
from Payments P inner join PaymentMethod PM on P.paymentMethodID = PM.paymentMethodID
group by PM.paymentMethod
order by 2 desc
