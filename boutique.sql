-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 05:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boutique`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrival`
--

CREATE TABLE `arrival` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrival`
--

INSERT INTO `arrival` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee11.png', 'mocho', 1401.00),
(2, 'coffee11.png', 'coffee5.png', '  Cold Brew', 1401.00),
(3, 'coffee11.png', 'coffee5.png', '  Cold Brew', 1401.00),
(4, 'coffee16.png', 'coffee21.png', 'Harshita sankhla ', 1401.00),
(5, 'coffee5.png', 'coffee13.png', ' iced Latte', 1401.00),
(6, 'coffee5.png', 'coffee5.png', 'moch', 14011.00),
(7, 'coffee5.png', 'coffee15.png', 'umer', 14017.00),
(8, 'wallpaper2.png', 'wallpaper.png', 'mocho', 1401.00),
(9, 'wallpaper2.png', 'wallpaper.png', 'mocho', 1401.00),
(10, 'wallpaper2.png', 'wallpaper.png', 'mocho', 1401.00),
(11, 'wallpaper2.png', 'wallpaper.png', 'mocho', 1401.00),
(12, 'wallpaper2.png', 'wallpaper.png', 'mocho', 1401.00),
(13, 'wallpaper2.png', 'wallpaper.png', 'mocho', 1401.00),
(14, 'coffee12.png', 'coffee12.png', 'mocho', 14013.00),
(15, 'coffee5.png', 'coffee15.png', 'mocho', 14011.00),
(16, 'wallpaper2.png', 'wallpaper2.png', 'mocho0000', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `bag`
--

CREATE TABLE `bag` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bag`
--

