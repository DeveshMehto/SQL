create database movie
use movie
create table movie(movieid int,moviename varchar(20));
 alter table movie add rating int;
 alter table movie alter column moviename varchar(20);
 alter table movie drop column moviename;

 alter table movie alter column movieid int not null;

 alter table movie add primary key(movieid); 

 alter table movie drop constraint PK__movie__42EACB6626354D0E;

 select*from movie;