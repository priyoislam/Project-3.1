-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2021 at 02:59 PM
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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `ArticleID` int(100) NOT NULL,
  `Article_Name` varchar(255) NOT NULL,
  `Article_Link` varchar(255) NOT NULL,
  `Scientist_ID` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `Article_Name`, `Article_Link`, `Scientist_ID`) VALUES
(2001, 'Artificial Intelligence, Logic and Formalizing Common Sense', 'http://jmc.stanford.edu/articles/ailogic.html', 1),
(2002, 'What has AI in Common with Philosophy?', 'http://jmc.stanford.edu/articles/aiphil.html', 1),
(2003, 'The Philosophy of AI and the AI of Philosophy', 'http://jmc.stanford.edu/articles/aiphil2.html', 1),
(2004, 'Making Robots Conscious of their Mental States', 'http://jmc.stanford.edu/articles/consciousness.html', 1),
(2005, 'Modality for Robots - Responses to Halpern and Wansing', 'http://jmc.stanford.edu/articles/halpern.html', 1),
(2006, 'LISP - Notes on its Past and Future - 1980', 'http://jmc.stanford.edu/articles/lisp20th.html', 1),
(2007, 'WWW at 15 years: looking forward', 'https://dl.acm.org/doi/10.1145/1060745.1060746', 5),
(2008, 'World-wide computer', 'https://dl.acm.org/doi/10.1145/253671.253704', 5),
(2009, 'CERN experience', 'https://dl.acm.org/doi/10.1145/504092.504100', 5),
(2010, 'The next wave of the web', 'https://dl.acm.org/doi/10.1145/1135777.1135889', 5),
(2011, 'The part-time parliament', 'https://dl.acm.org/doi/10.1145/3335772.3335939', 9),
(2012, 'The Byzantine generals problem', 'https://dl.acm.org/doi/10.1145/3335772.3335936', 9),
(2013, 'How to make a multiprocessor computer that correctly executes multiprocess programs', 'https://dl.acm.org/doi/10.1145/3335772.3335935', 9),
(2014, 'Time, clocks, and the ordering of events in a distributed system', 'https://dl.acm.org/doi/10.1145/3335772.3335934', 9),
(2015, 'Reconfiguring a state machine', 'https://dl.acm.org/doi/10.1145/1753171.1753191', 9),
(2016, 'Checking Cache-Coherence Protocols with TLA+', 'https://dl.acm.org/doi/10.1023/A%3A1022969405325', 9),
(2017, 'Barbara Liskov on Programming, Career, and the Future', 'https://www.researchgate.net/publication/3453137_Barbara_Liskov_on_Programming_Career_and_the_Future', 14),
(2017, 'Abstraction and specification in program development By Barbara Liskov and John Guttag', 'https://www.researchgate.net/publication/242818032_Abstraction_and_specification_in_program_development_By_Barbara_Liskov_and_John_Guttag', 14),
(2017, 'Liskov on Liskov', 'https://www.researchgate.net/publication/278280443_Liskov_on_Liskov', 14),
(2017, 'Bibliography', 'https://www.researchgate.net/publication/2820112_Bibliography', 14),
(2017, 'Cross-chain deals and adversarial commerce', 'https://www.researchgate.net/publication/354045128_Cross-chain_deals_and_adversarial_commerce', 14),
(2018, 'The tyranny of the clock', 'https://dl.acm.org/doi/10.1145/2347736.2347749', 23),
(2019, 'Self-timing: a step beyond synchrony (tutorial talk)', 'https://dl.acm.org/doi/10.5555/2157654.2157656', 23),
(2020, 'The sequential prison', 'https://dl.acm.org/doi/10.1145/2048066.2048068', 23),
(2022, 'Toward Virtual Community Knowledge Evolution', 'https://dl.acm.org/doi/10.1080/07421222.2002.11045707', 25),
(2022, 'Bootstrapping our collective intelligence', 'https://dl.acm.org/doi/10.1145/345966.346040', 25),
(2021, 'Toward augmenting the human intellect and boosting our collective IQ', 'https://dl.acm.org/doi/10.1145/208344.208352', 25);

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `Scientist_ID` int(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Prize` varchar(100) NOT NULL,
  `Catagory` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`Scientist_ID`, `Year`, `Prize`, `Catagory`) VALUES
(1, '1988', 'Kyoto Prize', 'Lifetime achievement in Advanced Technology, Basic Sciences, Arts and Philosophy'),
(1, '1971', 'A.M. Turing Award', 'Computing Machinery'),
(1, '1985', 'Research Excellence Award of the International Conference', 'Artificial Intelligence'),
(1, '1990', 'National Medal of Science', 'Mathematical, Statistical, and Computational Sciences'),
(1, '2003', 'Benjamin Franklin Medal', 'Computer and Cognitive Science'),
(1, '2011', 'IEEE Intelligent Systems\' AI\'s Hall of Fame', 'Significant contributions to the field of AI and intelligent systems'),
(5, '2000', 'Dijkstra Prize', 'Principles of Distributed Computing'),
(5, '2004', 'IEEE Emanuel R. Piore Award', 'Principles of Distributed Computing'),
(5, '2004', 'IEEE Emanuel R. Piore Award', 'Technical Field Award'),
(5, '2008', 'IEEE John von Neumann Medal', 'outstanding achievements in computer-related science and technology'),
(5, '2013', 'Turing Award', 'lasting and major technical importance to the computer field'),
(5, '2011', 'Member of the National Academy of Sciences', 'distinguished and continuing achievements in original research'),
(9, '2016', 'Turing Award', 'Lasting and major technical importance to the computer field'),
(9, '2013', 'Queen Elizabeth Prize', 'Engineering and Innovation'),
(9, '2009', 'Foreign Associate of the National Academy of Sciences', 'Distinguished and continuing achievements in original research'),
(9, '2007', 'Order of Merit', 'Distinguished service in the armed forces, science, art, literature, or for the promotion of culture'),
(9, '1995', 'ACM Software System Award', 'Lasting influence, reflected in contributions to concepts, in commercial acceptance, or both'),
(14, '2004', 'IEEE John von Neumann Medal', 'Lasting and major technical importance to the computer field'),
(14, '2018', 'Women of the ENIAC Computer Pioneer Award', 'Efforts resulted in the creation and continued vitality of the computer industry'),
(14, '2008', 'A. M. Turing Award ', 'Achievements in computer-related science and technology'),
(14, '2008', 'ACM SIGPLAN Programming Languages Lifetime Achievement Award', 'contribution to the field of programming languages'),
(14, '2008', 'ACM SIGSOFT Impact Paper Award', 'breadth and vitality of the software engineering community'),
(23, '1988', 'Turing Award', 'Lasting and major technical importance to the computer field'),
(23, '1985', 'Computer Pioneer Award', 'Concepts and development of the computer field'),
(23, '1998', 'IEEE John von Neumann Medal', 'Outstanding achievements in computer-related science and technology'),
(23, '2005', 'Kyoto Prize', 'Lifetime achievement in the arts and sciences'),
(25, '2021', 'BCS Lovelace Medal', 'Contributions to the understanding or advancement of computing'),
(25, '2005', '\r\nComputer History Museum Fellow Award', 'Careers improved society and inspired others'),
(25, '2000', 'National Medal of Technology', 'Development of new and important technology'),
(25, '1997', 'ACM Turing Award', 'Lasting and major technical importance to the computer field'),
(26, '2002', 'Dijkstra Prize', 'Distributed Computing'),
(26, '1994', 'ACM Fellow', 'recognises outstanding members of the Association for Computing Machinery (ACM)'),
(26, '1989', 'SIGCSE Outstanding Contribution', ' curriculum design, innovative teaching methods, authorship of textbooks '),
(26, '1972', 'Turing Award', 'Lasting and major technical importance to the computer field'),
(27, '2013', 'BBVA Foundation Frontiers of Knowledge Award', 'scientific research and cultural creation'),
(27, '2001', 'Benjamin Franklin Medal', 'Recognizing seven areas of study'),
(27, '1991', 'IJCAI Award for Research Excellence', 'Researcher in artificial intelligence'),
(27, '1990', 'Japan Prize', 'served the cause of peace and prosperity for mankind'),
(27, '1969', 'Turing Award', 'Lasting and major technical importance to the computer field');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `Scientist_ID` int(100) NOT NULL,
  `experience` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`Scientist_ID`, `experience`) VALUES
(1, 'Private,U.S.Army (1945-1946)'),
(1, 'Instructor in mathematics,Princeton University (1951-1953)'),
(1, 'Assistant Professor of mathematics, Stanford University (1953-1955)'),
(1, 'Assistant Professor of mathematics, Dartmouth College (1955-1958)'),
(1, 'Assistant Professor communication,Massachusetts Institute of Technology (1958-1962)'),
(1, 'Professor of mathematics,Stanford University(1962-1965)'),
(1, 'Professor of Computer Science,Stanford University(1965-2011)'),
(1, 'Director of the Stanford Artificial Intelligence Laboratory(1966-1980)'),
(5, 'Professorial Fellow of Computer Science at the University of Oxford'),
(5, 'Inventor of the World Wide Web'),
(5, 'Professor at the Massachusetts Institute of Technology'),
(5, 'Implemented the first successful communication between a Hypertext Transfer Protocol (HTTP)'),
(5, 'Member of the advisory board of the MIT Center for Collective Intelligence'),
(5, 'Senior researcher and holder of the 3Com founder\'s chair at the MIT Computer Science and Artificial Intelligence Laboratory (CSAIL)'),
(5, 'Director of the World Wide Web Consortium (W3C)'),
(9, 'Computer scientist at Massachusetts Computer Associates'),
(9, 'Joined Microsoft Research in California'),
(9, 'Computer scientist at SRI International'),
(14, 'MIT as Associate Department Head and later as Associate Provost'),
(14, 'Mitre Corporation'),
(14, 'Ford Professor of Engineering'),
(23, 'Research Laboratory of Electronics at Massachusetts Institute of Technology'),
(23, ' Massachusetts Institute of Technology Lincoln Laboratory'),
(23, 'Fletcher Jones Professor of Computer Science and Head,\r\n Department of Computer Science, California Institute of Technology'),
(23, 'AProfessor of Computer Science, University of Utah'),
(23, 'AProfessor of Computer Science, University of Utah'),
(23, 'Associate Professor of Electrical Engineering, Harvard University'),
(23, ' Massachusetts Institute of Technology Lincoln Laboratory'),
(25, 'US Navy, electronic/radar technician, WW II'),
(25, 'Assistant Professor, electrical engineering, University of California at Berkeley'),
(25, ' Researcher, Stanford Research Institute'),
(25, 'Director, Augmentation Research Center, Stanford Research Institute'),
(25, 'Senior Scientist, Tymshare, Inc., Cupertino, California'),
(25, 'Senior Scientist, McDonnell Douglas Corporation ISG, San Jose, California'),
(25, ' Director, Bootstrap Project, Stanford University'),
(25, 'Director, Bootstrap Institute & Bootstrap Alliance (now DEI), Menlo Park, California'),
(26, 'US Navy, electronic/radar technician, WW II'),
(26, 'Assistant Professor, electrical engineering, University of California at Berkeley'),
(26, ' Researcher, Stanford Research Institute'),
(26, 'Director, Augmentation Research Center, Stanford Research Institute'),
(26, 'Senior Scientist, Tymshare, Inc., Cupertino, California'),
(27, 'United States Navy'),
(27, 'Junior Fellow, Harvard Society of Fellows'),
(27, ' Researcher, Stanford Research Institute'),
(27, ' Staff Member, M.I.T. Lincoln Laboratory'),
(27, 'Faculty, M.I.T.');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE IF NOT EXISTS `follow` (
  `Scientist_ID` int(100) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`Scientist_ID`, `email`) VALUES
(1, 'mkaikaus@gmail.com'),
(5, 'mkaikaus@gmail.com'),
(1, 'kaikaus@gmail.com'),
(9, 'kaikaus@gmail.com'),
(9, 'urishat@gmail.com'),
(23, 'urishat@gmail.com'),
(1, 'mkaikaus@gmail.com'),
(5, 'mkaikaus@gmail.com'),
(1, 'kaikaus@gmail.com'),
(9, 'kaikaus@gmail.com'),
(9, 'urishat@gmail.com'),
(23, 'urishat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
CREATE TABLE IF NOT EXISTS `publication` (
  `Pub_ID` int(100) NOT NULL AUTO_INCREMENT,
  `Pub_Name` varchar(1000) NOT NULL,
  `Pub_Link` varchar(1000) NOT NULL,
  `Citation_Count` int(11) NOT NULL,
  `Sub_ID` int(100) NOT NULL,
  PRIMARY KEY (`Pub_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3019 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`Pub_ID`, `Pub_Name`, `Pub_Link`, `Citation_Count`, `Sub_ID`) VALUES
