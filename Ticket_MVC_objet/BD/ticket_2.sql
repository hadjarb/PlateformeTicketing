SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `T_COMMENTAIRE`;
CREATE TABLE `T_COMMENTAIRE` (
  `COM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COM_DATE` datetime NOT NULL,
  `COM_AUTEUR` varchar(100) NOT NULL,
  `COM_CONTENU` varchar(200) NOT NULL,
  `TIC_ID` int(11) NOT NULL,
  PRIMARY KEY (`COM_ID`),
  KEY `fk_com_bil` (`TIC_ID`),
  CONSTRAINT `fk_com_bil` FOREIGN KEY (`TIC_ID`) REFERENCES `T_TICKET` (`TIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `T_ETAT`;
CREATE TABLE `T_ETAT` (
  `ETA_ID` int(11) NOT NULL,
  `ETA_LIB` varchar(50) NOT NULL,
  PRIMARY KEY (`ETA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `T_ETAT` (`ETA_ID`, `ETA_LIB`) VALUES
(1,	'Résolu'),
(2,	'En cours'),
(3,	'Ouvert');

DROP TABLE IF EXISTS `T_TICKET`;
CREATE TABLE `T_TICKET` (
  `TIC_ID` int(11) NOT NULL,
  `TIC_DATE` datetime NOT NULL,
  `TIC_TITRE` varchar(100) NOT NULL,
  `TIC_CONTENU` varchar(400) NOT NULL,
  `ETA_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TIC_ID`),
  KEY `ETA_ID` (`ETA_ID`),
  CONSTRAINT `T_TICKET_ibfk_1` FOREIGN KEY (`ETA_ID`) REFERENCES `T_ETAT` (`ETA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `T_TICKET` (`TIC_ID`, `TIC_DATE`, `TIC_TITRE`, `TIC_CONTENU`, `ETA_ID`) VALUES
(1,	'2021-09-28 15:58:41',	'Couleur écran',	'Modification de la couleur bleu en noir',	1),
(2,	'2021-09-28 15:59:07',	'Prestation de maintenance',	'Maintenance sur un pc portable windows 10',	2),
(3,	'2021-09-28 15:59:26',	'Souci avec le logiciel de Dropshiping',	'Bug fréquents',	3);