--ALTER PROC SP_TurnosPaciente(
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