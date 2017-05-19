-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2017 at 08:10 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `distanceinfo`
--

CREATE TABLE `distanceinfo` (
  `id1` int(11) DEFAULT NULL,
  `node1` varchar(15) DEFAULT NULL,
  `id2` int(11) DEFAULT NULL,
  `node2` varchar(15) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distanceinfo`
--

INSERT INTO `distanceinfo` (`id1`, `node1`, `id2`, `node2`, `cost`) VALUES
(9, 'kolkata', 12, 'patna', 4),
(9, 'kolkata', 4, 'bhubaneshwar', 2),
(4, 'bhubaneshwar', 12, 'patna', 3),
(4, 'bhubaneshwar', 9, 'kolkata', 2),
(4, 'bhubaneshwar', 11, 'nagpur', 4),
(4, 'bhubaneshwar', 15, 'hyderabad', 4),
(4, 'bhubaneshwar', 14, 'vizag', 3),
(11, 'nagpur', 4, 'bhubaneshwar', 2),
(11, 'nagpur', 13, 'pune', 1),
(11, 'nagpur', 15, 'hyderabad', 2),
(11, 'nagpur', 3, 'bhopal', 2),
(13, 'pune', 1, 'ahmedabad', 5),
(13, 'pune', 11, 'nagpur', 1),
(13, 'pune', 15, 'hyderabad', 3),
(13, 'pune', 2, 'banglore', 4),
(7, 'delhi', 5, 'chandigarh', 1),
(7, 'delhi', 10, 'lucknow', 3),
(7, 'delhi', 3, 'bhopal', 5),
(7, 'delhi', 8, 'jaipur', 2),
(10, 'lucknow', 12, 'patna', 3),
(10, 'lucknow', 9, 'kolkata', 4),
(10, 'lucknow', 3, 'bhopal', 4),
(10, 'lucknow', 7, 'delhi', 3),
(5, 'chandigarh', 7, 'delhi', 1),
(8, 'jaipur', 7, 'delhi', 2),
(8, 'jaipur', 1, 'ahmedabad', 3),
(8, 'jaipur', 3, 'bhopal', 4),
(1, 'ahmedabad', 8, 'jaipur', 3),
(1, 'ahmedabad', 3, 'bhopal', 4),
(1, 'ahmedabad', 13, 'pune', 5),
(3, 'bhopal', 1, 'ahmedabad', 4),
(3, 'bhopal', 11, 'nagpur', 2),
(3, 'bhopal', 10, 'lucknow', 4),
(3, 'bhopal', 7, 'delhi', 5),
(3, 'bhopal', 8, 'jaipur', 4),
(12, 'patna', 10, 'lucknow', 3),
(12, 'patna', 9, 'kolkata', 4),
(12, 'patna', 4, 'bhubaneshwar', 3),
(16, 'kochi', 6, 'chennai', 4),
(16, 'kochi', 2, 'banglore', 3),
(6, 'chennai', 16, 'kochi', 4),
(6, 'chennai', 14, 'vizag', 4),
(6, 'chennai', 15, 'hyderabad', 3),
(15, 'hyderabad', 13, 'pune', 3),
(15, 'hyderabad', 2, 'banglore', 1),
(15, 'hyderabad', 11, 'nagpur', 2),
(15, 'hyderabad', 4, 'bhubaneshwar', 4),
(15, 'hyderabad', 14, 'vizag', 2),
(15, 'hyderabad', 6, 'chennai', 2),
(14, 'vizag', 15, 'hyderabad', 2),
(14, 'vizag', 4, 'bhubaneshwar', 3),
(14, 'vizag', 4, 'chennai', 4),
(2, 'banglore', 13, 'pune', 4),
(2, 'banglore', 15, 'hyderabad', 1),
(2, 'banglore', 16, 'kochi', 3),
(17, 'trivandrum', 7, 'delhi', 6),
(7, 'delhi', 17, 'trivandrum', 6);

-- --------------------------------------------------------

--
-- Table structure for table `elogin`
--

CREATE TABLE `elogin` (
  `eusername` varchar(15) NOT NULL,
  `epassword` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elogin`
--

INSERT INTO `elogin` (`eusername`, `epassword`) VALUES
('admin3', 'admin@3'),
('admin2', 'admin@2'),
('admin1', 'admin@1'),
('admin4', 'admin@4');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `node` varchar(15) DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `lng` decimal(9,6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `node`, `lat`, `lng`) VALUES
(1, 'ahmedabad', '23.022500', '72.571400'),
(2, 'banglore', '12.971600', '77.594600'),
(3, 'bhopal', '23.259900', '77.412600'),
(4, 'bhubaneshwar', '20.296100', '85.824500'),
(5, 'chandigarh', '30.733300', '76.779400'),
(6, 'chennai', '13.082700', '80.270700'),
(7, 'delhi', '28.704100', '77.102500'),
(8, 'jaipur', '26.912400', '75.787300'),
(9, 'kolkata', '22.572600', '88.363900'),
(10, 'lucknow', '26.846700', '80.946200'),
(11, 'nagpur', '21.145800', '79.088200'),
(12, 'patna', '25.594100', '85.137600'),
(13, 'pune', '18.520400', '73.856700'),
(14, 'vizag', '17.686800', '83.218500'),
(15, 'hyderabad', '17.385100', '78.486700'),
(16, 'kochi', '9.931200', '76.267300'),
(17, 'trivandrum', '8.524100', '76.936600');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('user1', 'user@1'),
('user2', 'user@2'),
('user3', 'user@3'),
('user4', 'user@4');

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `packageId` varchar(30) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`packageId`, `path`, `time`) VALUES
('YYulCyD', 'bhopal,nagpur', 1492264097),
('tXeWZkE', 'kolkata,bhubaneshwar,nagpur', 1492264097),
('uYJh6f8', 'kolkata,bhubaneshwar,nagpur', 1492264097),
('6eko9Tq', 'bhopal,nagpur', 1492264097),
('9vVNVcD', 'kolkata,bhubaneshwar,nagpur', 1492264097),
('ReAIecI', 'vizag,chandigarh', 1492275795);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elogin`
--
ALTER TABLE `elogin`
  ADD PRIMARY KEY (`eusername`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
