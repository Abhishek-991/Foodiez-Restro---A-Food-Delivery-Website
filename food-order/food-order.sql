-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 07:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Mihir Vasoya', 'mihirVasoya', 'ed14c851ceb5dd754ba0d6960432d45a'),
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'Bhargav Seladiya', 'bhargavSeladiya', 'c1b65256587235fb7ce27d4a9987f9bb'),
(14, 'Abhishek Paghdal', 'abhishekPaghdal', '515e7f9fc3ff98c7f2e544241a9f2043'),
(15, 'Tenzin Dawa', 'tenzinDawa', '9a5a02235a0f48426e11b2dcc3958d88');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'South Indian', 'Food_Category_496.jpg', 'Yes', 'Yes'),
(9, 'Punjabi Food', 'Food_Category_945.jpg', 'Yes', 'Yes'),
(10, 'Street Food', 'Food_Category_615.jpg', 'Yes', 'Yes'),
(12, 'Chinese Food', 'Food_Category_98.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Dumplings Specials', 'Chicken Dumpling with herbs from Mountains', '5.00', 'Food-Name-3649.jpg', 10, 'Yes', 'Yes'),
(4, 'Best Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '4.00', 'Food-Name-6340.jpg', 10, 'Yes', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', '6.00', 'Food-Name-8298.jpg', 10, 'Yes', 'Yes'),
(6, 'Sadeko Momo', 'Best Spicy Momo for Winter', '6.00', 'Food-Name-7387.jpg', 10, 'Yes', 'Yes'),
(10, 'Idli Sambhar', '', '4.00', 'Food-Name-8259.jpg', 4, 'Yes', 'Yes'),
(15, 'Dabeli', 'lorem ipsum lorem ipsum', '3.00', 'Food-Name-9263.jpg', 10, 'Yes', 'Yes'),
(16, 'Maisur Dhosa', 'lorem ipsum lorem ipsum', '8.00', 'Food-Name-4988.jpg', 4, 'Yes', 'No'),
(17, 'Chips', 'lorem ipsum lorem ipsum', '5.00', 'Food-Name-54.jpg', 10, 'Yes', 'Yes'),
(18, 'Nan', 'lorem ipsum lorem ipsum', '2.00', 'Food-Name-9359.jpg', 9, 'Yes', 'Yes'),
(19, 'Utapam', 'lorem ipsum lorem ipsum', '4.00', 'Food-Name-1921.jpg', 4, 'Yes', 'Yes'),
(20, 'Manchurian Dry', 'lorem ipsum lorem ipsum', '5.00', 'Food-Name-9777.jpg', 12, 'Yes', 'Yes'),
(21, 'Manchurian', 'lorem ipsum lorem ipsum', '5.00', 'Food-Name-7374.jpg', 12, 'Yes', 'No'),
(22, 'Manchurian with Souce', 'lorem ipsum lorem ipsum', '7.00', 'Food-Name-7373.jpg', 12, 'Yes', 'Yes'),
(23, 'Maskaban', 'lorem ipsum lorem ipsum', '2.00', 'Food-Name-6292.jpg', 10, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Sadeko Momo', '6.00', 3, '18.00', '2020-11-30 03:49:48', 'Cancelled', 'Bradley Farrell', '+1 (576) 504-4657', 'zuhafiq@mailinator.com', 'Duis aliqua Qui lor'),
(2, 'Best Burger', '4.00', 4, '16.00', '2020-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '+1 (908) 914-3106', 'fexekihor@mailinator.com', 'Incidunt ipsum ad d'),
(3, 'Mixed Pizza', '10.00', 2, '20.00', '2020-11-30 04:07:17', 'Delivered', 'Jana Bush', '+1 (562) 101-2028', 'tydujy@mailinator.com', 'Minima iure ducimus'),
(4, 'Best Burger', '4.00', 1, '4.00', '2021-10-20 06:02:41', 'Cancelled', 'John Smith', '9876543210', 'john@gmail.com', 'At: Nana Hadamatiya, Ta: Visavadar, Dis: Junagadh'),
(5, 'Maisur Dhosa', '6.00', 1, '6.00', '2021-10-20 06:11:36', 'Delivered', 'ABHISGEJ', '1234567890', 'ajaypaghdal123@gmail.com', 'lorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsum'),
(6, 'Utapam', '4.00', 6, '24.00', '2021-10-20 06:48:29', 'On Delivery', 'Mit Dobariya', '8511506544', 'mitdb@gmail.com', '218, Shree Shubh Residency,Vav to Jokha Road, Surat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
