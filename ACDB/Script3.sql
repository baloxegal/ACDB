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
select count(distinct speed) as package_number from packages