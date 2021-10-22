create database grupoNar;

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