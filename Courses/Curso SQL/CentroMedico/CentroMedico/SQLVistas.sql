--SELECT * FROM PacientesTurnosCancelados
--SELECT * FROM VistaPrueba
---- Se trabaja con la vista como si fuera una tabla más

--CREATE VIEW PacientesTurnosCancelados AS
--	SELECT P.idPac, P.nombrePac, P.priApellidoPac, T.idTur, T.idTueTur FROM Paciente P
--	INNER JOIN TurnoPaciente TP 
--	ON TP.idPacTup = P.idPac
--	INNER JOIN Turno T
--	ON T.idTur = TP.idTurTup
--	WHERE isnull(T.idTueTur,0) = 3

--CREATE VIEW VIEW_MedicosEspecialidades AS
--SELECT M.idMed, M.nombreMed, M.priApellidoMed, ME.desMee Especialidad FROM Medico M
--INNER JOIN MedicoEspecialidad ME
--ON ME.idMedMee = M.idMed
