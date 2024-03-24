-- Write a query which display all Records from the table?

select *
from customer;

-- Write a query which display all columns from the table where  there Citizenship is Ethiopian?

select * from customer 
where Cust_Country = 'Ethiopian';

-- Write a query which display all columns from the table where  there Salary greater than 5million?

select * from customer
where Cust_Salary >= 5000000;

--  Write a query which display all Male Customers FirstName, LastName and Country?

select Cust_FirstName, Cust_LastName, Cust_Country
from customer
where Cust_Gender = 'M';

-- Write a query which display only distinct Country?

select distinct Cust_Country
from customer;

-- Write a query which display all Female Customers FirstName, LastName and Country in descending?

select Cust_FirstName, Cust_LastName, Cust_Country
from customer
where Cust_Gender = 'F'
order by Cust_FirstName desc, Cust_LastName desc, Cust_Country desc;

-- Write a query that display all records from the table where Gender female, Her salary is greater than 2million and also Here Citizenship is Ethiopian?

select*
from customer
where Cust_Gender = 'F' and Cust_Salary >= 2000000 and Cust_Country = 'Ethiopian';

-- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?

select *
from customer
where Cust_Country in ('Ethiopian', 'Uzbekistan');

-- Write a query that display Minimum Salary from the table?

select min(Cust_Salary) as MinSalary
from customer;

-- Write a query that display Maximum Salary from the table?

select max(Cust_Salary) as maxsalary
from customer;

-- Write a query that display Number of Customer We have in the table?

select count(*) as Numberofcustomer
from customer;

-- Write a query that display Average Salary from the record?

select avg(Cust_Salary) as Avgsalary
from customer;

-- Write a query that display The sum of all customers salary?

select sum(Cust_Salary) as Sumofsalary
from customer;

-- Write a query that display all the record where there salary is between 2million and 8million?

select *
from customer
where Cust_Salary between 2000000 and 8000000;

-- Write a query that display all the record where there firstName start with 'S'?

select *
from customer
where Cust_FirstName like 'S%';

-- Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?

select *
from customer
where Cust_FirstName like '_e%' and Cust_LastName like '%e';

-- Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?

select *
from customer
where Cust_LastName like 'p%a';

-- Write a query that display all the customers from Ethiopia, USA and France?

select *
from customer
where Cust_Country in ('Ethiopian', 'USA', 'France');
78 changes: 78 additions & 0 deletions 78
Group A Assignment/DDL Quiz.sql
@@ -0,0 +1,78 @@
DROP DATABASE IF EXISTS MyDB;
CREATE DATABASE MyDB;
USE MyDB;

-- creaitng a table 

CREATE TABLE Customers(
Cust_ID int auto_increment not null,
Cust_FirstName varchar(30) not null,
Cust_LastName varchar(30) not null,
Cust_NickName varchar(30),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(20) not null,
Cust_Salary decimal not null,
primary key (Cust_ID)
);

-- adding a column useing alter

alter table customers
add column Bonus int not null;

-- modifying a column using alter on existing table

alter table customers
modify column Cust_Age int not null;

-- deleting a column using alter

alter table customers
drop column Cust_NickName, drop column Bonus;

rename table customers to customer;

drop table customer;

drop database MyDB;

-- Recreating a database and table

DROP DATABASE IF EXISTS MyDB;
CREATE DATABASE MyDB;
USE MyDB;

-- creaitng a table 

CREATE TABLE Customers(
Cust_ID int auto_increment not null,
Cust_FirstName varchar(30) not null,
Cust_LastName varchar(30) not null,
Cust_NickName varchar(30),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(20) not null,
Cust_Salary decimal not null,
primary key (Cust_ID)
);

-- adding a column useing alter

alter table customers
add column Bonus int not null;

-- modifying a column using alter on existing table

alter table customers
modify column Cust_Age int not null;

-- deleting a column using alter

alter table customers
drop column Cust_NickName, drop column Bonus;

rename table customers to customer;



21 changes: 21 additions & 0 deletions 21
Group A Assignment/DML Quiz.sql
@@ -0,0 +1,21 @@
-- inserting a data into customer table 

insert into customer (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary)
values (111,'Nick','Jones',33,'M','USA',20000000),
(222,'Antony','Martial',42,'M','France',10000000),
(333,'Ross','Geller',50,'M','uzbekistan',36000000),
(444,'Chandler','Bing',49,'M','Unkown',34000000),
(555,'Rachel','Green',52,'F','kazakhstan',400000),
(666,'Nick','Jones',33,'M','USA',20000000 ),
(777,'Poul','Pogba',45,'M','France',20000000),
(888,'Joey','Tribbiani',40,'M','Ethiopia',70000000);

update customer
set Cust_Country = 'Ethiopian'
where Cust_ID in (333,444,555);

delete from customer
where Cust_ID = 666;

select *
from customer;
62 changes: 62 additions & 0 deletions 62
Group A Assignment/SQL Join Quiz.sql
@@ -0,0 +1,62 @@
-- creating another table
create table Address (
Cust_ZIP varchar(10) not null,
Cust_Street varchar(15) not null,
Cust_City varchar(10) not null,
Cust_State varchar(10),
Cust_ID int,
constraint Address_pk primary key(Cust_ZIP),
constraint Address_fk foreign key(Cust_ID) references customer(Cust_ID)
);

alter table address
modify column Cust_City varchar (20) not null;

alter table address
modify column Cust_State varchar (20) not null;

insert into Address
values (1000, 'megenagn', 'Addis Ababa', 'Addis Ababa',444),
(2000, '4-kilo', 'Addis Ababa', 'Addis Ababa',555),
(3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa',888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa',333),
(5000, '01-st', 'San Diego', 'California', null),
(6000, 'KU-Road', 'Los Angeles', 'California', null),
(7000, 'JK-road', 'Miami', 'Florida', null),
(8000, 'Lj-road', 'Alanta', 'Georgia', null);

select * from address;


-- Write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.

-- Inner Join

select *
FROM customer JOIN address
ON customer.Cust_ID = address.Cust_ID;

-- Left outer join

select *
FROM customer
left outer JOIN address ON customer.Cust_Id = address.Cust_ID;

-- Right outer join

select *
FROM customer
Right outer Join address ON customer.Cust_Id = address.Cust_ID;

-- Full Outer Join

select *
FROM customer
left outer JOIN address ON customer.Cust_Id = address.Cust_ID
union
select *
FROM customer
Right Join address ON customer.Cust_Id = address.Cust_ID;




