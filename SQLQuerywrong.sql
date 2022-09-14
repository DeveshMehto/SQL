create database student 
use student

create table studinfo
(studname varchar (20),studid int primary key,mobno bigint not null);
select*from studinfo

create table batch
(batchname varchar(20),batchid int primary key,stid int,constraint fkbid foreign key (stid) references studinfo(studid));
select*from batch

create table trainer 
(trainrname varchar(20),trainerid int primary key,bachid int,constraint fktid foreign key (bachid) references batch(batchid));
select*from trainer


select * from studinfo;
select * from batch;
select * from trainer;