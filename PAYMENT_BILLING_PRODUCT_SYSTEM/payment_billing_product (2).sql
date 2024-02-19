-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 11:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payment_billing_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `martial_status` varchar(100) DEFAULT NULL,
  `DoB` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`fname`, `lname`, `phone`, `gender`, `martial_status`, `DoB`, `email`, `password`) VALUES
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', ''),
('', '', '', 'Male', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone_number`, `country`, `gender`) VALUES
(1, 'fffrff', 'hxjzcgzx', 'jhgfghg', '0734343453', 'rwand', 'Male'),
(2, 'DFGHJ', 'DDFGH', 'RWANDA', 'SDFGH@GMAIL.COM', '098765', 'Male'),
(3, 'ERTY', 'FGHJ', 'SDFGHJ', 'FGHJ', '098765432', 'Male'),
(5, 'DFGHJ', 'XCVBHN', 'SDFGHJ@GMAIL.COM', '456789', 'SDFGH', 'Female'),
(6, 'WERTYUIO', 'ERTYU', 'RTY', 'FGYHJ', 'GHJ', 'Male'),
(7, 'ERT', 'FGHJ', 'FGHJ', '098765432', 'SDFGHJ', 'Male'),
(9, 'DFGHJ', 'DDFGH', 'SDFGH@GMAIL.COM', '098765', 'RWANDA', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `currency` varchar(10) NOT NULL,
  `payment_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `customer_id`, `payment_method_id`, `issue_date`, `total_amount`, `currency`, `payment_status`) VALUES
(1, 2, 1, '2024-11-07', 200000, 'paid', 'yes paid'),
(2, 6, 1, '2023-01-04', 2000, 'REWTERT', 'Yeah paid'),
(3, 2, 1, '2021-02-03', 70000, 'good paid', 'no pay');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `payment_method_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`payment_method_id`, `type`, `customer_id`, `card_number`, `expiration_date`) VALUES
(1, 'momo pay', 2, '90', '2026-01-05'),
(5, 'momo', 2, '15', '2025-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `description`, `category`, `price`) VALUES
(1, 'gdhsagz', 'hzxjh', 'jsdahz', 3476),
(2, 'matress', 'device using in bedroom', 'best', 100000),
(3, 'book', 'device of student', 'gsad', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`subscription_id`, `product_id`, `start_date`, `end_date`, `status`) VALUES
(2, 2, '2018-02-01', '2027-05-09', 'issued'),
(3, 1, '2022-01-02', '2023-06-07', 'canceld'),
(6, 3, '2011-02-01', '2025-05-09', 'issued');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `paymentmethods` (`payment_method_id`);

--
-- Constraints for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD CONSTRAINT `paymentmethods_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
