-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 07:48 AM
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
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `item_name`, `quantity`, `total_price`) VALUES
(288, 'Chocolate Cake', 5, 3000),
(289, 'Chocolate Cake', 2, 1200),
(290, 'Strawberry Cake', 2, 1100),
(378, 'Chocolate Cake', 2, 1200),
(379, 'Ribbon Cake', 1, 700),
(380, 'Strawberry Cake', 4, 2200),
(381, 'Velvet Vanilla Cake', 10, 5000),
(382, 'Chocolate Cake', 4, 2400),
(383, 'Velvet Vanilla Cake', 5, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(60) NOT NULL,
  `postalcode` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `address`, `phone`, `email`, `city`, `postalcode`) VALUES
(38, 'anjuni', 'sdsa', '0714240616', '', '', ''),
(95, 'anula', 'sdsa', 'tniwarthna@gmail.com', '', '', ''),
(119, 'manoj', 'kurunegala', '0714240616', 'em@com.com', 'maho', ''),
(120, 'joi', 'kurunegala', '0714240616', 'em@com.com', 'maho', ''),
(126, 'jimko', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', ''),
(134, 'din', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', ''),
(135, 'my', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', ''),
(136, 'my', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', ''),
(137, 'manoj', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', '8000'),
(138, 'sahani', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', '8000'),
(139, 'anula', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', '8000'),
(140, 'indu', 'kurunegala', '0714240616', 'joni@gmail.com', 'maho', '8000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`) VALUES
(1, 'fefw', 'asfa'),
(2, 'manoj', 'asfa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
