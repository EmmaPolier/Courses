ALTER SCHEMA Facturacion TRANSFER Pago;
ALTER SCHEMA Facturacion TRANSFER Medico;
ALTER SCHEMA Facturacion TRANSFER PagoEstado;

-- Hay que especificar a cual esquema vamos a pedir la tabla pues pertenece a dos
SELECT * FROM Facturacion.pago;
