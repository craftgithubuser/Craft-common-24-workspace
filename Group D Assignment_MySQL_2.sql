-- Creating a database
create database GroupMydb;
use GroupMydb;

-- create a table name customers
create table customers(
Cust_id INT primary key auto_increment,
Cust_fristname VARCHAR(50) NOT NULL,
Cust_lastname VARCHAR(50) NOT NULL,
Cust_nickname VARCHAR(50), 
Cust_age INT,
Cust_gender CHAR(20) NOT NULL,
Cust_country VARCHAR(50) NOT NULL,
Cust_salary dec NOT NULL
);
-- add column using alter
alter table customers
add bonus INT NOT NULL;
-- modify column using alter 

alter table customers 
modify column Cust_age INT NOT NULL; 

-- delete column using alter
alter table customers 
drop column Cust_nickname,
drop column bonus;

-- rename customers table to customer table 
rename table customers to customer; 

-- drop table customer
 drop table customer;
 
-- drop database 
drop database groupmydb;
-- Insert the following Data in to Customers table

INSERT INTO customers
VALUES (111,'Nick','Jones',30,'M','USA',150000);

INSERT INTO customers values
(222,'Antony','Martial',40,'M', 'France',40000),
(333, 'Ross', 'Geller', 50, 'M', 'Uzbekistan', 20000),
(444, 'Chandler', 'Bing', 40, 'M', 'Unknown',30000),
(555, 'Rachel', 'Green', 30, 'F', 'Kazzakhstan', 100000),
(666, 'Nick', 'Jones', 20, 'M', 'USA', 600000),
(777, 'Poul', 'Pogba', 35, 'M', 'France', 500000),
(888, 'Joey', 'Tribbiani', 27, 'M', 'Ethiopia',700000);

-- Update

update customers 
set cust_country= 'Ethiopia'
where Cust_id IN (333,444,555);

-- update customers 
-- set cust_country= 'Eth'
-- where Cust_id = 333 or cust_id = 444 or cust_id = 555;

-- delete
delete from customers
where Cust_id = 666; 

-- 1. Write a query which display all Records from the table?
select * from customers;

-- 2.Write a query which display all columns from the table where  there Citizenship is Ethiopian?
select * from customers
where cust_country = 'Ethiopia';

-- 3. Write a query which display all columns from the table where  there Salary greater than 5million?
select * from customers
where Cust_salary > 500000;

-- 4. Write a query which display all Male Customers FirstName, LastName and Country?
select cust_fristname, Cust_lastname, Cust_country
from customers
where Cust_gender = 'M';

-- 5.  Write a query which display only distinct Country?
select distinct cust_country from customers;

-- select distinct cust_country from customers
-- order by cust_country desc;

-- select distinct cust_country from customers
-- order by cust_country asc;

--  6. Write a query which display all Female Customers FirstName, LastName and Country in  descending?

select  cust_fristname, Cust_lastname, Cust_country
from customers
where Cust_gender = 'F'
order by cust_fristname desc;

select  cust_fristname, Cust_lastname, Cust_country
from customers
where Cust_gender = 'M'
order by cust_country desc;

--  select  cust_fristname, Cust_lastname, Cust_country

select *
from customers
where Cust_gender = 'M'
order by cust_lastname desc;

-- 7. Write a query that display all records from the table where Gender (female) MALE, Here salary is greater than 10k and also Here Citizenship is Ethiopian?

Select * from customers
where Cust_gender = 'M' and cust_salary > 10000 and Cust_country = 'Ethiopia';

-- 8.  Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?
-- we had to bring Uzbekistan back in to the table b/c it was removed with another command above 

update customers 
set cust_country= 'Uzbekistan'
where Cust_id IN (333,444);

select * from customers 
where Cust_country = 'Ethiopia' or cust_country = 'Uzbekistan';

-- select * from customers 
-- where Cust_country = 'Uzbekistan' and cust_salary < 50000;

--   9. Write a query that display Minimum Salary from the table?
select min(Cust_salary) as 'MinimumSalary' from customers;

--  10. Write a query that display Maximum Salary from the table?
select max(Cust_salary) as 'MaximumSalary' from customers;

-- 11. Write a query that display Number of Customer We have in the table?
select count(*) as 'Number of customers' from customers;
-- 12. Write a query that display Average Salary from the record?
select avg(cust_salary) as 'Average Salary' from customers;

-- 13.  Write a query that display The sum of all customers Salary?
select sum(cust_salary) as 'Total Salary' from customers;

-- 14.  Write a query that display all the record where there salary is between 2million and 8million?

select * from customers 
where Cust_salary between 20000 and 30000;

-- 15. Write a query that display all the record where there firstName start with 'R'?

select * from customers
where cust_fristname like 'R%';

-- 16.  Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?
select * from customers
where cust_fristname like '_O%' and cust_lastname like '%R'; 

alter table customers
Change column Cust_fristname
Cust_firstname VARCHAR(50);

 -- 17. Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?
   
select * from customers
where Cust_lastname like 'p%_a';

 -- 18.Write a query that display all the customers from Ethiopia, USA and France?
select * from customers 
where Cust_country IN('Ethiopia','USA','France');

-- DAY 7 SQL Join quiz
-- Creating Another Table
-- 1.Create a table  name Address inside MyDB Database

