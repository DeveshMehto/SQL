create table stud (id int primary key, name varchar(20) not null, percentage int check(percentage >0), city varchar(10) default('Pune'));
insert into stud values(101, 'Devesh',89,'Bhopal');
insert into  stud (id,name,percentage) values(102,'Meheto',90);
insert into stud values(103,'DP', 60,'Devgad');
select * from stud;

drop table stud;