INSERT INTO `bag` (`sno`, `image`, `name`, `price`) VALUES
(1, 'coffee5.png', '   Mocha', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `bottom`
--

CREATE TABLE `bottom` (
  `sno` int(11) NOT NULL,
  `image` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bottom`
--

INSERT INTO `bottom` (`sno`, `image`, `name`, `price`) VALUES
(1, 'coffee5.png', '  Cold Brew', 1401.00),
(2, 'coffee5.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sno`, `image`) VALUES
(1, '3D41-removebg-previe'),
(2, 'logo1-removebg-previ'),
(3, 'logo1-removebg-previ'),
(4, '3D41-removebg-previe'),
(5, 'logo1-removebg-previ'),
(6, '3D41-removebg-previe'),
(7, '3D41-removebg-previe');

-- --------------------------------------------------------

--
-- Table structure for table `casualco_ord`
--

CREATE TABLE `casualco_ord` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualco_ord`
--

INSERT INTO `casualco_ord` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee5.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `casualfrock`
--

CREATE TABLE `casualfrock` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualfrock`
--

INSERT INTO `casualfrock` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee5.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `casualgown`
--

CREATE TABLE `casualgown` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualgown`
--

INSERT INTO `casualgown` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee12.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `casualjacket`
--

CREATE TABLE `casualjacket` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualjacket`
--

INSERT INTO `casualjacket` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee1.png', 'coffee12.png', 'Harshita sankhla ', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `casualkaftan`
--

CREATE TABLE `casualkaftan` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualkaftan`
--

INSERT INTO `casualkaftan` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee11.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `casualkurta`
--

CREATE TABLE `casualkurta` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualkurta`
--

INSERT INTO `casualkurta` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee5.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `casualpallazo`
--

CREATE TABLE `casualpallazo` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualpallazo`
--

INSERT INTO `casualpallazo` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee11.png', 'mocho', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `celebrity`
--

CREATE TABLE `celebrity` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `celebrity`
--

INSERT INTO `celebrity` (`sno`, `image`, `name`) VALUES
(1, 'bcdkxc', 'cDSKMN'),
(2, 'coffee1.png', 'mocho');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `link` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`sno`, `image`, `link`) VALUES
(1, 'coffee3.png', 'boutique'),
(2, 'coffee3.png', 'boutique'),
(3, 'coffee11.png', 'as'),
(4, 'coffee11.png', 'as'),
(5, 'coffee11.png', 'as'),
(6, 'coffee11.png', 'as'),
(7, 'coffee11.png', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `dupatta`
--

CREATE TABLE `dupatta` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dupatta`
--

INSERT INTO `dupatta` (`sno`, `image`, `name`, `price`) VALUES
(1, 'coffee11.png', ' Iced Americano', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `earing`
--

CREATE TABLE `earing` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `earing`
--

INSERT INTO `earing` (`sno`, `image`, `name`, `price`) VALUES
(1, 'coffee5.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `sno` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sno`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `necklace`
--

CREATE TABLE `necklace` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `necklace`
--

INSERT INTO `necklace` (`sno`, `image`, `name`, `price`) VALUES
(1, 'coffee5.png', 'mocho', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `partyanarkali`
--

CREATE TABLE `partyanarkali` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partyanarkali`
--

INSERT INTO `partyanarkali` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee5.png', 'mocho', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `partyco_ord`
--

CREATE TABLE `partyco_ord` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partyco_ord`
--

INSERT INTO `partyco_ord` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee1.png', 'coffee13.png', 'mocho', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `partygown`
--

CREATE TABLE `partygown` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partygown`
--

INSERT INTO `partygown` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee1.png', 'coffee5.png', ' Iced Americano', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `partylehenga`
--

CREATE TABLE `partylehenga` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partylehenga`
--

INSERT INTO `partylehenga` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee11.png', 'coffee13.png', 'Harshita sankhla ', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `partysaree`
--

CREATE TABLE `partysaree` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partysaree`
--

INSERT INTO `partysaree` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee15.png', 'coffee15.png', 'mocho', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `partywestern`
--

CREATE TABLE `partywestern` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partywestern`
--

INSERT INTO `partywestern` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee15.png', ' Iced Americano', 1401.00),
(2, 'wallpaper.png', 'coffee3.png', 'jkhsjadhL', 14018.00),
(3, 'wallpaper.png', 'coffee3.png', 'jkhsjadhL', 14018.00),
(4, 'coffee5.png', 'coffee12.png', ' Ic', 14.00);

-- --------------------------------------------------------

--
-- Table structure for table `psrtykaftan`
--

CREATE TABLE `psrtykaftan` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `psrtykaftan`
--

INSERT INTO `psrtykaftan` (`sno`, `image1`, `image2`, `name`, `price`) VALUES
(1, 'coffee5.png', 'coffee12.png', 'mocho', 1401.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrival`
--
ALTER TABLE `arrival`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `bottom`
--
ALTER TABLE `bottom`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualco_ord`
--
ALTER TABLE `casualco_ord`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualfrock`
--
ALTER TABLE `casualfrock`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualgown`
--
ALTER TABLE `casualgown`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualjacket`
--
ALTER TABLE `casualjacket`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualkaftan`
--
ALTER TABLE `casualkaftan`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualkurta`
--
ALTER TABLE `casualkurta`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualpallazo`
--
ALTER TABLE `casualpallazo`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `celebrity`
--
ALTER TABLE `celebrity`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `dupatta`
--
ALTER TABLE `dupatta`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `earing`
--
ALTER TABLE `earing`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `necklace`
--
ALTER TABLE `necklace`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partyanarkali`
--
ALTER TABLE `partyanarkali`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partyco_ord`
--
ALTER TABLE `partyco_ord`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partygown`
--
ALTER TABLE `partygown`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partylehenga`
--
ALTER TABLE `partylehenga`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partysaree`
--
ALTER TABLE `partysaree`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partywestern`
--
ALTER TABLE `partywestern`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `psrtykaftan`
--
ALTER TABLE `psrtykaftan`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrival`
--
ALTER TABLE `arrival`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bag`
--
ALTER TABLE `bag`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bottom`
--
ALTER TABLE `bottom`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `casualco_ord`
--
ALTER TABLE `casualco_ord`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `casualfrock`
--
ALTER TABLE `casualfrock`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `casualgown`
--
ALTER TABLE `casualgown`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `casualjacket`
--
ALTER TABLE `casualjacket`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `casualkaftan`
--
ALTER TABLE `casualkaftan`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `casualkurta`
--
ALTER TABLE `casualkurta`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `casualpallazo`
--
ALTER TABLE `casualpallazo`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `celebrity`
--
ALTER TABLE `celebrity`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dupatta`
--
ALTER TABLE `dupatta`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `earing`
--
ALTER TABLE `earing`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `necklace`
--
ALTER TABLE `necklace`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partyanarkali`
--
ALTER TABLE `partyanarkali`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partyco_ord`
--
ALTER TABLE `partyco_ord`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partygown`
--
ALTER TABLE `partygown`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partylehenga`
--
ALTER TABLE `partylehenga`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partysaree`
--
ALTER TABLE `partysaree`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partywestern`
--
ALTER TABLE `partywestern`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `psrtykaftan`
--
ALTER TABLE `psrtykaftan`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
