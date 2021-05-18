

use music;
CREATE TABLE Auteur(
    idAuteur INT NOT NULL AUTO_INCREMENT,
    nom TEXT NOT NULL,
    PRIMARY KEY (idAuteur)
);
CREATE TABLE Genre(
    idGenre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL
    
    
);
CREATE TABLE Titre(
    idTitre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre TEXT NOT NULL

    
);

CREATE TABLE AuTit(
    idTitre INT NOT NULL,
    idGenre INT NOT NULL,
    PRIMARY KEY (idGenre,idTitre)
);
