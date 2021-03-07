-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 08:01 AM
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
-- Database: `dairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `a_login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `a_login`, `password`) VALUES
(1, 'santosh', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `BID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Quantity` int(50) NOT NULL,
  `Rate` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`BID`, `Name`, `Address`, `Email`, `Product`, `Quantity`, `Rate`) VALUES
(1, 'hHBHBhbh', 'GHVHVG', 'HVHG', 'VHG', 45, 0);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `SID` int(11) NOT NULL,
  `Name` char(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Uname` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`SID`, `Name`, `Email`, `Phone`, `DOB`, `Address`, `Uname`, `Password`) VALUES
(1, 'jTextField1', 'jTextField2', 'jTextField3', '2026-11-19', 'jTextField4', 'jTextField5', 'jPasswordField1'),
(2, 'jTextField1', 'jTextField2', 'jTextField3', '2026-11-19', 'jTextField4', 'jTextField5', 'jPasswordField1');

-- --------------------------------------------------------

--
-- Table structure for table `farmer1`
--

CREATE TABLE `farmer1` (
  `FID` int(100) NOT NULL,
  `FName` char(255) NOT NULL,
  `LName` char(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer1`
--

INSERT INTO `farmer1` (`FID`, `FName`, `LName`, `Contact`, `Address`, `Photo`) VALUES
(1, 'hg', 'khgyhg', 'ygy', 'gyug', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Rate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PID`, `Name`, `Type`, `Rate`) VALUES
(1, 'cc', 'dcd', 'cdcd'),
(2, 'KJH', 'H', 'JBHJ'),
(4, 'KJH', 'H', 'JBHJ'),
(5, 'HJBJHBHB', 'JKHB', 'JHB');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SID` int(255) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `dob` date NOT NULL,
  `login` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`SID`, `Name`, `address`, `email`, `contact`, `dob`, `login`, `Password`) VALUES
(1, 'gugyu', 'huhuyhiu', 'yg', 'uyg', '0004-11-19', 'jTextField6', 'jPasswordField1ig');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `UID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `Transaction_type` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Bill_Amt` double NOT NULL,
  `Payment_mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `farmer1`
--
ALTER TABLE `farmer1`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `farmer1`
--
ALTER TABLE `farmer1`
  MODIFY `FID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `SID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
