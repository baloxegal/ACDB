/*1a*/
select c.First_Name, c.Last_Name, c.pack_id, p.speed from customers as c join packages as p on c.pack_id = p.pack_id

/*1b*/
select First_Name, Last_Name, packages.pack_id, packages.speed from customers inner join packages on customers.pack_id = packages.pack_id
where packages.pack_id in(22, 27) order by Last_Name

/*2a*/
select pack_id, speed, monthly_payment, sectors.sector_name from packages join sectors on packages.sector_id = sectors.sector_id

/*2b*/
select customers.First_Name, customers.Last_Name, packages.pack_id, packages.speed, packages.monthly_payment, sectors.sector_name from customers
inner join packages on customers.pack_id = packages.pack_id
join sectors on packages.sector_id = sectors.sector_id

/*2c*/
select customers.First_Name, customers.Last_Name, packages.pack_id, packages.speed, packages.monthly_payment, sectors.sector_name from customers
inner join packages on customers.pack_id = packages.pack_id
join sectors on packages.sector_id = sectors.sector_id where sectors.sector_id = 2

/*3*/
select customers.Last_Name, customers.First_Name, customers.Join_Date, packages.pack_id, packages.speed, sectors.sector_name from customers
join packages on customers.pack_id = packages.pack_id
join sectors on packages.sector_id = sectors.sector_id where sectors.sector_id = 1 and YEAR(customers.Join_Date) = 2006 order by customers.Join_Date

/*4a*/
select customers.First_Name, customers.Last_Name, packages.speed, packages.monthly_payment from customers
inner join packages on customers.pack_id = packages.pack_id

/*4b*/
select customers.First_Name, customers.Last_Name, packages.speed, packages.monthly_payment from customers
left join packages on customers.pack_id = packages.pack_id order by packages.monthly_payment

/*4c*/
select customers.First_Name, customers.Last_Name, packages.speed, packages.monthly_payment from customers
right join packages on customers.pack_id = packages.pack_id order by customers.First_Name

/*4d*/
select customers.First_Name, customers.Last_Name, packages.speed, packages.monthly_payment from customers
full join packages on customers.pack_id = packages.pack_id order by packages.monthly_payment


select sum(packages.monthly_payment - customers.monthly_discount) as customers_payments from customers join packages on customers.pack_id = packages.pack_id