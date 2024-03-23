

UseCase

1.       Create a database or  Schema called MyDB
drop database if exists MyDB;
create database MyDB;
use MyDB;

-- 2.       Create a table  name customers
create table customers(
cust_ID int auto_increment not null,
custL_FirstName varchar(50),
cust_LastName varchar(50) not null,
custL_NickName varchar(50),
cust_Age int,
cust_Gender char not null,
cust_Country varchar(50) not null,
custL_Salary decimal not null,
primary key(cust_ID));-- adding a column useing alter

alter table customers
add column Bonus int not null;-- add column Using alter 

            -- Name= bonus
            -- DataType= Integer
            -- It doesn't accept null value

-- modify column using alter

            -- Name = Age
            -- Datatype = Integer,
            -- to not accept null value

-- Delete column using alter

            -- Name = NickName
            -- Name = bonus

-- Rename Customers Table to Customer Table

-- Drop table Customer

-- Drop DataBase/schema

-- Again Recreate Schema/DataBase MyDB after we Drop the schema

-- Again Recreate the table Customers with all of it columns after we Drop the customer table 






  -- inside customers table add acolumn 

       column Name         Datatype  
  
       - Cust_ID                  - integer        make it auto increment and didn't accept null value 

       - Cust_FirstName    - String	     didn't accept null value

       - Cust_LastName     - String         didn't accept null value

       - Cust_NickName    - String
       
       - Cust_Age                    - integer

       - Cust_Gender             - Character      didn't accept null value

       - Cust_Country            - String             didn't accept null value

       - Cust_Salary               - Decimal           didn't accept null value

       - uniquely identifies each record in a table by Cust_ID
       
-- Update
Insert into customers(CUST_ID,CustL_FirstName,Cust_LastName,CustL_NickName,Cust_Age,Cust_Gender,Cust_Country,CustL_Salary,Bonus)
	values(111,'Nick','Jones','PO',45,'M','USA',500000,3000),
           (222,'Antony','Martial','yt',43,'M','France',60000,4000),
           (333,'Ross','Geller','ty',56,'M','uzbekistan',90000,3888),
           (444,'chandler','Bing','hg',35,'M','unknown',70000,9000),
           (555,'rachel','green','iu',36,'F','kazakhstan',398000,49999),
           (666,'nick','jones','km',47,'M','usa',457000,3999),
           (777,'poul','pogba','mn',35,'M','france',678000,29999),
           (888,'Joey','tribbiani','kj',76,'M','Ethiopia',467777,40000);
      -- add column Using alter 

            -- Name= bonus
            -- DataType= Integer
            -- It doesn't accept null value

-- modify column using alter

            -- Name = Age
            -- Datatype = Integer,
            -- to not accept null value
           alter table customers
           modify column Cust_Age int not null;
            

-- Delete column using alter

            -- Name = NickName
            -- Name = bonus
            alter table customers
            drop column CustL_NickName;
            alter table customers
            drop column Bonus;
            -- 2.Write a query which display all columns from the table where  there Citizenship is Ethiopian?
select * from customer
where cust_country = 'Ethiopia';-- 
3. Write a query which display all columns from the table where  there Salary greater than 5million?
select * from customer
where CustL_salary > 500000;-- 
4. Write a query which display all Male Customers FirstName, LastName and Country?
select custL_FirstName, Cust_LastName, Cust_Country
from customer
where Cust_gender = 'M';
-- 5.  Write a query which display only distinct Country?
select distinct cust_country from customer;
-- select distinct cust_country from customers
-- order by cust_country desc;

-- select distinct cust_country from customers
-- order by cust_country asc;

--  6. Write a query which display all Female Customers FirstName, LastName and Country in  descending?

-- select  custl_firstname -- , Cust_lastname, Cust_country
select cust_Country
from customer
where Cust_gender = 'F'
order by custl_firstname desc;

-- 7. Write a query that display all records from the table where Gender (female) MALE, Here salary is greater than 10k and also Here Citizenship is Ethiopian?

Select * from customers;
where Cust_gender = 'M' and custL_salary > 10000 and Cust_country = 'Ethiopia';
-- 8.  Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?
-- we had to bring Uzbekistan back in to the table b/c it was removed with another command above 

update customer
set cust_country= 'Uzbekistan'
where Cust_id IN (333,444);

