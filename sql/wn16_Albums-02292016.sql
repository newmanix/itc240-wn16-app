-- Adminer 4.2.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `wn16_Albums`;
CREATE TABLE `wn16_Albums` (
  `AlbumID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Artist` varchar(255) DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Label` varchar(100) DEFAULT NULL,
  `ReleaseYear` int(10) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`AlbumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `wn16_Albums` (`AlbumID`, `Title`, `Artist`, `Genre`, `Label`, `ReleaseYear`, `Description`) VALUES
(1,	'Dark Side of the Moon',	'Pink Floyd',	'Classic Rock',	'Capitol',	1973,	'The Dark Side of the Moon is the eighth studio album by the English progressive rock band Pink Floyd, released on 1 March 1973. It built on ideas explored in the band\'s earlier recordings and live shows, but lacks the extended instrumental excursions that characterised their work following the departure in 1968 of founder member, principal composer, and lyricist, Syd Barrett. The themes on The Dark Side of the Moon include conflict, greed, the passage of time, and mental illness, the latter partly inspired by Barrett\'s deteriorating mental state.');

-- 2016-03-01 02:54:30
