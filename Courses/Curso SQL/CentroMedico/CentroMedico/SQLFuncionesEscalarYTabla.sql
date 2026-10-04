---- FUNCIONES DE TIPO ESCALAR

--CREATE FUNCTION concatenar (
--	@apellido varchar(50),
--	@nombre varchar (50)
--) RETURNS varchar (100) 

--AS BEGIN
--	DECLARE @resultado varchar (100) = @apellido + ' ' + @nombre
--	RETURN @resultado
--END

--select dbo.concatenar('Lopez', 'Roberto')

--CREATE FUNCTION obtenerPais (
--	@idPac paciente
--) RETURNS varchar(50)

--AS BEGIN
--	DECLARE @pais varchar(50)
--	SET @pais = (SELECT PA.nombrePai FROM Paciente P
--				INNER JOIN Pais PA
--					ON PA.idPai = P.idPaiPac
--					WHERE idPac = @idPac)

--	RETURN @pais
--END

--select dbo.obtenerPais (3)

---- FUNCIONES DE TIPO TABLAS

--CREATE FUNCTION listaPaises () 
--RETURNS @paises TABLE (
--	idPai pais,
--	nombrePai varchar(50)
--)

--AS BEGIN
--	INSERT INTO @paises VALUES ('ESP', 'España')
--	INSERT INTO @paises VALUES ('CHI', 'Chile')
--	INSERT INTO @paises VALUES ('MEX', 'Mexico')
--	INSERT INTO @paises VALUES ('PER', 'Perú')
--	INSERT INTO @paises VALUES ('ARG', 'Argentina')

--	RETURN
--END

--select * from dbo.listaPaises()