(3001, 'A Proposal for the Dartmouth Summer Research Project on Artificial Intelligence', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=SuVID2wAAAAJ&citation_for_view=SuVID2wAAAAJ:hqOjcs7Dif8C', 1706, 501),
(3002, 'Applications of circumscription to formalizing common-sense knowledge', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=SuVID2wAAAAJ&citation_for_view=SuVID2wAAAAJ:9yKSN-GCB0IC', 1676, 501),
(3003, 'LISP I programmer\'s manual', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=SuVID2wAAAAJ&citation_for_view=SuVID2wAAAAJ:dhFuZR0502QC', 1541, 502),
(3004, 'LISP 1.5 programmer\'s manual', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=SuVID2wAAAAJ&citation_for_view=SuVID2wAAAAJ:2osOgNQ5qMEC', 1538, 502),
(3005, 'Circumscription - a form of non-monotonic reasoning', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=SuVID2wAAAAJ&citation_for_view=SuVID2wAAAAJ:u-x6o8ySG0sC', 3308, 501),
(3006, 'Linked Data on theWeb and its Relationship with Distributed Ledgers (LDOW/LDDL)', 'https://dl.acm.org/doi/10.1145/3308560.3317072', 3210, 503),
(3007, 'From the Semantic Web to social machines', 'https://www.sciencedirect.com/science/article/pii/S0004370209001404', 1302, 505),
(3009, 'Time, clocks, and the ordering of events in a distributed system', 'https://dl.acm.org/doi/abs/10.1145/3335772.3335934', 16, 506),
(3010, 'The part-time parliament', 'https://dl.acm.org/doi/abs/10.1145/3335772.3335939', 9, 507),
(3011, 'A new solution of Dijkstra\'s concurrent programming problem', 'https://dl.acm.org/doi/abs/10.1145/3335772.3335782', 1, 504),
(3012, 'Fast databases with fast durability and recovery through multicore parallelism', 'https://dl.acm.org/doi/10.5555/2685048.2685085', 37, 508),
(3013, 'Lightweight, flexible object-oriented generics', 'https://dl.acm.org/doi/10.1145/2737924.2738008', 15, 509),
(3014, 'Type-aware transactions for faster concurrent code', 'https://dl.acm.org/doi/10.14778/3364324.3364326', 21, 510),
(3015, 'Cross-chain deals and adversarial commerce', 'https://dl.acm.org/doi/10.5555/2685048.2685085', 7, 511),
(3016, 'GasP: A Minimal FIFO Control', 'https://dl.acm.org/doi/10.5555/785167.785351', 27, 512),
(3017, 'Virtual Community Knowledge Evolution', 'https://dl.acm.org/doi/10.5555/820760.822023', 28, 513),
(3018, 'Knowledge-domain interoperability and an open hyperdocument system', 'https://dl.acm.org/doi/10.1145/99332.99351', 41, 514);

-- --------------------------------------------------------

--
-- Table structure for table `publish`
--

DROP TABLE IF EXISTS `publish`;
CREATE TABLE IF NOT EXISTS `publish` (
  `Scientist_ID` int(100) NOT NULL,
  `Pub_ID` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publish`
--

INSERT INTO `publish` (`Scientist_ID`, `Pub_ID`) VALUES
(1, 3001),
(1, 3002),
(1, 3003),
(1, 3004),
(1, 3005),
(2, 3001),
(3, 3001),
(4, 3001),
(6, 3006),
(5, 3006),
(7, 3006),
(5, 505),
(8, 505),
(5, 3008),
(8, 3008),
(9, 3010),
(12, 3010),
(13, 3010),
(9, 3009),
(11, 3009),
(11, 3011),
(9, 3011),
(14, 3012),
(15, 3012),
(16, 3012),
(17, 3012),
(14, 3013),
(18, 3013),
(19, 3013),
(14, 3014),
(20, 3014),
(14, 3015),
(21, 3015),
(22, 3015),
(24, 3016),
(25, 3018),
(25, 3017),
(23, 3016);

-- --------------------------------------------------------

--
-- Table structure for table `save`
--

DROP TABLE IF EXISTS `save`;
CREATE TABLE IF NOT EXISTS `save` (
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
(107, 'urishat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `scientist`
--

DROP TABLE IF EXISTS `scientist`;
CREATE TABLE IF NOT EXISTS `scientist` (
  `Scientist_ID` int(100) NOT NULL AUTO_INCREMENT,
  `Sci_Name` varchar(100) NOT NULL,
  `Work_place` varchar(255) NOT NULL,
  `Sci_img` varchar(255) NOT NULL,
  `Birth` varchar(100) NOT NULL,
  `Death` varchar(100) NOT NULL,
  `Education` varchar(255) NOT NULL,
  `Add_Info` varchar(10000) NOT NULL,
  `Pub_Year` varchar(100) NOT NULL,
  `Pub_Count` int(100) NOT NULL,
  `Cite_Count` int(100) NOT NULL,
  `Avg_Cite_Count` int(100) NOT NULL,
  `Youtube` varchar(255) NOT NULL,
  `research_gate` varchar(255) NOT NULL,
  `wikipedia` varchar(255) NOT NULL,
  PRIMARY KEY (`Scientist_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scientist`
--

INSERT INTO `scientist` (`Scientist_ID`, `Sci_Name`, `Work_place`, `Sci_img`, `Birth`, `Death`, `Education`, `Add_Info`, `Pub_Year`, `Pub_Count`, `Cite_Count`, `Avg_Cite_Count`, `Youtube`, `research_gate`, `wikipedia`) VALUES
(1, 'John McCarthy', 'Stanford University', 'john_mccarthy.jpg', '4 September 1927, Boston, Massachusetts', '24 October 2011, Stanford, California', 'BS mathematics, California Institute of Technology (1948); PhD mathematics, Princeton University (1951)', 'His father, John Patrick McCarthy, was an Irish Catholic who became a labor organizer and later the Business Manager of the Daily Worker, a national newspaper owned by the Communist Party USA. His mother, Ida Glatt, was a Lithuanian Jewish immigrant who worked for a wire service, then for the Daily Worker and finally as a social worker.McCarthy considered himself an atheist.McCarthy showed an early aptitude for mathematics; during his teens he taught himself college mathematics by studying the textbooks used at the nearby California Institute of Technology (Caltech). As a result, he was able to skip the first two years of mathematics at Caltech.[8] McCarthy was suspended from Caltech for failure to attend physical education courses.From 1978 to 1986, McCarthy developed the circumscription method of non-monotonic reasoning.McCarthy was a serious book reader, an optimist, and a staunch supporter of free speech. His best Usenet interaction is visible in rec.arts.books archives.', '1962-2002', 11, 336, 31, 'https://www.youtube.com/results?search_query=john+mccarthy+artificial+intelligence', 'https://www.researchgate.net/scientific-contributions/John-McCarthy-2029411824', 'https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist)'),
(2, 'ML Minsky', '', '', '', '', '', '', '', 0, 0, 0, '', '', ''),
(3, 'N Rochester', '', '', '', '', '', '', '', 0, 0, 0, '', '', ''),
(4, 'CE Shannon', '', '', '', '', '', '', '', 0, 0, 0, '', '', ''),
(5, 'Tim Berners Lee', 'Massachusetts Institute of Technology', 'tim_berners_lee.jfif', '8 June 1955 London', 'living till now', 'Bachelor\'s degree in Physics, The Queen\'s College, Oxford', 'His father Conway Berners-Lee was an English mathematician and computer scientist', '1988-2019', 37, 1970, 53, 'https://www.youtube.com/watch?v=GUrDI6OkJfU', 'https://www.researchgate.net/profile/Tim-Berners-Lee', 'https://en.wikipedia.org/wiki/Tim_Berners-Lee'),
(6, 'Maribel Acosta', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' '),
(7, 'Anastasia Dimou', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' '),
(8, 'Jim Hendler', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' '),
(9, 'LESLIE LAMPORT', ' Microsoft Research in California', 'LESLIE LAMPORT.jpg', 'July 2, 1941 New York City, New York', ' ', ' B.S. in mathematics from Massachusetts Institute of Technology', ' ', '1966-2019', 150, 25646, 171, 'https://www.youtube.com/watch?v=pgWTmOyUjtM', 'https://www.researchgate.net/profile/Leslie_Lamport', 'https://en.wikipedia.org/wiki/Leslie_Lamport'),
(10, 'deBruijn', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(11, 'Schwartz', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(12, 'Dijkstra', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(13, 'Bernstein', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(14, 'BARBARA LISKOV', 'Institute Professor at the Massachusetts Institute of Technology', 'BARBARA LISKOV.jpeg', 'November 7, 1939, California', ' ', ' BSc in Mathematics, University of California, Berkeley', ' ', '1971-2020', 154, 11652, 76, 'https://www.youtube.com/watch?v=O6By99JW_V8', 'https://www.researchgate.net/publication/2452271_Barbara_H_Liskov', 'https://en.wikipedia.org/wiki/Barbara_Liskov'),
(15, 'Wenting Zheng', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(16, 'Stephen Tu', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(17, 'Eddie Kohler', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(18, 'Matthew C. Loring', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(19, 'Guido Salvaneschi', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(20, 'Jeevana Priya Inala\r\n', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(21, 'Liuba Shrira', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(22, 'Maurice Herlihy', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(23, 'Ivan Edward Sutherland', 'Professor of Computer Science at California Institute of Technology', 'Ivan Edward Sutherland.jpeg', 'May 16, 1938 Hastings, Nebraska, United States', ' ', ' B.S. (electrical engineering) Carnegie Institute of Technology; \r\nM.S. (electrical engineering) California Institute of Technology', 'His father was a Civil Engineer', '1963-2012', 45, 4154, 92, 'https://www.youtube.com/watch?v=aYqQ-vAHv6Q', ' ', 'https://en.wikipedia.org/wiki/Ivan_Sutherland'),
(24, '\r\nScott Fairbanks\r\n', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(25, 'DOUGLAS ENGELBART', 'Stanford Research Institute', 'DOUGLAS ENGELBART.jpeg', 'January 30, 1925 in Portland, Oregon', 'July 2, 2013 in Atherton, California', 'B.S. in Electrical Engineering, Oregon State University; M.S. in Electrical Engineering, University of California at Berkeley', 'Midway through his undergraduate years at Oregon State University, he served two years in the United States Navy as a radio and radar technician in the Philippines.', '1968-2006', 28, 477, 17, 'https://youtu.be/B6rKUf9DWRI', 'https://www.researchgate.net/search.Search.html?type=researcher&query=DOUGLAS%20ENGELBART', 'https://en.wikipedia.org/wiki/Douglas_Engelbart'),
(26, 'EDSGER WYBE DIJKSTRA', 'Mathematisch Centrum\r\nEindhoven University of Technology', 'EDSGER WYBE DIJKSTRA.jpeg', '11 May 1930, Rotterdam, The Netherlands', '6 August 2002, Nuenen, The Netherlands.', ' Gymnasium Erasmianum in Rotterdam; undergraduate degree, physics, University of Leyden; PhD computer science', 'His father was a chemist, president of the Dutch Chemical Society;His mother was a mathematician', '1961-2007', 98, 3758, 67, 'https://youtu.be/mLEOZO1GwVc', ' ', 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra'),
(27, 'MARVIN MINSKY', 'Massachusetts Institute of Technology (MIT)', 'MARVIN MINSKY.jpeg', 'New York City, August 9, 1927', 'Boston, January 24, 2016', ' Harvard University, B.A. Mathematics; Princeton University', 'Minsky married pediatrician Gloria Rudisch;Minsky was a talented improvisational pianist', '1961-2010', 57, 1358, 87, 'https://youtu.be/EI0NXTrS5Pw', ' ', 'https://en.wikipedia.org/wiki/Marvin_Minsky');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `address`, `password`, `phone`) VALUES
(1, 'sumu', 'sumu@gmail.com', 'Tanngail', '1234', '01834548479'),
(2, 'Sumaiya', 'Sumaiya@gmail.com', 'Dhaka', '1212345', '0167545677'),
(8, 'ritu', 'ritu@hotmail.com', 'dhaka', '12123', '0187653443'),
(9, 'Maleeha ', 'mkaikaus@gmail.com', 'Feni', '12345', '01636538666'),
(10, 'Lamis', 'mkaikaus16@gmail.com', 'Dhaka', '12345', '01612345678'),
(12, 'saad', 'saad@gmail.com', 'Feni', '54321', '01936538666'),
(13, 'Maleeha Kaikaus', 'mkaikaus333@gmail.com', 'Feni', '12345', '01636538666');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `Scientist_ID` int(100) NOT NULL,
  `Videos` varchar(255) NOT NULL,
  `video_link` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`Scientist_ID`, `Videos`, `video_link`) VALUES
(1, 'John McCarthy (1927-2011): Artificial Intelligence (complete) - Thinking Allowed -Jeffrey Mishlove', 'https://www.youtube.com/watch?v=Ozipf13jRr4'),
(1, 'John McCarthy, on Philosophy of AI (Mini Symposium Philosophy of Information)', 'https://www.youtube.com/watch?v=K13_sWm_gZw'),
(1, 'Science Lives: John McCarthy', 'https://www.youtube.com/watch?v=rWJZvnsbw7E'),
(1, 'Oral History of John McCarthy', 'https://www.youtube.com/watch?v=KuU82i3hi8c&t=4735s'),
(5, 'Tim Berners-Lee: The next Web of open, \r\nlinked data ', 'https://www.youtube.com/watch?v=OM6XIICm_qo&t=8s'),
(5, 'Tim Berners-Lee: A Magna Carta for the web ', 'https://www.youtube.com/watch?v=rCplocVemjo'),
(5, 'The Future of the Web • Sir Tim Berners-Lee • GOTO 2018  ', 'https://www.youtube.com/watch?v=Rxqko96C5ZI'),
(5, 'Tim Berners Lee: What is the future of the internet?', 'https://www.youtube.com/watch?v=BnXF_O_WjAA'),
(9, 'Leslie Lamport: Thinking Above the Code ', 'https://www.youtube.com/watch?v=-4Yp3j_jk8Q'),
(9, 'What\'s the difference between programming and coding - Leslie Lamport @ HLF 2019  ', 'https://www.youtube.com/watch?v=4RptzbNNoU0 '),
(9, 'Oral History of Leslie Lamport - Part 1', 'https://www.youtube.com/watch?v=SXt3-iZpQQc'),
(9, 'What is Computation -- Dr. Leslie Lamport, Microsoft  ', 'https://www.youtube.com/watch?v=BDPHfRuAFnU'),
(14, 'How Data Abstraction changed Computing forever | Barbara Liskov | TEDxMIT', 'https://www.youtube.com/watch?v=_jTc1BTFdIo'),
(14, 'Barbara Liskov on the Future of Computer Science', 'https://www.youtube.com/watch?v=VFh8wT57R50'),
(14, 'Barbara Liskov at MIT - 2001 EECS Colloquium on Practical Byzantine Fault Tolerance', 'https://www.youtube.com/watch?v=Uj638eFIWg8'),
(14, 'Liskov: The Liskov Substitution Principle', 'https://www.youtube.com/watch?v=-Z-17h3jG0A'),
(23, 'White Rabbit: Interview with Doug Engelbart', 'https://www.youtube.com/watch?v=Bt0_3pppG88 '),
(23, 'The Augmentation of Douglas Engelbart | Full Documentary', 'https://www.youtube.com/watch?v=_7ZtISeGyCY'),
(23, 'Inventing the Computer Mouse | Douglas Engelbart | Talks at Google', 'https://www.youtube.com/watch?v=xQx-tuW9A4Q'),
(23, '1968 “Mother of All Demos” by SRI’s Doug Engelbart and Team', 'https://www.youtube.com/watch?v=B6rKUf9DWRI'),
(26, 'Edsger Dijkstra interview', 'https://www.youtube.com/watch?v=mLEOZO1GwVc'),
(26, 'Edsger W. Dijkstra - Lecture: Reasoning About Programs - Solving 2 problems using programing - 1990', 'https://www.youtube.com/watch?v=GX3URhx6i2E'),
(26, 'Edsger W. Dijkstra - The Power of Counting Arguments', 'https://www.youtube.com/watch?v=0kXjl2e6qD0'),
(26, 'Edsger Dijkstra\'s Turing Award Speech - Part 1 of 8', 'https://www.youtube.com/watch?v=6sIlKP2LzbA'),
(25, '1968 “Mother of All Demos” by SRI’s Doug Engelbart and Team', 'https://www.youtube.com/watch?v=B6rKUf9DWRI'),
(25, 'Inventing the Computer Mouse | Douglas Engelbart | Talks at Google', 'https://www.youtube.com/watch?v=xQx-tuW9A4Q'),
(25, 'The Augmentation of Douglas Engelbart | Full Documentary', 'https://www.youtube.com/watch?v=_7ZtISeGyCY'),
(25, 'White Rabbit: Interview with Doug Engelbart', 'https://www.youtube.com/watch?v=Bt0_3pppG88'),
(27, 'Marvin Minsky', 'https://www.youtube.com/watch?v=EI0NXTrS5Pw'),
(27, 'Marvin Minsky', 'https://www.youtube.com/watch?v=EI0NXTrS5Pw'),
(27, 'Marvin Minsky: A Society of Minds | Episode 1613 | Closer To Truth', 'https://www.youtube.com/watch?v=Yz4m65nAMjg'),
(25, 'Marvin Minsky - Could Our Universe Be a Fake?', 'https://www.youtube.com/watch?v=USj6TpW-b0w ');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
CREATE TABLE IF NOT EXISTS `work` (
  `Scientist_ID` int(100) NOT NULL,
  `Sub_ID` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`Scientist_ID`, `Sub_ID`) VALUES
(1, 501),
(1, 502),
(1, 503),
(1, 504),
(5, 503),
(5, 505),
(9, 504),
(9, 506),
(9, 507),
(14, 508),
(14, 509),
(14, 510),
(14, 511),
(23, 512),
(25, 513),
(25, 514);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
