-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2022 at 07:16 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

DROP TABLE IF EXISTS `proposal`;
CREATE TABLE IF NOT EXISTS `proposal` (
  `proposal_id` int(100) NOT NULL AUTO_INCREMENT,
  `work_id` int(255) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `letter` varchar(10000) NOT NULL,
  `Paper` varchar(25500) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`proposal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`proposal_id`, `work_id`, `seller_id`, `letter`, `Paper`, `cv`, `flag`) VALUES
(2, 11002, 15, 'I can do this', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 1),
(8, 11008, 15, 'Hello I am interested for this work.', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(6, 11001, 2, 'I can do your work..', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(7, 11001, 2, 'I can do your work..', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(9, 11007, 24, 'hello', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(10, 11003, 15, 'I have some idea about this research', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
