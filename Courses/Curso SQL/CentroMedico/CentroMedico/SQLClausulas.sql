SELECT TOP 10 * FROM Paciente;

SELECT * FROM Paciente 
	ORDER BY fechaNacimientoPac DESC;

-- La menos reciente, por default ASC
SELECT TOP 1 * FROM Paciente 
	ORDER BY fechaNacimientoPac;

-- Muestra los elementos unicos de esa columna
SELECT DISTINCT idPaiPac FROM Paciente;

-- Nos permite añadir funciones de agregado
SELECT idPaiPac, COUNT(idPaiPac) as number FROM Paciente 
	GROUP BY idPaiPac;

-- Buscar de acuerdo a una caracteristica
SELECT * FROM Paciente
	WHERE idPaiPac = 'PER';

SELECT * FROM Paciente
	WHERE priApellidoPac = 'Paredes';

SELECT * FROM Paciente
	WHERE fechaNacimientoPac = '2019-02-18';

SELECT * FROM Pago
	ORDER BY fechaPag;

SELECT TOP 1 * FROM Paciente
	ORDER BY fechaNacimientoPac DESC;