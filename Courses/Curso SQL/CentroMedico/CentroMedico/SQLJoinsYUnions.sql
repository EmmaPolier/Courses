SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

-- INNER JOIN
SELECT TP.idPacTup, P.nombrePac, TP.idTurTup, TP.idMedTup FROM Paciente P 
INNER JOIN TurnoPaciente TP
	ON P.idPac = TP.idPacTup

-- LEFT JOIN
SELECT * FROM Paciente P 
LEFT JOIN TurnoPaciente TP
	ON P.idPac = TP.idPacTup

-- RIGHT JOIN
SELECT * FROM Paciente P 
RIGHT JOIN TurnoPaciente TP
	ON P.idPac = TP.idPacTup

/* 
-- Siempre que podamos hagamos la conexion por la primary key, sql respondera mas rapido.
-- Se aconceja que el primer campo de la clausula ON sea el de la tabla inmediata al inner
   INNER JOIN TurnoPaciente TP ON TP.idPacTup = P.idPac.
-- Siempre que podamos utilizar alias de tablas TurnoPaciente -> TP
*/

SELECT P.nombrePac, M.nombreMed, T.fechaTur FROM TurnoPaciente TP
INNER JOIN Paciente P ON P.idPac = TP.idPacTup
INNER JOIN Medico M ON M.idMed = TP.idMedTup
INNER JOIN Turno T ON T.idTur = TP.idTurTup

-- UNION Y UNION ALL
SELECT * FROM Turno WHERE idTueTur = 5
UNION 
SELECT * FROM Turno WHERE idTueTur = 1

--SELECT idTur FROM Turno WHERE idTueTur = 5
--UNION 
--SELECT idPac FROM Paciente

SELECT * FROM Turno
UNION ALL
SELECT * FROM Turno
