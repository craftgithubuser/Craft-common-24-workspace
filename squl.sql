 DROP DATABASE IF EXISTS MyDB;
 create database MyDB;
 use MyDB;
-- creating a table 
Create table customeres( Cust_ID integer auto_increment not null , 

        Cust_FirstName varchar(20) not null ,

       Cust_LastName varchar(10) not null ,

        Cust_NickName varchar(10) not null ,
       
        Cust_Age integer,

        Cust_Gender  Character not null,

        Cust_Country varchar(10) null,

        Cust_Salary  Decimal  not null,

        primary key( Cust_ID ));
alter table customeres
add column Bonus integer not null;