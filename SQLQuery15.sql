/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[percentage]
      ,[city]
  FROM [Empmaster].[dbo].[stud]
  