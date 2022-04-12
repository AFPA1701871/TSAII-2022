
-- CREATION BASE
DROP DATABASE stagiaireAfpa;
CREATE DATABASE stagiaireAfpa;
USE stagiaireAfpa;

-- Creation Tables
CREATE TABLE hebergement (
    id_hebergement int(11) NOT NULL AUTO_INCREMENT, 
    libelleHebergement Varchar(50) NOT NULL,
    PRIMARY KEY(id_hebergement)
) engine = InnoDB;

CREATE TABLE stagiaire (
    id_Stagiaire int(11) NOT NULL AUTO_INCREMENT,
    NomStagiaire Varchar(50) NOT NULL,
    PrenomStagiaire Varchar(50) NOT NULL,
    id_hebergement int(11) ,
    idFormation int(11),
    PRIMARY KEY(id_Stagiaire)
);

DROP TABLE IF EXISTS formation;

CREATE TABLE IF NOT EXISTS formation (
  idFormation int(11) NOT NULL AUTO_INCREMENT,
  LibelleFormation varchar(50) NOT NULL,
  idGroupe int(11) NOT NULL,
  PRIMARY KEY (idFormation)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS groupe;

CREATE TABLE IF NOT EXISTS groupe (
  id_Groupe int(11) NOT NULL AUTO_INCREMENT,
  LibelleGroupe varchar(50) NOT NULL,
  PRIMARY KEY (id_Groupe)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Contraintes clés Etrangères
ALTER TABLE stagiaire ADD CONSTRAINT FK_Stagiaire_Hebergement FOREIGN KEY (id_hebergement) REFERENCES hebergement(id_hebergement);
ALTER TABLE stagiaire ADD CONSTRAINT FK_Stagiaire_Formation FOREIGN KEY (idformation) REFERENCES formation(idformation);
ALTER TABLE formation ADD CONSTRAINT FK_Formation_Groupe FOREIGN KEY (idGroupe) REFERENCES groupe(id_Groupe);

-- insertion données
INSERT INTO groupe  VALUES
(1, 'Informatique'),
(2, 'Automatisme'),
(3, 'Reseau');

INSERT INTO formation (idFormation, LibelleFormation, idGroupe) VALUES
(1, 'TSAII', 2),
(2, 'TRTE', 3),
(3, 'DWWM', 1);


INSERT INTO hebergement (id_hebergement, libelleHebergement) VALUES
(null, 'AFPA'),
(null, 'AUTRE');

INSERT INTO stagiaire ( NomStagiaire, PrenomStagiaire, id_hebergement, idFormation) VALUES
( 'Durand', 'Paul', 1, 1),
( 'Duval', 'Jean', 1, 2),
( 'Dupond', 'Jules', 2, 3);

-- Ajout colonne email dans stagiaire
ALTER TABLE stagiaire ADD email Varchar(50) AFTER  PrenomStagiaire;

-- Modification de données
UPDATE stagiaire
SET
    email = 'paul.durant@gmail.com',
    NomStagiaire = "DURANT"
WHERE
    stagiaire.id_Stagiaire = 1;

-- Suppression de données
DELETE FROM stagiaire 
WHERE id_Stagiaire = 1;