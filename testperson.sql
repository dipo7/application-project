-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 06:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testperson`
--

-- --------------------------------------------------------

--
-- Table structure for table `dog`
--

CREATE TABLE IF NOT EXISTS `dog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `breed` varchar(255) NOT NULL,
  `colour` longtext NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dog`
--

INSERT INTO `dog` (`id`, `breed`, `colour`, `height`) VALUES
(1, 'Roth', 'black', 4);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(40) DEFAULT NULL,
  `last_name` char(40) DEFAULT NULL,
  `home` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`, `home`) VALUES
(1, 'Rose', 'Tyler', 'Earth'),
(2, 'Zoe', 'Heriot', 'Space Station W3'),
(3, 'Jo', 'Grant', 'Earth'),
(4, 'Leela', NULL, 'Unspecified'),
(5, 'Romana', NULL, 'Gallifrey'),
(6, 'Clara', 'Oswald', 'Earth'),
(7, 'Adric', NULL, 'Alzarius'),
(8, 'Susan', 'Foreman', 'Gallifrey');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
