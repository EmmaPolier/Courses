---- BUSCAR PACIENTE
--CREATE PROC SP_searchPaciente (
--	@idPac int
--)
--AS 

--SELECT * FROM Paciente 
--	WHERE idPac = @idPac
--GO

--EXEC SP_insertPaciente 'Jorge', 'Lopez', '', '20180315', 'calle 1', 'MEX', NULL, 'pruebaDos@mail.com', ''

---- INSERTAR PACIENTE
--CREATE PROCEDURE SP_insertPaciente (
--	@nombrePac varchar(50),
--	@priApellidoPac varchar(50),
--	@segApellidoPac varchar(50)='',
--	@fechaNacimientoPac date,
--	@domicilioPac varchar(50),
--	@idPaiPac char(3),
--	@telefonoPac varbinary(20)=NULL,
--	@emailPac varchar(30),
--	@obsPac varchar(300) = ''
--)
--AS

---- AÑADIR DELAY
--WAITFOR DELAY '00:00:01'
--IF EXISTS (SELECT * FROM Paciente WHERE telefonoPac = @telefonoPac ) BEGIN PRINT 'Telefono ya existe' RETURN END 
--IF EXISTS (SELECT * FROM Paciente WHERE emailPac = @emailPac) BEGIN PRINT 'Email ya existe' RETURN END

--INSERT INTO Paciente (nombrePac, priApellidoPac, segApellidoPac, fechaNacimientoPac, domicilioPaC, idPaiPac, telefonoPac, emailPac, obsPac)
--VALUES (
--	@nombrePac,
--	@priApellidoPac,
--	@segApellidoPac,
--	@fechaNacimientoPac,
--	@domicilioPaC,
--	@idPaiPac,
--	@telefonoPac,
--	@emailPac,
--	@obsPac
--)
--PRINT 'Se agregó un nuevo paciente'
--GO

--EXEC SP_insertTurno '20190215 08:25', 3, '', 8, 2


---- INSERTAR TURNO
--CREATE PROCEDURE SP_insertTurno (
--	@fechaTur datetime,
--	@idTueTur smallint,
--	@obsTur varchar(300) = '',
--	@idPacTue int,
--	@idMedTue int
--)
--AS
--IF NOT EXISTS(SELECT * FROM Turno WHERE fechaTur = @fechaTur) 
--BEGIN
--	INSERT INTO Turno (fechaTur, idTueTur, obsTur) 
--	VALUES (@fechaTur, @idTueTur, @obsTur)

--	DECLARE @auxIdTur int = @@IDENTITY

--	INSERT INTO TurnoPaciente (idTurTup, idPacTup, idMedTup)
--	VALUES (@auxIdTur, @idPacTue, @idMedTue)

--	PRINT 'Se agrego el turno'
--	RETURN
--END
--ELSE BEGIN
--	PRINT 'El turno ya existe'
--END
--GO

--EXEC SP_insertMedico 'María', 'Perez', '', 4, 'Muy bueno'


---- INSERTAR MEDICO
--CREATE PROCEDURE SP_insertMedico (
--	@nombreMed varchar(50),
--	@priApellidoMed varchar(50),
--	@segApellidoMed varchar(50) = '',
--	@idEspMee int,
--	@desMee varchar(100) = ''
--)
--AS 
--SET NOCOUNT ON

--IF EXISTS(SELECT * FROM Especialidad WHERE idEsp = @idEspMee) BEGIN
--	INSERT INTO Medico (nombreMed, priApellidoMed, segApellidoMed) 
--	VALUES (@nombreMed, @priApellidoMed, @segApellidoMed)

--	DECLARE @auxIdMed int = @@IDENTITY

--	INSERT INTO MedicoEspecialidad (idMedMee, idEspMee, desMee) 
--	VALUES (@auxIdMed, @idEspMee, @desMee)
	
--	PRINT 'Medico incertado'
--	RETURN
--END
--PRINT 'Especialidad no encontrada'
--GO


---- BUSCAR TURNO PACIENTE
--CREATE PROC SP_TurnosPaciente(
--	@idPac paciente 		
--)
--AS
--SET NOCOUNT ON

