-- avant de faire le use music, il aurait fallu créer la BDD ici

use music;
CREATE TABLE Auteur(
    idAuteur INT NOT NULL AUTO_INCREMENT,
    nom TEXT NOT NULL,
    PRIMARY KEY (idAuteur)
); -- pense à mettre le moteur de chaque table, sinon il prend le moteur défaut et si c'est MYISAM, alors les FK ne marcheront pas

CREATE TABLE Genre(
    idGenre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL
    
    
);
CREATE TABLE Titre(
    idTitre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre TEXT NOT NULL
-- comment lier avec le genre ?
    
);

CREATE TABLE AuTit(
    idTitre INT NOT NULL,
    idGenre INT NOT NULL,
    PRIMARY KEY (idGenre,idTitre) -- c'est pas une primary key qu'il faut mettre
    -- il manque les contraintes FK
);
