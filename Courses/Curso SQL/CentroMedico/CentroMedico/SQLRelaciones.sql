ALTER TABLE Paciente DROP CONSTRAINT IF EXISTS FK_Paciente_Pais;
ALTER TABLE Turno DROP CONSTRAINT IF EXISTS FK_Turno_TurnoEstado;
ALTER TABLE Pago DROP CONSTRAINT IF EXISTS FK_Pago_Concepto;
ALTER TABLE PagoPaciente DROP CONSTRAINT IF EXISTS FK_PagoPaciente_Pago;
ALTER TABLE PagoPaciente DROP CONSTRAINT IF EXISTS FK_PagoPaciente_Paciente;
ALTER TABLE PagoPaciente DROP CONSTRAINT IF EXISTS FK_PagoPaciente_Turno;
ALTER TABLE TurnoPaciente DROP CONSTRAINT IF EXISTS FK_TurnoPaciente_Turno;
ALTER TABLE TurnoPaciente DROP CONSTRAINT IF EXISTS FK_TurnoPaciente_Paciente;
ALTER TABLE TurnoPaciente DROP CONSTRAINT IF EXISTS FK_TurnoPaciente_Medico;
ALTER TABLE MedicoEspecialidad DROP CONSTRAINT IF EXISTS FK_MedicoEspecialidad_Medico;
ALTER TABLE MedicoEspecialidad DROP CONSTRAINT IF EXISTS FK_MedicoEspecialidad_Especialidad;
ALTER TABLE HistoriaPaciente DROP CONSTRAINT IF EXISTS FK_HistoriaPaciente_Historia;
ALTER TABLE HistoriaPaciente DROP CONSTRAINT IF EXISTS FK_HistoriaPaciente_Paciente;
ALTER TABLE HistoriaPaciente DROP CONSTRAINT IF EXISTS FK_HistoriaPaciente_Medico;
ALTER TABLE Pago DROP CONSTRAINT IF EXISTS FK_Pago_PagoEstado;

ALTER TABLE Paciente
ADD CONSTRAINT FK_Paciente_Pais 
FOREIGN KEY (idPaiPac) REFERENCES Pais(idPai)
GO

ALTER TABLE Turno
ADD CONSTRAINT FK_Turno_TurnoEstado
FOREIGN KEY (idTueTur) REFERENCES TurnoEstado(idTue)
GO

ALTER TABLE Pago
ADD CONSTRAINT FK_Pago_Concepto
FOREIGN KEY (idConPag) REFERENCES Concepto(idCon)
GO

ALTER TABLE Pago
ADD CONSTRAINT FK_Pago_PagoEstado
FOREIGN KEY (idPaePag) REFERENCES PagoEstado(idPae)
GO

ALTER TABLE PagoPaciente
ADD CONSTRAINT FK_PagoPaciente_Pago
FOREIGN KEY (idPagPap) REFERENCES Pago(idPag)
GO

ALTER TABLE PagoPaciente
ADD CONSTRAINT FK_PagoPaciente_Paciente
FOREIGN KEY (idPacPap) REFERENCES Paciente(idPac)
GO

ALTER TABLE PagoPaciente
ADD CONSTRAINT FK_PagoPaciente_Turno
FOREIGN KEY (idTurPap) REFERENCES Turno(idTur)
GO

ALTER TABLE TurnoPaciente
ADD CONSTRAINT FK_TurnoPaciente_Turno
FOREIGN KEY (idTurTup) REFERENCES Turno(idTur)
GO

ALTER TABLE TurnoPaciente
ADD CONSTRAINT FK_TurnoPaciente_Paciente
FOREIGN KEY (idPacTup) REFERENCES Paciente(idPac)
GO

ALTER TABLE TurnoPaciente
ADD CONSTRAINT FK_TurnoPaciente_Medico
FOREIGN KEY (idMedTup) REFERENCES Medico(idMed)
GO

ALTER TABLE MedicoEspecialidad
ADD CONSTRAINT FK_MedicoEspecialidad_Medico
FOREIGN KEY (idMedMee) REFERENCES Medico(idMed)
GO

ALTER TABLE MedicoEspecialidad
ADD CONSTRAINT FK_MedicoEspecialidad_Especialidad
FOREIGN KEY (idMedMee) REFERENCES Especialidad(idEsp)
GO

ALTER TABLE HistoriaPaciente
ADD CONSTRAINT FK_HistoriaPaciente_Historia
FOREIGN KEY (idHisHip) REFERENCES Historia(idHis)
GO

ALTER TABLE HistoriaPaciente
ADD CONSTRAINT FK_HistoriaPaciente_Paciente
FOREIGN KEY (idPacHip) REFERENCES Paciente(idPac)
GO

ALTER TABLE HistoriaPaciente
ADD CONSTRAINT FK_HistoriaPaciente_Medico
FOREIGN KEY (idMedHip) REFERENCES Medico(idMed)
GO
