CREATE TABLE futbolistas(
id Serial PRIMARY KEY,
nombre text NOT NULL,
apellido text NOT NULL,
edad int NOT NULL,
posicion varchar(30),
idEquipo INT
);
--MUESTRA TABLA CREADA
SELECT * FROM  futbolistas;
--INGRESA VALORES A LOS CAMPOS
INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Cristiano','Ronaldo',33,'Delantero' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Neymar','Da Silva',25,'Extremo Izquierdo' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Antonio','Valencia',32,'Medio Campista Derecho' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Hernan','Barcos',31,'Delantero' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Zlatan','Ibrahimovic',31,'Delantero' );

--TABLA EQUIPOS DONDE JUGARON

CREATE TABLE equipos(
id Serial PRIMARY KEY,
nombreEquipo text NOT NULL,
pais text NOT NULL
);

--INGRESAS REGISTROS
INSERT INTO equipos(nombreEquipo,pais)
VALUES ('Manchester United','Inglaterra' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('FC Barcelona','España' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('PSG','Francia' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('Liga de Quito','Ecuador' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('Real Madrid','España' );

--CREACION DE LLAVE FORANEA
ALTER TABLE futbolistas ADD  FOREIGN KEY (idEquipo) REFERENCES equipos(id);

--HACEMOS LA RELACION CORRESPONDIENTE  REFERENTE A LOS REGISTROS
 UPDATE futbolistas SET idEquipo = 1 WHERE id=3
 UPDATE futbolistas SET idEquipo = 2 WHERE id=2
 UPDATE futbolistas SET idEquipo = 3 WHERE id=1
 UPDATE futbolistas SET idEquipo = 4 WHERE id=4
 UPDATE futbolistas SET idEquipo = 5 WHERE id=1
 UPDATE futbolistas SET idEquipo = 1 WHERE id=5

--VISUALIZAMOS LA RELACION  REALIZADA
SELECT futbolistas.nombre, futbolistas.apellido,equipos.nombreequipo
FROM futbolistas INNER JOIN equipos 
ON futbolistas.idequipo= equipos.id; 


Select * from equipos;
Select * from futbolistas;
