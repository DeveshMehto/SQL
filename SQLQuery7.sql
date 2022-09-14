create database student1
use student1

create table studentt
(rollno int primary key,sname varchar(20) not null,age smallint check(age>10),adderess varchar(30)not null default(''),mob bigint unique,percentage int);
 insert into studentt values
 (101,'Sunny',23,'Bhopal',7898236621,85),
 (102,'devesh',24,'Bhopal',789454621,75),
 (103,'prashant',23,'Bhopal',1236526621,70),
 (104,'hemant',24,'pune',7898147621,95),
 (105,'shivam',26,'Bhopal',7898452621,890);
  select*from studentt
  insert into studentt(rollno,sname,age) values(106,'sha',23);
