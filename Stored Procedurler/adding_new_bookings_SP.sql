CREATE PROCEDURE dbo.adding_new_bookings
       @customerID                   INT  = NULL, 
       @dateCreated                  DATETIME       = NULL, 
       @CheckInDate                  DATETIME       = NULL, 
       @CheckOutDate                 DATETIME       = NULL,  
       @ArrivalDateTime              DATETIME	    = NULL, 
       @number_of_adults             tinyint        = NULL, 
       @number_of_children           tinyint		= NULL, 
       @additional_info              NVARCHAR(255)  = NULL,
	   @roomID						 INT            = NULL
AS
	   SET @dateCreated = GETDATE()
BEGIN
	-- giri� ��k�� tarihleri aras�ndaki fark kontrol� 
	IF DATEDIFF(DAY, @CheckInDate, @CheckOutDate) < 1
		BEGIN
			PRINT 'OTELDE EN AZ 1 GUN KALMALISINIZ'
		END
	ELSE 
		BEGIN
			IF @number_of_adults < 1
				BEGIN
					PRINT 'REZEVASYON YAPILAB�LMES� ���N ODADA MINIMUM B�R YET��K�N KALMALIDIR.'
				END
			ELSE
				BEGIN
					SET NOCOUNT ON 
					INSERT INTO [dbo].[Bookings]
							   ([customerID]
							   ,[dateCreated]
							   ,[CheckInDate]
							   ,[CheckOutDate]
							   ,[ArrivalDateTime]
							   ,[number_of_adults]
							   ,[number_of_children]
							   ,[additional_info]
							   ,[statusID])
						 VALUES
							   (@customerID, 
								@dateCreated, 
								@CheckInDate, 
								@CheckOutDate,  
								@ArrivalDateTime, 
								@number_of_adults, 
								@number_of_children, 
								@additional_info,
								3)
					
					-- ODA KAPAS�TE KONTROL� 
					IF @number_of_adults + @number_of_children > (SELECT maxCapacity FROM Rooms WHERE roomID = @roomID)
						BEGIN
							PRINT 'BU ODA ���N FAZLA K���'
							UPDATE [Bookings] SET [statusID] = 2 WHERE [bookingID] = SCOPE_IDENTITY()
						END
					ELSE
						BEGIN
							INSERT INTO [dbo].[BookedRooms]
										([bookingID],
										[roomID])
								  VALUES(			
										SCOPE_IDENTITY(),
										@roomID)
						END	
				END
		END
END