create table batch
( batchid int primary key,batchname varchar(20));

create table stud
(stid int primary key,sname varchar(20),batchid int);

alter table stud
add constraint fkbt foreign key (batchid) references batch(batchid);

insert into batch values();