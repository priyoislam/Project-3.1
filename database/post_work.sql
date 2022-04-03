-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2022 at 07:08 PM
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
  `requirment` varchar(25500) NOT NULL,
  `paper` varchar(255) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11012 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_work`
--

INSERT INTO `post_work` (`work_id`, `id`, `title`, `area`, `overview`, `requirment`, `paper`) VALUES
(11002, 2, 'Looking for experts in deep learning', 'Deep learning', 'I am looking for expert in deep learning who can help me', '', '1648997279_altay2018.pdf'),
(11003, 14, 'Machine Learning Project', 'Machine learning', '1) Detection of Pneumonia in Medical Images<br>2) Train Deep Reinforcement Learning (DRL) agents', '', '1648997279_altay2018.pdf'),
(11006, 15, 'Create a forecast model and make the endpoint to predict in flask or fast api', 'Machine Learning', 'Build a cloud solution from the provider of your choice using the TICKIT dataset,\r\nthis sample database is used to track website sales activity\r\nfictitious TICKIT, where users buy and sell tickets online for sporting events,\r\nshows and concerts. In particular, analysts can identify the movement of\r\ntickets over time, the success rates of vendors, and the events, venues, and\r\nbest selling seasons. Analysts can use this information to provide\r\nincentives to buyers and sellers who frequent the site, to attract new\r\nusers and to generate advertising and promotions.', '', '1648997279_altay2018.pdf'),
(11007, 15, 'Jasper Operator and Creative Writer/Researcher', 'Content Writing', 'The job consists of taking a spreadsheet of information, and following a pre-determined template, feeding the data from a spreadsheet into the Jasper AI writing tool, and creating articles that meet the strict template requirements. You may need to perform minor research to find further information where a research spreadsheet is missing key data (it happens, our researchers are human).', '', '1648997279_altay2018.pdf'),
(11011, 24, 'Usability Feedback for R&D Artificial Intelligence platform', 'Artificial Intelligence', 'Hi. I am looking for machine learning developer. My developer has stopped the working because of the personal reason. I am looking for long term partner. Currently I have the API for detecting the text and screws of the watches. - I need to improve a few things of this api. 1, OCR 2, Image processing 3, Labeling and training', 'Required skills are : Python Machine learning Deep learning AIWe are an AI/ML company that builds ML models on a web platform for Research and Development. We need to get some UX feedback on our platform. It does have some heavy data concepts that are related to any of these industries or disciplines: 1 - EV Battery Development 2 - Electronic Design 3 - Computational Fluid Dynamics (CFD) design or simulation 4 - Machine Learning 5 - Data Analysis 6 - Material Design', '1648997279_altay2018.pdf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
