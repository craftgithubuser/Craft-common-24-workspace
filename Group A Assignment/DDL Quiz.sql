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



