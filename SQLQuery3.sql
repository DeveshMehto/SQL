create database Empmaster;
use Empmaster;

create table department(deptid int primary key,deptname varchar(20));
insert into department values(101,'testing');
insert into department values
(102,'IT'),
(103,'Marketing'),
(104,'Sales');
insert into department values(105,'Support');

select * from department;
select deptid from department;
select deptname from department;

create table employe(e_id int primary key,e_name varchar(30),did int ,
mob bigint unique,email_id varchar(20),
constraint fkdid foreign key(did) references department(deptid));
select * from employe;

alter table employe add unique(email_id);

insert into employe values
(1,'Devesh',105, 5374957834, 'devesh@gmail');
insert into employe values
(2,'sunny',104,7658544445,'gcfew@nbv'),
(3,'datta',102,7658555445,'gccgw@nbv'),
(4,'hemant',103,764434445,'xfgjw@nbv'),
(5,'shivam',101,76554564445,'hjfew@nbv');

insert into department values(106,'finance'),(107,'hr'),(108,'digitalmarketing');

insert into employe values
(6,'Devesh',106,7654555,'gcasw@nbv'),
(7,'prashnat',106,74562445,'gvchjg@nbv'),
(8,'subham',107,764561785625,'gcfxgh@hfbv');

select * from employe;

insert into employe values (9,'rehan',106, 7473294732, 'sdfhsdhjkf');

select email_id from employe;

select * from employe where did = (select deptid from department where deptname='finance');


