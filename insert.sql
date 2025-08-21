

INSERT INTO clientes (nombre, apellidos, email, telefono) VALUES
('Ana', 'Martínez', 'ana.martinez@email.com', '3101234567'),
('Carlos', 'Gómez', 'carlos.gomez@email.com', '3157654321'),
('Laura', 'Torres', 'laura.torres@email.com', '3009876543');

INSERT INTO proveedores (nombre, apellidos, email, telefono) VALUES
('Pepito', 'Perez', 'pepitoperez@email.com', '30291023'),
('Sebastiam', 'Lopez', 'sebastianlopez@email.com', '30198392'),
('Venito', 'Camela', 'venitocamela@email.com', '3027381934');

INSERT INTO productos (id_proveedor, nombre, categoria, precio, stock) VALUES
(1, 'Laptop Lenovo', 'Computador', 2500.00, 10),
(2, 'Mouse Inalámbrico', 'Mouse', 80.00, 50),
(3, 'Teclado Mecánico', 'Teclado', 150.00, 20);

INSERT INTO ventas (id_cliente, id_producto, total) VALUES
(1, 1, 2630.00),
(2, 2, 230.00);