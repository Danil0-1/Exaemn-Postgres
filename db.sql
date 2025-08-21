-- Active: 1755775500086@@127.0.0.1@5432
-- Active: 1755775500086@@127.0.0.1@5432


CREATE TABLE clientes (
    id_cliente      SERIAL PRIMARY KEY,
    nombre          VARCHAR(40) NOT NULL,
    apellidos       VARCHAR(40) NOT NULL,
    email           VARCHAR(60) UNIQUE NOT NULL,
    telefono        VARCHAR(15)
);

CREATE TABLE proveedores (
    id_proveedor    SERIAL PRIMARY KEY,
    nombre          VARCHAR(40) NOT NULL,
    apellidos        VARCHAR(40) NOT NULL,
    email           VARCHAR(60) UNIQUE NOT NULL,
    telefono        VARCHAR(15)
);

CREATE TABLE productos (
    id_producto     SERIAL PRIMARY KEY,
    nombre          VARCHAR(50) NOT NULL,
    categoria       VARCHAR(40) NOT NULL,
    precio          NUMERIC(10,2) NOT NULL,
    stock           INT NOT NULL DEFAULT 0,
    id_proveedor    INT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor) ON DELETE CASCADE
);

CREATE TABLE ventas (
    id_venta    SERIAL PRIMARY KEY,
    fecha           DATE NOT NULL DEFAULT CURRENT_DATE,
    id_cliente      INT NOT NULL,
    id_producto     INT NOT NULL,
    total           NUMERIC(12,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto) ON DELETE CASCADE
);