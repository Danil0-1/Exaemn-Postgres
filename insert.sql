

INSERT INTO clientes (nombre, apellidos, email, telefono) VALUES
('Ana', 'Martínez', 'ana.martinez@email.com', '3101234567'),
('Carlos', 'Gómez', 'carlos.gomez@email.com', '3157654321'),
('Laura', 'Torres', 'laura.torres@email.com', '3009876543'),
('Juan', 'Gomez', 'juangomez@email.com', '302039494'),
('Danilo', 'Muskus', 'danilomuskus@email.com', '3029884392'),
('Diego', 'Vargas', 'diegovargas@email.com', '302938482'),
('Nicolas', 'Muskus', 'nicolasmuskus@email.com', '302938485'),
('Sara', 'Zambrano', 'sarazambrano@email.com', '304857382'),
('Pepita', 'Peras', 'pepitaperas@email.com', '302984982'),
('Adrian', 'Ruiz', 'adrianruiz@email.com', '30283748'),
('Dante', 'Perez', 'danteperez@email.com', '302843792'),
('Zeros', 'Peras', 'zerosperas@email.com', '302048852'),
('Valeria', 'Gomez', 'valeriagomez@email.com', '302938423'),
('Emily', 'Baez', 'emilibaez@email.com', '3102848492'),
('Pedro', 'Martinez', 'pedromartinez@email.com', '30492994');


INSERT INTO proveedores (nombre, apellidos, email, telefono) VALUES
('Diega', 'Vergas', 'diegavergas@email.com', '30291023'),
('Sebastiam', 'Lopez', 'sebastianlopez@email.com', '30198392'),
('Pepito', 'Perez', 'pepitoperez@email.com', '30291023'),
('Kevin', 'Trago', 'kevintrago@email.com', '320828438'),
('Camilia', 'Diaz', 'camiladiaz@email.com', '3020939344'),
('Venitas', 'Camelas', 'venitascamelas@email.com', '39293848'),
('Pepito', 'Perez', 'pepitoperez@email.com', '30291023'),
('Sebastiam', 'Lopez', 'sebastianlopez@email.com', '30198392'),
('Pepito', 'Perez', 'pepitoperez@email.com', '30291023'),
('Sebastiam', 'Lopez', 'sebastianlopez@email.com', '30198392'),
('Pepito', 'Perez', 'pepitoperez@email.com', '30291023'),
('Sebastiam', 'Lopez', 'sebastianlopez@email.com', '30198392'),
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