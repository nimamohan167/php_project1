-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 03:17 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `factapplyleave`
--

CREATE TABLE `factapplyleave` (
  `name` varchar(20) NOT NULL,
  `todate` date NOT NULL,
  `leavereason` varchar(50) NOT NULL,
  `fromdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factapplyleave`
--

INSERT INTO `factapplyleave` (`name`, `todate`, `leavereason`, `fromdate`) VALUES
('0000-00-00', '0000-00-00', '', '0000-00-00'),
('0000-00-00', '0000-00-00', '', '0000-00-00'),
('amitha', '0000-00-00', 'fever', '2020-01-03'),
('amitha', '2020-01-09', 'fever', '2020-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `factid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `mobile` int(11) NOT NULL,
  `assigned_batch` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`factid`, `name`, `address`, `dob`, `gender`, `qualification`, `mobile`, `assigned_batch`, `username`, `password`) VALUES
(1, 'gana', 'athira po', '2020-01-31', 'female', 'btech cs', 2147483647, 'JSD1', '', ''),
(2, 'amitha', 'amitha bhavanam', '1993-06-16', 'female', 'bca', 34567, 'JSD2', '', ''),
(5, 'vijith', 'vijith villa', '1996-02-01', 'male', 'btech cs', 1234567890, 'UI', 'root', ''),
(7, 'john', 'jpv', '1978-02-14', 'male', 'bsc cs', 1234567890, 'JSD2', 'root', ''),
(8, 'anandu', 'jpv', '1978-02-14', 'male', 'bsc cs', 1234567890, 'JSD2', 'anandu', 'anandu'),
(10, 'reshma', 'reshma', '1999-03-04', 'female', 'MCA', 0, 'ED', 'reshma', 'resh');

-- --------------------------------------------------------

--
-- Table structure for table `facultys`
--

CREATE TABLE `facultys` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultys`
--

INSERT INTO `facultys` (`username`, `password`) VALUES
('amitha', 'amitha'),
('gana', 'gana');

-- --------------------------------------------------------

--
-- Table structure for table `stdapplyleave`
--

CREATE TABLE `stdapplyleave` (
  `name` varchar(20) NOT NULL,
  `to_` varchar(20) NOT NULL,
  `leavereason` varchar(30) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdapplyleave`
--

INSERT INTO `stdapplyleave` (`name`, `to_`, `leavereason`, `fromdate`, `todate`) VALUES
('athira', 'amitha', 'fever', '2020-01-18', '2020-01-23'),
('Elsa', 'amitha', 'fever', '2020-01-01', '2020-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `studentattendence`
--

CREATE TABLE `studentattendence` (
  `date` date NOT NULL,
  `stdid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `hr1status` varchar(20) NOT NULL,
  `hr2status` varchar(20) NOT NULL,
  `hr3status` varchar(20) NOT NULL,
  `hr4status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentattendence`
--

INSERT INTO `studentattendence` (`date`, `stdid`, `name`, `hr1status`, `hr2status`, `hr3status`, `hr4status`) VALUES
('0000-00-00', 0, 'athira', '', '', '', ''),
('2020-01-03', 5, 'Elsa', 'present', 'present', 'present', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `studentmark`
--

CREATE TABLE `studentmark` (
  `stdid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `assessmentno` int(11) NOT NULL,
  `sub1mark` int(11) NOT NULL,
  `sub2mark` int(11) NOT NULL,
  `sub3mark` int(11) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentmark`
--

INSERT INTO `studentmark` (`stdid`, `name`, `assessmentno`, `sub1mark`, `sub2mark`, `sub3mark`, `percentage`) VALUES
(0, '', 0, 0, 0, 0, 0),
(1, 'nimakutty', 1, 5, 6, 9, 54),
(5, 'Elsa', 1, 45, 45, 45, 97);

-- --------------------------------------------------------

--
-- Table structure for table `studentreg`
--

CREATE TABLE `studentreg` (
  `stdid` int(11) NOT NULL,
  `admno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` int(11) NOT NULL,
  `admdate` date NOT NULL,
  `guardian` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentreg`
--

INSERT INTO `studentreg` (`stdid`, `admno`, `name`, `address`, `dob`, `gender`, `mobile`, `admdate`, `guardian`, `batch`, `username`, `password`) VALUES
(0, 0, '', '', '0000-00-00', '', 0, '0000-00-00', '', '', 'bini', 'bini'),
(1, 2147483647, 'bini', 'bini nivas', '1997-07-20', 'female', 2147483647, '0000-00-00', 'Babu', 'jsd2', 'bini', 'bini'),
(1, 2147483647, 'athira', 'athira po', '1994-02-09', 'female', 98754321, '2020-01-03', 'Ajitha', 'jsd2', 'athira', 'athira'),
(5, 1006, 'Elsa', 'elsa', '1984-07-12', 'female', 11111111, '2019-11-14', 'Thomas', 'jsd2', 'elsa', 'elsa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`factid`);

--
-- Indexes for table `studentmark`
--
ALTER TABLE `studentmark`
  ADD PRIMARY KEY (`stdid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
