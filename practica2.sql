CREATE DATABASE IF NOT EXISTS star_wars;

USE star_wars;


CREATE TABLE Actores(

Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(40),
Fecha DATE,
Nacionalidad VARCHAR(20)
);

CREATE TABLE Personajes(

CodigoPersonaje INTEGER AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(30),
Raza VARCHAR(20),
Grado VARCHAR(20),
CodigoActor INTEGER REFERENCES Actores(Codigo),
CodigoSuperior INTEGER REFERENCES Personajes(CodigoPersonaje)
);

CREATE TABLE Planetas(

Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
Galaxia VARCHAR(40),
Nombre  VARCHAR(30)
 );

CREATE TABLE Peliculas(
 
Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(40),
Director VARCHAR(30),
Anyo YEAR
 );

CREATE TABLE PersonajesPeliculas(

CodigoPersonajes INTEGER REFERENCES Personajes(CodigoPersonaje),
CodigoPeliculas  INTEGER REFERENCES Peliculas(Codigo)
);

CREATE TABLE Visitas(
 
CodigoNaves INTEGER REFERENCES Naves(Codigo),
CodigoPlanetas INTEGER REFERENCES Planetas(Codigo),
CodigoPeliculas INTEGER REFERENCES Peliculas(Codigo)
);

CREATE TABLE Naves(

Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
NumeroTripulantes INTEGER,
Nombre VARCHAR(40)
);




INSERT INTO Actores(Nombre, Fecha, Nacionalidad) VALUES('Ewan McGregor', '1971-03-31', 'Escocia'), ('Natalie Portman', '1981-06-09', 'Israel'), ('Kenny Baker', '1934-08-24', 'Inglaterra'), ('Samuel L. Jackson', '1948-12-21', 'Estados Unidos'), ('Jake Lloyd', '1989-03-05', 'Estados Unidos');

INSERT INTO Personajes(Nombre, Raza, Grado, CodigoActor, CodigoSuperior) VALUES('Anakin Skywalker', 'Humano Cyborg', 'Padawan', 5, 1), ('Obi-Wan Kenobi', 'Humano', 'Jedi', 1, 1), ('Padme Amidala', 'Humano'  ,'Reina', 2, 1), ('R2-D2', 'Droide', 'Droide astromecanico', 3, 1), ('Mace Windu', 'Humano', 'Jedi', 4, 1); 

INSERT INTO Planetas(Galaxia, Nombre) VALUES('La galaxia', 'Tatooine'), ('Galaxia yuuzhan vong', 'Yuuzhan tar' ), ('La galaxia', 'Corulag' ), ('La galaxia', 'Dantooine' ), ('La galaxia', 'Geonosis');

INSERT INTO Peliculas(Titulo, Director, Anyo) VALUES('Episodio I - La amenaza fantasma', 'George Lucas', 1999), ('Episodio II - El ataque de los clones', 'George Lucas', 2002), ('Episodio III - La venganza de los Sith', 'George Lucas', 2005), ('Episodio IV - Una nueva esperanza', 'George Lucas', 1977), ('Episodio V - El imperio contraataca', 'Irvin Kershner', 1980);

INSERT INTO PersonajesPeliculas VALUES(1, 1), (2, 2), (3, 2), (4, 5), (5, 3);

INSERT INTO Visitas VALUES(1, 5, 2), (2, 4, 5), (3, 3, 4), (4, 2, 3), (5, 1, 1);

INSERT INTO Naves(NumeroTripulantes, Nombre) VALUES( 50000,'Ejecutor'), (1 ,'Caza estelar TIE'), (90000 ,'Superdestructor Estelar'), (2, 'Carguero Ligero YT-2400'), (1, 'Opresor TIE');
