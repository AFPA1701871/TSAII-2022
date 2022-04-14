-- Création Base de données
CREATE DATABASE RangerPieces;
USE RangerPieces;

-- Création des tables
DROP TABLE IF EXISTS marque;
CREATE TABLE IF NOT EXISTS marque (
  idMarque int(11) NOT NULL AUTO_INCREMENT,
  nomMarque varchar(50) DEFAULT NULL,
  PRIMARY KEY (idMarque)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS pieces;
CREATE TABLE IF NOT EXISTS pieces (
  idPiece int(11) NOT NULL AUTO_INCREMENT,
  idType int(11) NOT NULL,
  idMarque int(11) NOT NULL,
  RefPiece varchar(50) DEFAULT NULL,
  numeroPiece int(11) DEFAULT NULL,
  PRIMARY KEY (idPiece)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS typepiece;
CREATE TABLE IF NOT EXISTS typepiece (
  idType int(11) NOT NULL AUTO_INCREMENT,
  Type varchar(50) DEFAULT NULL,
  PRIMARY KEY (idType)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- Insertion des données

INSERT INTO marque (idMarque, nomMarque) VALUES
(1, 'Non Indiqué'),
(2, 'ZALI'),
(3, 'TERN'),
(4, 'FORD');


INSERT INTO pieces (idPiece, idType, idMarque, RefPiece, numeroPiece) VALUES
(1, 1, 1, '12d45fd', 13),
(2, 2, 1, '17887d', 140),
(3, 3, 3, NULL, 56),
(4, 4, 2, '456232', 13),
(5, 5, 1, '45788', 456),
(6, 6, 4, '45sd544', NULL),
(7, 7, 3, '45sd89', 15),
(8, 7, 3, '45sd89', 18),
(9, 7, 3, '45sd89', 140);


INSERT INTO typepiece (idType, Type) VALUES
(1, 'Vanne'),
(2, 'CapteurTemperature'),
(3, 'Verrin'),
(4, 'Levier'),
(5, 'Flexible'),
(6, 'Moteur'),
(7, 'Bouchon');

ALTER TABLE pieces
  ADD CONSTRAINT FK_pieces_idMarque FOREIGN KEY (idMarque) REFERENCES marque (idMarque),
  ADD CONSTRAINT FK_pieces_idType FOREIGN KEY (idType) REFERENCES typepiece (idType);

SELECT
    CONCAT(
        UPPER(MID(`nomClient`, 1, 1)),
        LOWER(MID(`nomClient`, 2))
    ) AS NomClient
FROM
    `clients`