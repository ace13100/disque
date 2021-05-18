-- avant de faire le use music, il aurait fallu créer la BDD ici

create database music;
use music;
CREATE TABLE Auteur(
    idAuteur INT NOT NULL AUTO_INCREMENT,
    nom TEXT NOT NULL,
    PRIMARY KEY (idAuteur)
)ENGINE=InnoDB;-- pense à mettre le moteur de chaque table, sinon il prend le moteur défaut et si c'est MYISAM, alors les FK ne marcheront pas

CREATE TABLE Genre(
    idGenre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL
    
    
    
)ENGINE=InnoDB;
CREATE TABLE Titre(
    idTitre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre TEXT NOT NULL,
    idGenre INT NOT NULL,
    foreign key (idGenre) REFERENCES genre(idGenre)
    
-- comment lier avec le genre ?
    
)ENGINE=InnoDB;

CREATE TABLE AuTit(
    idTitre INT NOT NULL,
    idAuteur INT NOT NULL,
    foreign key fk_TitAut(idTitre) REFERENCES Titre(idTitre),
    foreign key(idAuteur) REFERENCES Auteur(idAuteur)
     -- c'est pas une primary key qu'il faut mettre
    -- il manque les contraintes FK
)ENGINE=InnoDB;
