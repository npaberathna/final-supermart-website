-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 07:31 AM
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
-- Table structure for table `householdaddtocart`
--

CREATE TABLE `householdaddtocart` (
  `item_name` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `householdaddtocart`
--

INSERT INTO `householdaddtocart` (`item_name`, `unitPrice`, `quantity`, `total_price`) VALUES
('Flora Paper Serviettes', 355, 2, 710),
('Harpic Fresh Pine 750ml', 675, 2, 1350),
('Closeup Gel Toothpaste 120g', 410, 2, 820),
('Closeup Gel Toothpaste 120g', 410, 2, 820),
('Fems Aya Drytex Sanitary Napkins 85', 150, 4, 600),
('Lifebouy Soap Kohomba', 150, 4, 600);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
