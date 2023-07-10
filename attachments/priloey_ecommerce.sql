-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2023 at 07:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `priloey_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'Day to day life needed grocery items.', NULL, NULL, NULL, '2023-07-11 00:33:30', '2023-07-11 00:33:30'),
(2, 'Books & Stationary', 'Explore a vast collection of books across various genres.', NULL, NULL, NULL, '2023-07-11 00:35:52', '2023-07-11 00:35:52'),
(3, 'Fashion & Clothing', 'Find the latest fashion trends and stylish clothing items.', NULL, NULL, NULL, '2023-07-11 00:35:52', '2023-07-11 00:35:52'),
(4, 'Beauty & Personal Care', 'Find beauty products and grooming essentials.', NULL, NULL, NULL, '2023-07-11 00:35:52', '2023-07-11 00:35:52'),
(5, 'Home Appliance', 'Browse through a wide range of electronic devices.', NULL, NULL, NULL, '2023-07-11 00:35:52', '2023-07-11 00:35:52'),
(6, 'Home Decor & Furniture', 'Discover decorative items to enhance your living spaces.', NULL, NULL, NULL, '2023-07-11 00:35:52', '2023-07-11 00:35:52'),
(7, 'Gadget', 'Discover gadgets for daily use.', NULL, NULL, NULL, '2023-07-11 00:35:52', '2023-07-11 00:35:52'),
(8, 'Toys & Games', 'Explore a wide selection of toys and games for all ages.', NULL, NULL, NULL, '2023-07-11 00:35:53', '2023-07-11 00:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_name`, `category_id`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Vegetables', 1, 'Vegetables Subcategory Under Grocery Category', NULL, NULL, NULL, '2023-07-11 00:41:49', '2023-07-11 00:41:49'),
(2, 'Fish & Meet', 1, 'Fish & Meet Subcategory Under Grocery Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(3, 'Fruit', 1, 'Fruit Subcategory Under Grocery Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(4, 'Snacks', 1, 'Snacks Subcategory Under Grocery Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(5, 'Drinks', 1, 'Drinks Subcategory Under Grocery Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(6, 'Books', 2, 'Books Subcategory Under Books & Stationary Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(7, 'Notes', 2, 'Notes Subcategory Under Books & Stationary Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(8, 'Stationary', 2, 'Stationary Subcategory Under Books & Stationary Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(9, 'Men\'s Collection', 3, 'Men\'s Collection Subcategory Under Fashion & Clothing Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(10, 'Women\'s Outfit', 3, 'Women\'s Outfit Subcategory Under Fashion & Clothing Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(11, 'Toddler\'s Comfort', 3, 'Toddler\'s Comfort Subcategory Under Fashion & Clothing Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(12, 'Makeup Solution', 4, 'Makeup Solution Subcategory Under Beauty & Personal Care Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(13, 'Ornament Collection', 4, 'Ornament Collection Subcategory Under Beauty & Personal Care Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(14, 'Men\'s Care', 4, 'Men\'s Care Subcategory Under Beauty & Personal Care Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(15, 'Television', 5, 'Television Subcategory Under Home Appliance Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(16, 'Fridge', 5, 'Fridge Subcategory Under Home Appliance Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(17, 'Air Conditioner', 5, 'Air Conditioner Subcategory Under Home Appliance Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(18, 'Washing Machine', 5, 'Washing Machine Subcategory Under Home Appliance Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(19, 'Air Conditioner', 5, 'Air Conditioner Subcategory Under Home Appliance Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(20, 'Home Decorations', 6, 'Home Decorations Subcategory Under Home Decor & Furniture Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(21, 'Furnitures', 6, 'Furnitures Subcategory Under Home Decor & Furniture Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(22, 'Mobile', 7, 'Mobile Subcategory Under Gadget Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(23, 'Tablet', 7, 'Tablet Subcategory Under Gadget Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(24, 'Laptop', 7, 'Laptop Subcategory Under Gadget Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(25, 'Smart Watch', 7, 'Smart Watch Subcategory Under Gadget Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(26, 'Earphone', 7, 'Earphone Subcategory Under Gadget Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(27, 'Charger', 7, 'Charger Subcategory Under Gadget Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(28, 'Toys', 8, 'Toys Subcategory Under Toys & Games Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48'),
(29, 'Gaming Instruments', 8, 'Gaming Instruments Subcategory Under Toys & Games Category', NULL, NULL, NULL, '2023-07-11 00:45:48', '2023-07-11 00:45:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
