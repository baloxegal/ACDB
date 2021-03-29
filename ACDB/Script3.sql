/*1a*/
select c.First_Name, c.Last_Name, c.pack_id, p.speed from customers as c inner join packages as p on c.pack_id = p.pack_id

/*1b*/
select First_Name, Last_Name, packages.pack_id, packages.speed from customers inner join packages on customers.pack_id = packages.pack_id
where packages.pack_id in(22, 27) order by Last_Name

/*2a*/
select pack_id, speed, monthly_payment, sectors.sector_name from packages inner join sectors on packages.sector_id = sectors.sector_id

/*2b*/
select customers.First_Name, customers.Last_Name, packages.pack_id, packages.speed, packages.monthly_payment, sectors.sector_name from customers
inner join packages on customers.pack_id = packages.pack_id
join sectors on packages.sector_id = sectors.sector_id