/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [studid]
      ,[studentname]
      ,[mobnum]
      ,[batchid]
  FROM [student].[dbo].[stud]

 select* from trainer 
 select* from batch1
 select* from stud 


 select * from stud s cross join batch1 b; 
 select * from stud s inner join batch1 b on s.batchid =b.bch_id inner join trainer t on b.trainid = t.trainerid;


 insert into stud (studid, studentname, mobnum) values(210,'Jyotsna',457349875);
  select * from stud s left join batch1 b on s.batchid=b.bch_id ;
  select * from stud s right join batch1 b on s.batchid=b.bch_id ;

 select * from stud s full join batch1 b on s.batchid=b.bch_id ;
