CREATE PROCEDURE dbo.adding_new_staff 
       @firstName          NVARCHAR(50)  = NULL, 
       @lastName    	   NVARCHAR(50)  = NULL, 
       @address1          NVARCHAR(255)  = NULL, 
       @address2		   NVARCHAR(255)  = NULL,
       @countryID		   tinyint  = NULL,  
       @cityID		       INT  = NULL,  
       @postCode		   NVARCHAR(5)  = NULL,  
       @gender		       CHAR(1)  = NULL,  
       @phoneNumber		   NVARCHAR(15)  = NULL,  
       @email		       NVARCHAR(50)  = NULL,
       @dateOfBirth		   DATE  = NULL,  
       @identityNumber	   NVARCHAR(11)  = NULL,
	   @positionID		   TINYINT = NULL,
	   @workPhone		   NVARCHAR(30) = NULL,
	   @dateOfStart		   DATE = NULL,
	   @dateOfExit		   DATE = NULL,
	   @departmentID	   TINYINT = NULL,
	   @salary			   FLOAT = NULL
AS 
BEGIN 
     SET NOCOUNT ON 
INSERT INTO [dbo].[Staff]
           ([firstName]
           ,[lastName]
           ,[address1]
           ,[address2]
           ,[countryID]
           ,[cityID]
           ,[postCode]
           ,[gender]
           ,[phoneNumber]
           ,[email]
           ,[dateOfBirth]
           ,[identityNumber]
		   ,[positionID]
		   ,[workPhone]
		   ,[dateOfStart]
		   ,[dateOfExit]
		   ,[departmentID]
		   ,[salary])
     VALUES
           (@firstName, 
			@lastName, 
			@address1, 
			@address2,
			@countryID,  
			@cityID,  
			@postCode,  
			@gender,  
			@phoneNumber,  
			@email,
			@dateOfBirth,  
			@identityNumber,
			@positionID,
			@workPhone,
			@dateOfStart,
			@dateOfExit,
			@departmentID,
			@salary)
END
GO