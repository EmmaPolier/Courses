ALTER FUNCTION FCN_FechaTexto (@fecha datetime ) RETURNS varchar(40)
AS
BEGIN
	DECLARE @dia varchar(20)
	DECLARE @mes varchar(20)
	DECLARE @fechatexto varchar(40)

	SET @dia = (CASE WHEN DATEPART(dw, @fecha) = 1 THEN 'Domingo ' + CONVERT(char(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 2 THEN 'Lunes ' + CONVERT(char(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 3 THEN 'Martes ' + CONVERT(char(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 4 THEN 'Miercoles ' + CONVERT(char(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 5 THEN 'Jueves ' + CONVERT(char(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 6 THEN 'Viernes ' + CONVERT(char(2), DATEPART(dd, @fecha))
					WHEN DATEPART(dw, @fecha) = 7 THEN 'Sabado ' + CONVERT(char(2), DATEPART(dd, @fecha))
				END)
	
	SET @mes = (CASE WHEN DATEPART(mm, @fecha) = 1 THEN ' Enero'
					WHEN DATEPART(mm, @fecha) = 2 THEN ' Febrero'
					WHEN DATEPART(mm, @fecha) = 3 THEN ' Marzo'
					WHEN DATEPART(mm, @fecha) = 4 THEN ' Abril'
					WHEN DATEPART(mm, @fecha) = 5 THEN ' Mayo'
					WHEN DATEPART(mm, @fecha) = 6 THEN ' Junio'
					WHEN DATEPART(mm, @fecha) = 7 THEN ' Julio'
					WHEN DATEPART(mm, @fecha) = 8 THEN ' Agosto'
					WHEN DATEPART(mm, @fecha) = 9 THEN ' Septiembre'
					WHEN DATEPART(mm, @fecha) = 10 THEN ' Ocubre'
					WHEN DATEPART(mm, @fecha) = 11 THEN ' Noviembre'
					WHEN DATEPART(mm, @fecha) = 12 THEN ' Diciembre'
				END)
	
	SET @fechatexto = @dia + ' de' + @mes
	RETURN @fechatexto
END

print dbo.FCN_fechatexto ('20260816')