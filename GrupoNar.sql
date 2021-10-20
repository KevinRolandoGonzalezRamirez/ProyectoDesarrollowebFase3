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