-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE EditarVehiculo
	-- Add the parameters for the stored procedure here
	@Id UNIQUEIDENTIFIER,
    @IdModelo UNIQUEIDENTIFIER,
    @Placa VARCHAR(MAX),
    @Color VARCHAR(MAX),
    @Anio INT,
    @Precio DECIMAL(18,2),
    @CorreoPropietario VARCHAR(MAX),
    @TelefonoPropietario VARCHAR(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    BEGIN TRANSACTION
    UPDATE [dbo].[Vehiculo]
       SET 
           [IdModelo] = @IdModelo
          ,[Placa] = @Placa
          ,[Color] = @Color
          ,[Anio] = @Anio
          ,[Precio] = @Precio
          ,[CorreoPropietario] = @CorreoPropietario
          ,[TelefonoPropietario] = @TelefonoPropietario
     WHERE Id=@Id
     SELECT @Id
     COMMIT TRANSACTION
END