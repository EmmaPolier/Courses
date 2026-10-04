-- TRIGGER DE TIPO INSERT
CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT 
AS

IF (SELECT idPaiPac FROM inserted) = 'MEX'
	INSERT INTO PacienteLog (idPacPlg, idPaiPlg, fechaPlg)
		SELECT i.idPac, i.idPaiPac, GETDATE() FROM inserted i

-- TRIGGER DE TIPO UPDATE
-- Agregar un campo a PacienteLog
ALTER TABLE PacienteLog ADD fechaModPlg DATETIME

CREATE TRIGGER PacientesModificados ON Paciente
AFTER UPDATE
AS

IF EXISTS(SELECT idPacPlg FROM PacienteLog 
			WHERE idPacPlg = (SELECT idPac FROM inserted))
	UPDATE PacienteLog SET fechaModPlg = GETDATE(), fechaPlg = GETDATE()
ELSE 
	INSERT INTO PacienteLog (idPacPlg, idPaiPlg, fechaPlg, fechaModPlg)
	SELECT idPac, idPaiPac, GETDATE(), GETDATE() FROM inserted

-- Prueba
UPDATE Paciente SET segApellidoPac = 'Ramírez' 
	WHERE idPac = 15;

-- TRIGGER DE TIPO DELETE
-- Agegar un nuevo campo a la tabla PacienteLog
ALTER TABLE PacienteLog ADD fechaBajaPlg DATETIME

CREATE TRIGGER PacienteBaja ON Paciente
AFTER DELETE
AS

IF EXISTS (SELECT idPacPlg FROM PacienteLog
			WHERE idPacPlg = (SELECT idPac FROM deleted))
	UPDATE Pacientelog SET fechaBajaPlg = GETDATE()
		WHERE idPacPlg = (SELECT idPac FROM deleted)

-- Prueba
DELETE FROM Paciente WHERE idPac = 17