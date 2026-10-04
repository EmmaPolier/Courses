DROP TABLE IF EXISTS Pais;
DROP TABLE IF EXISTS Paciente;
DROP TABLE IF EXISTS Medico;
DROP TABLE IF EXISTS Historia;
DROP TABLE IF EXISTS HistoriaPaciente;
DROP TABLE IF EXISTS TurnoEstado;
DROP TABLE IF EXISTS Turno;
DROP TABLE IF EXISTS TurnoPaciente;
DROP TABLE IF EXISTS Especialidad;
DROP TABLE IF EXISTS Concepto;
DROP TABLE IF EXISTS PagoEstado;
DROP TABLE IF EXISTS Pago;
DROP TABLE IF EXISTS PagoPaciente;
DROP TABLE IF EXISTS MedicoEspecialidad;

DROP TYPE IF EXISTS paciente;
DROP TYPE IF EXISTS medico;
DROP TYPE IF EXISTS turno;
DROP TYPE IF EXISTS pais;
DROP TYPE IF EXISTS pago;
DROP TYPE IF EXISTS especialidad;
DROP TYPE IF EXISTS historia;
DROP TYPE IF EXISTS observacion;
DROP TYPE IF EXISTS descripcion;
GO

CREATE TYPE paciente FROM int NOT NULL;
CREATE TYPE medico FROM int NOT NULL;
CREATE TYPE turno FROM int NOT NULL;
CREATE TYPE pais FROM char(3) NOT NULL;
CREATE TYPE pago FROM int NOT NULL;
CREATE TYPE especialidad FROM int NOT NULL;
CREATE TYPE historia FROM int NOT NULL;
CREATE TYPE observacion FROM varchar(300) NULL;
CREATE TYPE descripcion FROM varchar(100) NOT NULL;
GO

CREATE TABLE Paciente(
	idPac paciente IDENTITY(1,1),
	nombrePac varchar(50) NOT NULL,
	priApellidoPac varchar(50) NOT NULL,
	segApellidoPac varchar(50) NULL,
	fechaNacimientoPac date NOT NULL,
	domicilioPac varchar(50) NOT NULL,
	idPaiPac pais,
	telefonoPac varbinary(20) NULL,
	emailPac varchar(30) NOT NULL,
	obsPac observacion,
	CONSTRAINT PK_idPac PRIMARY KEY (idPac),
);

CREATE TABLE Medico (
	idMed medico IDENTITY(1,1), 
	nombreMed varchar(50) NOT NULL,
	priApellidoMed varchar(50) NOT NULL,
	segApellidoMed varchar(50) NULL,
	CONSTRAINT PK_idMed PRIMARY KEY (idMed),
);

CREATE TABLE Pais( 
	idPai pais,
	nombrePai varchar(30) NOT NULL,
	CONSTRAINT PK_idPai PRIMARY KEY (idPai),
);

CREATE TABLE Historia ( 
	idHis historia IDENTITY(1,1),
	fechaHis datetime NOT NULL,
	obsHis observacion,
	CONSTRAINT PK_idHistoria PRIMARY KEY (idHis),
);

CREATE TABLE HistoriaPaciente ( 
	idHisHip historia,
	idPacHip paciente,
	idMedHip medico,
	CONSTRAINT PK_Historia PRIMARY KEY (idHisHip, idPacHip, idMedHip),
);

CREATE TABLE Turno (
	idTur turno IDENTITY(1,1),
	fechaTur datetime NOT NULL,
	idTueTur smallint NOT NULL,
	obsTur observacion,
	CONSTRAINT PK_idTur PRIMARY KEY (idTur),
)

CREATE TABLE TurnoPaciente (
	idTurTup turno,
	idPacTup paciente,
	idMedTup medico,
	CONSTRAINT PK_TurnoPaciente PRIMARY KEY (idTurTup, idPacTup, idMedTup),
)

CREATE TABLE TurnoEstado (
	idTue smallint IDENTITY(1,1),
	desTue descripcion,
	CONSTRAINT PK_idTue PRIMARY KEY (idTue),
)

CREATE TABLE Especialidad (
	idEsp especialidad IDENTITY(1,1),
	EspEsp varchar(50) NOT NULL,
	CONSTRAINT PK_idEsp PRIMARY KEY (idEsp),
)

CREATE TABLE MedicoEspecialidad (
	idMedMee medico,
	idEspMee especialidad,
	desMee descripcion,
	CONSTRAINT PK_MedicoEspecialidad PRIMARY KEY (idMedMee, idEspMee),
)

CREATE TABLE PagoEstado (
	idPae smallint IDENTITY(1,1),
	desPae descripcion,
	CONSTRAINT PK_idPae PRIMARY KEY (idPae),
)

CREATE TABLE Pago (
	idPag pago IDENTITY(1,1),
	idConPag tinyint NOT NULL,
	fechaPag datetime NOT NULL,
	montoPag money NOT NULL,
	idPaePag smallint NOT NULL,
	obsPag observacion,
	CONSTRAINT PK_idPag PRIMARY KEY (idPag),
)

CREATE TABLE PagoPaciente (
	idPagPap pago,
	idPacPap paciente,
	idTurPap turno,
	CONSTRAINT PK_PagoPaciente PRIMARY KEY (idPagPap, idPacPap, idTurPap),
)

CREATE TABLE Concepto (
	idCon tinyint IDENTITY(1,1),
	desCon descripcion,
	CONSTRAINT PK_idCon PRIMARY KEY (idCon),
)
