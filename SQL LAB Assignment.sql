
Create table Customers (
Cust_ID int,
Cust_LastName  varchar(50),
Cust_NickName varchar(50),
Cust_Age  int,
Cust_Gender  varchar (2),
Country varchar(50),
Cust_Salary int,
constraint CustomersPK primary key(Cust_ID)
);
select * from Customers;

Create table Location (
ZIP varchar(10) not null,
Street varchar(50) not null,
City varchar (50) not null,
State varchar(50),
Cust_ID int references Customers(Cust_ID),
constraint LocationPK primary key(ZIP)
  );

Select * from Location;
Insert INTO	 Location values (1000,'Megenagna','AA','AA',444 );
Insert INTO	 Location values (2000,'4Kilo','AA','AA',555 );
Insert INTO	 Location values (3000,'41_eyesus','AA','AA',888 );
Insert INTO	 Location values (4000,'6Kilo','AA','AA',333 );
Insert INTO	 Location values (5000,'01_st','San Diago' 'CA',444 );
Insert INTO	 Location values (6000,'KU_Road','LA','CA' );
Insert INTO	 Location values (7000,'KJ Road','Miami','FL');
Insert INTO	 Location values (8000,'LJRoad','ATL','GA');


Select * from Customers;
Insert INTO	 Customers values (111,'Nick','Jones',19, 'M', 'USA', 20000);
Insert INTO	 Customers values (222,'Antony','Martial',20, 'M', 'FR',50000);
Insert INTO	 Customers values (333,'Ross','Geller',23, 'M', 'UZ',70000);
Insert INTO	 Customers values (444,'Chandler','Bing',25, 'M', 'Unkown', 100000);
Insert INTO	 Customers values (555,'Rachel','Green',26, 'F', 'Greece', 50000);
Insert INTO	 Customers values (666,'Nick','Jones',27, 'M', 'USA', 150000);
Insert INTO	 Customers values (777,'Paul','Pogba',31, 'M', 'FR',400000);
Insert INTO	 Customers values (888,'Almaz','Abebe',29, 'F', 'Eth', 500000);

Create table Customers (
Cust_ID int,
Cust_LastName  varchar(50),
Cust_NickName varchar(50),
Cust_Age  int,
Cust_Gender  varchar (2),
Country varchar(50),
Cust_Salary int,
constraint CustomersPK primary key(Cust_ID)
);

--- uniquely identifies each record in a table by Cust_ZIP

Select distinct ZIP
From Location;

--- INNER JOIN

select customers.Cust_NickName, customers.Cust_Salary, Location.Street, Location.City, Location.State
from Customers inner join location
on customers.Cust_ID = location.Cust_ID;
