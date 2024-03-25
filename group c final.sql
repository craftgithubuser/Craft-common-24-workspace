DROP DATABASE group_c; 
CREATE DATABASE group_c;



create table students_c(
student_id int,
student_firstname varchar(50),
student_lastname varchar(50),
student_age int not null,
student_gender char(1) not null,
student_country varchar(100) not null,
student_salary int not null,
primary key (student_id)
);

drop table addres;




-- DML files
insert into students_c values (111, "nick","jones",25,"m","usa",2000000),
(222, "antony","martial",25,"m","france",1000000),
(333, "ross","geller",28,"m","ethiopia",36000000),
(444, "chandller","bing",24,"m","ethiopia",34000000),
(555, "rechel","green",25,"f","ethiopia",400000),
(666, "poul","pogba",24,"m","france",2000000),
(777, "joey","tribbiani",27,"m","france",70000000);

-- creating another table

create table addres(
student_zip varchar(50) not null,
student_street varchar(100) not null,
student_city varchar(50) not null,
student_state varchar(100),
stud_id int,
primary key (student_zip),
foreign key (stud_id) references students_c (student_id)
);

-- DML ADDRES
insert into addres values(1000, "megenagna", "addisabeba", "addisabeba", 444),
(2000, "4_killo", "addisabeba", "addisabeba", 555),
(3000, "41_eyesus", "addisabeba", "addisabeba", 888),
(4000, "6_killo", "addisabeba", "addisabeba", 333),
(5000, "01_st", "san diago", "california", null),
(6000, "ku_road", "los angeles", "california", null),
(7000, "JK_road", "miami", "florida", null),
(8000, "LJ_road", "atlanta", "georgia", null);

 -- Write a query which display all Records from the table?

select * from students_c;

--  Write a query which display all columns from the table where  there Citizenship is Ethiopian?
     
select * from students_c
where student_country ="ethiopia";

-- Write a query which display all columns from the table where  there Salary greater than 5million?
select * from students_c
where student_salary >5000000;

-- Write a query which display all Male Customers FirstName, LastName and Country?
select student_firstname, student_lastname, student_country from students_c
where student_gender = "m";

-- Write a query which display only distinct Country?
select distinct student_country from students_c;

-- Write a query which display all Female Customers FirstName, LastName and Country in  descending?
select student_firstname, student_lastname, student_country from students_c
where student_gender = "f"
order by student_country desc;

-- Write a query that display all records from the table where Gender female, Here salary is greater than 2million and also Here Citizenship is Ethiopian?
select * from students_c
where student_gender = "f"
order by student_salary > 2000000 and student_country = "ethipoia";


-- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?

select * from students_c
where student_country = 'Ethiopia' or "uzbekistan";

-- Write a query that display Minimum Salary from the table?
select  Min(student_Salary)
 from students_c;
 

-- Write a query that display Maximum Fees from the table?
select  max(student_Salary)
 from students_c;

-- Write a query that display Number of Customer We have in the table?
select  count(student_Salary)
 from students_c;

-- Write a query that display Average Salary from the record?
select  avg(student_Salary)
 from students_c;

-- Write a query that display The sum of all customers Fees?

select  sum(student_Salary)
 from students_c;
 
 --   Write a query that display all the record where there salary is between 2million and 8million?

select *  from students_c
where student_salary between 2000000 and 8000000;
 
--  Write a query that display all the record where there firstName start with 'S'?

select * from students_c
where student_firstname like 'S%';

-- Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?

select * from students_c
where student_firstname like '_e%'  And student_lastname like '%e';

--  Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?

select * from students_c
where student_lastname like 'p%a';


--   Write a query that display all the customers from Ethiopia, USA and France?
Select* From Students_C
 Where student_country IN ( 'Ethiopia', 'USA', 'France');

-- Write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.

SELECT *  
FROM students_c INNER JOIN addres 
on students_c.student_id= addres.stud_id;

SELECT *  
FROM students_c LEFT OUTER JOIN addres 
on students_c.student_id= addres.stud_id;

SELECT *  
FROM students_c RIGHT OUTER JOIN addres 
on students_c.student_id= addres.stud_id;

/*SELECT *  
FROM students_c FULL OUTER JOIN addres
on students_c.student_id= addres.stud_id;*/