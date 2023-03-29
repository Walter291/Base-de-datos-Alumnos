
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Joan Gayoso>
-- Create date: <28032023>
-- Description:	<procedimento para crear registro en la alumnos>
-- =============================================
alter procedure SP_CREAR_ALUMNOS
	-- Add the parameters for the stored procedure here
	  --@COD_ALUMNOS int
   --   @COD_CURSOS int
   --   @NOMBRE 
   --   @APELLIDO
   --   @DIRECCION
   --   @TELEFONO

	@COD_ALUMNOS int ,
	@COD_CURSOS int ,
	@NOMBRE varchar(100) ,
	@APELLIDO varchar(100) ,
	@DIRECCION varchar(100) ,
	@TELEFONO int 
	
AS
BEGIN  

   if @COD_ALUMNOS = null
   insert into ALUMNOS (
       [COD_ALUMNOS]
      ,[COD_CURSOS]
      ,[NOMBRE]
      ,[APELLIDO]
      ,[DIRECCION]
      ,[TELEFONO]
      )  VALUES (
	  @COD_ALUMNOS, 
	  @COD_CURSOS,
	  @NOMBRE,
	  @APELLIDO,
	  @DIRECCION,
	  @TELEFONO
	 )

END

execute SP_CREAR_ALUMNOS 
      @COD_ALUMNOS =12, 
	  @COD_CURSOS =12,
	  @NOMBRE ='joan',
	  @APELLIDO ='Gayoso',
	  @DIRECCION ='jose miguel',
	  @TELEFONO =8164532

	  select 
	  * from ALUMNOS