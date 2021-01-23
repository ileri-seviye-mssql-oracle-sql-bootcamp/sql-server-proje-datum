CREATE VIEW customer_gender_VIEW
as
select gender, count(*) as sayi from customers
group by gender
