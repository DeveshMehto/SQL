create  database studentdetails
use studentdetails
create table Teacher(Teacher_id int primary key , Tname varchar(30));
insert into Teacher values (101, 'Deepa'),(102,'Kalyani'),(103,'Medha');

create table Batch(Batch_id int primary key, BatchName varchar(20), Teacher_id int, constraint fktid foreign key (Teacher_id) references Teacher(Teacher_id));
insert into Batch values (901, 'C#', 101), (902,'Advanced C#',102),(903,'HCL',103),(904,'Python',102),(905,'Java',101);
select * from Batch;
create table Status(Status_id int primary key, Description varchar(10));
insert into Status values (1, 'Played'),(2,'Unplayed'),(3,'Left'),(4,'Removed');
select * from Status;

--Que 1:Write a query to create Student and Score table. 
create table Student (Stud_id int primary key, SName varchar(30), Mobile bigint unique, Batch_id int,Status_id int, Year_Of_Passing int, 
constraint fkstid foreign key (Status_id) references Status(Status_id),
constraint fkbid foreign key (Batch_id) references Batch(Batch_id));
insert into Student values 
(001 ,'Devesh', 8923569067,901,1,2022),
(002,'Prasad',1209457834,903,2,2020),
(003,'Shubham',9023785645,902,4,2019),
(004,'Hemant',7823905634,904,3,2021),
(005, 'Shivam',5689239045,905,1,2022),
(006,'Raman',9812456789,905,4,2020),
(007,'Vikrant',8967452345,903,3,2019),
(008,'Sunny',7834905612,902,2,2021);

insert into Student values(009,'Sha',7834982612,905,1,2020);

Create table Attendance(Stud_id int, A_Date Date, Present char(1),
constraint fkasid foreign key (Stud_id) references Student(Stud_id),
primary key(Stud_id , A_Date));

insert into Attendance values
(001,'2022-08-01','Y'),
(002,'2022-08-01','Y'),
(003,'2022-08-01','N'),
(004,'2022-08-01','Y'),
(005,'2022-08-01','N'),
(006,'2022-08-01','N'),
(007,'2022-08-01','Y'),
(008,'2022-08-01','Y'),
(001,'2022-08-02','Y'),
(002,'2022-08-02','N'),
(003,'2022-08-02','Y'),
(004,'2022-08-02','Y'),
(005,'2022-08-02','Y'),
(006,'2022-08-02','N'),
(007,'2022-08-02','Y'),
(008,'2022-08-02','N');
select * from Attendance;

drop table Attendance;

create table Score (Stud_id int, Test_Date Date, Topic varchar(20), Marks_Obtained int check(Marks_Obtained > 0),
primary key(Stud_id , Test_Date),
constraint fkdns Foreign key (Stud_id) references Student(Stud_id),
);

insert into Score  values
(001, '2022-08-27','Collections',90),
(002, '2022-08-27','Exceptions',95),
(003, '2022-08-27','SQL T1',87),
(004, '2022-08-27','OOPS',83),
(005, '2022-08-27','HTML',97),
(006, '2022-08-27','Collections',79),
(007, '2022-08-27','SQL T1',90),
(008, '2022-08-27','Exceptions',75),
(001, '2022-08-28','SQL T2',84),
(002, '2022-08-28','Delegates',90),
(003, '2022-08-28','HTML',93),
(004, '2022-08-28','OOPS',81),
(005, '2022-08-28','SQL T2',90),
(006, '2022-08-28','Exceptions',75),
(007, '2022-08-28','Delegates',83),
(008, '2022-08-28','HTML',84);

--Que 2: 2.	Write a query to add column Qualification to Student table. ( Assume it was not present earlier)– add qualification column after status id
alter table Student add  Qualification varchar(20);
update Student set Qualification = 'IT' where Stud_id=001; 
update Student set Qualification = 'Mech' where Stud_id=002; 
update Student set Qualification = 'CS' where Stud_id=003; 
update Student set Qualification = 'BE' where Stud_id=004; 
update Student set Qualification = 'Civil' where Stud_id=005; 
update Student set Qualification = 'IT' where Stud_id=006; 
update Student set Qualification = 'CS' where Stud_id=007; 
update Student set Qualification = 'Mech' where Stud_id=008; 
select * from Student;

--Que 3:3.	Write single query to create StudentCopy table which will have same structure and data of table.
select * into StudentCopy from Student;
select * from StudentCopy;

-- Que 5:Update record of student Mithilesh from July2018 batch to Aug2018. Batch id of both batches is not known.

update Student set Batch_id =(select Batch_id from Batch where BatchName ='Aug 2018')  where SName = 'Mithilesh';

--Que 6:6.	Assume there is field ‘student_count’ in batch table. Write a query to update this field by counting no of students in that batch.
update Batch set Stud_Count  = (select count(*) from Student where Student.Batch_id = Batch.Batch_id group by Batch_id);

select count(*) from Student group by Batch_id;

alter table Batch add Stud_Count int;
select * from Batch;

--Que 7:List all Students from July2018 whose qualification is “BE” and year of passing is 2018.
select * from Student where Qualification = 'BE' AND Year_Of_Passing=2018 having Batch_id=(select Batch_id from Batch where BatchName = 'July 2018');

--Que 8:
select SName, Topic, Marks_Obtained from Student s inner Join Score sc on s.Stud_id = sc.Stud_id 
group by Topic having Batch_id=(select Batch_id from Batch where BatchName = 'C#');

select * from Score;

select * from Batch;
Select * from Student;

--Que 9:Display batchname and Batchwise Placed student count for all batches from which less than 5 students are placed.
select BatchName, count(Stud_id) as PlacedStudents from Batch b inner join Student s on b.Batch_id = s.Batch_id inner join Status st on s.Status_id = st.Status_id where st.Status_id = 1 group by BatchName having count(*) <2;

--Que 10:
select * from Attendance;
select Top 3 *  from Student s inner join Attendance a on s.Stud_id = a.Stud_id inner join Batch b on s.Batch_id = b.Batch_id where BatchName= 'PB#' order by (select count(*) from Attendance group by present) desc;

--Que 11:Delete all records of those students from attendance who are ‘PLACED’
delete Attendence from Attendence a inner join Student s on a.Stud_id = s.Stud_id inner join Status st on s.Status_id = st.Status_id where st.Description = 'Placed';
delete Student from Student s inner Join Status st on s.Status_id = st.Status_id where st.Description = 'Placed';

--Que 12:Delete all records of students whose average marks are less than 50.
delete Student from Student s inner join Score sc on s.Stud_id = sc.Stud_id where avg(Marks_Obtained) < 50;

--Que 13:Create a view to which shows sid name batchname. 
create view ShowStudandBatch AS
select Stud_id, SName, BatchName from Student s, Batch b where b.Batch_id = s.Batch_id;

select * from ShowStudandBatch;
--Que 14:Create index so that retrieval of records is faster when retrieved based on status id
create index IX_Stud on Student(Status_id);

insert into Batch values(906,'Cloud',103,2);

--Que 15:Give one example of left outer join using above database.
select * from Batch b  Left join Student s on b.Batch_id = s.Batch_id;