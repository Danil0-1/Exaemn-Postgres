-- Active: 1755775500086@@127.0.0.1@5432


--- 1️⃣ Listar los productos con stock menor a 5 unidades.

SELECT id_producto, nombre, stock 
FROM productos
WHERE stock < 5;

--- 2️⃣ Calcular ventas totales de un mes específico.

FROM ventas SELECT SUM (total) AS total_de_ventas
WHERE DATE_PART ('month')  = 3

--- 3️⃣ Obtener el cliente con más compras realizadas.

FROM ventas SELECT c.id_cliente, c.nombre, c.apellido, COUNT(ventas.id_venta) AS todas_las_compras
FROM clientes AS c
JOIN ventas ON c.id_cliente = ventas.id_cliente
GROUP BY c.id_cliente c.nombre, c.apellido
GROUP BY todas_las_compras DESC LIMIT 1;

--- 4️⃣ Listar los productos más vendidos.

SELECT p.id_producto, p.nombre, COUNT (venta.id_venta) AS total_de_ventas
FROM productos AS p
JOIN ventas ON p.id_producto = ventas.id_producto
GROUP BY p.id_producto, p.nombre 
ORDER BY total_de_ventas DESC LIMIT 5;

--- 5️⃣ Consultar ventas realizadas en un rango de fechas.

SELECT v.id_venta, v.fecha, c.nombre || ' ' || c.apellidos AS cliente, p.nombre AS producto, v.total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN productos p ON v.id_producto = p.id_producto 
WHERE v.fecha BETWEEN '2025-01-01' AND '2025-03-31'
ORDER BY v.fecha;


--- 6️⃣ Identificar clientes que no han comprado en los últimos 6 meses.

SELECT c.id_cliente, c.nombre, c.apellido, c.email
FROM clientes c 
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente 
WHERE v.id_venta IS NULL 
    OR v.fecha < (CURRENT_DATE - INTERVAL '6 months');
