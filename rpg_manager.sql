CREATE DATABASE Rpg_manager CHARACTER SET utf8mb4;
USE Rpg_manager;
CREATE TABLE Clase (
    id_clase INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);
CREATE TABLE Personaje (
    id_personaje INT PRIMARY KEY AUTO_INCREMENT,
    id_clase INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    vida INT,
    nivel INT,
    FOREIGN KEY (id_clase) REFERENCES Clase(id_clase)
);
INSERT INTO Clase (nombre) VALUES ('Guerrero'), ('Mago');
INSERT INTO Personaje (id_clase, nombre, vida, nivel) 
VALUES (1, 'Aragorn', 100, 5);
SELECT * FROM Personaje;