
/*
Create a database or  Schema called MyDB
create a table name Customer
*/
drop database  if exists  Group_c;
create database   Group_c;

use Group_C;
create table customer(
cust_ID int AUTO_INCREMENT key not null,
Cust_FirstName varchar(50), 
cust_lastName varchar(50),
cust_age int not null,
cust_Gender char(1) not null,
cust_Country varchar(20) not null,
cust_Salary dec not null
);
/*
Insert the following Data in to Customers table
*/

insert into customer values ( 11,"Nick","Jones",25,"m","USA",200000000),
(222,"Antony","Martial",25,"m","France",100000000),
(333,"Ross","Geller",28,"m","Uzbekistan",360000000),
(444,"Chandller","Bing",24,"m","Unknown",340000000),
(555,"Rachel","Green",25,"f","kazakhstan",400000),
(666,"Nick","Jones",25,"m","USA",400000),
(777,"poul","Pogba",24,"m","France",2000000000),
(888,"joey","Tribbiani",27,"m","France",7000000000);

-- 2-update

update customer 
set cust_Country = 'Ethiopia'
where cust_ID in (333, 444,  555);

-- 3-Delete
/*Delete From customer 
where cust_firstName = 'Nick';*/

-- ADD, modify,Delete, Rename, Drop (Db, table)

Alter table customer
Add Bonus int not null;


Alter table customer
Modify column cust_age int not null;

Alter  table  customer
drop column bonus;

delete from customer
where cust_firstName = 'Nick' 
and cust_ID = 666;


/* recreate schema/db after drop and table after drop the table*/

-- 6 write a Query
-- 1
select * from Customer;
-- 2
select * 
from customer
where cust_Country = 'Ethiopian';

-- 3
Select *
from customer
where cust_salary > 5000000;

-- 4

SELECT Cust_firstName, Cust_lastName, cust_country
FROM customer
where cust_Gender ='m';

-- 5

SELECT DISTINCT  cust_Country 
FROM customer;

-- Q6
SELECT Cust_firstName, Cust_lastName, Cust_country
FROM customer
where cust_Gender ='F'
order by cust_country desc;

-- Q7
select *
from customer
where cust_gender = 'F' and Cust_Salary > 2000000 and cust_Country ='Ethiopian';
-- @8
select *
from customer 
where cust_country ='Ethiopia' or cust_country ='Uzbekistan';

-- Q 9
select min(cust_salary) 
From customer;

-- Q10
select max(cust_salary) 
From customer;

-- Q11

select  count(cust_ID)
From Customer;
-- Q12

select  avg(cust_salary)
From Customer;

-- Q13
select  sum(cust_Salary)
From Customer;

-- Q14

select  *
From Customer
where cust_salary between 2000000 and 8000000;

-- Q15

select * 
From Customer
where Cust_firstName like 'S%';

-- Q16

select * 
From Customer
where Cust_firstName like '_E%' and cust_lastName like '%e';

-- Q17

select * 
From Customer
where Cust_LastName like 'P%a';

-- Q18
select  *
from customer 
where cust_country in ('Ethiopia','USA', 'France');

-- create another table

create table address(
cust_zip varchar(50) primary key not null,
cust_street varchar(100) not null,
cust_city varchar(50) not null,
cust_state varchar(100),
cust_id int 
);

-- DML ADDRES
insert into address values(1000, "megenagna", "addisabeba", "addisabeba", 444),
(2000, "4_killo", "addisabeba", "addisabeba", 555),
(3000, "41_eyesus", "addisabeba", "addisabeba", 888),
(4000, "6_killo", "addisabeba", "addisabeba", 333),
(5000, "01_st", "san diago", "california",null),
(6000, "ku_road", "los angeles", "california",null),
(7000, "JK_road", "miami", "florida",null),
(8000, "LJ_road", "atlanta", "georgia",null);

/* Write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.*/

-- inner join
SELECT * 
FROM customer INNER JOIN Address 
on customer.cust_Id = Address.cust_id;

-- left outer join
SELECT * 
FROM customer left outer JOIN Address 
on customer.cust_Id = Address.cust_Id;

-- right outer join
SELECT * 
FROM customer right outer join Address 
on customer.cust_Id = Address.cust_Id;

-- Full outer join
/*SELECT * 
FROM customer full join Address 
on customer.cust_Id = Address.cust_Id;*/











