use NewDB;

create table Doctor (d_id int primary key not null, d_name varchar(20), d_address varchar(30), qualification varchar(20), no_of_patient_handled int);

create table PatientMaster(pcode int primary key not null, pname varchar(20), paddress varchar(20), page smallint, pgender varchar(10), bloodgroup char(3));


create table AdmittedPatient (pcode int not null, entry_date date, discharge_date date, wardNo int, disease varchar(20), d_id int not null, 
constraint fkap foreign key (pcode) references PatientMaster(pcode), 
constraint fkdoc foreign key (d_id) references Doctor(d_id));

create table Bill (Bill_no int primary key not null, pcode int not null, bill_amount int,
constraint fkpcode foreign key (pcode) references PatientMaster(pcode));

insert into Doctor values (101,'Dr.Satish Raut', 'Bandra', 'MBBS',25);
insert into Doctor values (102,'Dr.Nagvekar','Kankavli','MD',20);
insert into Doctor values (103,'Dr.Birmole','Devgad','BMBS',30);
insert into Doctor values (104,'Dr,Navare','Kudal','MBBS', 15);
insert into Doctor values (105, 'Dr.Kelkar','Kankavli','MD',13);

insert into PatientMaster values (1100,'Shahrukh','Bandra',50,'Male','O+');
insert into PatientMaster values (1200,'Shraddha','Sawantwadi',30,'Female','AB+');
insert into PatientMaster values (1300, 'Amitabh','Kudal',65,'Male','AB-');
insert into PatientMaster values (1400,'Ranveer','Vengurla',33,'Male','O-');
insert into PatientMaster values (1500, 'Alia','Malvan',29,'Female','B+');

insert into AdmittedPatient values (1200, '2022-07-26', '2022-07-30', 03, 'Maleria',101);
insert into AdmittedPatient values (1400,'2022-06-15','2022-08-15',05,'Kidney Fail',102);
insert into AdmittedPatient values (1100, '2022-06-25','2022-07-05',02,'Typhoid',101);
insert into AdmittedPatient values (1500,'2022-07-14','2022-07-28',01,'Dengue',103);
insert into AdmittedPatient values (1300,'2022-06-10','2022-06-19',04,'Accident',102);
-- insert into AdmittedPatient values (1800,'2022-06-10','2022-06-19',04,'Accident',108);

insert into Bill values (9901, 1100, 5000);
insert into Bill values (9902, 1200, 25000);
insert into Bill values (9903,1300, 10000);
insert into Bill values (9904,1400, 7000);
insert into Bill values (9905,1500, 13000);
-- insert into Bill values (9905, 1600, 23409);

alter table PatientMaster drop constraint PK__PatientM__293812AAAD8D8E13;

alter table AdmittedPatient alter column wardNo varchar(10);

alter table AdmittedPatient drop constraint fkdoc;

alter table PatientMaster add constraint fkpm primary key(pcode);

select * from Doctor where qualification = 'MBBS';



sp_help PatientMaster;

select * from PatientMaster;
select * from Doctor;
select * from AdmittedPatient;
select * from Bill;
drop table Doctor;
drop table PatientMaster;
drop table Bill;
drop table AdmittedPatient;