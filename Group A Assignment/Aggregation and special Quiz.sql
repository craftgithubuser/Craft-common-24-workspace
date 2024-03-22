-- Write a query which display all Records from the table?

select *
from customer;

-- Write a query which display all columns from the table where  there Citizenship is Ethiopian?

select * from customer 
where Cust_Country = 'Ethiopian';

-- Write a query which display all columns from the table where  there Salary greater than 5million?

select * from customer
where Cust_Salary >= 5000000;

--  Write a query which display all Male Customers FirstName, LastName and Country?

select Cust_FirstName, Cust_LastName, Cust_Country
from customer
where Cust_Gender = 'M';

-- Write a query which display only distinct Country?

select distinct Cust_Country
from customer;

-- Write a query which display all Female Customers FirstName, LastName and Country in descending?

select Cust_FirstName, Cust_LastName, Cust_Country
from customer
where Cust_Gender = 'F'
order by Cust_FirstName desc, Cust_LastName desc, Cust_Country desc;

-- Write a query that display all records from the table where Gender female, Her salary is greater than 2million and also Here Citizenship is Ethiopian?

select*
from customer
where Cust_Gender = 'F' and Cust_Salary >= 2000000 and Cust_Country = 'Ethiopian';

-- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?

select *
from customer
where Cust_Country in ('Ethiopian', 'Uzbekistan');

-- Write a query that display Minimum Salary from the table?

select min(Cust_Salary) as MinSalary
from customer;

-- Write a query that display Maximum Salary from the table?

select max(Cust_Salary) as maxsalary
from customer;

-- Write a query that display Number of Customer We have in the table?

select count(*) as Numberofcustomer
from customer;

-- Write a query that display Average Salary from the record?

select avg(Cust_Salary) as Avgsalary
from customer;

-- Write a query that display The sum of all customers salary?

select sum(Cust_Salary) as Sumofsalary
from customer;

-- Write a query that display all the record where there salary is between 2million and 8million?

select *
from customer
where Cust_Salary between 2000000 and 8000000;

-- Write a query that display all the record where there firstName start with 'S'?

select *
from customer
where Cust_FirstName like 'S%';

-- Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?

select *
from customer
where Cust_FirstName like '_e%' and Cust_LastName like '%e';

-- Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?

select *
from customer
where Cust_LastName like 'p%a';

-- Write a query that display all the customers from Ethiopia, USA and France?

select *
from customer
where Cust_Country in ('Ethiopian', 'USA', 'France');
