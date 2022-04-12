DROP DATABASE NouvelleVoiture;
CREATE DATABASE `NouvelleVoiture`;
USE NouvelleVoiture;
CREATE TABLE `marque` (
	 `idMarque` int(11) NOT NULL AUTO_INCREMENT, 
	 `LibelleMarque` varchar(50) NOT NULL, 
	 PRIMARY KEY (`idMarque`) 
 );