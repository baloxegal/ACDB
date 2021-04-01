/*I*/

/*1*/
select Last_Name from customers order by Last_Name

select distinct Last_Name from customers order by Last_Name

select Last_Name from customers group by customers.Last_Name order by Last_Name

select Last_Name from customers group by customers.Last_Name order by LEFT(Last_Name, 1), len(Last_Name)

/*2*/
select avg(monthly_payment) as avg_monthly_payment from packages

select avg(packages.monthly_payment - customers.monthly_discount) as customers_payments from customers join packages on customers.pack_id = packages.pack_id

/*3*/
select Last_Name from customers order by Last_Name desc

select distinct Last_Name from customers order by Last_Name desc

select Last_Name from customers group by customers.Last_Name order by Last_Name desc

select Last_Name from customers group by customers.Last_Name order by LEFT(Last_Name, 1) desc, len(Last_Name) desc

/*4*/
select count(*) as package_number from packages

/*5*/
select count(*) as customers_number from customers

/*6*/
select count(distinct [state]) as distinct_states from customers

/*7*/
select count(distinct speed) as speed_package_number from packages

/*8*/
select count(fax) as fax_number from customers

/*9*/
select count(*) as fax_number from customers where fax is null

/*10*/
select max(monthly_discount) as max_monthly_discount,
min(monthly_discount) as min_monthly_discount,
avg(monthly_discount) as avg_monthly_discount
from customers

/*II*/

/*1*/
select [state], count(*) as customers_number from customers group by [state]

/*2*/
select speed, avg(monthly_payment) as avg_monthly_payment from packages group by speed

/*3*/
select state, count(distinct city) as city from customers group by state

/*4*/
select sector_id, max(monthly_payment) as max_monthly_payment from packages group by sector_id

select sector_id, count(sector_id) as number_of_packs_in_sector, max(monthly_payment) as max_monthly_payment from packages group by sector_id

/*5*/
select count(pack_id) as number_pack_id, avg(monthly_discount) avg_monthly_discount from customers

/*6*/
select pack_id, avg(monthly_discount) as avg_monthly_discount from customers group by pack_id /*having pack_id is not null*/

select pack_id, count(*) as number_of_consumers_by_pack, avg(monthly_discount) as avg_monthly_discount from customers group by pack_id /*order by pack_id*/

/*7*/
select pack_id, avg(monthly_discount) as avg_monthly_discount from customers group by pack_id having pack_id in(22, 13)

select pack_id, count(*) as number_of_consumers_by_pack, avg(monthly_discount) as avg_monthly_discount from customers group by pack_id having pack_id in(22, 13)

/*8*/
select speed, max(monthly_payment) as max_monthly_payment, min(monthly_payment) as min_monthly_payment, avg(monthly_payment) as avg_monthly_payment
from packages group by speed

/*9*/
select pack_id, count(*) as number_of_customers from customers group by pack_id having pack_id is not null

select pack_id, count(*) as number_of_customers from customers group by pack_id

/*10*/

/*The same as the 9*/

/*11*/
select pack_id, count(*) as number_of_customers from customers where monthly_discount > 20 group by pack_id having pack_id is not null

select pack_id, count(*) as number_of_customers from customers where monthly_discount > 20 group by pack_id

/*12*/
select pack_id, count(*) as number_of_customers from customers group by pack_id having pack_id is not null and count(*) > 100

select pack_id, count(*) as number_of_customers from customers group by pack_id having count(*) > 100

/*13*/
select state, city, count(*) as customer_number from customers group by state, city order by state, city

/*14*/
select count(distinct city) as sity_number, avg(monthly_discount) as avg_monthly_discount from customers

/*15*/
select city, avg(monthly_discount) as avg_monthly_discount from customers group by city

/*16*/
select city, avg(monthly_discount) as avg_monthly_discount from customers where monthly_discount > 20 group by city

/*17*/
select count(distinct state), min(monthly_discount) as min_monthly_discount from customers

/*18*/
select state, min(monthly_discount) as min_monthly_discount from customers group by state

/*19*/
select state, min(monthly_discount) as min_monthly_discount from customers group by state having min(monthly_discount) > 10

/*20*/
select speed, count(pack_id) as number_of_packages from packages group by speed having count(pack_id) > 8