CREATE TABLE ADDRESS (
    Cust_ZIP VARCHAR(10) NOT NULL,
    Cust_Street VARCHAR(100) NOT NULL,
    Cust_City VARCHAR(100) NOT NULL,
    Cust_State VARCHAR(100),
    Cust_ID INT NOT NULL,
    PRIMARY KEY (Cust_ZIP),
    FOREIGN KEY (Cust_ID) REFERENCES Customers(Cust_ID)
);

-- 3. Insert the following Data in to Address table
CREATE TABLE ADDRESS_4 (
    Cust_ZIP VARCHAR(10) NOT NULL,
    Cust_Street VARCHAR(100) NOT NULL,
    Cust_City VARCHAR(100) NOT NULL,
    Cust_State VARCHAR(100),
    Cust_ID INT NULL,
	Unique (Cust_ZIP),
	FOREIGN KEY (Cust_ID) REFERENCES Customers(Cust_ID)
);

-- unique cust zip 

-- alter table address_2
-- modify column Cust_ID int null;

-- 3. Insert the following Data in to Address table


INSERT INTO Address_4 (Cust_ZIP, Cust_Street, Cust_City, Cust_State, Cust_ID)
VALUES 
    ('1000', 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
    ('2000', '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
    ('3000', '41-eyesus', 'Addis Ababa', 'Addis Ababa',888),
    ('4000', '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
    ('5000', '01-st', 'San Diego', 'California', null),
    ('6000', 'kU-road', 'Los Angeles', 'California', null),
    ('7000', 'JK-road', 'Miami', 'Florida', null),
    ('8000', 'Lj-road', 'Atlanta', 'Georgia', null);
    
-- write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.
-- INNER JOIN
SELECT Customers.*, Address_4.*
FROM Customers
INNER JOIN Address_4 ON Customers.Cust_ID = Address_4.Cust_ID;

-- LEFT OUTER JOIN
SELECT Customers.*, Address_4.*
FROM Customers
LEFT OUTER JOIN Address_4 ON Customers.Cust_ID = Address_4.Cust_ID;

-- RIGHT OUTER JOIN
SELECT Customers.*, Address_4.*
FROM Customers
RIGHT OUTER JOIN Address_4 ON Customers.Cust_ID = Address_4.Cust_ID;

-- FULL OUTER JOIN
-- SELECT Customers.*, Address.*
-- FROM Customers
-- FULL OUTER JOIN Address ON Customers.Cust_ID = Address.Cust_ID;

-- SQL DDOES NOT DIRECTLY SUPPORT FULL OUTER JOIN. THEREFORE, WE NEED TO USE "UNION" BY USING LEFT AND RIGHT OUTER JOIN. 

-- full outer join   

select customers.*, address_4.*
from customers
left outer join  address_4
on customers.cust_id= address_4.cust_id
union 
select customers.*, address_4.*
from customers
right outer join address_4
on customers.cust_id= address_4.cust_id;


-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2 ON table1.column_name = table2.column_name;

-- closed
    































-- ??????????????????????????????????????????????????????
INSERT INTO customers values
(666, 'Nick', 'Jones', 20, 'M', 'USA', 600000);
-- ??????????????????????????????????????????????????????
INSERT INTO Address (Cust_ZIP, Cust_Street, Cust_City, Cust_State, Cust_ID)
VALUES 
    ('1000', 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
    ('2000', '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
    ('3000', '41-eyesus', 'Addis Ababa', 'Addis Ababa',888),
    ('4000', '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
    ('5000', '01-st', 'San Diego', 'California', 111),
    ('6000', 'kU-road', 'Los Angeles', 'California', 222),
    ('7000', 'JK-road', 'Miami', 'Florida', 666),
    ('8000', 'Lj-road', 'Atlanta', 'Georgia', 777);

-- write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.
-- INNER JOIN
SELECT Customers.*, Address.*
FROM Customers
INNER JOIN Address ON Customers.Cust_ID = Address.Cust_ID;

-- LEFT OUTER JOIN
SELECT Customers.*, Address.*
FROM Customers
LEFT OUTER JOIN Address ON Customers.Cust_ID = Address.Cust_ID;

-- RIGHT OUTER JOIN
SELECT Customers.*, Address.*
FROM Customers
RIGHT OUTER JOIN Address ON Customers.Cust_ID = Address.Cust_ID;

-- FULL OUTER JOIN
-- SELECT Customers.*, Address.*
-- FROM Customers
-- FULL OUTER JOIN Address ON Customers.Cust_ID = Address.Cust_ID;

-- SQL DDOES NOT DIRECTLY SUPPORT FULL OUTER JOIN. THEREFORE, WE NEED TO USE "UNION" BY USING LEFT AND RIGHT OUTER JOIN. 

-- full outer join   
select customers. cust_id, customers.cust_firstname, address.cust_zip, address. cust_street
from customers
left outer join  address
on customers.cust_id= address.cust_id
union 
select customers. cust_id, customers.cust_firstname, address.cust_zip, address. cust_street
from customers
right outer join address
on customers.cust_id= address.cust_id;

select customers.*, address.*
from customers
left outer join  address
on customers.cust_id= address.cust_id
union 
select customers.*, address.*
from customers
right outer join address
on customers.cust_id= address.cust_id;


-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2 ON table1.column_name = table2.column_name;

-- closed