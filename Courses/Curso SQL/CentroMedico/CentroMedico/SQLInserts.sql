-- PAISES
INSERT INTO Pais 
VALUES ('COL', 'Colombia'),
	('ESP', 'España'),
    ('MEX', 'Mexico'),
    ('PER', 'Perú'),
    ('ARG', 'Argentina'),
    ('BRA', 'Brazil');

-- PACIENTES
INSERT INTO Paciente (nombrePac, priApellidoPac, fechaNacimientoPac, domicilioPac, idPaiPac, telefonoPac, emailPac, obsPac) 
VALUES ('Jose', 'Paredes', '1982-05-20', 'Piedras 450', 'PER', NULL, 'jose@mail.com', ''),
	('Jessica', 'Torres', '2006-11-18', 'Almendros 300', 'MEX', 6786367883, 'jess@mail.com', ''),
    ('Miguel', 'Holgin', '2019-08-12', 'Cañas 300', 'COL', 3128833372, 'migue@mail.com', ''),
	('Laura', 'Martínez', '1990-03-15', 'Flores 120', 'ARG', 1145678901, 'laura@mail.com', ''),
	('Carlos', 'Ramírez', '1985-07-22', 'Olivos 450', 'COL', 3109876543, 'carlos@mail.com', ''),
	('Ana', 'González', '2001-12-05', 'Sauces 78', 'MEX', 5512345678, 'ana@mail.com', ''),
	('Pedro', 'Suárez', '1978-09-30', 'Palmas 900', 'PER', NULL, 'pedro@mail.com', ''),
	('María', 'Fernández', '1995-04-18', 'Cedros 250', 'ESP', 987654321, 'maria@mail.com', ''),
	('Jorge', 'López', '1988-01-10', 'Nogales 600', 'COL', 3124567890, 'jorge@mail.com', ''),
	('Sofía', 'Hernández', '2003-06-25', 'Robles 320', 'MEX', 5567890123, 'sofia@mail.com', ''),
	('Andrés', 'Castro', '1992-11-11', 'Laurel 150', 'PER', NULL, 'andres@mail.com', ''),
	('Valentina', 'Morales', '1987-02-28', 'Encinos 75', 'ARG', 1123456789, 'valen@mail.com', ''),
	('Felipe', 'Ortega', '2000-08-19', 'Pinos 410', 'ESP', 987321654, 'felipe@mail.com', '');


-- ESTADOS DE TURNO
INSERT INTO TurnoEstado VALUES ('Pendiente'), ('Realizado'), ('Cancelado'), ('Rechazado'), ('Postergado'), ('Anulado'), ('Derivado');

-- MEDICOS
INSERT INTO Medico VALUES ('Esther', 'Echenique', 'Ramírez');
INSERT INTO Medico VALUES ('Stephen', 'Strange', NUll);

-- TURNOS
INSERT INTO Turno VALUES ('2026-07-29 11:00', 1, 'Paciente en ayunas');
INSERT INTO Turno VALUES ('2026-07-29 13:00', 7, 'Pago realizado');
INSERT INTO Turno VALUES ('2026-07-29 12:00', 5, 'Paciente en ayunas');
INSERT INTO Turno VALUES ('2026-07-29 10:00', 1, 'Turno pendiente de aprovación');
INSERT INTO Turno VALUES ('2026-07-29 10:00', 5, 'Turno aprovado');
INSERT INTO Turno VALUES ('2026-07-29 11:00', 1, 'Paciente en ayunas');
INSERT INTO Turno VALUES ('2026-07-29 13:00', 7, 'Pago realizado');
INSERT INTO Turno VALUES ('2026-07-29 12:00', 5, 'Paciente en ayunas');
INSERT INTO Turno VALUES ('2026-07-29 10:00', 1, 'Turno pendiente de aprovación');
INSERT INTO Turno VALUES ('2026-07-29 10:00', 5, 'Turno aprovado');
INSERT INTO Turno VALUES ('2026-07-29 10:00', 3, 'Turno aprovado');

-- TURNOS CON SU PACIENTE
INSERT INTO TurnoPaciente VALUES (2, 2, 1);
INSERT INTO TurnoPaciente VALUES (4, 3, 2);
INSERT INTO TurnoPaciente VALUES (3, 4, 2);

-- CONCEPTOS
INSERT INTO Concepto VALUES ('Laboratorio');
INSERT INTO Concepto VALUES ('Radiografía');

-- ESTADOS DE PAGO
 INSERT INTO PagoEstado VALUES ('Pago realizado'), ('Pago pendiente'), ('Pago rechazado'), ('Pago cancelado');

