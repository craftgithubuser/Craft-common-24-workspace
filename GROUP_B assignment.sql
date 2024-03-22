-- i am creating database named MyDB q3
create database myDB;
use myDB;
-- creating table called customers
create table customers(
cust_id int primary key auto_increment,
cust_first_name varchar(40) not null,
cust_last_name varchar(50) not null,
cust_nick_name varchar(50),
cust_age int,
cust_gender varchar(20) not null,
cust_country varchar(25) not null,
cust_salary decimal(10,2) not null
);
-- end of q3
-- q4
alter table customers
add bonus int not null;
alter table customers
modify cust_age int not null;
alter table customers
drop bonus;
alter table customers 
drop cust_nick_name;
rename table customers to customer;
drop table customer;
drop database myDB;  
-- end of q4
-- insert data to customers table -- q5
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(111,'nick','jones',40,'M','USA',180000);
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(222,'antony','martial',28,'M','France',140000);
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(333,'ross','geller',36,'M','Uzbekistan',110000);
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(444,'chandler','bing',60,'M','Unknown',190000);
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(555,'rachel','jones',40,'F','Kazakhstan',150000);
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(666,'nick','jones',70,'M','USA',130000);
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(777,'poul','pogba',31,'M','France',2000000);
insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
 values(888,'joey','tribbiani',27,'M','Ethiopia',112000);
 -- updating
  update customers
  set cust_country='ethiopia'
  where cust_id=333;
  update customers
  set cust_country='ethiopia'
  where cust_id=444;
  update customers
  set cust_country='ethiopia'
  where cust_id=555;
 --  deleting
 delete  
 from customers
 where cust_id=666;
 -- end of q5

  -- select  q6--started
  select*
  from customers;
  select*
  from customers
  where cust_country='Ethiopia';
  -- Tcl commands -is used to manage transaction
  start transaction;
  set autocommit=0;
 insert into customers(cust_id,cust_first_name,cust_last_name,cust_age,cust_gender,cust_country,cust_salary)
values(999,'bernando','silva',26,'M','portugal',1980000);
 rollback;
 commit;
 select*
 from customers
 where cust_salary > 100000;
 -- selecting columns
 select cust_first_name,cust_last_name,cust_country
 from customers
 where cust_gender='M';
  -- distnict
  select distinct cust_country
  from customers;
  -- ASC and DESC
  SELECT cust_first_name, cust_last_name, cust_Country
FROM customers
WHERE cust_Gender = 'M'
ORDER BY cust_first_name DESC;
  -- savepoint-means temporarily saved
  set autocommit=0;
   update customers
  set cust_country='ethiopia'
  where cust_id=444;
  savepoint A;
   update customers
  set cust_country='ethiopia'
  where cust_id=555;
  savepoint B;
   update customers
  set cust_country='ethiopia'
  where cust_id=666;
  savepoint C;
  rollback;
  -- AND
  select*
  from customers
  where cust_gender='F'AND cust_salary > 100000 AND cust_country='Ethiopia';
  -- OR
  select*
  from customers
  where cust_country='Ethiopia' OR 'uzebekistan';
  -- min
  select min(cust_Salary) AS MinimumSalary
FROM customers;
-- max
select max(cust_salary) AS maximumsalary
FROM customers;
-- count
select count(*) as numberofcustomers
from customers;
-- AVG
select avg(cust_salary)as averagesalary
from customers;
-- sum
select  sum(cust_salary) as totalsalary
from customers;
-- betewen
select*
from customers
where cust_salary Between 100000 AND 160000;
-- LIKE 
select *
from customers
where cust_first_name like'S%';
select* 
from customers
where cust_first_name like'_n%' AND cust_last_name like'%l';
select*
from customers
where cust_last_name like'p%a';
select*
from customers
where cust_country in('Ethiopia','USA','France');  
-- end of q6
-- q7 started
create table address(
cust_zip varchar(30) not null,
cust_street varchar(40) not null,
cust_city varchar(50) not null,
cust_state varchar(45),
cust_id int,
UNIQUE (Cust_ZIP),
foreign key(cust_id) references customers(cust_id));
-- insert data into address table
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(1000,'megenagna','adis abeba','adis abeba',444);
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(2000,'arat kilo','adis abeba','adis abeba',555);
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(3000,'41-eyesus','adis abeba','adis abeba',888);
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(4000,'6 kilo','adis abeba','adis abeba',333);
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(5000,'01-st','san diego','california',null);
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(6000,'ku-road','los angeles','california',null);
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(7000,'JK-road','miami','florida',null);
insert into address(cust_zip,cust_street,cust_city,cust_state,cust_id)
values(8000,'lj-road','atalanta','georgia',null);
select*
from address;
-- SQL join
-- innerr join
select Customers.cust_id, Customers.cust_first_name, address.cust_zip,address.cust_street
from customers
INNER JOIN address
           ON Customers.cust_id = address.cust_id;
           -- left outer join
select customers.cust_id,customers.cust_first_name,address.cust_zip,address.cust_street      
from customers left outer join address
ON customers.cust_id=address.cust_id;
-- right outer join
select customers.cust_id,customers.cust_first_name,address.cust_zip,address.cust_street
from customers right outer join address
ON customers.cust_id=address.cust_id;
-- full outer join
select customers.cust_id,customers.cust_first_name,address.cust_zip,address.cust_street      
from customers left outer join address
ON customers.cust_id=address.cust_id
union
select customers.cust_id,customers.cust_first_name,address.cust_zip,address.cust_street
from customers right outer join address
ON customers.cust_id=address.cust_id;
select*
from customers
where cust_salary = 100000;
-- create index --clusters and non_clusters index
show index from customers;
create index cust_salary_index
on customers(cust_salary);
show index from customers;
-- drop index
alter table customers
drop index cust_salary_index;
-- view -
create view cust_view as
select*
from customers
where cust_salary >= 130000;
select *
from cust_view;
create view cust_join_view as
select customers.cust_id,customers.cust_first_name,address.cust_zip,address.cust_street
from customers right outer join address
ON customers.cust_id=address.cust_id;
select*
from cust_join_view;
-- stored procedure -is a function written in SQL and stored in the database.
-- is helps to prevent the database from SQL Injection.
call mydb.sp_customer();
