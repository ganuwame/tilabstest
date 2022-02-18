-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 03:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dborder`
--
CREATE DATABASE IF NOT EXISTS `dborder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dborder`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `trx_code` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `trx_code`, `amount`, `status`, `createBy`, `createdAt`, `updatedAt`) VALUES
(1, 'dummy', 5000, 'cancel', 'dummy', '2022-02-17 13:09:16', '2022-02-17 14:09:17'),
(2, 'dummy', 5000, 'cancel', 'dummy', '2022-02-17 14:15:16', '2022-02-18 01:32:16'),
(3, 'dummy', 5000, 'create', 'dummy', '2022-02-17 23:37:06', '2022-02-17 23:37:06'),
(4, 'dummy', 5000, 'create', 'dummy', '2022-02-18 01:31:58', '2022-02-18 01:31:58'),
(5, 'dummy', 5000, 'create', 'dummy', '2022-02-18 01:32:21', '2022-02-18 01:32:21'),
(6, 'dummy', 5000, 'create', NULL, '2022-02-18 02:40:15', '2022-02-18 02:40:15'),
(7, 'dummy', 5000, 'create', NULL, '2022-02-18 03:55:29', '2022-02-18 03:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `trx_code` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `trx_code`, `amount`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'dummy', 5000, 'create', '2022-02-18 03:55:43', '2022-02-18 03:55:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
