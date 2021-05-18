

create database music;
-- ici il manque le charsert, la colation...
use music;
CREATE TABLE Auteur(
    idAuteur INT NOT NULL AUTO_INCREMENT,
    nom TEXT NOT NULL,
    PRIMARY KEY (idAuteur)
)ENGINE=InnoDB;

CREATE TABLE Genre(
    idGenre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL
    
    
    
)ENGINE=InnoDB;
CREATE TABLE Titre(
    idTitre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre TEXT NOT NULL,
    idGenre INT NOT NULL,
    constraint fk_titreGenre
    foreign key (idGenre) REFERENCES Genre(idGenre) -- la syntaxe FK n'est pas bonne, regarde le cours 

    
)ENGINE=InnoDB;

CREATE TABLE AuTit(
    idTitre INT NOT NULL,
    idAuteur INT NOT NULL,
	UNIQUE(idTitre, idAuteur),
    constraint fk_auttitre1
    foreign key fk_TitAut(idTitre) REFERENCES Titre(idTitre), 
    -- la syntaxe FK n'est pas bonne, regarde le cours 
    constraint fk_autTitre2
    foreign key(idAuteur) REFERENCES Auteur(idAuteur)-- la syntaxe FK n'est pas bonne, regarde le cours 
    -- unique doit être avant les FK
)ENGINE=InnoDB;
