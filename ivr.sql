-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 12:32 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivr`
--

-- --------------------------------------------------------

--
-- Table structure for table `brk`
--

CREATE TABLE `brk` (
  `id` int(11) NOT NULL,
  `agent` varchar(20) NOT NULL,
  `duration` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brk`
--

INSERT INTO `brk` (`id`, `agent`, `duration`) VALUES
(1, '1004', '35'),
(2, '1005', '40'),
(3, '1004', '55'),
(4, '1005', '152'),
(5, '1004', '111'),
(6, '1005', '178'),
(7, '1005', '74'),
(8, '1005', '166'),
(9, '1005', '699');

-- --------------------------------------------------------

--
-- Table structure for table `cdr`
--

CREATE TABLE `cdr` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `agent` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdr`
--

INSERT INTO `cdr` (`id`, `status`, `agent`) VALUES
(1, 'inactive', '1004'),
(2, 'active', '1005');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `Address`, `City`, `Country`) VALUES
(5001, 'Abul Bashar', '78/A Motijheel', 'Dhaka', 'Bangladesh'),
(5002, 'Denial', '98-2, Street 8', 'Melbourne ', 'Australia'),
(5003, 'Md Samir', 'Bosundhara', 'Dhaka', 'Bangladesh'),
(5004, 'Anam Mahnur', 'Mirpur', 'Dhaka', 'Bangladesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brk`
--
ALTER TABLE `brk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdr`
--
ALTER TABLE `cdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brk`
--
ALTER TABLE `brk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cdr`
--
ALTER TABLE `cdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
