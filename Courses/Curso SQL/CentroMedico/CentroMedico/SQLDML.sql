
--SELECT * FROM Paciente;

--UPDATE Paciente SET obsPac = 'Sin observacion';
--UPDATE Paciente SET domicilioPac = 'Piedras 2056'
--	WHERE idPac = 2;

--DELETE FROM Paciente
--	WHERE idPac = 10;

--DELETE FROM TurnoPaciente
--	WHERE idPacTup = 9;
--DELETE FROM Paciente
--	WHERE idPac = 9
--DELETE FROM Turno
--	WHERE idTur = 6;


---- FUNCIONES DE AGREGADO
--SELECT * FROM Pago;

---- MIN & MAX
--SELECT MAX(fechaPag) FROM Pago;
--SELECT MIN(fechaPag) FROM Pago;
--SELECT MIN(montoPag) FROM Pago;

---- SUM
--SELECT SUM(montoPag) + 20 as Total FROM Pago;

---- AVG
--SELECT AVG(montoPag + 75) as Promedio FROM Pago;

---- COUNT
--SELECT COUNT(*) FROM Paciente;
--SELECT COUNT(idPac) FROM Paciente
--	WHERE priApellidoPac = 'Torres';

--SELECT * FROM Turno;

---- HAVING
--SELECT idTueTur FROM Turno
--	GROUP BY idTueTur
--	HAVING COUNT(idTueTur) = 6;


---- OPERADORES LOGICOS
--SELECT * FROM Paciente;
---- AND
--SELECT * FROM Paciente
--	WHERE priApellidoPac = 'Paredes' AND nombrePac = 'Jose' AND idPac = 2;

---- OR
--SELECT * FROM Paciente
--	WHERE priApellidoPac = 'Paredes' OR nombrePac = 'Jose' OR idPac = 2;

---- IN
--SELECT * FROM Turno 
--	WHERE idTueTur IN(2, 1, 5);
--SELECT * FROM Paciente
--	WHERE priApellidoPac IN ('Paredes', 'Torres', 'Ramírez');

---- LIKE
--SELECT * FROM Paciente
--	WHERE nombrePac LIKE '%or%';

---- NOT
--SELECT * FROM Paciente
--	WHERE nombrePac NOT LIKE '%a%'
--	AND nombrePac NOT LIKE '%o%';
--SELECT * FROM Paciente
--	WHERE priApellidoPac NOT IN ('Paredes', 'Torres', 'Ramírez');

---- BETWEEN
--SELECT * FROM Turno
--	WHERE fechaTur BETWEEN '2026-07-29 12:00' AND '2026-07-30 13:00';
--SELECT * FROM Turno
--	WHERE idTueTur BETWEEN 1 AND 7;

---- COMBINANDO
--SELECT * FROM Paciente
--	WHERE nombrePac LIKE '%a%' AND idPaiPac = 'COL' OR idPac BETWEEN 1 AND 7;