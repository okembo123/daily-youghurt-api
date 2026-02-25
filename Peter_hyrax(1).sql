-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Peter_hyrax`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Eliza Fairmon', '2026-02-12', 12345, 1),
(2, 'Samuel Okoye', '2026-02-11', 1000, 2),
(3, 'Sarah ann Connor', '2026-02-10', 250000, 3),
(4, 'Ingrid Falk', '2026-03-30', 10000, 2),
(5, 'Selene Whitford', '2026-03-30', 6000, 2),
(7, 'Brielle Sutton', '2026-05-30', 13300, 1),
(8, 'Victor Hale', '2026-06-30', 1564560, 2),
(12, 'Alaric Moreno', '2026-01-30', 135400, 2),
(13, 'Nico Alvarez', '2026-12-30', 1035460, 3),
(15, 'Jasper Kline', '2026-12-02', 19828, 1),
(16, 'okello max', '2026-04-20', 100000, 1),
(17, 'kawira oluoch', '2026-04-20', 1000099, 2),
(19, 'atoli kunene', '2026-04-20', 110000, 1),
(20, 'okebo amo', '2026-04-20', 200000, 2),
(22, 'intikoi puleng', '2026-04-20', 1200, 1),
(23, 'nkosa nlute', '2026-04-20', 34000, 2),
(25, 'zarma puleng', '2026-04-20', 335000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(6, 'Mika 2slice toaster', 'The best toaster with improved efficiency saving you not only time but money.', 300, 'cairo.webp'),
(8, 'Cooker', 'State of the art cooker with 4 burners and a fully equipped oven.', 3300, 'cooker.jpg'),
(9, 'Alions Kettle', 'Outstanding alluminium Kettle with 100% efficiency and safe to use and easy to use.', 35500, 'alionskettle.jpg'),
(10, 'Samsun 55\"Smart TV', 'An LG 55\" UHD 4K TV offers stunning detail with its 3840x2160 resolution', 5800, 'screen2.jpg'),
(11, 'Sony Bravis 43\"Smart TV', 'A Sony Bravia 43\" Smart TV offers 4K HDR picture quality, powered by Sony\'s X1 Processor', 72000, 'screen3.jpg'),
(12, 'tcl 40\"android TV', 'A TCL 40\" Android TV offers smart features like Google Assistant, voice control', 42000, 'screen4.jpg'),
(13, 'Google Pixel 6 5G', 'The Google Pixel 6 5G (released Oct 2021) features the custom Google Tensor (5 nm) chip', 12000, 'phone1.jpg'),
(14, 'Tecno pop 7 ,6.5 inchp', 'The Tecno Pop 7 is a budget-friendly 4G smartphone featuring a 6.6-inch IPS LCD screen', 11000, 'phone5.jpg'),
(15, 'Itel A16,5.0inch', 'The Itel A16 is a budget-friendly 5.0-inch Android 8.1 (Go edition) smartphone', 21000, 'phone3.jpg'),
(16, 'Mordern shower set', 'Bath exfoliating or body showering gloves is a pair of nicely made piece of garment that fits well in the hands', 12500, 'bath1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'Okembo', '1245234234', 'peteromwana1@gmail.com', '23451234214'),
(2, 'Ingrid Falk', '100100', 'falkingrid@gmail.com', '0134533622'),
(3, 'Selene Whitford', '200200', 'selenewhitford@gmail.com', '0123423523'),
(4, 'Alaric Moreno', '300300', 'alaricmoreno@gmail.com', '012345674'),
(5, 'mitchele rodrigez', '11223344', 'michelleodri@gmail.com', '011228833'),
(6, 'mitchele rodrigez', '11223344', 'michelleodri@gmail.com', '011228833');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
