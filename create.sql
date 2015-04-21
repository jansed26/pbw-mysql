-- phpMyAdmin SQL Dump
-- version 2.8.2.1
-- http://www.phpmyadmin.net
-- 
-- Host: an000357.host.inode.at
-- Erstellungszeit: 20. April 2015 um 22:17
-- Server Version: 5.0.67
-- PHP-Version: 5.2.6-2ubuntu4.3
-- 
-- Datenbank: `an000357_0005`
-- 

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `statistics`
-- 

CREATE TABLE `statistics` (
  `id` int(11) NOT NULL auto_increment,
  `users_id` int(11) NOT NULL,
  `workout_mode` tinyint(4) NOT NULL default '1',
  `start_time` bigint(20) NOT NULL,
  `total_seconds` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `speed` float NOT NULL,
  `calories_burned` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci AUTO_INCREMENT=12 ;

-- 
-- Daten für Tabelle `statistics`
-- 

INSERT INTO `statistics` (`id`, `users_id`, `workout_mode`, `start_time`, `total_seconds`, `distance`, `speed`, `calories_burned`, `credits`) VALUES (1, 3, 1, 1424547717534, 217, 514, 8.3, 175, 143),
(8, 3, 2, 1424607083968, 334, 1484, 16, 271, 136);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) collate latin1_german1_ci NOT NULL,
  `password` varchar(50) collate latin1_german1_ci NOT NULL,
  `bodyweight` smallint(6) NOT NULL,
  `total_credits` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci AUTO_INCREMENT=12 ;

-- 
-- Daten für Tabelle `users`
-- 

INSERT INTO `users` (`id`, `username`, `password`, `bodyweight`, `total_credits`) VALUES (7, 'christina', '3436e2006911215aa796ef00f777e3afad09602b', 53, 0),
(3, 'xy', 'fe4dc72877b31861debcb57edcfd252d0ac372a4', 70, 36202),
(8, 'hme', 'c973bc753f752d9900d6dcbc79f09df4e14f1a48', 80, 0),
(9, 'z', '9a7c1e4d56ea862c9bbd4430d8711f1f87ac5932', 80, 0),
(10, 'lisam', 'be4af2b2d00393522567b4903e95c1c844862d70', 60, 0),
(11, 'e', '3c2e99efc1695e4b8b05aef0f3e844351d2b8ead', 50, 0);
