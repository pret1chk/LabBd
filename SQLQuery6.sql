SELECT * FROM clientes
SELECT * FROM activo
SELECT * FROM contrato
SELECT * FROM direccion
SELECT * FROM renter
SELECT * FROM venta

/**Select simples**/
SELECT * FROM monitor
WHERE marca = 'acer'
and especificaciones = 'con detalles'
SELECT * FROM impresora
WHERE marca = 'hp'
and especificacion = 'sin detalles'
SELECT * FROM desktop
WHERE es_ram = '8gb ddr3'
SELECT * FROM laptop
WHERE marca = 'asus'
SELECT * FROM servidor
WHERE es_cpu = 'i7-7700'

/**FUNCIONES AGREGADAS**/

SELECT COUNT(*) FECHAS, MIN(date_inicio) AS Fecha_Min, MAX(date_inicio) AS FechaMax
	FROM venta
SELECT COUNT(*) id_renter , MAX(date_ingreso) AS FechaMax
	FROM renter
SELECT COUNT(*) FECHAS, MIN(date_fin) AS Fecha_Min, MAX(date_fin) AS FechaMax
	FROM contrato
SELECT id_activos as ID,statusEQ as ESTATUS
	FROM activo
	where statusEQ = 'dañado'
order by add_desktop
  select * 
	from activo
order by statusEQ asc, id_code desc

/** Dado que no tengo tuplas con atributos numericos no puedo realizar ordenamientos con having**/

SELECT TOP 10 *
  FROM desktop
 ORDER BY es_cpu ASC
 SELECT TOP 5 *
  FROM LAPTOP
 ORDER BY es_cpu ASC
 SELECT TOP 10 *
  FROM servidor
 ORDER BY es_dd ASC
 SELECT TOP 10 *
  FROM desktop
 ORDER BY es_cpu ASC
 select top 3 * 
 from impresora
 order by model asc
