/*I*/

/*1*/
select Last_Name from customers order by Last_Name
/*2*/
select avg(monthly_payment) as avg_monthly_payment from packages
/*3*/
select Last_Name from customers order by Last_Name desc
/*4*/
select count(*) as package_number from packages
/*5*/
select count(*) as customers_number from customers
/*6*/
select count(distinct Last_Name) as distinct_last_name_states from customers
/*7*/
select count(distinct speed) as package_number from packages