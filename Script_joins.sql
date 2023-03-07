create schema hamilton;

use hamilton;

-- drop table estudiantes;


create table equipos (
	equipo_id INTEGER primary key auto_increment not null,
	nombre_proyecto VARCHAR(30),
	integrantes INTEGER
);

create table estudiantes (
	estudiante_id  INTEGER auto_increment not null,
	nombre VARCHAR(15),
	apellido VARCHAR(15),
	equipo_id INTEGER,
 	primary key (estudiante_id),
 	foreign key (equipo_id) references equipos (equipo_id)
); 



-- Creación
insert into equipos (nombre_proyecto, integrantes) values ("Carnet de mascotas", 5),
("Scroom", 5),
("Fenoseri", 5),
("Codigo Felipito", 5),
("Femcode", 5),
("Contigo Aprendo", 5),
("Chicas Superpoderosas", 5),
("Tierra de Estrellas", 5)
;

insert into estudiantes (nombre, apellido, equipo_id) values ("Brandon", "López", 3),
("Camila", "Berríos", 8),
("Carolina", "Zúñiga", 5),
("Daniela", "Corral", 1),
("Daniela",	"Gómez", 1),
("Daniela", "Rivas", 8),
("Danissa", "Caballero", 6),
("Diana", "Gutiérrez", 3),
("Diego", "Álvarez", 8),
("Diego", "Pérez", 2),
("Elvis", "Pérez", 4),
("Fabián", "Tobar", 3),
("Fabián", "Zúñiga", 8),
("Felipe", "Bray", 7),
("Felipe", "Mandiola", 4),
("Felipe", "Messina", 6),
("Fernanda", "Bahamondes", 3),
("Francis", "Vergara", 2),
("Gissele", "Gatica", 7),
("Isabella", "Parry", 2),
("Javiera", "Muñóz", 8),
("Javiera", "Sepúlveda", 5),
("Jesús", "Garland", 4),
("Juan Pablo", "Mora", 7),
("Juan Pablo", "Rivas", 7),
("Karen", "Rodríguez", 7),
("Lorenzo", "Fachinetti", 3),
("María", "Pino", 2),
("María José", "Paillavil", 6),
("Nicolás", "Aravena", 1),
("Sebastián", "Castillo", 6),
("Seigi", "Gim", 5),
("Susana", "Henríquez", 1),
("Tamara", "Aguilar", 4),
("Valeria", "Álvarez", 4),
("Víctor", "Caro", 5),
("Yago", "Ellen", 2),
("Yatamis", "Spolman", 1),
("Yerko", "Medina", 5),
("Yesenia", "Quiroz", 6)

;


insert into estudiantes (nombre, apellido) values ("Alejandro", "Heredia");
insert into equipos (nombre_proyecto, integrantes) values ("Equipo x", 5);

select * from estudiantes;
select * from equipos;

SELECT estudiantes.nombre, estudiantes.apellido, equipos.nombre_proyecto
FROM estudiantes RIGHT JOIN equipos ON estudiantes.equipo_id = equipos.equipo_id;

SELECT estudiantes.nombre, estudiantes.apellido, equipos.nombre_proyecto
FROM estudiantes LEFT JOIN equipos ON estudiantes.equipo_id = equipos.equipo_id;

SELECT estudiantes.nombre, estudiantes.apellido, equipos.nombre_proyecto
FROM estudiantes JOIN equipos ON estudiantes.equipo_id = equipos.equipo_id;

#Para obtener los datos nulos de alguna tabla se ocupa en el where el is null
SELECT estudiantes.nombre, estudiantes.apellido, equipos.nombre_proyecto
FROM estudiantes LEFT JOIN equipos ON estudiantes.equipo_id = equipos.equipo_id
WHERE estudiantes.equipo_id IS NULL;

SELECT estudiantes.nombre, estudiantes.apellido, equipos.nombre_proyecto
FROM estudiantes RIGHT JOIN equipos ON estudiantes.equipo_id = equipos.equipo_id
WHERE estudiantes.nombre is null;