where Cust_country = 'Ethiopia' or cust_country = 'Uzbekistan';
--   9. Write a query that display Minimum Salary from the table?
select min(Custl_salary) as 'MinimumSalary' from customers;
--  10. Write a query that display Maximum Salary from the table?
select max(Custl_salary) as 'MaximumSalary' from customers;
select* from customers;
-- 11. Write a query that display Number of Customer We have in the table?
select count(*) as 'Number of customers' from customers;
-- 12. Write a query that display Average Salary from the record?
select avg(custl_salary) as 'Average Salary' from customers;
-- 13.  Write a query that display The sum of all customers Salary?
select sum(custl_salary) as 'Total Salary' from customers;
-- 14.  Write a query that display all the record where there salary is between 2million and 8million?

select * from customers 
where Custl_salary between 20000 and 300000;
-- 15. Write a query that display all the record where there firstName start with 'R'?

select * from customers
where custl_firstname like 'R%';
-- 16.  Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?
select * from customers
where custl_firstname like '_e%' and cust_lastname like '%R';
 -- 17. Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?
   
select * from customers
where Cust_lastname like 'p%a';
 -- 18.Write a query that display all the customers from Ethiopia, USA and France?
select * from customers 
where Cust_country IN('Ethiopia','USA','France');
rename table customer to customers;
-- Rename Customers Table to Customer Table
rename table customers to customer;


-- Drop table Customer

-- Drop DataBase/schema

-- Again Recreate Schema/DataBase MyDB after we Drop the schema

-- Again Recreate the table Customers with all of it columns after we Drop the customer table
 update customer 
set cust_country= 'Ethiopia'
where Cust_id IN (333,444,555);
SELECT * FROM mydb.customer;



      
      


    Cust_ID=333,444,555 
    Country to Ethiopian

-- Delete 

    cust_Name=nick jones 
    WhichCust_ID is 666
    delete from customer
    where cust_ID=666;

Creating Another Table
Creating Another Table


1.      Create a table  name Address inside MyDB Database
addresscreate table Address(
Cust_zip varchar(30) not null,
cust_street varchar(30) not null,
cust_city varchar(30) not null,
custL_state varchar(30),
cust_ID int not null,
PRIMARY KEY (Cust_ZIP),
FOREIGN KEY (Cust_ID) REFERENCES Customers(Cust_ID)
);
drop table address;
CREATE TABLE ADDRESS (
    Cust_ZIP VARCHAR(10) NOT NULL,
    Cust_Street VARCHAR(100) NOT NULL,
    Cust_City VARCHAR(100) NOT NULL,
    Cust_State VARCHAR(100),
    Cust_ID INT NOT NULL,
    PRIMARY KEY (Cust_ZIP),
    FOREIGN KEY (Cust_ID) REFERENCES Customers(Cust_ID)
    Insert into address (Cust_ZIP, Cust_Street, Cust_City, Custl_State, Cust_ID)
VALUES 
    (1000, 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
    (2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
    (3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa',888),
    (4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
    (5000, '01-st', 'San Diego', 'California', null),
    (6000, 'kU-road', 'Los Angeles', 'California', null),
    (7000, 'JK-road', 'Miami', 'Florida', null),
    (8000, 'Lj-road', 'Atlanta', 'Georgia', null);
    
    INSERT INTO Address(Cust_ZIP, Cust_Street, Cust_City, Custl_State, Cust_ID)
VALUES 
    (1000, 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
    (2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
    (3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa',888),
    (4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
    (5000, '01-st', 'San Diego', 'California', null),
    (6000, 'kU-road', 'Los Angeles', 'California', null),
    (7000, 'JK-road', 'Miami', 'Florida', null),
    (8000, 'Lj-road', 'Atlanta', 'Georgia', null);
     alter table address
	modify column Cust_ID int  null;
    SELECT* FROM ADDRESS;
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

select customers.*, address.*
from customers
left outer join  address
on customers.cust_id= address.cust_id
union 
select customers.*, address.*
from customers
right outer join address
on customers.cust_id= address.cust_id;
    

2.      -- inside Address table add column 

        column Name         Datatype  
  
        - Cust_ZIP               - Stirng         didn't accept null value 

        - Cust_Street            - String	      didn't accept null value

        - Cust_City               - String         didn't accept null value

        - Cust_State              - String

        - Cust_ID                  - integer

        - uniquely identifies each record in a table by Cust_ZIP

        - The Customers table and Address table are connect
'