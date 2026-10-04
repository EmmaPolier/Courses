---- TABLA TEMPORAL EN MEMORIA
---- Existe solo al ejecuta el script
--DECLARE @mitabla TABLE (
--	id int IDENTITY(1,1),
--	pais varchar(50)
--)

--INSERT INTO @mitabla VALUES ('Colombia'), ('España'), ('Mexico'), ('Argentina')

--SELECT * FROM @mitabla

---- TABLA TEMPORAL FISICA
---- Existe mientras que el motor de sql este corriedo

--CREATE TABLE #mitabla (
--	id int IDENTITY(1,1),
--	nombre varchar(50),
--	apellido varchar(50)
--)

--INSERT INTO #mitabla VALUES ('Emma', 'Eche'), ('Sara', 'Monsa'), ('Cesar', 'Vene')

--DROP TABLE #mitabla

---- EJERCICIO CON TABLA TEMPORAL EN MEMORIA
--DECLARE @turnos TABLE (
--	idTem int IDENTITY(1,1),
--	idTurTem turno,
--	idPacTem paciente
--)
--DECLARE @paciente paciente = 4

--INSERT INTO @turnos
--SELECT TP.idTurTup, P.idPac FROM Paciente P
--	INNER JOIN TurnoPaciente TP
--	ON TP.idPacTup = P.idPac

--SELECT * FROM @turnos
--SELECT * FROM TurnoPaciente

--DECLARE @i int = 1
--DECLARE @total int = (SELECT COUNT(*) FROM @turnos)

---- RECORIENDO UNA TABLA TEMPORAL EN MEMORIA
--WHILE @i <=  @total BEGIN
--	--SELECT * FROM @turnos WHERE idTem = @i
	
--	-- ELIMINAR TODO ID DIFERENTE A 4
--	IF (SELECT idPacTem FROM @turnos WHERE idTem = @i) <> @paciente
--		DELETE FROM @turnos WHERE idTem = @i
--	SET @i += 1
--END

--SELECT * FROM Paciente P
--	INNER JOIN @turnos T
--	ON T.idPacTem = P.idPac