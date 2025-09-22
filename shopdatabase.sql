-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2025 at 10:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `create_date`) VALUES
(27, 8, 2, 1, '2025-06-15 09:18:28'),
(28, 8, 3, 2, '2025-06-15 09:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `name`) VALUES
(3, 'jeans '),
(4, 'sari'),
(5, 'trousher');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `special_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`, `status`, `sort_order`, `create_date`, `special_price`) VALUES
(1, 'black', 1, NULL, NULL, NULL),
(2, 'white', 1, NULL, NULL, NULL),
(3, 'red', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `massage` text DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `massage`, `create_date`) VALUES
(23, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'fkdhakjkl', 'dsfsf', '2025-06-15 09:45:53'),
(24, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'i am sick ', 'sfddsf', '2025-06-15 09:47:34'),
(25, '', '', '', '', '2025-06-15 09:47:38'),
(26, 'gaurav maurya', 'gauravmauryamaurya500@gmail.com', 'dsfs', 'sdfs', '2025-06-15 09:47:47'),
(27, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'fkdhakjkl', 'tst', '2025-06-15 09:49:01'),
(28, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'new enquiry', 'sdfsf', '2025-06-15 09:49:23'),
(29, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'asdad', 'asda', '2025-06-15 09:49:31'),
(30, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'new enquiry', 'asdad', '2025-06-15 09:50:32'),
(31, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'fkdhakjkl', '', '2025-06-15 09:50:45'),
(32, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', 'new enquiry', 'asdad', '2025-06-15 09:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address1` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `shiping` int(11) DEFAULT NULL,
  `payment` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `address1`, `address2`, `country`, `phone`, `city`, `state`, `zip_code`, `total`, `subtotal`, `discount`, `shiping`, `payment`, `create_date`) VALUES
(21, 3, 'Gaurav', 'Maurya', 'gauravmauryamaurya500@gmail.com', 'amila', '', 'India', '+9198713657', 'MAU', 'Uttar Pradesh', 275301, 7878, 7800, 78, 156, 'cod', NULL),
(22, 3, 'praveen', 'dahiya', 'pravvin@gmail.com', 'amila', '', 'India', '123456', 'MAU', 'Uttar Pradesh', 275301, 4183, 4142, 41, 83, 'paypal', NULL),
(23, 2, 'Gaurav', 'Maurya', 'gauravmauryamaurya500@gmail.com', 'amila', '', 'India', '+9198713657', 'MAU', 'Uttar Pradesh', 275301, 3232, 3200, 32, 64, 'cod', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `special_price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `shiping` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`, `special_price`, `total`, `discount`, `shiping`) VALUES
(21, 21, 2, 1, 3200, 3200, 32, NULL),
(22, 21, 1, 1, 4600, 4600, 46, NULL),
(23, 22, 5, 1, 4142, 4142, 41, NULL),
(24, 23, 2, 1, 3200, 3200, 32, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `special_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `status`, `sort_order`, `create_date`, `special_price`) VALUES
(1, '1000 - 2000', 1, NULL, NULL, NULL),
(2, '2000 - 3000', 1, NULL, NULL, NULL),
(3, '3000 -4000', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) DEFAULT NULL,
  `special_price` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `price_category` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `image` varchar(250) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `create_order` int(11) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `special_price`, `color`, `price_category`, `size`, `status`, `image`, `sort_order`, `create_order`, `slug`, `create_date`) VALUES
(1, 'Chill cloth', 8000, 4600, 3, 1, 3, 1, '/uploads/product-2.jpg6598', NULL, NULL, NULL, NULL),
(2, 'girl shite', 3435, 3200, 1, 1, 1, 1, '/uploads/product-1.jpg8233', NULL, NULL, NULL, NULL),
(3, 'rakesh', 3435, 5435, 2, 2, 1, 1, '/uploads/Screenshot 2024-11-28 093746.png9845', NULL, NULL, NULL, NULL),
(4, 'Taj Hotel', 3435, 3444, 1, 1, 1, 1, '/uploads/product-2.jpg3040', NULL, NULL, NULL, NULL),
(5, 'arun', 2211, 4142, 1, 2, 2, 1, '/uploads/cat-2.jpg9385', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`id`, `quantity`) VALUES
(1, 1),
(3, 0),
(5, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `special_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `name`, `status`, `sort_order`, `create_date`, `special_price`) VALUES
(1, 'xl', 1, NULL, NULL, NULL),
(2, 's', 1, NULL, NULL, NULL),
(3, 'm', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `name`, `email`, `create_date`) VALUES
(1, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', '2025-06-12 18:28:14'),
(2, 'Gaurav Maurya', 'gauravmauryamaurya500@gmail.com', '2025-06-15 09:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `phone`, `username`, `email`, `password`) VALUES
(1, 'Admin', NULL, NULL, 'admin', 'admin@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(2, 'Gaurav', NULL, '9871365766', 'gaurav', 'gaurav@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Rakesh', NULL, '8800250794', 'rakesh', 'rakesh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, '', NULL, NULL, 'toomy', 'tm@gmail.com', '$2y$10$qbMhfuR/iq.KJL7S1Wz8AOyA.AQzDAMy4vLw6Jlg/8w4FudXVOwMG'),
(5, '', NULL, NULL, 'tammana', 'tauji@gmail', 'A\"?Ǥt??l??6R'),
(8, '', NULL, NULL, 'vikas', 'vikas@gmailc.om', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
