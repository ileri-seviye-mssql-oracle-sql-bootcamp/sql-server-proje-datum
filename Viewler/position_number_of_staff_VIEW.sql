CREATE VIEW position_number_of_staff_VIEW
AS
select TOP 100 P.position, count(*) as calisan_sayisi
from Staff S inner join Position P on S.positionID = P.positionID 
group by P.position 
order by 2 desc
