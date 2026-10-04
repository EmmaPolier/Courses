select * from paciente

-- TRANSACTION OR TRAN
BEGIN TRAN
	UPDATE Paciente SET emailPac = 'nuevo@mail'  WHERE priApellidoPac LIKE 'M%'
	
	if @@ROWCOUNT = 1
		COMMIT TRAN
	ELSE
		ROLLBACK TRAN

BEGIN TRAN
	DELETE FROM Turno WHERE idTueTur = 1
	
	if @@ROWCOUNT = 1
		COMMIT TRAN
	ELSE
		ROLLBACK TRAN