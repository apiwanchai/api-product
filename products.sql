-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 12:23 PM
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
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `description` text DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `image`, `price`, `description`, `size`, `weight`, `createdAt`, `updatedAt`) VALUES
(1, 'P001', 'Ceramic Mug', 'https://via.placeholder.com/300x200.png?text=Ceramic+Mug', 15, 'Classic ceramic mug for hot beverages', '11oz', 0.3, '2024-12-15 10:59:32', '2024-12-15 10:59:32'),
(2, 'P002', 'Glass Water Bottle', 'https://via.placeholder.com/300x200.png?text=Glass+Water+Bottle', 25, 'Eco-friendly glass water bottle with screw cap', '500ml', 0.4, '2024-12-15 10:59:38', '2024-12-15 10:59:38'),
(3, 'P003', 'Dinner Plate Set', 'https://via.placeholder.com/300x200.png?text=Dinner+Plate+Set', 40, 'Set of 4 elegant dinner plates', '10-inch', 1.2, '2024-12-15 10:59:43', '2024-12-15 10:59:43'),
(4, 'P004', 'Soup Bowl', 'https://via.placeholder.com/300x200.png?text=Soup+Bowl', 12, 'Perfect for soups and stews', '8-inch', 0.6, '2024-12-15 10:59:49', '2024-12-15 10:59:49'),
(5, 'P005', 'Stainless Steel Water Bottle', 'https://via.placeholder.com/300x200.png?text=Stainless+Steel+Water+Bottle', 18, 'Insulated stainless steel bottle for cold drinks', '750ml', 0.5, '2024-12-15 10:59:55', '2024-12-15 10:59:55'),
(6, 'P006', 'Glass Tumbler', 'https://via.placeholder.com/300x200.png?text=Glass+Tumbler', 10, 'Elegant glass tumbler for water or juice', '300ml', 0.2, '2024-12-15 11:00:00', '2024-12-15 11:00:00'),
(7, 'P007', 'Porcelain Teacup', 'https://via.placeholder.com/300x200.png?text=Porcelain+Teacup', 8, 'Delicate teacup made of porcelain', '6oz', 0.1, '2024-12-15 11:00:07', '2024-12-15 11:00:07'),
(8, 'P008', 'Plastic Water Bottle', 'https://via.placeholder.com/300x200.png?text=Plastic+Water+Bottle', 5, 'Lightweight and durable plastic water bottle', '1L', 0.3, '2024-12-15 11:00:12', '2024-12-15 11:00:12'),
(9, 'P009', 'Melamine Plate', 'https://via.placeholder.com/300x200.png?text=Melamine+Plate', 7, 'Durable melamine plate for everyday use', '9-inch', 0.5, '2024-12-15 11:00:17', '2024-12-15 11:00:17'),
(10, 'P010', 'Glass Tea Pot', 'https://via.placeholder.com/300x200.png?text=Glass+Tea+Pot', 25, 'Elegant glass teapot for brewing tea', '1L', 0.7, '2024-12-15 11:00:25', '2024-12-15 11:00:25'),
(11, 'P011', 'Porcelain Mug', 'https://via.placeholder.com/300x200.png?text=Porcelain+Mug', 10, 'Classic porcelain mug for coffee or tea', '8oz', 0.3, '2024-12-15 11:00:31', '2024-12-15 11:00:31'),
(12, 'P012', 'Ceramic Plate', 'https://via.placeholder.com/300x200.png?text=Ceramic+Plate', 14, 'Durable ceramic plate for main courses', '10-inch', 0.7, '2024-12-15 11:00:37', '2024-12-15 11:00:37'),
(13, 'P013', 'Bowl Set', 'https://via.placeholder.com/300x200.png?text=Bowl+Set', 20, 'Set of 4 bowls for soup or cereal', '6-inch', 0.8, '2024-12-15 11:00:44', '2024-12-15 11:00:44'),
(14, 'P014', 'Travel Mug', 'https://via.placeholder.com/300x200.png?text=Travel+Mug', 15, 'Insulated travel mug for hot drinks on the go', '12oz', 0.4, '2024-12-15 11:00:50', '2024-12-15 11:00:50'),
(15, 'P015', 'Wine Glass Set', 'https://via.placeholder.com/300x200.png?text=Wine+Glass+Set', 30, 'Set of 2 elegant wine glasses', '8oz', 0.4, '2024-12-15 11:00:57', '2024-12-15 11:00:57'),
(16, 'P016', 'Thermal Flask', 'https://via.placeholder.com/300x200.png?text=Thermal+Flask', 20, 'Keeps drinks hot or cold for hours', '500ml', 0.6, '2024-12-15 11:01:03', '2024-12-15 11:01:03'),
(17, 'P017', 'Lunch Box', 'https://via.placeholder.com/300x200.png?text=Lunch+Box', 12, 'Bento-style lunch box with compartments', 'Medium', 0.5, '2024-12-15 11:01:09', '2024-12-15 11:01:09'),
(18, 'P018', 'Chopping Board', 'https://via.placeholder.com/300x200.png?text=Chopping+Board', 10, 'Wooden chopping board for kitchen use', 'Medium', 1, '2024-12-15 11:01:16', '2024-12-15 11:01:16'),
(19, 'P019', 'Plastic Cup Set', 'https://via.placeholder.com/300x200.png?text=Plastic+Cup+Set', 8, 'Set of 4 colorful plastic cups', '300ml', 0.5, '2024-12-15 11:01:21', '2024-12-15 11:01:21'),
(20, 'P020', 'Thermo Mug', 'https://via.placeholder.com/300x200.png?text=Thermo+Mug', 18, 'Thermo mug for keeping drinks at perfect temperature', '12oz', 0.4, '2024-12-15 11:01:27', '2024-12-15 11:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'test', '$2a$10$70GFAG3sNpKDucFCsY6asekRTinr2R64kCXEb/kQp5F2kiuLkhn.m', '2024-12-15 11:01:44', '2024-12-15 11:01:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
