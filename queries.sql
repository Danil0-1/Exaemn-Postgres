

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