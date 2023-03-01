CREATE SCHEMA generation;

USE generation;

CREATE TABLE Cliente (
	#cliente_id es un atributo de tipo integer, llave primaria
    # autoincrementable y no puede ser nula
	cliente_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(25),
    direccion VARCHAR(50),
    correo VARCHAR(50),
    medioPago VARCHAR(20),
    valoracion INTEGER,
    rutCliente VARCHAR(15)
);
CREATE TABLE Boleta(
   boleta_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
   nro_boleta BIGINT,
   fecha DATE,
   total DOUBLE
);
#como borrar una tabla
#primero eliminar las relaciones que existan con esa tabla
ALTER TABLE Boleta DROP CONSTRAINT boleta_ibfk_1; 
#luego borrar la tabla
DROP TABLE Cliente CASCADE;


# agrega una columa a la tabla
ALTER TABLE Boleta ADD cliente_id INTEGER NOT NULL;

# crea una relacion utilizando las foreign key
ALTER TABLE Boleta
ADD FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id);

#Como borrar una columna de una tabla ya creada
ALTER TABLE Cliente DROP COLUMN correo;

#renombrar una columna de una tabla ya creada
ALTER TABLE Cliente RENAME COLUMN medioPago TO medioDePago;
ALTER TABLE Cliente RENAME COLUMN cliente_id TO clienteId;

#como insertar datos
INSERT INTO Cliente (nombre, direccion, correo, medioPago, valoracion, rutCliente) 
VALUES("Isa", "calle123", "isa@gmail.com", "efectivo", 5, "15746598-9");
INSERT INTO Cliente (nombre, direccion, correo, medioPago, valoracion, rutCliente) 
VALUES("Diego", "calle124", "diego@gmail.com", "crédito", 4, "18546598-2");

#Editar datos dentro de nuestra tabla
UPDATE Cliente
SET correo = "isa2@gmail.com", medioPago = "Débito"
WHERE cliente_id = 3;

UPDATE Cliente
SET correo = "isa3@gmail.com"
WHERE rutCliente = "15746598-9";

#Eliminar
DELETE FROM Cliente WHERE cliente_id=3;

#DELETE FROM Cliente;


#Me trae todos los datos que existen en la tabla
SELECT * FROM Cliente;
#Me trae datos especificos de la tabla 
SELECT Cliente.nombre, Cliente.medioPago FROM Cliente;
