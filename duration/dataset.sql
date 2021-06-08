-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 01:37 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataset`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakdown`
--

CREATE TABLE `breakdown` (
  `id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `typework` varchar(50) NOT NULL,
  `cost` varchar(20) NOT NULL,
  `avg` varchar(20) NOT NULL,
  `good` varchar(20) NOT NULL,
  `best` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breakdown`
--

INSERT INTO `breakdown` (`id`, `location`, `typework`, `cost`, `avg`, `good`, `best`) VALUES
(1, 'Delhi', 'materials + labour-outsourced', '21,112,650', '18,216,900', '21,112,650', '24,692,850'),
(2, 'none', 'none', 'TBC', 'none', 'none', 'none'),
(3, 'Mumbai', 'materials + labour-outsourced', '2,636,250', '1,595,625', '1,942,500', '2,636,250');

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `ID` int(1) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `Commercial` int(4) DEFAULT NULL,
  `Labour_Cost` int(4) DEFAULT NULL,
  `avg_quality` int(4) DEFAULT NULL,
  `Good_quality` int(4) DEFAULT NULL,
  `Best_quality` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`ID`, `location`, `Commercial`, `Labour_Cost`, `avg_quality`, `Good_quality`, `Best_quality`) VALUES
(1, 'Mumbai', 1150, 1300, 1150, 1400, 1900),
(2, 'Pune', 1715, 1940, 2090, 2425, 2835),
(3, 'Delhi', 1420, 1605, 1730, 2005, 2345),
(4, 'Chennai', 1150, 1300, 1150, 1400, 1900),
(5, 'Bangalore', 1745, 1970, 2121, 2462, 2880),
(6, 'Hyderabad', 1225, 1382, 1490, 1728, 2021),
(7, 'Kolhapur', 1174, 1400, 1235, 1505, 2045),
(8, 'Sawantwadi', 1474, 1666, 1794, 2083, 2435),
(9, 'Others', 1150, 940, 1175, 1400, 1900);

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `ID` int(11) NOT NULL,
  `Builtup_area` varchar(10) DEFAULT NULL,
  `No_of_Floors` varchar(10) DEFAULT NULL,
  `No_of_Workers` varchar(10) DEFAULT NULL,
  `Months` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`ID`, `Builtup_area`, `No_of_Floors`, `No_of_Workers`, `Months`) VALUES
(1, '3000', '3', '60', '18'),
(2, '2000', '1', '100', '6'),
(3, '1000', '1', '20', '13');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `ID` int(1) DEFAULT NULL,
  `material` varchar(33) DEFAULT NULL,
  `quantity` decimal(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`ID`, `material`, `quantity`) VALUES
(1, 'Bag of Cement (50 kg each)', '0.326'),
(2, 'Cubic ft. Sand', '1.170'),
(3, 'Cubic ft. stone aggregates (10mm)', '0.180'),
(4, 'Cubic ft. stone aggregates (20mm)', '0.330'),
(5, 'No. of Bricks', '9.999'),
(6, 'Reinforced Steel (Kg)', '0.800');

-- --------------------------------------------------------

--
-- Table structure for table `traindata`
--

CREATE TABLE `traindata` (
  `ID` int(2) DEFAULT NULL,
  `Builtup_area` int(1) DEFAULT NULL,
  `No_of_Floors` int(4) DEFAULT NULL,
  `No_of_Workers` int(1) DEFAULT NULL,
  `Months` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traindata`
--

INSERT INTO `traindata` (`ID`, `Builtup_area`, `No_of_Floors`, `No_of_Workers`, `Months`) VALUES
(12, 1, 3000, 3, 5),
(13, 1, 3000, 3, 20),
(14, 2, 3000, 3, 20),
(15, 3, 3000, 3, 20),
(16, 4, 3000, 3, 20),
(17, 5, 3000, 3, 50),
(18, 1, 3000, 1, 20),
(19, 2, 3000, 3, 5),
(20, 3, 1500, 1, 15),
(21, 4, 2000, 1, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakdown`
--
ALTER TABLE `breakdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakdown`
--
ALTER TABLE `breakdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
