USE [School_DB]
GO
/****** Object:  StoredProcedure [dbo].[ADD_STUDENT]    Script Date: 12/5/2018 7:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[ADD_STUDENT]
@ID int,
@FIRST_NAME Varchar (25),
@LAST_NAME Varchar (25),
@BIRTH_DATE Date,
@CLASS Varchar (25),
@ACADEMIC_YEAR Varchar (25),
@PHONE_NUMBER Varchar (11),
@CITY Varchar (25),
@STUDENT_SUPERVISOR Varchar (25),
@STUDY_FEES Varchar (25)
AS
INSERT INTO [Student]
           ([ID]
           ,[FIRST_NAME]
           ,[LAST_NAME]
           ,[BIRTHDATE]
           ,[CLASS_ID]
           ,[ACADEMIC_YEAR]
           ,[PHONE_NUMBER]
           ,[CITY]
           ,[STUDENT_SUPERVISOR]
		   ,[STUDY_FEES]
           )
     VALUES
           (@ID,
		   @FIRST_NAME,
		   @LAST_NAME,
		   @BIRTH_DATE,
		   @CLASS,
		   @ACADEMIC_YEAR,
		   @PHONE_NUMBER,
		   @CITY,
		   @STUDENT_SUPERVISOR,
		   @STUDY_FEES
		   )







           
