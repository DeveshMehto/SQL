/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [rollno]
      ,[sname]
      ,[age]
      ,[addr]
      ,[dob]
  FROM [studentportal].[dbo].[student]

  update student set sname='shivam',age=25,addr='gwaliar' where rollno=101;
  

