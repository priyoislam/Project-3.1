-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2022 at 08:41 PM
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
(2021, 'Toward augmenting the human intellect and boosting our collective IQ', 'https://dl.acm.org/doi/10.1145/208344.208352', 25),
(2023, 'Video Rembrances of Marvin Minsky', 'https://professorhewitt.blogspot.com/2021/04/video-rembrances-of-marvin-minsky.html', 28),
(2024, 'Self-Proof of Consistency', 'https://professorhewitt.blogspot.com/2021/04/self-proof-of-consistency.html', 28),
(2025, 'An Actor Application Can Be Hundreds of Times Faster Than a Parallel Lambda Expression', 'https://professorhewitt.blogspot.com/2021/03/an-actor-application-can-be-hundreds-of.html', 28),
(2026, 'Gödel failed to prove inferential undecidablity or incompleteness in foundations', 'https://professorhewitt.blogspot.com/2021/03/godel-failed-to-prove-inferential.html', 28),
(2027, 'My Theorems are Enumerable Cyberattack', 'https://professorhewitt.blogspot.com/2021/03/churchs-dilemma-resolved.html', 28),
(2028, 'Cyber, Nano, and AGI Risks: Decentralized Approaches to Reducing Risks', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=PuP2INoAAAAJ&cstart=20&pagesize=80&citation_for_view=PuP2INoAAAAJ:LPZeul_q3PIC', 29),
(2029, 'The Coherence and Flexibility of the Institutional Order: The Role of Abstraction and Modularity', 'https://research.google/pubs/pub46173/', 29),
(2030, 'The Elements of Decision Alignment', 'https://drops.dagstuhl.de/opus/volltexte/2016/6111/', 29),
(2031, 'Languages for Debuggable Distributed Algorithms', 'https://researchportal.vub.be/en/publications/languages-for-debuggable-distributed-algorithms', 29);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `Author_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Author_Name` varchar(100) NOT NULL,
  `Author_Email` varchar(255) NOT NULL,
  `Author_Image` varchar(100) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  PRIMARY KEY (`Author_ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1016 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_ID`, `Author_Name`, `Author_Email`, `Author_Image`, `Description`) VALUES
(1001, 'Jonathan O\'Donnell', '', 'jonathon.jpg', 'Jonathan O\'Donnell helps people get funding for their research. To be specific, he helps the people in the Faculty of Science at the University of Melbourne in Australia. All opinions are his own. He has been doing that, on and off, since the 1990\'s (with varying degrees of success). He loves his job. He loves it so much that he has enrolled in a PhD to look at crowdfunding for research. With Tseen Khoo, he runs the Research Whisperer blog and @ResearchWhisper Twitter stream, about doing research in academia. His ORCID is 0000-0001-5435-235X. The views expressed here are his personal views and are not the views of the University of Melbourne.'),
(1002, 'Eric Elliott', '', 'Eric_Elliott.jpeg', 'Eric Elliott is the author of “Composing Software” and co-founder of DevAnywhere.io. Tech, music, AI and entertainment company advisor.'),
(1003, 'Leah Hoffmann', '', 'Leah_Hoffmann.jpg', 'Leah Hoffmann is a technology writer based in Piermont, NY, USA.'),
(1004, 'Herbert Bruderer', '', 'herbert.bruderer.jpg', 'Herbert Bruderer is a lecturer (retired) in the Department of Computer Science of the Eidgenossische Technische Hochschule (ETH) Zurich and a historian of technology. He is the author of numerous books and has been awarded several prizes.'),
(1005, 'Lorainne', '', 'Lorainne.jpg', ' Lorainne is a content writer. '),
(1006, 'Orit Hazzan', '', 'Orit_Hazzan.jpg', 'Koby Mike is a Ph.D. student at the Technion’s Department of Education in Science and Technology under the supervision of  Orit Hazzan; his research focuses on data science education.Orit Hazzan is a professor at the Technion\'s Department of Education in Science and Technology. Her research focuses on computer science, software engineering, and data science education. For additional details, see https://orithazzan.net.technion.ac.il/ .'),
(1007, 'Jeremy Roschelle', '', 'Jeremy_Roschelle.jpeg', 'Jeremy Roschelle is Executive Director of Learning Sciences Research at Digital Promise and a Fellow of the International Society of the Learning Sciences.'),
(1010, 'Maleeha ', 'mkaikaus@gmail.com', '', ''),
(1009, 'saad', 'saad@gmail.com', '', ''),
(1011, 'Urbana Rishat', 'urishat@gmail.com', '', ''),
(1012, 'sumu', 'sumu@gmail.com', '', ''),
(1013, 'Priyo Islam', 'priyo2@gmail.com', '', ''),
(1014, 'Radwa', 'rkaikaus@gmail.com', '', ''),
(1015, 'risha urbana', 'risha@gmail.com', '', '');

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `Blog_ID` int(100) NOT NULL AUTO_INCREMENT,
  `Topic` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Content` varchar(50000) NOT NULL,
  `Author_ID` int(100) NOT NULL,
  PRIMARY KEY (`Blog_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`Blog_ID`, `Topic`, `Date`, `Image`, `Title`, `Content`, `Author_ID`) VALUES
