-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 17 Février 2015 à 17:55
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `collections`
--

CREATE TABLE IF NOT EXISTS `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `collections`
--

INSERT INTO `collections` (`id`, `name`, `quantity`) VALUES
(1, 'Antonin', 2),
(2, 'Nicolas', 1),
(3, 'Nick', 1),
(4, 'Le peintre', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vinyls`
--

CREATE TABLE IF NOT EXISTS `vinyls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `artist` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `vinyls`
--

INSERT INTO `vinyls` (`id`, `collection_id`, `name`, `artist`) VALUES
(1, 1, 'From Mars to Sirius', 'Gojira'),
(2, 2, 'Tales of Murder and Death', 'Tales of Murder and Death'),
(3, 3, 'Latrone', 'Dullatron'),
(4, 4, 'Prout', 'Prout'),
(5, 1, 'Consoler of the Lonely', 'The Raconteurs');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
