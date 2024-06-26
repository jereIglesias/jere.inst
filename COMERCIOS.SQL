-- SCRIPT DE SQL

-- Crear la base de datos
CREATE DATABASE kiosco;

-- Usar la base de datos
USE kiosco;

-- Crear la tabla Ckiosco
CREATE TABLE kiosco (
    kio_ID INT AUTO_INCREMENT,
    kio_NOMBRE VARCHAR(100) NOT NULL,
    kio_DIRECCION VARCHAR(255),
    PRIMARY KEY (COM_ID) -- indice
);
-- Crear la tabla Productos
CREATE TABLE PRODUCTOS (
    PRO_ID INT ,
    PRO_NOMBRE VARCHAR(100) NOT NULL,
    PRO_PRECIO DECIMAL(10, 2) NOT NULL,
    PRO_kio_ID INT,
    PRIMARY KEY (PRO_ID),
    FOREIGN KEY (PRO_kio_ID) REFERENCES kiosco(COM_ID)
);
-- Crear la tabla Ventas
CREATE TABLE VENTAS (
    VEN_ID INT,
    VEN_FECHA DATE NOT NULL,
    VEN_POR_ID INT,
    Cantidad INT NOT NULL,
    PRIMARY KEY (VentaID),
    FOREIGN KEY (VEN_POR_ID) REFERENCES PRODUCTOS(PRO_ID)
);
-- Insertar datos en la tabla Comercios
INSERT INTO kiosco (COR_NOMBRE, COR_DIRECCION) VALUES 
('kiosco avenida', '111 breown');
INSERT INTO kiosco (COR_NOMBRE, COR_DIRECCION) VALUES 
('kiosco rotonda', '222 calfucura');


-- Insertar datos en la tabla Productos
INSERT INTO PRODUCTOS (PRO_NOMBRE, PRO_PRECIO, PRO_COM_ID) 
VALUES ('speed', 1.700.00, 1);
INSERT INTO PRODUCTOS (PRO_NOMBRE, PRO_PRECIO, PRO_COM_ID) 
VALUES ('oreos', 800.00, 2);
INSERT INTO PRODUCTOS (PRO_NOMBRE, PRO_PRECIO, PRO_COM_ID) 
VALUES ('doritos', 2.100.00, 1);


-- Insertar datos en la tabla Ventas
INSERT INTO VENTAS (VEN_FECHAS, VEN_PROD, VEN_CANTIDAD) 
VALUES ('2024-05-01', 1, 3);
INSERT INTO VENTAS (VEN_FECHAS, VEN_PROD, VEN_CANTIDAD) 
VALUES ('2024-05-02', 2, 2);
INSERT INTO VENTAS (VEN_FECHAS, VEN_PROD, VEN_CANTIDAD) 
VALUES ('2024-05-03', 3, 5);