(101, 'Education', '2012-09-18', 'research.jpeg', 'What is Reseach?', '<p>We all know what research is. <b>It\'s the thing we do when we want to find something out.</b> It                 is what                 we are trained to do in a PhD program. It&#8217;s what comes before development.</p>             <p>The wonderful people at define <em>research</em> as</p>              <p><em><b> Noun: systematic investigation to establish facts; a search for knowledge.</b></em></p>             <p><em><b> Verb: attempt to find out in a systematically and scientific manner; inquire into.</b></em>             </p>              <p>An etymologist might tell us that it comes from the Old French word <em>cerchier</em>, to                 <em>search</em>, with <em>re- </em>expressing intensive force. I guess it is saying that before 1400 in                 France, research meant to search really hard.             </p>             <p></p>             <p>If I was talking to a staff member at my university, though, I would say that searching hard was <em>scholarship</em>. The                 difference? Research has to have an element of discovering something new, of creating knowledge. While a                 literature search is one important part of a research project, it isn&#8217;t research in and of itself.                 It is scholarship.</p>             <p>Don&#8217;t take my word for it. In Australian universities, we define research this way:</p>             <b>                 <p>Research is defined as the creation of new knowledge and/or the use of existing knowledge in a new                     and creative way so as to generate new concepts, methodologies and understandings. This could                     include synthesis and analysis of previous research to the extent that it leads to new and creative                     outcomes.</p>                 <p>This definition of research is consistent with a broad notion of research and experimental                     development (R&amp;D) as comprising of creative work undertaken on a systematic basis in order to                     increase the stock of knowledge, including knowledge of humanity, culture and society, and the use                     of this stock of knowledge to devise new applications</p>                 <p>This definition of research encompasses pure and strategic basic research, applied research and                     experimental development. Applied research is original investigation undertaken to acquire new                     knowledge but directed towards a specific, practical aim or objective (including a client-driven                     purpose).</p>             </b>             <p>Drawn from the <em>2012 Higher Education Research Data Collection (HERDC) specifications for the                     collection of 2011 data</em>.</p>             <h2>What research sounds like</h2>             <p>Sometimes, however, you don&#8217;t want to talk about &#8216;Research<strong>&#8216;</strong>. If you                 are applying to a philanthropic foundation, for example, they may not be interested in your new                 knowledge so much as the impact that your work will have, your capacity to help them to solve a problem.                 Industry partners may also be wary of the &#8216;R&#8217; word. Don&#8217;t bank your business on                 someone&#8217;s PhD, they will say (and I would wholeheartedly agree).</p>             <p>This creates something of a quandary, as the government gives us money based on how much research income                 we bring in. They audit our claims, so everything we say is research has to actually be research. So, it                 helps to flag it as research, even if you don&#8217;t say it explicitly.</p>             <p>Instead, you might talk about <em>innovation</em>, or about <em>experimentation</em>.                 You could describe the element of <em>risk</em> associated with                 <em>discovery.</em><em>Investigation</em> might                 lead to <em>analysis</em>. There might be <em>tests</em> that you will undertake                 to <em>prove</em> your <em>hypothesis</em>. You could just say that this work is <em>original</em> and                 has never                 been done before. You could talk about what <em>new</em> <em>knowledge</em> your work will                 lead to.             </p>             <p>You might describe a new <em>method</em> or a new <em>data</em> source that will lead to                 a <em>breakthrough</em> or anincremental <em>improvement</em> over                 current practice. You could make it clear that it is the precursor to <em>development</em>, in the                 sense of &#8216;research and development&#8217;.</p>             <p>It really helps if you are doing something <em>new</em>.</p>             <h2>What research looks like</h2>             <p>Sometimes, it isn&#8217;t what you say, but what you do. If your work will lead to a patent, book or book                 chapter, refereed journal article or conference publication, or an artwork or exhibition (in the case of                 creative outputs), then it almost always fulfills the definition no matter what you call it.</p>             <h2>What research isn&#8217;t</h2>             <p>Sometimes, you can see a thing more clearly by describing what it isn&#8217;t.</p>             <p><em><strong>Research isn&#8217;t teaching.</strong></em> Don&#8217;t get me wrong. You can research                 teaching, just like you can research anything else. However, teaching itself is generally regarded as                 the synthesis and transfer of existing knowledge. Generally, the knowledge has to exist before you can                 teach it. Most of the time, you aren&#8217;t creating new knowledge as you teach. Some lecturers may                 find that their students create strange new &#8216;knowledge&#8217; in their assignments, but making                 stuff up doesn&#8217;t count as research either.</p>             <p><strong><em>Research isn&#8217;t scholarship.</em></strong> As I said at the start, a literature search                 is an important aspect of the research process but it isn&#8217;t research in and of itself. Scholarship                 (the process of being a scholar) generally describes surveying existing knowledge. You might be looking                 for new results that you hadn&#8217;t read before, or you might be synthesizing the information for your                 teaching practice. Either way, you aren&#8217;t creating new knowledge, you are reviewing what already                 exists.</p>             <p><em><strong>Research isn&#8217;t encyclopaedic.</strong></em> Encyclopedias, by and large, seek to                 present a synthesis of existing knowledge. Collecting and publishing existing knowledge isn&#8217;t                 research, as it doesn&#8217;t create new knowledge.</p>             <p><em><strong>Research isn&#8217;t just data-gathering.</strong></em> Data-gathering is a vital part of                 research, but it doesn&#8217;t lead to new knowledge without some analysis, some further work. Just                 collecting the data doesn&#8217;t count, unless you do something else with it.</p>             <p><em><strong>Research isn&#8217;t just about methodology.</strong></em> Just because you are using mice,                 or interviewing people, or using a High Performance Liquid Chromatograph (HPLC) doesn&#8217;t mean you                 are doing research. You might be, if you are using a new data set or using the method in a new way or                 testing a new hypothesis. However, if you are using the same method, on the same data, exploring the                 same question, then you will almost certainly get the same results. And that is repetition, not                 research.</p>             <p><em><strong>Research isn&#8217;t repetition, except in some special circumstances.</strong></em> If you                 are doing the same thing that someone else has already done, then generally that isn&#8217;t research                 <strong>unless</strong> you are specifically trying to prove or disprove their work. What&#8217;s the                 difference? Repeating an experiment from 1400 isn&#8217;t research. You know what the result will be                 before your start. It has already been verified many times before. Repeating an experiment reported                 last year probably is research because the original result can&#8217;t be relied upon until it is                 verified.             </p>             <p>Is development research? Development (as in &#8216;research and development&#8217;) may or may not be                 classified as research, depending on the type of risk involved. Sometimes, the two are inextricably                 linked: the research leads to the development and the development refines the research. At other times,                 you are creating something new, but it is a new product or process, not new knowledge. It is based on                 new knowledge, rather than creating new knowledge. If the risk involved is a business risk, rather than                 intellectual risk, then the knowledge is already known.</p>             <p>Help me out here. What are your favourite words that signal research?</p>', 1001),
(102, 'History', '2018-11-01', 'oop.png', 'The Forgotten History of OOP', '<p>The functional and imperative programming paradigms we use today were first explored mathematically in\r\n                the 1930s with lambda calculus and the Turing machine, which are alternative formulations of universal\r\n                computation (formalized systems which can perform general computation). The Church Turing Thesis showed\r\n                that lambda calculus and Turing machines are functionally equivalent that anything that can be\r\n                computed using a Turing machine can be computed using lambda calculus, and vice versa.</p>\r\n\r\n            <p>\r\n                <b>Note:</b> There is a common misconception that Turing machines can compute anything computable. There\r\n                are\r\n                classes of problems (e.g., the halting problem) that can be computable for some cases, but are not\r\n                generally computable for all cases using Turing machines. When I use the word “computable” in this text,\r\n                I mean “computable by a Turing machine”.\r\n            </p>\r\n\r\n            <p>\r\n                Lambda calculus represents a top-down, function application approach to computation, while the ticker\r\n                tape/register machine formulation of the Turing machine represents a bottom up, imperative\r\n                (step by step) approach to computation.<br><br>\r\n                Low level languages like machine code and assembly appeared in the 1940s, and by the end of the 1950s,\r\n                the first popular high level languages appeared. Lisp dialects are still in common use today, including\r\n                Clojure, Scheme, AutoLISP, etc. FORTRAN and COBOL both appeared in the 1950s and are examples of\r\n                imperative high-level languages still in use today, though C family languages have replaced both COBOL\r\n                and FORTRAN for most applications.<br><br>\r\n                Both imperative programming and functional programming have their roots in the mathematics of\r\n                computation theory, predating digital computers. “Object Oriented Programming” (OOP) was coined by Alan\r\n                Kay circa 1966 or 1967 while he was at grad school.<br><br>\r\n                Ivan Sutherland’s seminal Sketchpad application was an early inspiration for OOP. It was created between\r\n                1961 and 1962 and published in his Sketchpad Thesis in 1963. The objects were data structures\r\n                representing graphical images displayed on an oscilloscope screen, and featured inheritance via dynamic\r\n                delegates, which Ivan Sutherland called “masters” in his thesis. Any object could become a “master”, and\r\n                additional instances of the objects were called “occurrences”. Sketchpad’s masters share a lot in common\r\n                with JavaScript’s prototypal inheritance.<br><br>\r\n                Note: The TX 2 at MIT Lincoln Laboratory was one of the early uses of a graphical computer monitor\r\n                employing direct screen interaction using a light pen. The EDSAC, which was operational between\r\n                1948 1958 could display graphics on a screen. The Whirlwind at MIT had a working oscilloscope display in\r\n                1949. The project’s motivation was to create a general flight simulator capable of simulating instrument\r\n                feedback for multiple aircraft. That led to the development of the SAGE computing system. The TX 2 was a\r\n                test computer for SAGE.<br><br>\r\n                The first programming language widely recognized as “object oriented” was Simula, specified in 1965.\r\n                Like Sketchpad, Simula featured objects, and eventually introduced classes, class inheritance,\r\n                subclasses, and virtual methods.<br><br>\r\n                Note: A virtual method is a method defined on a class which is designed to be overridden by subclasses.\r\n                Virtual methods allow a program to call methods that may not exist at the moment the code is compiled by\r\n                employing dynamic dispatch to determine what concrete method to invoke at runtime. JavaScript features\r\n                dynamic types and uses the delegation chain to determine which methods to invoke, so does not need to\r\n                expose the concept of virtual methods to programmers. Put another way, all methods in JavaScript use\r\n                runtime method dispatch, so methods in JavaScript don’t need to be declared “virtual” to support the\r\n                feature.<br>\r\n            </p>\r\n            <p>\r\n            <h2><strong>The Big Idea</strong></h2>\r\n            “I made up the term ‘object oriented’, and I can tell you I didn’t have C++ in mind.” ~ Alan Kay, OOPSLA\r\n            ‘97\r\n            Alan Kay coined the term “object oriented programming” at grad school in 1966 or 1967. The big idea was\r\n            to use encapsulated mini-computers in software which communicated via message passing rather than direct\r\n            data sharing — to stop breaking down programs into separate “data structures” and “procedures”.<br><br>\r\n            “The basic principal of recursive design is to make the parts have the same power as the whole.” ~ Bob\r\n            Barton, the main designer of the B5000, a mainframe optimized to run Algol 60.<br><br>\r\n            Smalltalk was developed by Alan Kay, Dan Ingalls, Adele Goldberg, and others at Xerox PARC. Smalltalk\r\n            was more object-oriented than Simula everything in Smalltalk is an object, including classes,\r\n            integers, and blocks (closures). The original Smalltalk 72 did not feature subclassing. That was\r\n            introduced in Smalltalk-76 by Dan Ingalls.<br><br>\r\n            While Smalltalk supported classes and eventually subclassing, Smalltalk was not about classes or\r\n            subclassing things. It was a functional language inspired by Lisp as well as Simula. Alan Kay considers\r\n            the industry’s focus on subclassing to be a distraction from the true benefits of object oriented\r\n            programming.<br><br>\r\n            “I’m sorry that I long ago coined the term “objects” for this topic because it gets many people to focus\r\n            on the lesser idea. The big idea is messaging.”\r\n            ~ Alan Kay<br><br>\r\n            In a 2003 email exchange, Alan Kay clarified what he meant when he called Smalltalk “object-oriented”:\r\n            “OOP to me means only messaging, local retention and protection and hiding of state-process, and extreme\r\n            late-binding of all things.”\r\n            ~ Alan Kay<br><br>\r\n            In other words, according to Alan Kay, the essential ingredients of OOP are:\r\n            <ul>\r\n                <li>Message passing</li>\r\n                <li>Encapsulation</li>\r\n                <li>Dynamic binding</li>\r\n            </ul>\r\n            Notably, inheritance and subclass polymorphism were NOT considered essential ingredients of OOP by Alan\r\n            Kay, the man who coined the term and brought OOP to the masses.<br><br>\r\n            </p>\r\n            <p>\r\n            <h2><strong>The Essence of OOP</strong></h2>\r\n            The combination of message passing and encapsulation serve some important purposes:\r\n            <ul>\r\n                <li>Avoiding shared mutable state by encapsulating state and isolating other objects from local state\r\n                    changes. The only way to affect another object’s state is to ask (not command) that object to change\r\n                    it\r\n                    by sending a message. State changes are controlled at a local, cellular level rather than exposed to\r\n                    shared access.</li><br>\r\n                <li>Decoupling objects from each other — the message sender is only loosely coupled to the message\r\n                    receiver,\r\n                    through the messaging API.</li><br>\r\n                <li>Adaptability and resilience to changes at runtime via late binding. Runtime adaptability provides\r\n                    many\r\n                    great benefits that Alan Kay considered essential to OOP.</li><br>\r\n            </ul>\r\n            These ideas were inspired by biological cells and/or individual computers on a network via Alan Kay’s\r\n            background in biology and influence from the design of Arpanet (an early version of the internet). Even\r\n            that early on, Alan Kay imagined software running on a giant, distributed computer (the internet), where\r\n            individual computers acted like biological cells, operating independently on their own isolated state,\r\n            and communicating via message passing.<br><br>\r\n            “I realized that the cell/whole-computer metaphor would get rid of data[…]”\r\n            ~ Alan Kay<br><br>\r\n            By “get rid of data”, Alan Kay was surely aware of shared mutable state problems and tight coupling\r\n            caused by shared data — common themes today.<br><br>\r\n            But in the late 1960s, ARPA programmers were frustrated by the need to choose a data model\r\n            representation for their programs in advance of building software. Procedures that were too tightly\r\n            coupled to particular data structures were not resilient to change. They wanted a more homogenous\r\n            treatment of data.<br><br>\r\n            “[…] the whole point of OOP is not to have to worry about what is inside an object. Objects made on\r\n            different machines and with different languages should be able to talk to each other […]” ~ Alan Kay<br><br>\r\n            Objects can abstract away and hide data structure implementations. The internal implementation of an\r\n            object could change without breaking other parts of the software system. In fact, with extreme late\r\n            binding, an entirely different computer system could take over the responsibilities of an object, and\r\n            the software could keep working. Objects, meanwhile, could expose a standard interface that works with\r\n            whatever data structure the object happened to use internally. The same interface could work with a\r\n            linked list, a tree, a stream, and so on.<br><br>\r\n            Alan Kay also saw objects as algebraic structures, which make certain mathematically provable guarantees\r\n            about their behaviors:<br><br>\r\n            “My math background made me realize that each object could have several algebras associated with it, and\r\n            there could be families of these, and that these would be very very useful.”\r\n            ~ Alan Kay<br><br>\r\n            This has proven to be true, and forms the basis for objects such as promises and lenses, both inspired\r\n            by category theory.<br><br>\r\n            The algebraic nature of Alan Kay’s vision for objects would allow objects to afford formal\r\n            verifications, deterministic behavior, and improved testability, because algebras are essentially\r\n            operations which obey a few rules in the form of equations.<br><br>\r\n            In programmer lingo, algebras are like abstractions made up of functions (operations) accompanied by\r\n            specific laws enforced by unit tests those functions must pass (axioms/equations).<br><br>\r\n            Those ideas were forgotten for decades in most C-family OO languages, including C++, Java, C#, etc., but\r\n            they’re beginning to find their way back into recent versions of most widely used OO languages.\r\n            You might say the programming world is rediscovering the benefits of functional programming and reasoned\r\n            thought in the context of OO languages.<br><br>\r\n            Like JavaScript and Smalltalk before it, most modern OO languages are becoming more and more\r\n            “multi-paradigm languages”. There is no reason to choose between functional programming and OOP. When we\r\n            look at the historical essence of each, they are not only compatible, but complementary ideas.<br><br>\r\n            Because they share so many features in common, I like to say that JavaScript is Smalltalk’s revenge on\r\n            the world’s misunderstanding of OOP. Both Smalltalk and JavaScript support:\r\n            <ul>\r\n                <li>Objects</li>\r\n                <li>First-class functions and closures</li>\r\n                <li>Dynamic types</li>\r\n                <li>Late binding (functions/methods changeable at runtime)</li>\r\n                <li>OOP without class inheritance</li>\r\n            </ul>\r\n            What is essential to OOP (according to Alan Kay)?\r\n            <ul>\r\n                <li>Encapsulation</li>\r\n                <li>Message passing</li>\r\n                <li>Dynamic binding (the ability for the program to evolve/adapt at runtime)</li>\r\n            </ul>\r\n            What is non-essential?\r\n            <ul>\r\n                <li>Classes</li>\r\n                <li>Class inheritance</li>\r\n                <li>Special treatment for objects/functions/data</li>\r\n                <li>The new keyword</li>\r\n                <li>Polymorphism</li>\r\n                <li>Static types</li>\r\n                <li>Recognizing a class as a “type”</li>\r\n            </ul>\r\n            If your background is Java or C#, you may be thinking static types and Polymorphism are essential\r\n            ingredients, but Alan Kay preferred dealing with generic behaviors in algebraic form.\r\n            This is the functor map signature, which acts generically over unspecified types a and b, applying a\r\n            function from a to b in the context of a functor of a to produce a functor of b. Functor is math jargon\r\n            that essentially means “supporting the map operation”. If you\'re familiar with [].map() in JavaScript,\r\n            you already know what that means.<br><br>\r\n\r\n            The .map() method is generic in the sense that a and b can be any type, and .map() handles it just fine\r\n            because arrays are data structures that implement the algebraic functor laws. The types don\'t matter to\r\n            .map() because it doesn\'t try to manipulate them directly, instead applying a function that expects and\r\n            returns the correct types for the application.<br><br>\r\n\r\n            This generic type relationship is difficult to express correctly and thoroughly in a language like\r\n            TypeScript, but was pretty easy to express in Haskell’s Hindley Milner types with support for higher\r\n            kinded types (types of types).<br><br>\r\n            Most type systems have been too restrictive to allow for free expression of dynamic and functional\r\n            ideas, such as function composition, free object composition, runtime object extension, combinators,\r\n            lenses, etc. In other words, static types frequently make it harder to write composable software.\r\n            If your type system is too restrictive (e.g., TypeScript, Java), you’re forced to write more convoluted\r\n            code to accomplish the same goals. That doesn’t mean static types are a bad idea, or that all static\r\n            type implementations are equally restrictive. I have encountered far fewer problems with Haskell’s type\r\n            system.<br><br>\r\n            If you’re a fan of static types and you don’t mind the restrictions, more power to you, but if you find\r\n            some of the advice in this text difficult because it’s hard to type composed functions and composite\r\n            algebraic structures, blame the type system, not the ideas. People love the comfort of their SUVs, but\r\n            nobody complains that they don’t let you fly. For that, you need a vehicle with more degrees of freedom.\r\n            If restrictions make your code simpler, great! But if restrictions force you to write more complicated\r\n            code, perhaps the restrictions are wrong.\r\n            </p>\r\n            <p>\r\n            <h2><strong>What is an object?</strong></h2>\r\n            Objects have clearly taken on a lot of connotations over the years. What we call “objects” in JavaScript\r\n            are simply composite data types, with none of the implications from either class-based programming or\r\n            Alan Kay’s message-passing.<br><br>\r\n            In JavaScript, those objects can and frequently do support encapsulation, message passing, behavior\r\n            sharing via methods, even subclass polymorphism (albeit using a delegation chain rather than type-based\r\n            dispatch). You can assign any function to any property. You can build object behaviors dynamically, and\r\n            change the meaning of an object at runtime. JavaScript also supports encapsulation using closures for\r\n            implementation privacy. But all of that is opt-in behavior.<br><br>\r\n            Our current idea of an object is simply a composite data structure, and does not require anything more\r\n            to be considered an object. But programming using these kinds of objects does not make your code\r\n            “object-oriented” any more than programming with functions makes your code “functional”.<br><br>\r\n            <h3>OOP is not Real OOP Anymore</h3>\r\n            Because “object” in modern programming languages means much less than it did to Alan Kay, I’m using\r\n            “component” instead of “object” to describe the rules of real OOP. Many objects are owned and\r\n            manipulated directly by other code in JavaScript, but components should encapsulate and control their\r\n            own state.<br><br>\r\n            <h3>Real OOP means:</h3>\r\n            <ul>\r\n                <li>Programming with components (Alan Kay’s “object”)</li>\r\n                <li>Component state must be encapsulated</li>\r\n                <li>Using message passing for inter-object communication</li>\r\n                <li>Components can be added/changed/replaced at runtime</li>\r\n            </ul>\r\n            Most component behaviors can be specified generically using algebraic data structures. Inheritance is\r\n            not needed here. Components can reuse behaviors from shared functions and modular imports without\r\n            sharing their data.<br><br>\r\n            Manipulating objects or using class inheritance in JavaScript does not mean that you’re “doing OOP”.\r\n            Using components in this way does. But popular usage is how words get defined, so perhaps we should\r\n            abandon OOP and call this “Message Oriented Programming (MOP)” instead of “Object Oriented Programming\r\n            (OOP)”?<br><br>\r\n            Is it coincidence that mops are used to clean up messes?\r\n            </p>\r\n            <p>\r\n            <h2><strong>What Good MOP Looks Like</strong></h2>\r\n            In most modern software, there is some UI responsible for managing user interactions, some code managing\r\n            application state (user data), and code managing system or network I/O.<br><br>\r\n            Each of those systems may require long-lived processes, such as event listeners, state to keep track of\r\n            things like the network connection, ui element status, and the application state itself.<br><br>\r\n            Good MOP means that instead of all of these systems reaching out and directly manipulating each other’s\r\n            state, the system communicates with other components via message dispatch. When the user clicks on a\r\n            save button, a \"SAVE\" message might get dispatched, which an application state component might interpret\r\n            and relay to a state update handler (such as a pure reducer function). Perhaps after the state has been\r\n            updated, the state component might dispatch a \"STATE_UPDATED\" message to a UI component, which in turn\r\n            will interpret the state, reconcile what parts of the UI need to be updated, and relay the updated state\r\n            to the subcomponents that handle those parts of the UI.<br><br>\r\n            Meanwhile, the network connection component might be monitoring the user’s connection to another machine\r\n            on the network, listening for messages, and dispatching updated state representations to save data on a\r\n            remote machine. It’s internally keeping track of a network heartbeat timer, whether the connection is\r\n            currently online or offline, and so on.<br><br>\r\n            These systems don’t need to know about the details of the other parts of the system. Only about their\r\n            individual, modular concerns. The system components are decomposable and recomposable. They implement\r\n            standardized interfaces so that they are able to interoperate. As long as the interface is satisfied,\r\n            you could substitute replacements which may do the same thing in different ways, or completely different\r\n            things with the same messages. You may even do so at runtime, and everything would keep working\r\n            properly.<br><br>\r\n            Components of the same software system may not even need to be located on the same machine. The system\r\n            could be decentralized. The network storage might shard the data across a decentralized storage system\r\n            like IPFS, so that the user is not reliant on the health of any particular machine to ensure their data\r\n            is safely backed up, and safe from hackers who might want to steal it.<br><br>\r\n            OOP was partially inspired by Arpanet, and one of the goals of Arpanet was to build a decentralized\r\n            network that could be resilient to attacks like atomic bombs. According to director of DARPA during\r\n            Arpanet development, Stephen J. Lukasik (“Why the Arpanet Was Built”):<br>\r\n            “The goal was to exploit new computer technologies to meet the needs of military command and control\r\n            against nuclear threats, achieve survivable control of US nuclear forces, and improve military tactical\r\n            and management decision making.”<br><br>\r\n            Note: The primary impetus of Arpanet was convenience rather than nuclear threat, and its obvious defense\r\n            advantages emerged later. ARPA was using three separate computer terminals to communicate with three\r\n            separate computer research projects. Bob Taylor wanted a single computer network to connect each project\r\n            with the others.<br><br>\r\n            A good MOP system might share the internet’s robustness using components that are hot-swappable while\r\n            the application is running. It could continue to work if the user is on a cell phone and they go offline\r\n            because they entered a tunnel. It could continue to function if a hurricane knocks out the power to one\r\n            of the data centers where servers are located.<br><br>\r\n            It’s time for the software world to let go of the failed class inheritance experiment, and embrace the\r\n            math and science principles that originally defined the spirit of OOP.<br><br>\r\n            It’s time for us to start building more flexible, more resilient, better-composed software, with MOP and\r\n            functional programming working in harmony.<br><br>\r\n            <b>Note:</b> The MOP acronym is already used to describe “monitoring-oriented programming” and its unlikely\r\n            OOP\r\n            is going to go away quietly.<br><br>\r\n            Don’t be upset if MOP doesn’t catch on as programming lingo.\r\n            Do MOP up your OOPs.</p>\r\n            </p>', 1002),
(103, 'The challenge', '2020-11-01', 'computer-science.jpg', 'Tackling the Challenges of CS', '<p><a name=\"body-1\"></a></p>             <p>Chris Stephenson isn&#39;t afraid to tackle complex problems. The founding Executive Director of the                 Computer Science Teachers Association (CSTA), current head of Computer Science (CS) Education Strategy                 at Google, and recipient of the 2018 Outstanding Contributor to ACM Award, Stephenson has worked                 tirelessly since the late 1980s to advance computer science education at the K&ndash;12 level. Here, she                 talks to us about the challenges that the CS education community still faces, from building a pipeline                 of qualified CS teachers to ensuring equitable access to learning for all students.</p>             <p><strong>You&#39;ve been involved with CS education for decades, but your career path was somewhat                     winding.</strong> </p>             <p>I&#39;ve probably already had several careers. I started out working as a radio news broadcaster, and                 then I moved into public television, where I was a researcher for a public affairs show. In that era,                 personal computers were just coming into use, and I was fortunate enough to be given a computer at work.                 It opened my eyes to a world of possibilities. After that, I began working as a technical writer, and                 eventually I was hired by the compiler writing team at the University of Toronto. That&#39;s when my                 true career in computer science education began. At the time, the university was promoting the use of a                 programming language called Turing, which they&#39;d developed and were using to teach introductory                 courses. They wanted to make it broadly available to high school teachers and students. My efforts to                 understand how to achieve this gave me a much better understanding of the complexities of formal                 education.</p>             <p><strong>In 2004, shortly after you began working toward your Ph.D. in education at Oregon State                     University, ACM hired you on a part-time basis to start the Computer science Teachers                     Association.</strong></p>             <p>Starting a new organization was an exciting opportunity. Yet getting anyone interested in computer                 science, at that time, was a tremendous challenge.</p>             <p><strong>What were some of the specific issues you faced?</strong></p>             <p>There were a couple of factors impacting the situation for CS education. First, there wasn&#39;t any kind                 of broad public understanding of CS education and its potential place in the canon. Also, many of the                 original CS school programs were disintegrating with the retirement of a generation of teachers, and CS                 certainly wasn&#39;t on the radar of politicians.</p>             <hr />             <blockquote>                 <p><em>Working to launch CSTA was exciting, but &quot;Getting anyone interested in computer science                         &hellip; was a tremendous challenge.&quot;</em></p>             </blockquote>             <hr />             <p><strong>A lot has changed since then&mdash;which is not to say there aren&#39;t still                     challenges.</strong></p>             <p>It&#39;s been really exciting to see the sea change that has happened. Fifteen years ago, if you asked                 anyone about what programming language they were using and why, they would talk about industrial                 relevance. When you&#39;re dealing with kids who are at least eight years away from employment in the                 field, that&#39;s not an academically sound rationale. Now, there are so many accessible tools to teach                 programming, even for very young children.</p>             <p>One of the remaining challenges is that we still do not have a solid pipeline of teachers who can meet                 the rising demand for CS in public schools. We have also not succeeded in making access to CS learning                 truly equitable. We&#39;ve worked very hard as a community to focus on diversity, and we&#39;re making                 some gains in terms of gender, race, and ethnicity, but they are not sufficient. I also think that                 poverty is a bigger and more complex issue. When we talk about equity, very rarely do we talk about                 socioeconomic issues. We don&#39;t like to look at poverty&mdash;and I don&#39;t just mean in the CS                 education community, I mean broadly.</p>             <p><strong>What, in your opinion, have been some of the more effective strategies for encouraging                     diversity?</strong></p>             <p>There are two different schools of thought, and both are valid. One school of thought is to change the                 curriculum to make it more accessible and engaging to everyone&mdash;this is impacting undergraduate                 education as well as elementary and secondary schools. The other focus has been to change the culture in                 which the learning takes place. Things like what kind of visuals are in the lab, the language we use to                 address our students, and whether our classroom culture is more competitive or more collaborative have                 an impact on whether and which students believe they belong.</p>             <p><strong>What about the challenge of fostering a pipeline of qualified CS teachers?</strong></p>             <p>One of the realities of teacher education is that it is standards-driven. The job of teacher education                 programs is to prepare teachers to address and achieve state-level learning standards. The other driving                 factor is certification. So, without standards and without a pathway to certification, there is                 absolutely no incentive for teacher preparation programs to prepare CS teachers. I think we&#39;ve seen                 amazing progress on the standards side, and some states are now starting to address the certification                 pathway issue because they see that, finally, there is significant demand. But we are still only seeing                 small pockets of innovation.</p>             <hr />             <blockquote>                 <p><em>&quot;Assessment is one of the areas in which I experience a lot of cognitive and emotional                         dissonance.&quot;</em></p>             </blockquote>             <hr />             <p><strong>Let&#39;s talk about your work with Google, which has launched CS programs like CS4HS, one of the                     earliest efforts to support the professional development of computer science teachers.</strong></p>             <p>CS4HS preceded my time at Google. In 2008, it was a truly innovative and necessary program. Today,                 however, there are many groups who are providing professional development for teachers, from Code.org to                 Mobile CSP. CS4HS is no longer as necessary, so we&#39;ve transitioned our focus to supporting rigorous                 CS education research. CS education does not have the deep and wide body of knowledge that other                 disciplines can rely on, so two years ago, Google launched a program called Computer Science Education                 Research grants, or CS-ER, through which we provide one-year grants to support innovative research                 directed at improving teaching and learning in CS in K-12.</p>             <p><strong>What kinds of proposals have come in thus far?</strong></p>             <p>The proposals have been hugely diverse and very rigorous, which is great. We&#39;ve funded projects that                 looked at the needs of students in rural areas and how to address them, projects that relate to                 preparing teachers for new certification exams, and projects that focus on the development of curricular                 material and computational thinking to be introduced to teachers in their pre-service education                 programs.</p>             <p><strong>Let&#39;s talk about the issue of assessment, which you&#39;ve commented on before.</strong></p>             <p>Assessment is one of the areas in which I experience a lot of cognitive and emotional dissonance. At                 Google, we frequently get asked to develop assessments to measure student learning, but I believe that                 teachers always provide the best assessments. I particularly struggle with high-stakes testing, because                 while I understand that it originally came from a place of trying to ensure equitable learning for all                 students, it has become all stick and no carrot. I also see how it affects teachers who feel compelled                 to teach to the test and students who feel tested to death. Unfortunately, I do not find myself capable                 of articulating a solution.</p>             <p><strong>Are there other challenges, new or old, that you feel don&#39;t get as much attention as they                     deserve?</strong></p>             <p>When I was with CSTA, we started with the easier problems and worked our way up to the hardest ones. The                 easier problems were things like creating resources for teachers, addressing teacher isolation, building                 a community of teachers, and providing ways for those teachers to grow as leaders. Then we moved on to                 standards, which was harder, but we achieved it. We have also made enormous strides in helping the                 public understand why CS education is relevant and necessary.</p>             <p><strong>Now it&#39;s onto the much more complicated issues of access and equity, and ensuring we have a                     continuing pipeline of CS teachers.</strong></p>             <p>The challenges that remain are significant, and they are going to take a lot of hard work, but I feel                 that we&#39;re in a space now where all the people who need to be engaged are engaged, including                 parents, and I&#39;m very, very hopeful. The one little warning bell that rings in my head is that I                 feel we have about three years to prove that we were right&mdash;that students can learn this, that they                 can learn it effectively, and that it will help them in their futures. Now that we&#39;re in the                 implementation phase, we have to be even more attentive and rigorous in our thinking and our actions to                 ensure that we&#39;re doing the best thing for all students.</p>', 1003),
(104, 'History', '2020-01-04', 'AI.jpg', 'AI Began in 1912', '<p>A workshop held in 1956 at Dartmouth College, Hanover, NH, is usually considered the beginning of\r\n                artificial intelligence. Participants included John McCarthy and Marvin Minsky. Alan Turing and Konrad\r\n                Zuse, who already dealt with this topic in the 1940s, are also mentioned as the founders of this\r\n                discipline.</p>\r\n            <p>For decades, machine chess was considered the highlight of artificial intelligence. It was not until 1997\r\n                that IBM&#39;s Deep Blue program was able to beat then-world chess champion Garry Kasparov. Today,\r\n                programs such as AlphaGo zero and AlphaZero from Deepmind (Google) master much more difficult games\r\n                using artificial neural networks. If one takes chess as a yardstick for artificial intelligence,\r\n                however, this branch of research begins much earlier, at the latest in 1912 with the chess automaton of\r\n                the Spaniard Leonardo Torres Quevedo (cf. Fig. 1). In the chess-playing Turk (1769) of Wolfgang von\r\n                Kempelen, a human player was hidden.</p>\r\n            <p>Torres Quevedo showed his electromechanical chess machine (El ajedrecista, chess player), developed from\r\n                1912, in the machine laboratory of the Sorbonne University in Paris in 1914. The endgame machine was\r\n                able to checkmate the king of a human opponent with a rook and king.</p>\r\n            \r\n            <p>In 1951, Norbert Wiener played against the second model (1922) at the Paris computer conference, see.\r\n                The Austrian computer scientist Heinz Zemanek, who played against this chess machine at the Brussels\r\n                World Fair in 1958, described it as a historical automaton that was far ahead of its time. According to\r\n                Zemanek, Torres Quevedo designed a very clever six-part algorithm for the end game, which was\r\n                implemented using levers, gears, and relays.</p>\r\n            <p>&nbsp;</p>', 1004);
INSERT INTO `blog` (`Blog_ID`, `Topic`, `Date`, `Image`, `Title`, `Content`, `Author_ID`) VALUES
(105, 'Education', '2021-09-09', 'research_process.jpg', 'Starting the Research Process', '<div>                      <p>Research, simply put, is information seeking. However, not many see research as more                         than this – it’s not just about finding a certain piece of information. Research, in                         its strictest sense, is a thorough examination of a subject. Starting the research                         process includes locating information, reflecting on the information obtained,                         incorporating your ideas and organizing them, and then using various credible                         sources and ideas to come up with your project, be it a classification essay, a research                         paper, or longer ones, like theses and dissertations. Starting the research process                         is the only the beginning, and you’ll find the other parts get more complex as you                         go.</p>                      <p>Follow the following steps below, which outlines a simple but effective strategy on                         starting your research paper and how it should go from there. Note that the steps                         are perfectly interchangeable, as there are challenges you may be encountering along                         the way that call for such measure.</p>                      <h2><strong>Step 1: Distinguish and develop your topic.</strong></h2>                     <p>For many, selecting the topic can be the most challenging aspect of a research                         assignment. This is the first step to the research process, so the pressure of                         getting it done correctly is there. Remember the following as you select your topic:                     </p>                     <ul type=\"disc\">                         <li>Ensure that you choose a topic that is well within the parameters set by the                             instructions. Most of the time your instructor will provide you with clear                             guidelines as to what you should and shouldn’t be writing about. Failure to work                             within the set instructions may get your proposed paper rejected. </li>                         <li>Within those boundaries, select a topic that personally interests you, and                             entices you to learn more about it. The research process can get boring and                             complicated, but it will be more enjoyable if you’re working on something you                             deem interesting.</li>                         <li>It is also vital to emphasize that you should choose a topic in which you can                             find a wide range of information. Conduct a preliminary search of information                             sources, which can help you determine whether there are already existing sources                             or a database you can use. If you find too much information, this usually means                             you need to narrow your topic. Too little information means you need to broaden                             your topic.</li>                         <li>Sounds generic, but be original. Your instructor goes through hundreds of                             research papers each year, and plenty of them are about the same topics. Stand                             out from the rest by choosing an interesting and the-road-less-taken topic.</li>                         <li>It’s only natural to feel lost as you come up with your topic. If you feel like                             you need the assistance, see your instructor for advice. Chances are they’d be                             happy to help.</li>                     </ul>                     <p>After you’ve determined your topic, it will help to state it as a question. For                         instance, if you’ve chosen to write about the epidemic of the increasing prison                         population in America</a>, you may want to pose the question, “What leads to the                         increase of the prison population in America?” By posing a question about your                         subject, you will be able to easily identify the keywords or main concepts necessary                         in the writing of your research. </p>                     <h2><strong>Step 2 : Conduct a preliminary search for data.</strong></h2>                     <p>Having your heart fixated on a topic can send you on a frenzy as you start the                         research process, but hit the brakes first. Before beginning your research, do a                         primary search for information. This was mentioned in the first step, but it’s                         necessary to emphasize it as a vital step to the entire research process. Conducting                         this search not only helps you determine whether data is enough for you to move                         forward, this will also help you set the context of your research. Your own library                         is a goldmine for data, especially the reference collection. Your school may also                         have access to internet databases you won’t be able to Google on your own. As your                         search begins, you may find it necessary to tweak the focus of your topic – all this                         depends on the resources available to you.</p>                     <h2><strong>Step 3: Locate necessary materials.</strong></h2>                     <p>As soon as you’ve set the direction of your research paper, starting the research                         process is now easier. Begin to locate material that will support your topic, which                         you can find in various places. Books can be helpful, as well as magazines and                         newspaper articles. Scholarly journals are your best bet, though, as they are                         circulated in the respective fields you wish to contribute in. The internet is also                         a good source, as certain publications have already adapted to the digital world.                         Beware of fraudulent sources, though, as the cyberworld is teeming with false                         information. Make sure you know how to evaluate sources before                         using them.</p>                     <h2><strong>Step 4: Make sure to evaluate your sources.</strong></h2>                     <p>Evaluating your sources is integral to the research process. To help you with this                         step, check out the <strong>CARS Checklist for Information Quality </strong>for tips                         some tips. Your instructor, of course, expects that you will provide truthful,                         reliable, and credible information. You have all the right to expect the same from                         your sources, especially if they were obtained from the Internet. </p>                     <h2><strong>Step 5: Remember to take down notes.</strong></h2>                     <p>After you’ve completed the evaluation, go over your chosen resources again and figure                         out which information will be useful for your information. Document every bit of                         information you’ve consulted, even if there is a miniscule chance you may not be                         needing it. List down the author, URL, publisher, and other necessary information as                         you create the bibliography.</p>                     <h2><strong>Step 6: Begin writing your paper. </strong></h2>                     <p>This is where the bulk of your research work will go to, so it’s vital that you do it                         justice! Begin this step by organizing the information you’ve collected. From there,                         create a rough draft, where you’ll write your ideas down on paper. You don’t have to                         get things perfect the first time, as organizing and incorporating your ideas is                         key. They will determine which direction your final paper will take. After                         completing your draft, revise as many times as possible – polishing up as necessary                         will lead you to the final product worthy enough of presenting or turning in to your                         instructor.</p>                     <h2><strong>Step 7: Cite your sources properly.</strong></h2>                     <p>Remember: <em>give credit where credit is due.</em> Cite your sources correctly, as                         it serves two purposes: it not only gives proper credit to the authors of each                         material you’ve used, it also helps those reading your work to duplicate your                         research, aiding them as they locate the sources you have listed as references. You                         may use either APA citation style or the MLA as citation formats, two of the most popular ones. Failure to cite your sources                         correctly is equal to plagiarism – you wouldn’t want to submit a plagiarized paper,                         right?</p>                     <h2><strong>Step 8: Proofread, proofread, and proofread!</strong></h2>                     <p>The final step in the research process is to proofread the paper you’ve written. Read                         your text thoroughly, and check for any errors. Mistakes on spelling, grammar, and                         punctuation are usually the most common grammar mistakes students                             make. Again, ensure that your sources are cited properly, and that the                         message you wish to convey has been written as clear and concise as possible.</p>                     <p><span contenteditable=\"false\" draggable=\"true\"                             class=\"fr-video fr-fvc fr-dvb fr-draggable\"><iframe                                 src=\"https://www.youtube.com/embed/miMnSowiq4s?&wmode=opaque\" frameborder=\"0\"                                 allowfullscreen=\"allowfullscreen\" class=\"fr-draggable\"                                 style=\"width: 983px; height: 414px;\"></iframe></span><br></p>                     <p>Starting the research process is intimidating, especially since it begins with topic                         selection. But as soon as you have the figured out, the rest can be easy! Just keep                         coming back to this guide for reference, should you encounter a rough patch. </p>                 </div>', 1005),
(106, 'The Challenge', '2020-07-16', 'data_science.jpg', 'Ten Challenges of Data Science', '<p>The current COVID-19 pandemic demonstrates that understanding data is important not only for scientists,                 but for everyone. To understand the meaning of the data provided by popular media channels regarding the                 pandemic, a basic understanding of data science principles is needed, in addition to basic skills for                 reading and interpreting tables and graphs.</p>             <p>The huge, recent growth in available data and machine power is increasing the demand for data scientists                 who can generate value from this data. This demand, in turn, is leading many institutions to offer data                 science programs (Berman <em>et al</em>., 2018). Data science education, however, is a challenging and                 very young field of research.</p>             <p>In this blog we highlight ten challenges of data science education. The challenges are clustered into                 three categories: (a) Discipline, (b) Skills, and (c) Environment of data science education, creating                 the abbreviation DSE, which also stands for Data Science Education.</p>             <h2>Category 1 – Discipline</h2>             <p>The <strong>discipline challenges</strong> deal with difficulties in teaching and learning data science,                 and stem from the interdisciplinary structure of data science.</p>             <br><h4>Challenge 1: Interdisciplinarity</h4>             <p>Data science is an interdisciplinary science laying in the intersection of three disciplines: computer                 science, mathematics & statistics, and the domain knowledge of the data (Berman <em>et al</em>., 2018).                 Due to this complex structure, not surprisingly, researchers have expressed many different views,                 opinions, and presentations regarding the exact structure of the field. Figure 1 reflects the common                 spirit of these diagrams. Based on this variety of perspectives on the structure of data science, a                 variety of data science curricula have been developed (Tang & Sae-lim, 2018). While the diagram seems to                 be symmetric, the actual balance required between the different topics in a data science program is                 still under debate.</p>             <br><h4>Challenge 2. Data Domain</h4>             <p>Although the data domain in the Venn diagram presented in Figure 1 is represented by only <em>one</em>                 circle, in practice, data science is relevant for many diverse domains, such as economics, education,                 psychology, medicine, and sports. Skiena (2017) notes that one of the basic principles of doing data                 science is the need to understand the domain of the data. This variety of domains, however, makes it                 difficult to integrate the domain knowledge into the curriculum and to convey the domain\'s importance                 for solving data science problems to the students.</p>             <br><h4>Challenge 3. Concept Comprehension</h4>             <p>Educational research on the components of data science reveals that learners face difficulties when                 learning each of the component fields. The computer science education community is well familiar with                 challenges of teaching computer science. With respect to statistical thinking, the psychological                 research literature discusses many biases, one of which is the <em>base-rate neglect</em> which reflects                 the widespread fallacy of ignoring the base rate (the proportions of the different types within the                 population) when solving problems that require the use of Bayesian reasoning (Kahneman & Tversky, 1973).                 Bayesian reasoning is crucial, however, for data selection and interpretation of the results of machine                 learning algorithms, and the challenge is, therefore, how to increase (if at all possible) the learners\'                 awareness to their own biases.</p>             <br><h4>Challenge 4. Cognitive Load</h4>             <p>The cognitive load theory attempts to explain the interaction between our working memory and long-term                 memory when learning new concepts (Sweller, Van Merriënboer, Paas, van Merriënboer, & Paas, 2019). Our                 working memory is limited, unlike the capacity of our long-term memory, which is unlimited in comparison                 and is organized in schemas with different levels of complexity. Before a schema is stored in the                 long-term memory, it is first processed in the working memory.</p>             <p>Considering that students tend to be both novice programmers and novice statisticians and have almost no                 domain knowledge (Challenge 2), it follows that they have not yet constructed schemas of the main                 concepts in these fields. Since solving even a simple data science problem requires code writing and the                 calculation of statistical tests on data taken from some domain, it is reasonable to assume that novices                 experience a cognitive load since their working <a name=\"_Hlk44720807\">memory is required to deal with                     multiple items</a>. When the cognitive load is too high, the cognitive resources needed for the                 construction of new schemas cannot be allocated and the learning process is affected.</p>             <h2>Category 2 – Skills</h2>             <p><strong>Skill challenges</strong> refer to the skills required to become a professional data scientist.             </p>             <br><h4>Challenge 5. Non-Technical Skills</h4>             <p>Among other things, data scientists are required to master non-technical skills, such as critical                 thinking, attentive reading, and effective communication. Ethics and research skills are especially                 important in data science and will therefore be discussed separately in the next paragraphs.</p>             <p>Critical thinking is a good example for illustrating the challenge of teaching and learning non-technical                 skills in data science education. For example, it is well known that models produced by machine learning                 algorithms are not always comprehensible (Elad, 2017). Elad writes that \"in most cases, deep                 learning-based solutions lack mathematical elegance and offer very little interpretability of the found                 solution or understanding of the underlying phenomena\". Data science students must therefore use                 critical thinking when evaluating such machine learning models (which, as mentioned, sometimes are not                 easily understood).</p>             <br><h4>Challenge 6. Ethics</h4>             <p>The need for a professional code of ethics for data science stems from the use of personal data,                 continues through issues related to ownership of data, and ends with the responsibility for how they are                 used. Since ethical norms and standards are a vertical topic that should be integrated into any data                 science topic studied, the challenge is to find the correct balance between teaching it separately in                 specific courses (e.g., the <a href=\"https://www.edx.org/course/data-science-ethics\">edX course \"Data                     Science Ethics\"</a> offered by the University of Michigan) and integrating it into all courses in                 appropriate situations (e.g., Saltz <em>et al</em>., 2019 and Grosz <em>et al</em>., 2019).</p>             <br><h4>Challenge 7. Research Skills</h4>             <p>Any meaningful work in data science includes the basic stages of a research project, which include asking                 research questions, gathering data, analyzing data, and presenting the results. Data science students                 should therefore acquire some research skills as part of their education as data scientists. Research                 skills, however, are usually acquired in graduate school or during the final stages of undergraduate                 studies. If we introduce data science at the undergraduate level, we should consider teaching research                 mindset and research methods as well. Specifically, issues such as deciding on the volume and type of                 data needed for the research and selecting and applying appropriate models and statistical tests, should                 be introduced into introductory data science courses.</p>             <h2>Category 3 – Environment</h2>             <p>The <strong>environment challenges</strong> of a data science program address the teaching methods and                 the diverse populations of data science learners and teachers.</p>             <br><h4>Challenge 8. Real-Life Tasks</h4>             <p>Since data science students are required to deal with domain knowledge (see Challenge 2), it seems that                 project-based learning (PBL) may be a suitable method for teaching data science. PBL is a teaching                 method that has learners solve problems taken from real life situations, and as such, it offers many                 advantages, including active learning and increased motivation (Ramamurthy, 2016). Nevertheless, the                 application of PBL in data science education introduces several challenges, such the project assessment,                 which is known to be a difficult task.</p>             <br><h4>Challenge 9. Learners</h4>             <p>The learner population, which is quite diverse, includes all future citizens and ranges from humanities                 and social sciences students, who have little or no background in computer science, math and statistics,                 through science majors in physics and chemistry, for example, who have a good mathematical background                 but limited computer science background, to engineering students, who have the needed background all                 around. Furthermore, data science students study in diverse educational settings: some attend formal                 frameworks (schools and universities), while others study in non-formal frameworks (such as meetups,                 boot camps, and MOOCs).</p>             <p>To gain a meaningful understanding of data science concepts, such as machine learning, an extensive                 computational and mathematical background is necessary. Didactic transposition is one mechanism that may                 be used to overcome a background gap, if such exists. In general, didactic transposition refers to the                 adaptation of professional knowledge to actual teaching situations (Chevallard, 1989). Since it is                 unrealistic to expect all learners to gain this background knowledge, we must didactically transpose                 such advanced content for different learner populations, as was illustrated in the context of computer                 science by Hazzan, Dubinsky and Meerbaum-Salant (2010).</p>             <br><h4>Challenge 10. Data Science Teachers</h4>             <p>Since data science is a young field, data science teachers today do not necessarily hold bachelor\'s                 degrees in data science themselves, but rather come from diverse academic and industrial backgrounds.                 Thus, a tradition of data science pedagogy has not yet been shaped and its main teaching principles have                 not yet been formulated. Consequently, data science teacher preparation programs have not yet been                 developed and established.</p>             <h2>Summary</h2>             <p>This blog describes 10 challenges of data science education. Clearly, additional challenges and                 categorizations exist. Our research attempts to identify these challenges by exploring different                 teaching frameworks for different populations. We hope that this blog encourages the discussion about                 data science education.</p>', 1006),
(107, 'Comperative analysis', '2020-06-09', 'distance_learning.jpg', 'Is CS Suitable for Distance Learning?', '<p>In this blog, I discuss how undergraduate computer science students perceive the discipline of computer science by analyzing their distance learning experience during the 2020 Spring semester &ndash; the Corona Semester. This perception is derived based on an analysis of students&#39; comparison of distance learning of computer science with a) other sciences and engineering and b) social sciences and humanities.</p> <p>Data was collected during the 2020 Spring semester at the <a href=\"https://www.cs.huji.ac.il/\">Rachel and Selim Benin School of Computer Science and Engineering</a> of the Hebrew University of Jerusalem (where I was on sabbatical) using two questionnaires. The purpose of both questionnaires was to give the school management feedback on their students&#39; experiences (including learning processes and habits, feelings, needs, and concerns) and, based on the lessons learned from the data analysis, to design the upcoming semesters, regardless of whether or not on-campus learning will be permitted. The feedback received in the first questionnaire, right after the onset of the semester, after the students had experienced distance learning for only three weeks, also enabled the school management to apply the lessons learned from the data analysis to the continuation of the semester. In the second questionnaire, the students were asked specifically to propose how they prefer teaching to be organized during the 2020-2021 academic year if the pandemic continues and on-campus learning is limited (e.g., in small groups) or is not possible at all.</p> <p>As it turns out, these questionnaires guided the students to reflect on and analyze their learning processes and behaviors before and during this semester, habits of mind they are not usually encouraged to apply during regular semesters. In fact, the analysis of the data gathered by these questionnaires enabled the school management to understand the students&#39; perspective, not only on distance learning of computer science specifically, but also in a broader sense, how students perceive the essence of computer science and computer science learning.</p> <p>Specifically, in this blog, I describe students&#39; perceptions of computer science by analyzing their comparison of the suitability of computer science for distance learning with the suitability of other domains, specifically (a) natural sciences and engineering and (b) social sciences and humanities for distance learning.</p> <p>Additional details about the questionnaires can be found in my previous blog on <a href=\"https://cacm.acm.org/blogs/blog-cacm/248439-determining-cs-student-preferences-during-the-corona-semester/fulltext\">Determining CS Student Preferences During the Corona Semester</a> posted on November 2, 2020.</p> <h4><strong>Data Collection</strong></h4> <p>Approximately 1,800 undergraduate students are enrolled in <a href=\"https://www.cs.huji.ac.il/academics/programs-for-bachelors-degree\">a variety of study tracks offered by the School</a> of Computer Science and Engineering. <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSdFJ9t--cn_o3fx691GNxtKQ9Tep_C8VzVxOY3-l-urKUUdkw/viewform\">The first questionnaire</a><u> </u>was distributed on April 21, 2020, during the third week of the semester and was answered by 493 students (27%); <a href=\"https://docs.google.com/forms/d/e/1FAIpQLScrodVC2d85ckhY9tQG5gRYDRgFZVmcplDbGVJsO0P89GKsJA/viewform\">the second questionnaire</a> was distributed on June 14, 2020, about three weeks before the end of the semester and was answered by 290 students (16%). Responders were distributed as follows (to avoid excessive data, averages for the responders from both questionnaires are presented): 41% of the responding students were freshmen (of which about 3% began their academic studies in the Corona semester), 28% were sophomores, 23% were juniors, and the rest, 8%, were seniors; 60% were men and 40% were women (compared with an overall 70%-30% gender ratio at the school). One-third of the students who answered the questionnaire had previous experience with distance learning. Both questionnaires were in Hebrew and were distributed by email.</p> <p>The second questionnaire included the following two questions: &quot;To what extent, in your opinion, is distance learning suitable for computer science, in comparison with natural sciences and other engineering domains?&quot; and &quot;To what extent, in your opinion, is distance learning suitable for computer science in comparison to humanities and social sciences?&quot; In both questions, the students were asked to rate their opinion on the following scale: Less suitable, Equally suitable, More suitable, and I don&#39;t know. We note that the computer science students study on the same campus of the Hebrew University of Jerusalem as the natural sciences (chemistry, physics, biology) students, while the humanities and social sciences study on a different campus of the university. Table 1 shows the distribution of students&#39; answers to these questions.</p> <p style=\"text-align:left\">&nbsp;</p> <p style=\"text-align:left\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">Table 1: Students&#39; comparison of the suitability of computer science for distance learning relative </span><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">to (a) natural sciences and engineering domains and (b) humanities and social sciences</span></p> <table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; mso-border-alt:solid windowtext .5pt; mso-padding-alt:0in 5.4pt 0in 5.4pt; mso-yfti-tbllook:1184; width:526.25pt\"> <tbody> <tr> <td style=\"width:170.75pt\"> <p style=\"text-align:left\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p> <p style=\"text-align:center\"><strong><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">Distance learning suits computer science</span></strong></p> </td> <td style=\"width:2.75in\"> <p style=\"text-align:center\"><strong><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">Compared with: </span></strong></p> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\"><strong>Natural sciences and other engineering domains</strong> </span></p> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">(286 responses)</span></p> </td> <td style=\"width:157.5pt\"> <p style=\"text-align:center\"><strong><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">Compared with: </span></strong></p> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\"><strong>Humanities and social sciences </strong></span></p> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">(282 responses)</span></p> </td> </tr> <tr> <td style=\"width:170.75pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">More</span></p> </td> <td style=\"width:2.75in\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">96 (</span><span dir=\"RTL\" lang=\"HE\" style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">33.6</span><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">%)</span></p> </td> <td style=\"width:157.5pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">106 (37.6%)</span></p> </td> </tr> <tr> <td style=\"width:170.75pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">Equally</span></p> </td> <td style=\"width:2.75in\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">10</span><span dir=\"RTL\" lang=\"HE\" style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">4</span><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\"> (36.4%)</span></p> </td> <td style=\"width:157.5pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">39 (13.8%)</span></p> </td> </tr> <tr> <td style=\"width:170.75pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">Less</span></p> </td> <td style=\"width:2.75in\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">46 (16.1%)</span></p> </td> <td style=\"width:157.5pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">76 (27%)</span></p> </td> </tr> <tr> <td style=\"width:170.75pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">I don&#39;t know </span></p> </td> <td style=\"width:2.75in\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">40 (14%)</span></p> </td> <td style=\"width:157.5pt\"> <p style=\"text-align:center\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif; font-size:12.0pt\">61 (21.6%)</span></p> </td> </tr> </tbody> </table> <p>&nbsp;</p> <p>As can be seen, students&#39; opinions are divided both with respect to natural sciences and other engineering domains and with respect to humanities and social sciences. However, their opinions are divided differently in the two cases. Specifically, with respect to:</p> <ul> <li style=\"text-align:left\">Natural sciences and other engineering domains: About one-third of the students (33.6%) believe that distance learning suits computer science more, but at the same time, about the same proportion &ndash; one-third (36.4%) &ndash; believe that distance learning suits computer science to the same degree that it suits natural sciences and other engineering domains.</li> <li style=\"text-align:left\">Humanities and social sciences: Although about one-third of the students (37.6%) believe that distance learning suits computer science more, at the same time, about one-fourth (27%) of them believe that distance learning suits computer science less than it suits humanities and social sciences.</li> </ul> <p>In addition to the above closed questions, the students were asked to explain their opinion in open questions. As described below, the data analysis of the answers to the open questions reflect students&#39; perception of computer science and how this perception shapes their opinion with respect to the suitability of computer science for the distance-learning mode.</p> <h4><strong>Data Analysis</strong></h4> <p><strong>A. Computer science is <em>less</em> suitable for distance learning</strong></p> <p>On the one hand, in both cases &ndash; natural sciences and other engineering domains, and humanities and social sciences &ndash; the students explained that distance learning is less suitable for computer science because computer science courses are more difficult. With respect to humanities and social sciences, one of the students explained: &quot;Computer science is more difficult than humanities and therefore is more challenging in distance learning.&quot; With respect to natural sciences and other engineering domains, the students explained this opinion by distinguishing between the mathematics-oriented course and the computer-oriented course. One of them explained: &quot;Although we are dealing with computers, half of the degree is mathematical and studying mathematics this way is much less successful, in my opinion.&quot; Another student wrote that &quot;it is harder to teach mathematics (formulas etc.) by remote teaching.&quot;</p> <p>Similar explanations emerged from the data analysis of the first questionnaire, in which students were asked to answer the following open question: &quot;In your opinion, does distance learning have any unique characteristics in the case of computer science?&quot; Their answers further support the above analysis of the students&#39; perceptions of the suitability of computer science for distance learning, by comparing distance learning of mathematical courses (&quot;theoretical&quot;) with that of programming courses. We illustrate this by presenting several quotes that reflect how students perceive these differences:</p> <ul> <li style=\"text-align:left\">Mathematical courses are much more difficult through distance learning than courses that are based more on speech or programming.</li> <li style=\"text-align:left\">Yes, it is for the better. Programming courses integrate beautifully into distance learning because it [distance learning] reflects the independent learning and the independent work aspects of programming. Conversely, mathematical courses are more complex to perform through distance learning.</li> <li style=\"text-align:left\">It depends on the course. In math and theory courses it is very very challenging and difficult; in programming courses, it can be an opportunity to use additional tools for learning.</li> </ul> <p><strong>B.&nbsp;&nbsp;&nbsp; Computer science is <em>more</em> suitable for distance learning</strong></p> <p>In each of the above cases &ndash; natural sciences and other engineering domains, and humanities and social sciences &ndash; students gave different explanations why distance learning is more suitable for computer science. One student wrote: &quot;I think that in computer science, the option of distance learning is ideal. If we compare [computer science] with other sciences, biology for example, it is clear that there are frameworks that require that students arrive [on campus], such as labs. In social sciences, learning through discussions is very important (but less important than in biology).&quot;</p> <p>In addition, students attributed the suitability of distance learning for computer science to the tremendous amounts of material available online, to the fact that the teaching staff have more technological skills, and to the fact that &quot;most of the computer science degree (unfortunately) consists of self-learning. Many hours of code programming and solving exercises. In class we learn very little, and we learn most of the material at home.&quot; In a similar spirit, another student wrote: &quot;The work of computer science exercises in many cases continues till the middle of the night and because [distance] learning takes place at home, we don&#39;t have to worry about getting home.&quot;</p> <p>As before, similar explanations emerged from the data analysis of the first questionnaire, in which students were asked to answer the following open question, as mentioned above: &quot;In your opinion, does distance learning have any unique characteristics in the case of computer science?&quot; Here are several illustrative quotes that further support students&#39; perceptions that distance learning is more suitable for computer science:</p> <ul> <li>Yes, in most of the computer science courses I attended so far, most of the learning was autonomous any way. In distance learning, it is easier to do that.</li> <li>Yes, in my opinion, it is a domain that can be relatively learned well from the distance since a lot of material is available on the Internet, and sometimes the ability to adjust my study time to when I am more concentrated helps me understand the material.</li> <li>The lecturers and the TAs have less problems with the technology.</li> <li>Yes, you can write code and try different things during the lecture and so the material is grasped better. Furthermore, the recordings are given in comfortable times and suit people with prior knowledge (you can skip parts that you know/advance faster).</li> </ul> <h4><strong>Summary </strong></h4> <p>As can be seen, on the one hand, students perceive computer science as a difficult topic for learning and therefore as less suitable for distance learning compared with other subjects, while on the other hand, since computer science requires less face-to-face interaction (either in terms of discussions or physical facilities) as well as many self-learning hours, it is more suitable for distance learning.</p> <p>Students are not, however, giving up on on-campus learning. As I showed in my previous blog, <a href=\"https://cacm.acm.org/blogs/blog-cacm/248439-determining-cs-student-preferences-during-the-corona-semester/fulltext\">Determining CS Student Preferences During the Corona Semester</a> (posted on November 2, 2020), the Corona Semester sharpened students&rsquo; understanding of what is worth coming to the campus: learning-based social interactions that take place either in formal on-campus settings (class rooms, etc.) or in informal on-campus settings (in the learning spaces).</p>', 1006),
(108, 'Education', '2021-01-27', 'research_resources.jpg', 'First-Year Research Sources', 'As we know, computer science research dissemination is in upheaval. We know that from reading the CACM—David Roman\'s overview of the shifting business model[Roman2011], Moshe Vardi\'s excavation of that model\'s flaws in Editor\'s Letters [Vardi201205, Vardi201207], Vardi\'s report on the \"Publication Culture in Computing Research\" workshop along with Doug Terry\'s Viewpoint on shortcomings of the review process [Vardi2014, Terry2014], and other commentary. Guiding undergraduates through this morass is difficult, and convincing freshmen that computer science research can be done at even their level is daunting.  At the moment, I face this in the First-Year Seminar in Computer Science [Hill2019]. Such a seminar strives to teach high school graduates how to be college students. One of the assignments they undertake is a research paper. Having searched, at least in a cursory fashion, for a detailed LibGuide to computer science research sources for beginners, I see that most point to the ACM Digital Library and the IEEE Xplore—that\'s good. But those are not publications, but aggregators, begging the question where to find research papers at a certain level on a certain topic. With the assistance of my institution\'s librarians, I have put together this list.  Here I display a stripped-down version of the handout and its explanation. (Several links specific to our institution have been removed.) Because the publication scene is volatile, this must be updated regularly. Conference proceedings are omitted, although an instructor might want to recommend those of interest that can be easily obtained and read. Of the three sections shown:  The POPULAR section is for inspiration and background. Online library systems do not lend themselves to idle exploration, due to the digital storage that precludes browsing, picking-up, and running-across. For this reason, I try to provide respectable public websites for such exploration. The AUTHORITATIVE section is for research understanding. I have designated these sources as peer-reviewed for undergraduate research purposes, because they carry deeply-investigated and sometimes profound observation and analysis of current developments. I doubt that this would be appropriate in other scientific fields. The SCHOLARLY section is for serious reference. Research requires an original contribution, I tell the students, and their own opinion counts as an original contribution, as long as it is stated with some reference to some sanctioned professional work. In class, we search the scholarly databases with arbitrary example subjects to demonstrate that students can actually find research that suits their grasp of the subject, especially if they are able to formulate a narrow scope by combining interests. Good examples for such searches might be \"multi-player game addiction and sleep\" or \"biometric security voting machines\" (yes, a couple of papers found). Sources for Research in Computing (For COSC 1101 First-Year Seminar) Last update 26 January 2021; R. Hill  Your research paper should draw information from legitimate and authoritative publications.  These include academic books and reputable periodicals and newspapers of record and their websites.  Use the popular publications for background, and use at least one peer-reviewed source for research in depth.  POPULAR Books: To find an area that interests you, try browsing the library stacks in the computer science call numbers, QA 75 and QA 76.  Newspapers: You can use the ProQuest database to reach the most current issue, or past issues, of newspapers. Some carry special sections on technology, as follows. Go through the UW Library access to reach the full-text articles behind the paywall.  Wall Street Journal Tech     UWyo Library FAQ that helps you set up an account and locate the Wall Street Journal    A link on the WSJ Technology page offers sign-up for a weekly tech-focused digest.  New York Times Technology section     UWyo Library FAQ for the New York Times  The UW Libraries provides these aggregations as well:  EE and Computer Engineering and Science databases ProQuest Newsstreams, for searches across newspapers and other periodicals: U.S. Newstream International Newsstream You can also find news streams for more specific regions.    Magazines: Magazines listed below are available online from our library, and if the call number is given, Coe Library holds them in print form in the stacks on level 1. For online access, follow the link, and click on the yellow \"View full text\" button to view another webpage with links to various searchable databases with that magazine (choose any with the date you seek).  Good Prospects for interesting subjects:  WIRED magazine, with recent issues covering the latest trends: At call number TK5105.5.W57 and also in the online catalog Ars Technica: Digitally native (online only): At https://arstechnica.com/ Other respectable periodicals cover technology news; call numbers are given for those that appear in print in Coe Library.  The National Review (call number AP2.N3545) The Guardian (London) Magazines such as The New Yorker (call number AP2.N6763) and The Atlantic (call number AP2.A8); see special tech sections below. Reuters News Service, https://www.reuters.com/technology PBS and BBC for broadcast coverage—to use such a source, find a written version of the piece AUTHORITATIVE We will count the following special sections of magazines as peer-reviewed sources:  New Yorker Annals of Technology     https://www.newyorker.com/magazine/annals-of-technology  The Atlantic Magazine Technology Section     https://www.theatlantic.com/technology/  The Economist Technology Quarterly   https://www.economist.com/technology-quarterly/  Universities, research institutes, and other public interest groups often publish or host good research. See, for example, those listed below. Many others conduct research on specific computing subjects.  First Monday: This digitally native (onlne only) journal devoted to the Internet, comes from the University of Illinois at Chicago. https://firstmonday.org/ojs/index.php/fm/index  Oxford Internet Institute: https://www.oii.ox.ac.uk/  Brookings Intitution Technology and Innovation Division: https://www.brookings.edu/topic/technology-innovation/  Beware white papers: A great deal of contemporary research and commentary is published online by research institutes.  Consult those that are sponsored by universities, governments, and other public interest groups, rather than those that are hosted by businesses and commercial and industry groups. In particular, beware of \"white papers\" published by technology vendors, which are actually marketing. For a judgment on a source in this category, ask your instructor.  PROFESSIONAL The two main professional organizations in computer science are the IEEE Computer Society and the ACM (Association for Computing Machinery). Each organization publishes a general computing newsletter for members, IEEE Computer (www.computer.org/csdl/magazines/co) and the Communications of the ACM (cacm.acm.org). Consider a free subscripton to IEEE Edge (http://www.computer.org/computingedge), which collects and presents articles from its other publications.  Each organization maintains comprehensive online libraries, to search and browse via our own library proxy access, the IEEE Xplore database, and the ACM Digital Library. Most pieces from these professional sources are peer-reviewed; check with your instructor to make sure.  SCHOLARLY Computer science research is thriving, putting out too many publications in too many formats to explain easily. Much of the work appears in conference proceedings, which are difficult to track. Find sources that are in printed on permanent websites or in journals with well-defined access.  For a wide variety of references, use the ProQuest or Academic Search Premier (EBSCO) databases from the UW library. Search for your topic, selecting the \"Full Text\" and \"Peer-reviewed\" options in the filters on the left. All articles indexed by Web of Science are peer-reviewed.  No guarantee accompanies these suggestions. Results remain mixed, as most would expect. Students continue to struggle, or shine, or both, as they find their various ways into and through the college curriculum. Although this compendium may be incomplete today and obsolete next week, feel free to take the material and adapt it to your needs. And send more suggestions; let\'s all try to work out a good approach to delineating undergraduate research sources as computer science publication matures and solidifies.', 1002);
INSERT INTO `blog` (`Blog_ID`, `Topic`, `Date`, `Image`, `Title`, `Content`, `Author_ID`) VALUES
(109, 'Comperative Analysis', '2021-03-15', '1632506167_Intelligence-Augmentation-Vs-Artificial.jpg', 'AI or Intelligence Augmentation for Education?', '<p>On December 7, 1968, Douglas Engelbart presented a legendary <a href=\"https://www.dougengelbart.org/content/view/209/448/\">demonstration</a> that showed how newly emerging computing technologies could help people work together. More generally, Engelbart devoted his professional life to articulating his view of the role of computing in addressing societal problems. He emphasized the potential for technology to <a href=\"https://www.dougengelbart.org/content/view/194/168/\">augment</a> human intelligence. Since that time, many others have developed the concept of intelligence augmentation (IA).</p>\r\n<p>For example, the field of healthcare sees IA as a more ethical framing. One <a href=\"https://journalofethics.ama-assn.org/article/making-policy-augmented-intelligence-health-care/2019-02?Effort%2BCode=FBB007\">report</a> defines IA as &quot;...an alternative conceptualization that focuses on AI&#39;s assistive role, emphasizing a design approach and implementation that enhances human intelligence rather than replaces it.&quot; This report argues &quot;health care AI should be understood as a tool to augment professional clinical judgment.&quot;</p>\r\n<p>In education, applications of Artificial Intelligence are now rapidly expanding. Not only are innovators developing <a href=\"https://psycnet.apa.org/doi/10.1037/a0032447\">intelligent tutoring systems</a> that support learning how to solve tough Algebra problems. AI applications also include automatically grading essays or <a href=\"https://journals.sagepub.com/doi/full/10.1177/2332858416673968\">homework</a>, as well as <a href=\"https://eric.ed.gov/?id=ED594871\">early warning systems</a> that alert administrators to potential drop-outs. We also see AI products for online science labs that give teachers and students feedback. Other products listen to classroom discussions and highlight features of classroom talk that a teacher might seek to improve or observe the quality of teaching in videos of preschool children. A recent expert <a href=\"https://circls.org/reports/ai-report\">report</a> about AI and education all uncovered visions for AI that would support teachers to orchestrate classroom activities, extend the range of student learning outcomes that can be measured, support learners with disabilities, and more.</p>\r\n<p>In colloquial use, the term AI calls forth images of quasi-human agents that act independently, often replacing the work of humans, who become less important. AI is usually&nbsp; faster and based on more data, but is it smarter? In addition, there are difficult problems of privacy and security&mdash;society has an obligation to protect children&#39;s data. And there are even more difficult issues of bias, fairness, transparency, and accountability. Here&#39;s our worry: a focus on AI provides the illusion that we could obtain the good (super-human alternative intelligences) if only we find ways to tackle the bad (ethics and equity). We believe this is a mirage. People will always be intrinsic to learning, no matter how fast, smart, and data-savvy technological agents become. People are why agents exist. We think it&#39;s important to always have the human in the loop to understand if things are working and if not, to understand why and make creative plans for change.</p>\r\n<p>Today, students and teachers are overwhelmed by the challenges of teaching and learning in a pandemic. The problems we face in education are whole child problems. Why are parents clamoring to send children back to school? It&#39;s not just so they can get some work done! Learning is fundamentally social and cultural; enabling the next generation to construct knowledge, skills, and practices they&#39;ll need to thrive is work that requires people working together in a learning community. Schools also provide needed social and emotional support. We are simultaneously at a critical juncture where the need to address ethics and equity are profound. In addition to trust and safety considerations, prioritizing the impact, and understanding how it changes interactions and what those implications are for students and teachers is essential when evaluating AI or any technology.</p>\r\n<p>Thus, we recommend a focus on IA in education that would put educators&#39; professional judgement and learners&#39; voice at the center of innovative designs and features. An IA system might save an educator administrative time (for example, in grading papers) and support their attention to their students&#39; struggles and needs. An IA system might help educators notice when a student is participating less and suggest strategies for engagement, perhaps even based on what worked to engage the student in a related classroom situation. In this Zoom era, we&#39;ve also seen promising speech recognition technologies that can detect inequities in which students have voice in classroom discussions over large samples of online verbal discourse. In some forward-looking school districts, teachers have instructional coaches. In those situations, the coach and teacher could utilize an IA tool to examine patterns of speaking in their teaching and make plans to address inequities. Further, the IA tool might allow the coach and teacher to specify smart alerts to the teacher&mdash;for example, for expected patterns in future classroom discussions that would signal a good time to try a new and different instructional move. Later, the IA tool might make a &quot;highlights reel&quot; that the coach and teacher could review to decide whether to stay with that new instructional move, or to try another.</p>\r\n<p>The important difference between AI and IA may be <em>when </em>an educator&#39;s professional judgement and student voice are in the loop. The AI perspective typically offers opportunities for human judgement before technologies are adopted or when they are evaluated; the IA perspective places human judgement at the forefront throughout teaching and learning and should change the way technologies are designed<em>.</em> We worry that the AI perspective may encourage innovators to see ethics and equity as a barrier they have to jump over once, and then their product is able to make decisions for students autonomously. Alas, when things go wrong, educators may respond with backlash that takes out both the bad and the good. We see the IA perspective as acknowledging ethics and equity issues in teaching and learning as ongoing and challenging.</p>\r\n<p>By beginning with the presumption that human judgement will always need to be in the loop, we hope that IA for education will focus attention on how human and computational intelligence could come together for the benefit of learners. With IA, restraint is built into the design and technology isn&#39;t given power to fully make decisions without a diverse pool of humans participating. We hope IA for education will ground ethics and equity not in a high stakes disclosure/consent/adoption decision but rather in cycles of continuous improvement where the new powers of computational intelligence are balanced by the wisdom of educators and students.</p>', 1007),
(112, 'Node js', '2022-03-31', '1649015739_blog1.jpg', 'How to learn node js?', 'Node.js is an open-source and cross-platform JavaScript runtime environment. It is a popular tool for almost any kind of project!\r\n\r\nNode.js runs the V8 JavaScript engine, the core of Google Chrome, outside of the browser. This allows Node.js to be very performant.\r\n\r\nA Node.js app runs in a single process, without creating a new thread for every request. Node.js provides a set of asynchronous I/O primitives in its standard library that prevent JavaScript code from blocking and generally, libraries in Node.js are written using non-blocking paradigms, making blocking behavior the exception rather than the norm.', 1013);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`) VALUES
(5, 'Sahal', 'me.sahal3000@gmail.com', 'Hey'),
(6, 'Rabita', 'rabita@gmail.com', 'Nice one!!!'),
(8, 'Afrin', 'afrinahmed01@gmail.com', 'You guys have done a tremendous job. Hope this will continue. Good luck and best wishes...'),
(9, 'Sumaiya', 'sumbinhid@gmail.com', 'Great job.'),
(10, 'Arman', 'sohelbd005@yahoo.com', 'Profile management should be improved.'),
(11, 'Michael', 'mike034@gamil.com', 'Should be more professional.');

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
(27, 'Faculty, M.I.T.'),
(28, 'Emeritus faculty of the MIT Department of Electrical Engineering and Computer Science '),
(28, 'Visiting Professor in the Department of Computer Science at Keio University'),
(28, 'Visiting Professor at Stanford University.'),
(29, 'Chief Scientist at ECMAScript (JavaScript) committee'),
(29, 'Chief Architect with the Virus-Safe Computing Initiative at HP Labs'),
(29, 'Research scientist at Google (2007- 2017)');

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
(23, 'urishat@gmail.com'),
(5, 'sumu@gmail.com'),
(25, 'sumu@gmail.com');

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
) ENGINE=MyISAM AUTO_INCREMENT=11013 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_work`
--

