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



