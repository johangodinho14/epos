-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 07:29 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epos`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `category` text NOT NULL,
  `item_name` text NOT NULL,
  `price` text NOT NULL,
  `item_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `item_name`, `price`, `item_type`) VALUES
(1, 'Cake', 'Fudge Cake', '5', 'food'),
(2, 'Cake', 'Carrot Cake', '4', 'food'),
(3, 'Cake', 'Soy Cake', '2', 'food'),
(4, 'Cake', 'Hong Cake', '100', 'food'),
(5, 'Drinks', 'Coca Cola', '2.99', 'drink'),
(6, 'Drinks', 'Fanta', '2.99', 'drink');

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` int(11) NOT NULL,
  `menu_category` text NOT NULL,
  `colour` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `menu_category`, `colour`) VALUES
(1, 'Soups', 'red'),
(4, 'Desserts', 'pink'),
(5, 'Cake', 'green'),
(6, 'Drinks', 'orange');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `item_price` text NOT NULL,
  `discount` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `item_name`, `item_price`, `discount`, `date`) VALUES
(15, 'Carrot Cake', '4', '0', '13/12/2019 12:11: pm'),
(16, 'Carrot Cake', '4', '0', '13/12/2019 12:11: pm'),
(17, 'Fanta', '2.99', '0', '13/12/2019 12:11: pm'),
(18, 'Fanta', '2.99', '0', '13/12/2019 12:11: pm'),
(19, 'Coca Cola', '2.99', '0', '13/12/2019 12:14: pm'),
(20, 'Fanta', '2.99', '0', '13/12/2019 12:14: pm'),
(21, 'Coca Cola', '2.99', '0', '13/12/2019 12:14: pm'),
(22, 'Coca Cola', '2.99', '0', '13/12/2019 12:14: pm'),
(23, 'Carrot Cake', '4', '0', '13/12/2019 12:14: pm'),
(24, 'Fudge Cake', '5', '0', '13/12/2019 12:15: pm'),
(25, 'Fanta', '2.99', '0', '13/12/2019 12:15: pm'),
(26, 'Fanta', '2.99', '0', '13/12/2019 12:15: pm'),
(27, 'Coca Cola', '2.99', '0', '13/12/2019 12:15: pm'),
(28, 'Fanta', '2.99', '0', '13/12/2019 12:15: pm'),
(29, 'Fanta', '2.99', '0', '13/12/2019 12:22: pm'),
(30, 'Fanta', '2.99', '0', '13/12/2019 12:22: pm'),
(31, 'Coca Cola', '2.99', '0', '13/12/2019 12:22: pm'),
(32, 'Coca Cola', '2.99', '0', '13/12/2019 12:22: pm'),
(33, 'Coca Cola', '2.99', '0', '13/12/2019 12:22: pm'),
(34, 'Fudge Cake', '5', '0', '13/12/2019 12:25: pm'),
(35, 'Soy Cake', '2', '0', '13/12/2019 12:25: pm'),
(36, 'Coca Cola', '2.99', '0', '13/12/2019 12:28: pm'),
(37, 'Fudge Cake', '5', '0', '13/12/2019 12:30: pm'),
(38, 'Coca Cola', '2.99', '0', '13/12/2019 12:34: pm'),
(39, 'Coca Cola', '2.99', '0', '13/12/2019 12:34: pm'),
(40, 'Carrot Cake', '4', '0', '13/12/2019 12:34: pm'),
(41, 'Coca Cola', '2.99', '0', '13/12/2019 12:35: pm'),
(42, 'Coca Cola', '2.99', '0', '13/12/2019 12:40: pm'),
(43, 'Fanta', '2.99', '0', '13/12/2019 12:40: pm'),
(44, 'Fanta', '2.99', '0', '13/12/2019 12:40: pm'),
(45, 'Carrot Cake', '4', '0', '13/12/2019 12:40: pm'),
(46, 'Coca Cola', '2.99', '0', '13/12/2019 12:40: pm'),
(47, 'Fanta', '2.99', '0', '13/12/2019 12:40: pm'),
(48, 'Coca Cola', '2.99', '0', '13/12/2019 12:40: pm'),
(49, 'Fanta', '2.99', '0', '13/12/2019 12:40: pm'),
(50, 'Carrot Cake', '4', '0', '13/12/2019 12:40: pm'),
(51, 'Coca Cola', '2.99', '0', '13/12/2019 12:40: pm'),
(52, 'Fanta', '2.99', '0', '13/12/2019 12:40: pm'),
(53, 'Coca Cola', '2.99', '0', '13/12/2019 12:40: pm'),
(54, 'Coca Cola', '2.99', '0', '13/12/2019 12:40: pm'),
(55, 'Coca Cola', '2.99', '0', '13/12/2019 12:41: pm'),
(56, 'Coca Cola', '2.99', '0', '13/12/2019 12:41: pm'),
(57, 'Fanta', '2.99', '0', '13/12/2019 12:41: pm'),
(58, 'Fanta', '2.99', '0', '13/12/2019 12:41: pm'),
(59, 'Coca Cola', '2.99', '0', '13/12/2019 12:41: pm'),
(60, 'Fanta', '2.99', '0', '13/12/2019 12:41: pm'),
(61, 'Coca Cola', '2.99', '0', '13/12/2019 12:42: pm'),
(62, 'Coca Cola', '2.99', '0', '13/12/2019 12:44: pm'),
(63, 'Coca Cola', '2.99', '0', '13/12/2019 12:44: pm'),
(64, 'Fanta', '2.99', '0', '13/12/2019 12:44: pm'),
(65, 'Carrot Cake', '4', '0', '13/12/2019 12:45: pm'),
(66, 'Coca Cola', '2.99', '0', '13/12/2019 12:46: pm'),
(67, 'Coca Cola', '2.99', '0', '13/12/2019 12:46: pm'),
(68, 'Coca Cola', '2.99', '0', '13/12/2019 12:46: pm'),
(69, 'Carrot Cake', '4', '0', '13/12/2019 12:46: pm'),
(70, 'Coca Cola', '2.99', '0', '13/12/2019 12:46: pm'),
(71, 'Coca Cola', '2.99', '0', '13/12/2019 12:46: pm'),
(72, 'Coca Cola', '2.99', '0', '13/12/2019 12:46: pm'),
(73, 'Fanta', '2.99', '0', '13/12/2019 10:04: pm'),
(74, 'Soy Cake', '2', '0', '16/12/2019 08:49: am'),
(75, 'Fanta', '2.99', '0', '16/12/2019 08:58: am'),
(76, 'Coca Cola', '2.99', '0', '16/12/2019 08:58: am'),
(77, 'Fudge Cake', '5', '0', '16/12/2019 08:58: am'),
(78, 'Coca Cola', '2.99', '0', '16/12/2019 08:59: am'),
(79, 'Coca Cola', '2.99', '0', '16/12/2019 09:09: am'),
(80, 'Hong Cake', '100', '0', '16/12/2019 10:11: am'),
(81, 'Coca Cola', '2.99', '0', '16/12/2019 10:14: am'),
(82, 'Hong Cake', '100', '0', '16/12/2019 10:43: am'),
(83, 'Fudge Cake', '5', '0', '16/12/2019 10:50: am'),
(84, 'Fudge Cake', '5', '0', '16/12/2019 10:50: am'),
(85, 'Fudge Cake', '5', '0', '16/12/2019 01:12: pm'),
(86, 'Fudge Cake', '5', '0', '16/12/2019 01:20: pm'),
(87, 'Coca Cola', '2.99', '0', '17/12/2019 08:51: am'),
(88, 'Coca Cola', '2.99', '0', '17/12/2019 09:13: am'),
(89, 'Fanta', '2.99', '0', '17/12/2019 09:13: am'),
(90, 'Fudge Cake', '5', '0', '17/12/2019 09:13: am'),
(91, 'Fanta', '2.99', '0', '17/12/2019 09:24: am'),
(92, 'Fanta', '2.99', '0', '17/12/2019 09:24: am'),
(93, 'Fanta', '2.99', '0', '17/12/2019 09:24: am'),
(94, 'Coca Cola', '2.99', '0', '17/12/2019 09:24: am'),
(95, 'Hong Cake', '100', '0', '18/12/2019 03:13: pm'),
(96, 'Fudge Cake', '5', '0', '18/12/2019 03:15: pm'),
(97, 'Fudge Cake', '5', '0', '02/01/2020 02:29: pm'),
(98, 'Hong Cake', '100', '0', '02/01/2020 02:29: pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