INSERT INTO `post_work` (`work_id`, `id`, `title`, `area`, `overview`, `requirment`, `paper`) VALUES
(11002, 2, 'Looking for experts in deep learning', 'Deep learning', 'I am looking for expert in deep learning who can help me in my project.', 'Basic knowledge about deep learning', 'altay2018.pdf'),
(11003, 14, 'Machine Learning Project', 'Machine learning', '1) Detection of Pneumonia in Medical Images<br>2) Train Deep Reinforcement Learning (DRL) agents', 'An expert in Machine Learning', 'altay2018.pdf'),
(11006, 15, 'Create a forecast model and make the endpoint to predict in flask or fast api', 'Machine Learning', 'Build a cloud solution from the provider of your choice using the TICKIT dataset,\r\nthis sample database is used to track website sales activity\r\nfictitious TICKIT, where users buy and sell tickets online for sporting events,\r\nshows and concerts. In particular, analysts can identify the movement of\r\ntickets over time, the success rates of vendors, and the events, venues, and\r\nbest selling seasons. Analysts can use this information to provide\r\nincentives to buyers and sellers who frequent the site, to attract new\r\nusers and to generate advertising and promotions.', 'Build a REST API with the following conditions: 1. Use Python frameworks (Flask, Django, Fast-API) 2. Build an endpoint where the trained model is used to make predictions on-line.', 'altay2018.pdf'),
(11007, 15, 'Python project', 'Python', 'What will the innocuous code do?:\r\n    The program will track time for each employee and calculate the payment that he should recieve based on his hourly rate.\r\nWhat will your malicious code do?:\r\n    The program will run arp tables retreival commands based on the target machine OS and then scan for open ports\r\nWhat is the objective/desired outcome from the execution of the attack:\r\n    The objective is to obtain open ports that serves future attacks', 'Who is the target:     Small company teams, and workplace staff. How you propose to get your code into their system:     The program will be introduced as a time tracking program that automate payroll calculcations.', 'altay2018.pdf'),
(11011, 24, 'Usability Feedback for R&D Artificial Intelligence platform', 'Artificial Intelligence', 'Hi. I am looking for machine learning developer. My developer has stopped the working because of the personal reason. I am looking for long term partner. Currently I have the API for detecting the text and screws of the watches. - I need to improve a few things of this api. 1, OCR 2, Image processing 3, Labeling and training', 'Required skills are : Python Machine learning Deep learning AIWe are an AI/ML company that builds ML models on a web platform for Research and Development. We need to get some UX feedback on our platform. It does have some heavy data concepts that are related to any of these industries or disciplines: 1 - EV Battery Development 2 - Electronic Design 3 - Computational Fluid Dynamics (CFD) design or simulation 4 - Machine Learning 5 - Data Analysis 6 - Material Design', 'altay2018.pdf'),
(11012, 25, 'Chatbot design', 'Programming languages', 'I would like to do some research in chatbot...could you share your experience while designing a chatbot...i would like to know various design issues of chatbots..srth_ks@yahoo.com', 'I am looking for a mix of experience and value. Must be good at Node js.', '8-Node-Js-Challenges-in-Implementation.pdf');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`proposal_id`, `work_id`, `seller_id`, `letter`, `Paper`, `cv`, `flag`) VALUES
(2, 11002, 15, '', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 1),
(8, 11008, 15, 'Hello I am interested for this work.', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(6, 11001, 2, 'I can do your work..', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(7, 11001, 2, 'I can do your work..', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(9, 11007, 24, 'hello', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(10, 11003, 15, 'I have some idea about this research', 'https://www.aaai.org/Papers/Workshops/2007/WS-07-10/WS07-10-008.pdf', 'my_resume', 0),
(11, 11012, 15, 'Web Scraping and Web Automation is focused, which are to be implemented using Node JS or Python, specifically, using the modules including Puppeteer, Selenium, Scrapy, BeautifulSoup, Crawler and Cheerio!\r\n\r\n\r\n\r\nThe six important concepts that are followed here are:\r\n\r\n1. Data Processing.\r\n2. Data Mining.\r\n3. Web Scraping.\r\n4. Web Automation.\r\n5. Price Tracking.\r\n6. Bots desigining.', 'https://www.npmjs.com/package/paper', 'my_resume.pdf', 0),
(12, 11012, 2, 'I am not a random JS developer. I am a professional 6+ years experienced serverless solution architecture. I have invested a lot of time on myself to keep updated, learning best practices about serverless and NodeJS.\r\n\r\nServices I am offering,\r\nWrite AWS Lambda functions and integrate with AWS other services like AWS S3.', 'https://www.academia.edu/50816095/WSN_USING_COMBINED_SCHEME_OF_VIGOR_PROFICIENT_BUNCHING_AND_INFORMATION_RESCUE', 'my_resume.pdf', 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=3028 DEFAULT CHARSET=latin1;

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
(3018, 'Knowledge-domain interoperability and an open hyperdocument system', 'https://dl.acm.org/doi/10.1145/99332.99351', 41, 514),
(3019, 'PLANNER: A Language for Manipulating Models and Proving Theorems in a Robot', 'https://dspace.mit.edu/handle/1721.1/6171', 342, 520),
(3020, 'Actors: a conceptual foundation for concurrent object-oriented programming', 'https://dl.acm.org/doi/abs/10.5555/36160.36162', 18, 519),
(3021, 'Actors and Continuous Functionals,', 'https://apps.dtic.mil/sti/citations/ADA052266', 56, 519),
(3022, 'Actors: a conceptual foundation for concurrent object-oriented programming', 'https://dl.acm.org/doi/abs/10.5555/36160.36162', 254, 521),
(3023, 'Diverse goods arbitration system and method for allocating resources in a distributed computer system', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=PuP2INoAAAAJ&citation_for_view=PuP2INoAAAAJ:u5HHmVD_uO8C', 631, 524),
(3024, 'Robust Composition: Towards a Uni ed Approach to Access Control and Concurrency Control', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=PuP2INoAAAAJ&citation_for_view=PuP2INoAAAAJ:9yKSN-GCB0IC', 394, 522),
(3025, 'Markets and computation: Agoric open systems', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=PuP2INoAAAAJ&citation_for_view=PuP2INoAAAAJ:u-x6o8ySG0sC', 339, 524),
(3026, 'Persistent distributed capabilities', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=PuP2INoAAAAJ&citation_for_view=PuP2INoAAAAJ:IjCSPb-OGe4C', 222, 524),
(3027, 'Concurrency among strangers', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=PuP2INoAAAAJ&citation_for_view=PuP2INoAAAAJ:qjMakFHDy7sC', 194, 523);

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
(23, 3016),
(28, 3019),
(28, 3020),
(28, 3021),
(28, 3022),
(29, 3023),
(29, 3024),
(29, 3025),
(29, 3026);

-- --------------------------------------------------------

--
-- Table structure for table `research_area`
--

DROP TABLE IF EXISTS `research_area`;
CREATE TABLE IF NOT EXISTS `research_area` (
  `Sub_ID` int(100) NOT NULL AUTO_INCREMENT,
  `Sub_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Sub_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=525 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_area`
--

INSERT INTO `research_area` (`Sub_ID`, `Sub_Name`) VALUES
(501, 'Artificial Intelligence'),
(502, 'LISP'),
(503, 'Linked Data on the Web'),
(504, 'Semantic Web to Social Machines'),
(507, 'Distributed 3d System'),
(508, 'Databases Durability and Recovary'),
(509, 'Object-Oriented Generics'),
(510, 'Transaction and Concurrent Code'),
(511, 'Cross Chain'),
(512, 'FIFO Control'),
(513, 'Virtual Evaluation'),
(514, 'Open Hyperdocument System'),
(515, 'Interactive Computing'),
(516, 'Computer Graphics'),
(517, 'Program Verification\r\nProgramming'),
(518, 'Mathematical logic\r\n'),
(519, 'Model of computation\r\n'),
(520, 'Programming languages\r\n'),
(521, 'Philosophy of logic'),
(522, 'Object Capabilities'),
(523, 'Smart Contracting'),
(524, 'Distributed System');

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
(107, 'urishat@gmail.com'),
(108, 'urishat@gmail.com'),
(102, 'mkaikaus22@gmail.com'),
(102, 'sumu@gmail.com'),
(106, 'sumu@gmail.com'),
(104, 'sumu@gmail.com'),
(102, 'priyo2@gmail.com');

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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scientist`
--

INSERT INTO `scientist` (`Scientist_ID`, `Sci_Name`, `Work_place`, `Sci_img`, `Birth`, `Death`, `Education`, `Add_Info`, `Pub_Year`, `Pub_Count`, `Cite_Count`, `Avg_Cite_Count`, `Youtube`, `research_gate`, `wikipedia`) VALUES
(1, 'John McCarthy', 'Stanford University', 'john_mccarthy.jpg', '4 September 1927, Boston, Massachusetts', '24 October 2011, Stanford, California', 'BS mathematics, California Institute of Technology (1948); PhD mathematics, Princeton University (1951)', 'His father, John Patrick McCarthy, was an Irish Catholic who became a labor organizer and later the Business Manager of the Daily Worker, a national newspaper owned by the Communist Party USA. His mother, Ida Glatt, was a Lithuanian Jewish immigrant who worked for a wire service, then for the Daily Worker and finally as a social worker.McCarthy considered himself an atheist.McCarthy showed an early aptitude for mathematics; during his teens he taught himself college mathematics by studying the textbooks used at the nearby California Institute of Technology (Caltech). As a result, he was able to skip the first two years of mathematics at Caltech.[8] McCarthy was suspended from Caltech for failure to attend physical education courses.From 1978 to 1986, McCarthy developed the circumscription method of non-monotonic reasoning.McCarthy was a serious book reader, an optimist, and a staunch supporter of free speech. His best Usenet interaction is visible in rec.arts.books archives.', '1962-2002', 58, 2852, 31, 'https://www.youtube.com/results?search_query=john+mccarthy+artificial+intelligence', 'https://www.researchgate.net/scientific-contributions/John-McCarthy-2029411824', 'https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist)'),
(2, 'ML Minsky', '', '', '', '', '', '', '', 0, 0, 0, '', '', ''),
(3, 'N Rochester', '', '', '', '', '', '', '', 0, 0, 0, '', '', ''),
(4, 'CE Shannon', '', '', '', '', '', '', '', 0, 0, 0, '', '', ''),
(5, 'Tim Berners Lee', 'Massachusetts Institute of Technology', 'tim_berners_lee.jfif', '8 June 1955 London', '', 'Bachelor\'s degree in Physics, The Queen\'s College, Oxford', 'His father Conway Berners-Lee was an English mathematician and computer scientist', '1988-2019', 37, 1970, 53, 'https://www.youtube.com/watch?v=GUrDI6OkJfU', 'https://www.researchgate.net/profile/Tim-Berners-Lee', 'https://en.wikipedia.org/wiki/Tim_Berners-Lee'),
(6, 'Maribel Acosta', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' '),
(7, 'Anastasia Dimou', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' '),
(8, 'Jim Hendler', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' '),
(9, 'Leslie Lamport', 'Microsoft Research in California', 'LESLIE LAMPORT.jpg', 'July 2, 1941 New York City, New York', ' ', 'B.S. in mathematics from Massachusetts Institute of Technology', ' ', '1966-2019', 150, 25646, 171, 'https://www.youtube.com/watch?v=pgWTmOyUjtM', 'https://www.researchgate.net/profile/Leslie_Lamport', 'https://en.wikipedia.org/wiki/Leslie_Lamport'),
(10, 'deBruijn', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(11, 'Schwartz', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(12, 'Dijkstra', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(13, 'Bernstein', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(14, 'Barbara Liskov', 'Massachusetts Institute of Technology', 'BARBARA LISKOV.jpg', 'November 7, 1939, California', ' ', 'BSc in Mathematics, University of California, Berkeley', ' ', '1971-2020', 154, 11652, 76, 'https://www.youtube.com/watch?v=O6By99JW_V8', 'https://www.researchgate.net/publication/2452271_Barbara_H_Liskov', 'https://en.wikipedia.org/wiki/Barbara_Liskov'),
(15, 'Wenting Zheng', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(16, 'Stephen Tu', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(17, 'Eddie Kohler', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(18, 'Matthew C. Loring', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(19, 'Guido Salvaneschi', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(20, 'Jeevana Priya Inala\r\n', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(21, 'Liuba Shrira', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(22, 'Maurice Herlihy', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(23, 'Ivan Edward Sutherland', 'California Institute of Technology', 'Ivan_Edward_Sutherland.jpg', 'May 16, 1938 Hastings, Nebraska, United States', ' ', ' B.S. (electrical engineering) Carnegie Institute of Technology; \r\nM.S. (electrical engineering) California Institute of Technology', 'His father was a Civil Engineer', '1963-2012', 45, 4154, 92, 'https://www.youtube.com/watch?v=aYqQ-vAHv6Q', ' ', 'https://en.wikipedia.org/wiki/Ivan_Sutherland'),
(24, '\r\nScott Fairbanks\r\n', ' ', '', '', ' ', ' ', ' ', '', 0, 0, 0, '', '', ''),
(25, 'Douglas Engelbart', 'Stanford Research Institute', 'DOUGLAS_ENGELBART.jpg', 'January 30, 1925 in Portland, Oregon', 'July 2, 2013 in Atherton, California', 'B.S. in Electrical Engineering, Oregon State University; M.S. in Electrical Engineering, University of California at Berkeley', 'Midway through his undergraduate years at Oregon State University, he served two years in the United States Navy as a radio and radar technician in the Philippines.', '1968-2006', 28, 477, 17, 'https://youtu.be/B6rKUf9DWRI', 'https://www.researchgate.net/search.Search.html?type=researcher&query=DOUGLAS%20ENGELBART', 'https://en.wikipedia.org/wiki/Douglas_Engelbart'),
(26, 'Edsger Wybe Dijkstra', 'Mathematisch Centrum\r\nEindhoven University of Technology', 'EDSGER WYBE DIJKSTRA.jpg', '11 May 1930, Rotterdam, The Netherlands', '6 August 2002, Nuenen, The Netherlands.', ' Gymnasium Erasmianum in Rotterdam; undergraduate degree, physics, University of Leyden; PhD computer science', 'His father was a chemist, president of the Dutch Chemical Society;His mother was a mathematician', '1961-2007', 98, 3758, 67, 'https://youtu.be/mLEOZO1GwVc', ' ', 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra'),
(27, 'Marvin Minsky', 'Massachusetts Institute of Technology', 'marvin_minsky.jpg', 'New York City, August 9, 1927', 'Boston, January 24, 2016', ' Harvard University, B.A. Mathematics; Princeton University', 'Minsky married pediatrician Gloria Rudisch;Minsky was a talented improvisational pianist', '1961-2010', 57, 1358, 87, 'https://youtu.be/EI0NXTrS5Pw', ' ', 'https://en.wikipedia.org/wiki/Marvin_Minsky'),
(28, 'Carl Hewitt', 'Massachusetts Institute of Technology ', 'hewitt.jpeg', '', '', ' PhD in mathematics at MIT ', 'Hewitt is best known for his work on the actor model of computation. For the last decade, his work has been in \"inconsistency robustness\", which aims to provide practical rigorous foundations for systems dealing with pervasively inconsistent information.[11] This work grew out of his doctoral dissertation focused on the procedural (as opposed to logical) embedding of knowledge, which was embodied in the Planner programming language.\r\n\r\nHis publications also include contributions in the areas of open information systems,[12] organizational and multi-agent systems,[13] logic programming,[1] concurrent programming, paraconsistent logic[14] and cloud computing.[15]\r\n\r\n', '1967-2020', 58, 3334, 57, 'https://www.youtube.com/results?search_query=carl+hewitt', '', 'https://en.wikipedia.org/wiki/Carl_Hewitt'),
(29, 'Mark S. Miller', 'Hewlett-Packard Labs', 'MarkM.jpg', '', '', 'BS in computer science from Yale in 1980\r\nPhD , Johns Hopkins University', 'Miller\'s research has focused on language design for secure open systems. At Xerox PARC, he worked on Concurrent Logic Programming systems and Agoric Open Systems. At Sun Labs,[6] (while working for Agorics, an earlier company with a similar name to his current employer) he led the development of WebMart, a framework for buying and selling computing resources (network bandwidth,[7] access to a printer, images, CD jukebox etc.) across the network. At HP Labs he was the architect for the Virus Safe Computing project. While at Google he developed Caja, an environment for secure execution of JavaScript. He has also written articles on complex adaptive systems[8] and risk mitigation strategies for future technologies.\r\nMiller\'s most prominent contributions have been in the area of programming language design, most notably, the E Language, which demonstrated language-based secure distributed computing. The work inspired several adaptations to other programming paradigms. He was also instrumental on the ECMAScript standards committee (TC39) in providing the foundations for development of Secure EcmaScript (SES), a standards track evolution that will make full capability programming available in JavaScript.', '1988-2011', 86, 4282, 50, 'https://www.youtube.com/results?search_query=mark+s+miller', '', 'https://en.wikipedia.org/wiki/Mark_S._Miller');

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

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
(13, 'Maleeha Kaikaus', 'mkaikaus333@gmail.com', 'Feni', '12345', '01636538666'),
(14, 'Urbana Rishat', 'urishat@gmail.com', 'Rangpur', '54321', '01912345678'),
(15, 'Maleeha Kaikaus', 'mkaikaus22@gmail.com', 'Feni', '54321', '01636538666'),
(24, 'Waseca Tahsin', 'waseca2@gmail.com', 'Malibagh', '54321', '1636538777'),
(17, 'Radwa', 'rkaikaus@gmail.com', 'Cumilla', '12345', '01612345678'),
(18, 'risha urbana', 'risha@gmail.com', 'rangpur', '12345', '01636538666'),
(21, 'Jannatul Mawa', 'mawa@gmail.com', 'Feni', '54321', '1636538676'),
(25, 'Priyo Islam', 'priyo2@gmail.com', 'Gabtoli', '12345', '1612345678');

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
(25, 'Marvin Minsky - Could Our Universe Be a Fake?', 'https://www.youtube.com/watch?v=USj6TpW-b0w '),
(28, 'Tactics and strategies for scalable robust intelligent systems - CARL HEWITT  ', 'https://www.youtube.com/watch?v=PJ4X0l2298k'),
(28, 'Hewitt, Meijer and Szyperski: The Actor Model (everything you wanted to know...)  ', 'https://www.youtube.com/watch?v=7erJ1DV_Tlo'),
(28, 'Let\'s #TalkConcurrency Panel Discussion with Sir Tony Hoare, Joe Armstrong, and Carl Hewitt', 'https://www.youtube.com/watch?v=37wFVVVZlVU&t=20s'),
(28, 'Carl Hewitt: Moderately powerful first-order theories are inconsistent  ', 'https://www.youtube.com/watch?v=lrGE_ql2e1Y '),
(29, 'Mark S. Miller Interview', 'https://www.youtube.com/watch?v=21R259Wei2w'),
(29, 'Intelligent Cooperation: Mark S. Miller, Christine Peterson, Allison Duettmann  ', 'https://www.youtube.com/watch?v=rTzIop9CstI'),
(29, 'Civilization as relevant superintelligence - Mark S. Miller', 'https://www.youtube.com/watch?v=92YcJAkI0sc'),
(29, '\"The Elements of Decision Alignment\" - Mark S. Miller, Google', 'https://www.youtube.com/watch?v=jGk5fSoS86s ');

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
(25, 514),
(26, 517),
(27, 501),
(28, 518),
(28, 519),
(28, 520),
(28, 521),
(29, 522),
(29, 524),
(29, 523),
(29, 520);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
