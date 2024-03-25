create database studentDB;

USE StudentDB;

-- creating tables
create table student(
studID int,
studFirstName varchar(20),
studLastName varchar(20),
studGender char,
studAge int,
studPostCode varchar(50),
studSalary double
);

-- Adding a column on existing table using ALTER 
alter table student
add column studDepartment varchar(100);

alter table student
add column studGrade varchar(5);

-- changing the data type of an on existing table using ALTER 
alter table student
modify column studGender varchar(10);

-- deleting the data type of an on existing table using ALTER 
alter table student
drop column studGender,
drop column studGrade;

-- renaming the data type of an on existing table using ALTER 
alter table student
rename column studID to studentID;

create table teachers(
	teacherID int,
	teacherFirstName varchar(50) not null,
	teacherLastName varchar(50) not null,
	teacherAge int
);

alter table teachers
modify column teacherAge int not null;
create table if not exists Customer(
custID int not null,
custNAme varchar(20) not null,
custAddress char(25),
custSalary decimal(18,2) default 8000.00,
custAge int
);

alter table customer
modify column custAge int default 18;
--  creating database
-- Syntax: 
-- CREATE DATABASE databasename;

create database studentDB;
CREATE DATABASE EMPLOYEEDB;

-- Syntax: 
-- CREATE schema databasename;

create schema CustomerDB;

USE studentDB;

-- Syntax: To create a TABLE
-- CREATE TABLE table_name (
--     column1 datatype,
--     column2 datatype,
--     column3 datatype,
--    ....
-- );

create table student(
studID int,
studFirstName varchar(20),
studLastName varchar(20),
studGender char,
studAge int,
studPostCode varchar(50),
studSalary double
);
      
create table Persons(
personID int,
firstName varchar(30),
lastName varchar(30),
address varchar(50),
city varchar(20)
);

-- Adding columns on existing table  using alter
alter table student
add column studDepartement varchar(100);

alter table student
add column studGrade varchar(5);

-- Changing the data types of a column in a table using alter
alter table student
modify column studGender varchar(10);

-- deleting columns on existing table using alter
alter table student
drop column studSalary;

alter table student
drop column studGender,
drop column studGrade;

-- renaming columns on existing using alter
alter table student
rename column studID TO studentID;

      

        create table teachers(
                 teacherId int, 
                 teacherFirstName varchar(50) NOT NULL, 
                 teacherLastName varchar(50) NOT NULL, 
                 teacherAge int
                 );
                 
                 alter table teachers
                 modify column teacherAge int not null;
                 
                 alter table teachers
                 modify column teacherId int default 11;
                 
                 alter table teachers
                 alter column teacherId
                 drop default;
                 
                 
create table if not exists Customer(
        custId int not null, 
        custName varchar(20) not null, 
        custAddress char(25), 
        custSalary decimal(18,2) default 8000.00, 
        custAge int
        );
        
        alter table customer
        modify column custAge int default 18;
        
        alter table customer
        alter column custAge
        drop default;
        
        alter table customer
        add unique(custId);
 
drop table teachers;
 
create table if not exists teachers(
teacherId int PRIMARY KEY, 
teacherFirstName varchar(50) NOT NULL, 
teacherLastName varchar(50) NOT NULL, 
teacherAge int default 18
);

create table if not exists teachers(
teacherId int, 
teacherFirstName varchar(50) NOT NULL, 
teacherLastName varchar(50) NOT NULL, 
teacherAge int default 18,
constraint TPK primary key(teacherId)
);


alter table student
add primary key(studentID);



drop table persons;

drop database customerdb;

drop database employeedb;


rename table student to studentInfo;

 alter table studentinfo
 rename column studAge to studentAge;
 
 -- drop command  - used to delete database, table and columns
 drop database sys;
 drop table teachers;
 
 alter table teachers
 drop column teacherAge;
 
 -- trucate command -->
 truncate table teachers;
        
-- DDL:
--    CREATE, ALTER
--    CONSTRAINT

--    DROP, - it will delete - columns, constraint, table, database 
--    RENAME - It will rename - columns, table
--    TRUNCATE - It will delete data (the entire dat)
      
      


create table teachers(
	teacherID int,
	teacherFirstName varchar(50) not null,
	teacherLastName varchar(50) not null,
	teacherAge int
);



alter table teachers
modify column teacherAge int not null;

create table if not exists Customer(
custID int not null,
custNAme varchar(20) not null,
custAddress char(25),
custSalary decimal(18,2) default 8000.00,
custAge int
);
--syntax:
alter table customer
modify column custAge int default 18;		
-- INSERT INTO table_name
-- VALUES (value1, value2, value3, ...); 

insert into studentinfo
values(1, "James", "Adam", 35, "123245", "Finance");

--  OR
--  Syntax:
--  INSERT INTO table_name (column1, column2, column3, ...)
--  VALUES (value1, value2, value3, ...);

insert into studentinfo (StudentID, studFirstName, studLastName, studentAge, studPostCode, studDepartement)
values(2, "Daniel", "John", 47, "9876789", "Technology");

insert into studentinfo (StudentID, StudFirstName, studDepartement)
values(3, "Betty", "Accountant");

create table teachers(
           id int primary key auto_increment, 
           first_name varchar(50) not null, 
           last_name varchar(50), 
           school varchar(50) not null, 
           hire_date date, 
           salary numeric
           );


INSERT INTO teachers 
values(1, 'Aster', 'Nega', 'Yekatit 12', '2021-01-01', 8000);

# populating the table with data
INSERT INTO teachers 
values (null, 'Jemal', 'Edris', 'Bole', '2021-09-11', 20000),
(null, 'Haile', 'Anaol', 'Saris', '2021-01-22', 15000),
(null, 'Teddy', 'Habtu', 'Bole', '2022-01-22', 15000),
(null, 'Haile', 'Efrata', 'Saris', '2021-09-02', 15000);


INSERT INTO teachers (id, first_name, last_name, school) 
values(null, 'Kenenisa', 'Tulu', 'Saris');

INSERT INTO teachers (first_name, last_name, school) 
values('Sara', 'Tulu', 'Saris');

SELECT * 
FROM teachers; 

select Id, first_name, last_name, salary
From teachers;

select *
From studentinfo;

select first_name
From teachers;

select *
from teachers;

select *
From teachers
where id = 2;

select *
from teachers
where first_name='Haile';

select *
from teachers
where id=5;

-- delete data
delete 
From teachers
where id =1;

delete
from teacher
where id = 5;
-- update
update teachers
set salary = 5000
where id = 6;

      