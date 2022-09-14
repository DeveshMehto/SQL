create table trainer(tid int primary key, tname varchar(30) not null);
insert into trainer values(101, 'Deepa'),(102,'Medha'),(103,'Kalyani');
select * from trainer;

create table studs (sid int primary key, sname varchar(20) not null, tid int, 
constraint fktid foreign key(tid) references trainer(tid) on delete set null on update cascade);
insert into studs values (1, 'Devesh',103),(2,'Meheto',101),(3,'Datta',102),(4,'Hemant',103);
select * from studs;

delete from trainer where tid=101;
update trainer set tid = 104 where tname='Kalyani';

alter table studs drop constraint fktid;
drop table trainer;
drop table studs;

select * from trainer;
select * from studs;

sp_help studs;
