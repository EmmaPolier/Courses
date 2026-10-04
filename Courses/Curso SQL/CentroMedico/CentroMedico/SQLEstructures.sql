---- ESTRUCTURA IF
--DECLARE @idPac int = 15
--DECLARE @idPai int = 12

--IF @idPac > 10 BEGIN
--	SET @idPai = 5
--	SELECT * FROM Paciente WHERE idPac BETWEEN @idPac AND 20
--	PRINT @idPai
	
--	IF EXISTS(SELECT * FROM Paciente WHERE idPac = 2)
--		PRINT 'EXISTE'
--END
--ELSE BEGIN
--	PRINT 'NO ALCANZA EL IDPAC'
--END

---- ESTRUCTURA WHILE
--DECLARE @Count int = 11

--WHILE @Count <= 20 BEGIN 
--	SELECT * FROM Paciente WHERE idpac = @Count
--	SET @Count += 1
--END

---- CONDICIONAL CASE
--DECLARE @valor int = 20
--DECLARE @resultado CHAR(10)

--SET @resultado = 
--	(CASE WHEN @valor = 10 THEN 'ROJO'
--		WHEN @valor = 20 THEN 'VERDE'
--		WHEN @valor = 30 THEN 'AZUL' END)

--PRINT @resultado

--SELECT *, (CASE WHEN idTueTur%5 = 0 THEN 'VERDE' 
--			WHEN idTueTur%7 = 0 THEN 'ROJO'
--			WHEN idTueTur = 1 THEN 'AZUL' 
--			ELSE 'GRIS' END) Color FROM Turno

---- INSTRUCCIONES RETURN Y BREAK
--DECLARE @Counter int = 11

--WHILE @Counter <= 20 BEGIN 
--	SELECT * FROM Paciente WHERE idpac = @Counter
--	SET @Counter += 1
--	IF @Counter = 16 RETURN
--END

--WHILE @Counter <= 20 BEGIN 
--	SELECT * FROM Paciente WHERE idpac = @Counter
--	SET @Counter += 1
--	IF @Counter = 16 BREAK
--END
--PRINT 'SOLO DETUVO EL BUCLE'

---- ESTRUCTURA TRY CATCH
--DECLARE @numero int = 34

--BEGIN TRY
--	SET @numero = 'TEXTO'
--END TRY
--BEGIN CATCH
--	PRINT 'ERROR: ASIGNANDO TEXTO A VARIABLE NUMERICA'
--END CATCH