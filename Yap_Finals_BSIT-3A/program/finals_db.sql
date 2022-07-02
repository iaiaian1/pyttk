-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 11:09 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finals_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product`, `price`, `quantity`, `description`) VALUES
(2, 'Scuttled', 5, 19, 'Soap'),
(3, 'Tang', 5, 13, 'Powdered Juice'),
(4, 'Lawcourt', 5, 8, 'Law and service'),
(6, 'adobo', 15, 20, 'Food'),
(7, 'nilaga', 5, 5, 'Ulam'),
(10, 'Tang orange', 5, 5, 'Juice'),
(12, 'Pepsi Black', 15, 20, 'GASOLINA'),
(18, 'Pepsi Purple', 12, 5, 'Kerosene');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `name`, `mail`, `address`, `total`, `date`) VALUES
(6, 'Jake Brian Yap', 'yapjakebrian1@gmail.com', 'Lawaan', 87, '2022-06-30 13:25:25'),
(9, 'Bruh', 'bruh@gmail.com', 'bruh city', 12, '2022-06-30 14:02:28'),
(12, 'Johnny', 'JOhnny@gmail.com', 'johncity', 25, '2022-06-30 14:05:18'),
(14, 'Johhny Joestar', 'joestar@joemail.com', 'Lawaan', 75, '2022-06-30 14:17:20'),
(15, 'Jolyne Joestar', 'jolyne@gmail.com', 'joestar', 20, '2022-06-30 14:19:27'),
(69, 'Johnny Boy', 'john@gmail.com', 'john city', 12, '2022-06-30 16:36:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
