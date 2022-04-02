-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 02, 2022 at 04:57 AM
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
-- Table structure for table `post_work`
--

DROP TABLE IF EXISTS `post_work`;
CREATE TABLE IF NOT EXISTS `post_work` (
  `work_id` int(255) NOT NULL AUTO_INCREMENT,
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `overview` varchar(25500) NOT NULL,
  `price` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11009 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_work`
--

INSERT INTO `post_work` (`work_id`, `id`, `title`, `area`, `overview`, `price`, `time`) VALUES
(11001, 13, 'Usability Feedback for R&D Artificial Intelligence platform', 'Computational Fluid Dynamics  , AI', 'Hi.\r\nI am looking for machine learning developer.\r\nMy developer has stopped the working because of the personal reason.\r\nI am looking for long term partner.\r\nCurrently I have the API for detecting the text and screws of the watches.\r\n\r\n- I need to improve a few things of this api.\r\n1, OCR\r\n2, Image processing\r\n3, Labeling and training\r\n\r\n- Required skills are :\r\nPython\r\nMachine learning\r\nDeep learning\r\nAIWe are an AI/ML company that builds ML models on a web platform for Research and Development. We need to get some UX feedback on our platform. It does have some  heavy data concepts that are related to any of these industries or disciplines:\r\n\r\n1 -  EV Battery Development\r\n2 - Electronic Design\r\n3 - Computational Fluid Dynamics (CFD) design or simulation\r\n4 - Machine Learning\r\n5 - Data Analysis\r\n6 - Material Design', '300$', '15 days'),
(11002, 2, 'Looking for experts in deep learning', 'Deep learning', 'I am looking for expert in deep learning who can help me', '15$', '3 days'),
(11003, 14, 'Machine Learning Project', 'Machine learning', '1) Detection of Pneumonia in Medical Images<br>2) Train Deep Reinforcement Learning (DRL) agents', '50$', '15 days'),
(11006, 15, 'Create a forecast model and make the endpoint to predict in flask or fast api', 'Machine Learning', 'Build a cloud solution from the provider of your choice using the TICKIT dataset,\r\nthis sample database is used to track website sales activity\r\nfictitious TICKIT, where users buy and sell tickets online for sporting events,\r\nshows and concerts. In particular, analysts can identify the movement of\r\ntickets over time, the success rates of vendors, and the events, venues, and\r\nbest selling seasons. Analysts can use this information to provide\r\nincentives to buyers and sellers who frequent the site, to attract new\r\nusers and to generate advertising and promotions.', '15$', '3 days'),
(11007, 15, 'Jasper Operator and Creative Writer/Researcher', 'Content Writing', 'The job consists of taking a spreadsheet of information, and following a pre-determined template, feeding the data from a spreadsheet into the Jasper AI writing tool, and creating articles that meet the strict template requirements. You may need to perform minor research to find further information where a research spreadsheet is missing key data (it happens, our researchers are human).', '100$', '1 month'),
(11008, 2, 'Help for ML project', 'Machine Learning', 'I need help for my ML project', '10', '3 days');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
