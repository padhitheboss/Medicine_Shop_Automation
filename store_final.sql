-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.0.5
-- Generation Time: Mar 14, 2021 at 09:27 PM
-- Server version: 10.3.27-MariaDB-0+deb10u1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `date`) VALUES
(1, 'Capsule', 'cap.png', '2021-02-15 04:58:57'),
(2, 'Tablets', 'tablet.png', '2021-02-15 04:58:57'),
(3, 'Syrup', 'syrup.png', '2021-02-15 04:58:57'),
(4, 'Cream', 'cream.png', '2021-02-15 04:58:57'),
(5, 'Lotion', 'lotion.png', '2021-02-15 04:58:57'),
(6, 'Syrunj', 'syrunj.png', '2021-02-15 04:58:57'),
(7, 'Injection', 'injection.jpg', '2021-02-15 04:58:57'),
(8, 'Other', 'fk.jpg', '2021-02-15 04:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `description` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `description`, `company`, `date`) VALUES
(5, 2, 'Arif Khan', 'Disprin', '6mg', '7', 'these are 2mg disprin for the cure of some thing extera', 'Generic', '2021-02-03 06:10:37'),
(6, 2, 'Arif Khan', 'Paracetamol', '650mg', '5', 'these are 2mg disprin for the cure of some thing extera', 'Generic', '2021-02-03 06:10:37'),
(7, 1, 'Arif Khan', 'Cyra-D', '150mg', '8', 'these are 2mg disprin for the cure of some thing extera', 'Systopic Labs', '2021-02-03 06:10:37'),
(9, 2, 'Arif Khan', 'Vomikind Tab', '6mg', '3', 'these are 2mg disprin for the cure of some thing extera', 'Mankind Pharma', '2021-02-03 06:10:37'),
(10, 3, 'Arif Khan', 'Robitussin', '250ml', '130', 'these are 2mg disprin for the cure of some thing extera', 'Pfizer RxPathways®', '2021-02-03 06:10:37'),
(11, 3, 'Arif Khan', 'Acidocid', '200ml', '75', 'these are 2mg disprin for the cure of some thing extera', 'GAMS', '2021-02-03 06:10:37'),
(12, 4, 'Arif Khan', 'K-Laqer', '50g', '225', 'these are 2mg disprin for the cure of some thing extera', 'Kivi Labs', '2021-02-03 06:10:37'),
(13, 4, 'Arif Khan', 'Volini', '100g', '100', 'these are 2mg disprin for the cure of some thing extera', 'Sun Pharmaceutica', '2021-02-03 06:10:37'),
(14, 4, 'Arif Khan', 'Lulikop', '20g', '250', 'these are 2mg disprin for the cure of some thing extera', 'Kopran', '2021-02-03 06:10:37'),
(15, 5, 'Arif Khan', 'Kevon', '75ml', '325', 'these are 2mg disprin for the cure of some thing extera', 'Glowderma Labs', '2021-02-03 06:10:37'),
(16, 6, 'Arif Khan', 'Vomikind DSR', '7ml', '15', 'these are 2mg disprin for the cure of some thing extera', 'Mankind Pharma', '2021-02-03 06:10:37'),
(17, 7, 'Arif Khan', 'Anti Inflammatory Injection', '7ml', '25', 'these are 2mg disprin for the cure of some thing extera', 'Segos Biocare', '2021-02-03 06:10:37'),
(18, 7, 'Arif Khan', 'Diclofenac 75/1 Ml Aqueous Base Injection', '6mg', '15', 'these are 2mg disprin for the cure of some thing extera', 'Jasco Labs', '2021-02-03 06:10:37'),
(19, 6, 'Arif Khan', 'Dispo Van 50ml', '50ml', '20', 'these are 2mg disprin for the cure of some thing extera', 'Dispo', '2021-02-03 06:10:37'),
(20, 1, 'Asif Khan', 'Panadol', '100mg', '12', 'there is no askdfas dfsakdfkas', 'GlaxoSmithKline', '2021-02-03 06:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `date`, `qty`) VALUES
(2, 5, '2021-03-11 18:30:00', 5),
(2, 6, '2021-03-11 18:30:00', 7),
(3, 5, '2021-03-11 18:30:00', 5),
(4, 17, '2021-03-11 18:30:00', 6),
(4, 19, '2021-03-11 18:30:00', 10),
(9, 5, '2021-03-13 18:30:00', 2),
(9, 6, '2021-03-13 18:30:00', 2),
(9, 10, '2021-03-13 18:30:00', 1),
(10, 5, '2021-03-13 18:30:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `comp_id` varchar(5) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `comp_id`, `quantity`, `mfg_date`, `exp_date`) VALUES
(5, 'A1', 81, '2020-03-22', '2022-06-01'),
(6, 'A1', 74, '2019-12-16', '2021-12-28'),
(7, 'C1', 95, '2020-10-13', '2023-12-12'),
(9, 'B3', 46, '2019-11-30', '2021-12-29'),
(10, 'D6', 99, '2020-03-03', '2022-06-19'),
(11, 'B3', 36, '2021-03-11', '2023-06-25'),
(12, 'B1', 125, '2020-07-25', '2022-01-25'),
(13, 'C2', 56, '2021-01-16', '2024-01-03'),
(14, 'A3', 100, '2019-06-25', '2022-08-29'),
(15, 'A2', 101, '2021-01-16', '2022-09-25'),
(16, 'C1', 26, '2020-05-26', '2022-09-25'),
(17, 'B2', 100, '2020-09-19', '2023-03-08'),
(18, 'B2', 81, '2020-04-02', '2021-12-09'),
(19, 'D1', 89, '2019-04-23', '2022-01-05'),
(20, 'C6', 75, '2021-01-01', '2023-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(2, 'khan Shoaib', '03445584686', '10', '2', '3', 1, '2021-01-12 04:48:46'),
(3, 'Asif', '7253224448', '10', '3', '25', 1, '2021-03-08 16:47:22'),
(4, 'Younis', '03451212345', '21', '4', '35', 1, '2020-11-19 04:54:26'),
(5, 'Subham', '2536569612', '20', '1', '50', 1, '2021-03-08 05:50:48'),
(7, 'Subham', '7008523339', '0', '2', '12', 1, '2021-03-12 11:54:08'),
(8, 'Sourav', '700856669', '10', '5', '120', 2, '2021-03-12 15:04:25'),
(9, 'Shyam', '6005998610', '20', '3', '134', 1, '2021-03-14 14:03:59'),
(10, 'Raja', '999999999', '0', '1', '21', 1, '2021-03-14 14:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pic` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `cnic` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(1, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2020-11-03 07:23:49'),
(2, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2020-11-03 07:23:53'),
(3, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2020-11-03 07:23:56'),
(4, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:56'),
(5, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'admin@gmail.com', '116e4903b7a68143e221bc484c0ad2a0', 'FK', 'fk.jpg', '03356910260', '2017-11-02 12:34:53'),
(2, 'worker1@gmail.com', 'ebad64149cc767ba26ef069819279fd5', 'Worker-1', '', '', '2021-03-12 13:18:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD CONSTRAINT `inventeries_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `sold` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `inventeries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id`) REFERENCES `inventeries` (`id`);

--
-- Constraints for table `sold`
--
ALTER TABLE `sold`
  ADD CONSTRAINT `sold_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
