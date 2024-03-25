create database GROUP_C

create table students_c(
student_id int,
student_firstname varchar(50),
student_lastname varchar(50),
student_age int not null,
student_gender char(1) not null,
student_country varchar(100) not null,
student_salary int not null
);

-- DML files
insert into table students_c (null, "nick","jones",25,"m","usa",200000000),
(null, "antony","martial",25,"m","france",100000000),
(null, "ross","geller",28,"m","ethiopia",360000000),
(null, "chandller","bing",24,"m","ethiopia",340000000),
(null, "rechel","green",25,"f","ethiopia",400000),
(null, "poul","pogba",24,"m","france",2000000000),
(null, "joey","tribbiani",27,"m","france",7000000000),