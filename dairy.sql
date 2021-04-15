-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 03:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `TID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Product` varchar(60) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Rate` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`TID`, `CID`, `Name`, `Product`, `Quantity`, `Rate`, `Amount`) VALUES
(1, 0, 'HHKFKG', 'JHJHV', 7, 6, 9),
(2, 0, 'jj', 'jjjk', 7, 6, 6),
(3, 0, 'huhiu', 'uhiu', 65, 646, 846),
(4, 0, 'hh', 'hghjg', 9, 8, 5),
(5, 0, 'hu', 'yugug', 9, 9, 9),
(6, 0, 'ft', 'yjg', 56, 56, 657),
(7, 0, 'cfgcf', 'vfgvh', 45, 45, 55),
(8, 0, 'l,,', 'l,l', 78, 5, 54),
(9, 0, 'yh', 'gh', 6, 8, 788),
(10, 0, 'u', 'ygu', 84, 5, 78),
(11, 0, 'hdyt', 'guyf', 78, 878, 798),
(12, 0, 'yug', 'ug', 98, 4, 95),
(13, 0, 'ygv', 'uyguy', 98, 88, 88),
(14, 0, 'jk', 'jk', 9, 6, 8),
(15, 0, 'qwetyuiop', 'milk', 100, 100, 10000),
(16, 0, 'Santosh Padawale', 'milk', 10, 50, 500),
(17, 0, 'thfhg', 'TGYG', 9, 9, 99),
(19, 1, 'HIU', 'H', 7, 7, 7),
(20, 1, 'HIU', 'H', 7, 7, 7),
(21, 0, '', '', 0, 0, 0),
(22, 1, 'HJJ', 'KJ', 6, 9, 55),
(23, 1, 'HJJ', 'KJ', 6, 9, 55),
(24, 8, 'kmlk', 'hgjh', 6565, 65, 65),
(25, 99, 'hj', 'jkj', 8, 9, 54),
(26, 12, 'jgvgh', 'bjhvjh', 475, 89, 545),
(27, 888, 'hgyugh', 'yguhh', 8898, 9999, 15000),
(28, 845, 'gjh', 'ivh', 8484, 4856, 8465),
(29, 9, 'hj', 'hyvh', 98, 879, 87998),
(30, 84648, 'dhcv', 'dyhcg', 6, 98, 846513),
(31, 56, 'iyh', 'uh', 84, 89, 78),
(32, 8797, 'tyfytftu', 'ftgvg', 78987, 87879, 465314564),
(33, 87897, 'tfhgyg', 'uygyg', 648, 87487, 68465),
(34, 8487, 'oijohyo', 'ugig', 68468, 879, 846),
(35, 878, 'ujui', 'uh9', 87987, 888, 78),
(36, 594, 'kjnj', 'ijiu', 49, 41451, 44),
(37, 87878, 'yufg', 'giu', 87898, 87, 78),
(38, 8787, 'uhi', 'uhiu', 878, 7, 875857),
(39, 78, 'uftyf', 'guyg', 87, 857, 757),
(40, 8787, 'ujh9uh', 'ibuih', 87, 48, 454),
(41, 514, 'iuhu', 'ihoi', 45, 787, 77),
(42, 8488, 'kuh', 'uihiouh', 484, 787, 878),
(43, 48587, 'ohiouh', 'uohou', 878, 787, 8485),
(44, 878, 'uhiu', 'uhiu', 87987, 9878, 878),
(45, 7887, 'ihih', 'ouih', 75, 85, 77),
(46, 177, 'NIHU', 'HIUH', 787, 878, 845),
(47, 8797, 'iighk', 'ighu', 5989, 684, 787),
(48, 8797, 'iighk', 'ighu', 5989, 684, 787),
(49, 87987, 'guyuy', 'yguy', 8987, 87987, 878),
(50, 879987, 'hiuh', 'gjhkh', 987879, 486, 4684),
(51, 46468, 'jvvjgv', 'yguy', 45684, 99589, 4864),
(52, 48498, 'guygy', 'iyguyg', 98987, 99787, 4848),
(53, 48498, 'huih', 'hjhg', 8979787, 8468, 8978),
(54, 878974, 'ygyug', 'hguyg', 87889, 48486, 64868),
(55, 48484, 'gyuguy', 'hguyg', 48848, 4848, 84877),
(56, 87897, 'iuguygy', 'ggghu', 87987, 54564, 546546),
(57, 864, 'hgh', 'ygyujg', 8484, 5646, 564978),
(58, 5989, 'iugu', 'gyg', 4876, 6878, 8877),
(59, 7897, 'ygyuyg', 'yguyg', 87897, 8787, 4687),
(60, 878, 'yguyg', 'ughuy', 87878, 8786, 486),
(61, 4848, 'mioujhiu', 'ijioj', 84984, 7748, 777887),
(62, 48487, 'koij', 'knjn', 487478, 8487, 787),
(63, 484, 'uijn', 'iooi', 9484, 44, 448),
(64, 5645, 'dytfty', 'dtd', 8987, 654, 564),
(65, 8484, 'hhj', 'uiug', 4684, 4564, 66546),
(66, 8485, 'yigy', 'ygyjhu', 45645, 46854, 464),
(67, 4654, 'jyugyu', 'ftyt', 68468, 84564, 846),
(68, 5848, 'guygy', 'yuguy', 6846, 56454, 684565),
(69, 468, 'iohiu', 'ihii', 5465, 4654, 564),
(70, 8484, 'bhb', 'uguy', 8498, 8489, 484),
(71, 192010044, 'Santosh Padawale', 'milk', 45, 45, 654),
(72, 192010044, 'Santosh Padawale', 'milk', 4, 45, 180),
(73, 78978, 'uguyguy', 'yguyg', 87987, 8848, 849887),
(74, 84684, 'gvhg', 'vhg', 848, 54, 468),
(75, 100, 'asda', 'asd', 5, 515, 131);

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
(1, 'Rachit', 'Mumbai', 'Rachit@gmail.com', 'Milk', 2, 70),
(4, 'aasd', 'asd', 'adsd', 'dasd', 55, 12);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `FID` int(100) NOT NULL,
  `FName` char(255) NOT NULL,
  `LName` char(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`FID`, `FName`, `LName`, `Contact`, `Address`) VALUES
(1, 'Rachit', 'Bubna', '99678852433', 'Mumbai'),
(4, 'Sachin', 'Wankhade', '71144586618', 'Navi Mumbai'),
(5, 'Farmer1', 'Kisan', '885796315', 'Maharashtra'),
(7, '', '', '123123', '');

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
(1, 'Cow\'s Milk', 'Milk', '70'),
(2, 'KJH', 'H', 'JBHJ'),
(4, 'KJH', 'H', 'JBHJ'),
(5, 'HJBJHBHB', 'JKHB', 'JHB'),
(8, 'Milk', 'Flavored', '110');

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
(2, 'Rachit', 'Mumbai', 'asd', 'asd', '2011-04-21', 'rachit', 'rachit123'),
(3, 'Sachin', 'Navi Mumbai', 'sachin@example.com', '8973329178', '2023-04-13', 'Sach.wankhade', 'Sach.wankhade');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `FID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `SID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