--SELECT * FROM Paciente P
--INNER JOIN TurnoPaciente TP 
--	ON TP.idTurTup = P.idPac
--INNER JOIN Turno T
--	ON T.idTur = TP.idTurTup
--INNER JOIN MedicoEspecialidad M
--	ON M.idMedMee = TP.idMedTup
--	WHERE P.idPac = @idPac

--exec SP_TurnosPaciente 2


---- OBTENER HISTORIA CLINICA
--CREATE PROC SP_HistoriaPaciente (
--	@idPac int
--)
--AS
--SET NOCOUNT ON

--SELECT * FROM Paciente P
--INNER JOIN HistoriaPaciente HP 
--	ON HP.idPacHip = P.idPac
--INNER JOIN Historia H
--	ON H.idHis = HP.idHisHip
--INNER JOIN MedicoEspecialidad ME
--	ON ME.idMedMee = HP.idMedHip
--INNER JOIN Medico M
--	ON M.idMed = ME.idMedMee
--WHERE P.idPac = @idPac

--EXEC SP_HistoriaPaciente 6


---- OBTENER ESPECIALIDADES DE MEDICO
--CREATE PROC SP_EspecilidadMedico (
--	@idMed int
--)
--AS
--SET NOCOUNT ON

--SELECT * FROM Medico M
--INNER JOIN MedicoEspecialidad ME
--	ON ME.idMedMee = M.idMed
--INNER JOIN Especialidad E
--	ON E.idEsp = ME.idEspMee
--WHERE M.idMed = @idMed

--EXEC SP_EspecilidadMedico 3


---- OBTENER ESPECIALIDADES
--CREATE PROC SP_Especilidades
--AS
--SET NOCOUNT ON

--IF EXISTS(SELECT * FROM Especialidad)
--	SELECT * FROM Especialidad
--ELSE
--	SELECT 0 AS RESULTADO

--EXEC SP_Especilidades


---- UPDATE TURNO
--CREATE PROC SP_UpdateTurno (
--	@idTur turno,
--	@idTueTur tinyint,
--	@obsTur observacion
--)

--AS
--SET NOCOUNT ON

--IF EXISTS(SELECT * FROM Turno WHERE idTur = @idTur)
--	UPDATE Turno SET idTueTur = @idTueTur, obsTur = @obsTur 
--		WHERE idTur = @idTur
--ELSE
--	SELECT 0 AS RESULTADO

--EXEC SP_UpdateTurno 4, 3, 'El paciente esta llamo para cancelar'


---- UPDATE PACIENTE
--CREATE PROC SP_UpdatePaciente (
--	@idPac paciente,
--	@nombrePac varchar(50),
--	@priApellidoPac varchar(50),
--	@segApellidoPac varchar(50)='',
--	@domicilioPac varchar(50),
--	@idPaiPac pais,
--	@telefonoPac varbinary(20)=NULL,
--	@emailPac varchar(30),
--	@obsPac observacion = ''
--)

--AS
--SET NOCOUNT ON

--IF EXISTS(SELECT * FROM Paciente WHERE idPac = @idPac)
--	UPDATE Paciente SET 
--		nombrePac = @nombrePac,
--		priApellidoPac = @priApellidoPac,
--		segApellidoPac = @segApellidoPac,
--		domicilioPac = @domicilioPaC,
--		idPaiPac = @idPaiPac,
--		telefonoPac = @telefonoPac,
--		emailPac = @emailPac,
--		obsPac = @obsPac
--		WHERE idPac = @idPac
--ELSE
--	SELECT 0 AS RESULTADO

--EXEC SP_UpdatePaciente 9, 'Jorge', 'Lopez', 'Nuñez', 'calle 1', 'PER', NULL, 'jorgelp@mail.com', ''


---- ELIMINAR TURNO
--CREATE PROC SP_DeleteTurno (
--	@idTur turno
--)
--AS
--SET NOCOUNT ON

--IF EXISTS(SELECT * FROM Turno WHERE idTur = @idTur) BEGIN
--	DELETE FROM TurnoPaciente WHERE idTurTup = @idTur
--	DELETE FROM Turno WHERE idTur = @idTur
--END
--ELSE
--	SELECT 0 AS RESULTADO

--EXEC SP_DeleteTurno 8 