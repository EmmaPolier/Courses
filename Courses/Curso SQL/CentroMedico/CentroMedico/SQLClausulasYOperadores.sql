--SELECT TOP 10 * FROM Paciente;

--SELECT * FROM Paciente 
--	ORDER BY fechaNacimientoPac DESC;

---- La menos reciente, por default ASC
--SELECT TOP 1 * FROM Paciente 
--	ORDER BY fechaNacimientoPac;

---- Muestra los elementos unicos de esa columna
--SELECT DISTINCT idPaiPac FROM Paciente;

---- Nos permite añadir funciones de agregado
--SELECT idPaiPac, COUNT(idPaiPac) as number FROM Paciente 
--	GROUP BY idPaiPac;

---- Buscar de acuerdo a una caracteristica
--SELECT * FROM Paciente
--	WHERE idPaiPac = 'PER';

--SELECT * FROM Paciente
--	WHERE priApellidoPac = 'Paredes';

--SELECT * FROM Paciente
--	WHERE fechaNacimientoPac = '2006-11-18';

-- OPERADORES ARITMETICOS
DECLARE @num1 decimal(9,2) = 20
DECLARE @num2 decimal(9,2) = 30
DECLARE @result decimal(9,2)

SET @result = @num1 + @num2
PRINT @result

SET @result = @num1 - @num2
PRINT @result

SET @result = @num1 / @num2
PRINT @result

SET @result = @num1 * @num2
PRINT @result

SET @result = @num2 % @num1
PRINT @result

DECLARE @string1 VARCHAR(20) = 'Hola me llamo'
DECLARE @string2 VARCHAR(20) = 'Emmanuel'
DECLARE @resultStr VARCHAR(40)

SET @resultStr = @string1 + ' ' + @string2
PRINT @resultStr

IF @num2 > @num1 PRINT 'El mayor es num2'
IF @num2 < @num1 PRINT 'El mayor es num1'
IF @num2 <> @num1 PRINT 'Son diferentes'
IF @num2 >= @num1 PRINT 'El mayor o igual es num2'
IF @num2 <= @num1 PRINT 'El mayor o igual es num1'