-- PAGOS
INSERT INTO Pago VALUES (1, '2026-07-29', 4500, 1, 'Efectivo');
INSERT INTO Pago VALUES (1, '2026-07-29', 6800, 2, 'Tarjeta');
INSERT INTO Pago VALUES (2, '2026-07-29', 5600, 2, 'Trasferencia');
INSERT INTO Pago VALUES (2, '2026-07-30', 5600, 2, 'Trasferencia');

-- PAGO CON PACIENTE
INSERT INTO PagoPaciente VALUES (1, 2, 2);
INSERT INTO PagoPaciente VALUES (2, 3, 4);
INSERT INTO PagoPaciente VALUES (3, 4, 3);

-- ESPECIALIDAD
INSERT INTO Especialidad VALUES ('Radiologo');
INSERT INTO Especialidad VALUES ('Neurocirujano');
INSERT INTO Especialidad VALUES ('Ortopeda');
INSERT INTO Especialidad VALUES ('Odontologo');

SELECT * FROM Pais;
SELECT * FROM Paciente;
SELECT * FROM TurnoEstado;
SELECT * FROM Medico;
SELECT * FROM Turno;
SELECT * FROM TurnoPaciente;
SELECT * FROM Concepto;
SELECT * FROM PagoEstado;
SELECT * FROM Pago;
SELECT * FROM PagoPaciente;

-- =============================================
-- INSERTS PARA LA TABLA: Medico
-- =============================================
-- No se inserta idMed porque es IDENTITY(1,1)
INSERT INTO Medico (nombreMed, priApellidoMed, segApellidoMed) 
VALUES 
    ('Carlos', 'Ramirez', 'Perez'),
    ('Lucia', 'Gomez', 'Mendez'),
    ('Jorge', 'Lopez', NULL),
    ('Ana', 'Martinez', 'Silva'),
    ('Roberto', 'Fernandez', 'Guzman');

-- =============================================
-- 1. INSERTS PARA LA TABLA: Especialidad
-- =============================================
INSERT INTO Especialidad (EspEsp) 
VALUES 
    ('Cardiología'),  -- Asignará idEsp = 1
    ('Pediatría'),    -- Asignará idEsp = 2
    ('Dermatología'); -- Asignará idEsp = 3

-- =============================================
-- INSERTS PARA LA TABLA: MedicoEspecialidad
-- =============================================
-- Relaciona a los médicos creados (IDs del 1 al 5) con supuestas especialidades (IDs del 1 al 3)
INSERT INTO MedicoEspecialidad (idMedMee, idEspMee, desMee) 
VALUES 
    (6, 1, 'Cardiología general y ecocardiogramas'),
    (7, 2, 'Pediatría integral'),
    (3, 1, 'Cardiología intervencionista'),
    (4, 3, 'Dermatología clínica'),
    (5, 2, 'Pediatría enfocada en neonatología');

-- =============================================
-- INSERTS PARA LA TABLA: Historia
-- =============================================
-- No se inserta idHis porque es IDENTITY(1,1)
INSERT INTO Historia (fechaHis, obsHis) 
VALUES 
    ('2023-10-15 08:30:00', 'Paciente presenta dolor de cabeza leve y fiebre desde hace 2 días. Se recomienda reposo.'),
    ('2023-10-16 10:00:00', 'Chequeo general anual. Resultados de laboratorio dentro de los parámetros normales.'),
    ('2023-10-17 14:15:00', 'Consulta por dolor articular en la rodilla derecha tras actividad física. Se solicita radiografía.'),
    ('2023-10-18 09:45:00', 'Control de presión arterial. Paciente estable pero se ajusta la medicación.'),
    ('2023-10-19 16:20:00', 'Revisión por erupción cutánea en el brazo izquierdo. Se receta pomada tópica.');

-- =============================================
-- INSERTS PARA LA TABLA: HistoriaPaciente
-- =============================================
-- Relaciona las historias creadas (IDs 1 al 5), con pacientes (Asumimos IDs del 1 al 5) y médicos.
INSERT INTO HistoriaPaciente (idHisHip, idPacHip, idMedHip) 
VALUES 
    (1, 6, 2), -- Historia 1, Paciente 1, Médico 2 (Lucia - Pediatra)
    (2, 2, 1), -- Historia 2, Paciente 2, Médico 1 (Carlos - Cardiólogo)
    (3, 3, 4), -- Historia 3, Paciente 3, Médico 4 (Ana - Dermatóloga)
    (4, 4, 3), -- Historia 4, Paciente 4, Médico 3 (Jorge - Cardiólogo)
    (5, 5, 4); -- Historia 5, Paciente 5, Médico 4 (Ana - Dermatóloga)