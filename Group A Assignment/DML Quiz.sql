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