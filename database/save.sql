-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2021 at 07:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

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
-- Table structure for table `save`
--

CREATE TABLE `save` (
  `Blog_ID` int(100) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `save`
--

INSERT INTO `save` (`Blog_ID`, `email`) VALUES
(101, 'mkaikaus@gmail.com'),
(102, 'mkaikaus@gmail.com'),
(103, 'mkaikaus@gmail.com'),
(103, 'kaikaus@gmail.com'),
(102, 'priyoislam@gmail.com'),
(107, 'urishat@gmail.com'),
(101, 'mkaikaus@gmail.com'),
(102, 'mkaikaus@gmail.com'),
(103, 'mkaikaus@gmail.com'),
(103, 'kaikaus@gmail.com'),
(102, 'priyoislam@gmail.com'),
(107, 'urishat@gmail.com'),
(108, 'urishat@gmail.com'),
(102, 'mkaikaus22@gmail.com'),
(102, 'sumu@gmail.com'),
(106, 'sumu@gmail.com'),
(104, 'sumu@gmail.com'),
(101, 'sumu@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
