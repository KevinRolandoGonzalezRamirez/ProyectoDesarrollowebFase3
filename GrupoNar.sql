-- drop database grupoNar
create database grupoNar;
use grupoNar;

-- Grupo de ficitio 

-- tabla de prueba
create table prueba(
idPrueba int,
descripcion varchar(65),
primary key (idPrueba)
);

-- Grupo #0

-- Alumno
-- tabla alumnos
create table alumnos(
idAlumno int,
nombreAlumno varchar(65),

primary key(idAlumno)
);

create table materias(
idMateria int,
nombre varchar(65),

primary key (idMateria)
);

-- Grupo #1
-- Daniel Navas, Patrick Bernard, Melissa Aldana, Gabriel Coyoy, Roberto López, Sergio Argueta 
-- tabla aliado_estrategico
CREATE TABLE `aliado_estrategico` (
  `id_aliado` int(11) NOT NULL,
  `nombre_aliado` varchar(20) NOT NULL,
  `servicio` varchar(30) NOT NULL,
  `fecha_inicio_alianza` date NOT NULL,
  `fecha_fin_alianza` date NOT NULL,
  `estado_alianza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- tabla cliente
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(20) NOT NULL,
  `apellido_cliente` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `estado_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- tabla membresia
CREATE TABLE `membresia` (
  `id_membresia` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(20) NOT NULL,
  `apellido_cliente` varchar(20) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `pago_mensual` float NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado_membresia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `aliado_estrategico`
  ADD PRIMARY KEY (`id_aliado`);

ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id_membresia`),
  ADD KEY `id_cliente` (`id_cliente`);

ALTER TABLE `membresia`
  ADD CONSTRAINT `membresia_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

-- Grupo #4
-- PROVEEDORES
-- tabla marca
create table marca (
idMarca int auto_increment,
nombreMarca varchar(65),
estado int, 

primary key (idMarca)
);

-- tabla producto
create table producto(
idProducto int auto_increment,
nombre varchar(65),
descripcion varchar(65),
modelo varchar(65),
costo float,
estado int, -- 1-activo,0-Inactivo

idMarca int, -- foranea con marca
idCompra int , -- foranea con compra

primary key (idProducto)
);


-- tabla proveedor
CREATE TABLE proveedor (
    idProveedor INT AUTO_INCREMENT,
    nombre VARCHAR(15),
    tel VARCHAR(8),
    direccion VARCHAR(20),
    descripcion VARCHAR(65),
    estado TINYINT,
    
    PRIMARY KEY (idProveedor)
);

-- COMPRAS
-- tabla de compra
create table compra(
idCompra int auto_increment,
fechaCompra varchar(20),  
estado tinyint,

-- foraneas
idProveedor int, -- foranea de proveedor

primary key (idCompra)
);

-- CONSTRAINS GRUPO #4
ALTER TABLE `producto`
ADD CONSTRAINT `fk_ProductoMarca` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`);

ALTER TABLE `compra`
ADD CONSTRAINT `fk_Compraproveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);

ALTER TABLE `producto`
ADD CONSTRAINT `fk_ProductoCompra` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`idCompra`);






