CREATE PROCEDURE dbo.adding_new_customer
       @firstName          NVARCHAR(50)   = NULL, 
       @lastName    	   NVARCHAR(50)   = NULL, 
       @address_1          NVARCHAR(255)  = NULL, 
       @address_2		   NVARCHAR(255)  = NULL,
       @countryID		   tinyint		  = NULL,  
       @cityID		       INT			  = NULL,  
       @postCode		   NVARCHAR(5)    = NULL,  
       @gender		       CHAR(1)        = NULL,  
       @phoneNumber		   NVARCHAR(15)   = NULL,  
       @email		       NVARCHAR(50)   = NULL,
       @dateOfBirth		   DATE			  = NULL,  
       @identityNumber	   NVARCHAR(11)   = NULL
AS 
BEGIN 
     SET NOCOUNT ON 
INSERT INTO [dbo].[Customers]
           ([firstName]
           ,[lastName]
           ,[address_1]
           ,[address_2]
           ,[countryID]
           ,[cityID]
           ,[postCode]
           ,[gender]
           ,[phoneNumber]
           ,[email]
           ,[dateOfBirth]
           ,[identityNumber])
     VALUES
           (@firstName,
			@lastName,
			@address_1,
			@address_2,
			@countryID,
			@cityID,
			@postCode,
			@gender,
			@phoneNumber,
			@email,
			@dateOfBirth,
			@identityNumber)
END
GO