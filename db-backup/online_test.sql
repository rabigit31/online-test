-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2024 at 12:21 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 5.6.40-29+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productImageName` varchar(255) DEFAULT NULL,
  `productImageURL` varchar(200) DEFAULT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `itemCode` varchar(255) DEFAULT NULL,
  `itemType` varchar(255) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `currencyCode` varchar(50) DEFAULT NULL,
  `saleAmount` float DEFAULT NULL,
  `brochureFileName` varchar(100) DEFAULT NULL,
  `brochureFileURL` varchar(100) DEFAULT NULL,
  `vendors` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `uomId` varchar(100) DEFAULT NULL,
  `shippingMethodId` varchar(100) DEFAULT NULL,
  `shippingTermsId` varchar(100) DEFAULT NULL,
  `paymentTermsId` varchar(200) DEFAULT NULL,
  `categoryName` varchar(100) DEFAULT NULL,
  `subCategoryName` varchar(100) DEFAULT NULL,
  `uomCode` varchar(100) DEFAULT NULL,
  `uomDescription` varchar(255) DEFAULT NULL,
  `organisationName` varchar(255) DEFAULT NULL,
  `vendorInfo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productImageName`, `productImageURL`, `brandName`, `description`, `itemCode`, `itemType`, `currency`, `currencyCode`, `saleAmount`, `brochureFileName`, `brochureFileURL`, `vendors`, `status`, `createdBy`, `updated`, `subCategoryId`, `categoryId`, `uomId`, `shippingMethodId`, `shippingTermsId`, `paymentTermsId`, `categoryName`, `subCategoryName`, `uomCode`, `uomDescription`, `organisationName`, `vendorInfo`, `createdAt`, `updatedAt`) VALUES
(1, 'test product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-29 11:00:54', NULL),
(2, 'Nikky Men Printed Round Neck Cotton Blend Black T-Shirt', NULL, 'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-madebymath-90946.jpg&fm=jpg', 'NIKKYBOY', '1.3 Color HD Full Touch Screen with 240*240 pixel resolution\r\n2.5D Curved Glass for Best Retina HD Color Display with Automatic Motion Recognition\r\nSpO2 Monitoring, Continuous Heart Rate Tracking| 100+ Sports Modes | IP67 Water Resistance', 'sd323', 'Men', 'rupee', 'INR', 5000, 'brochure File Name', 'brochureFileURL', 'vendors', NULL, NULL, NULL, NULL, NULL, NULL, 'shipping Method Id', NULL, NULL, 'category Name', NULL, NULL, NULL, NULL, NULL, '2024-04-29 11:41:38', NULL),
(3, 'Fire-Boltt Hurricane 1.3\" Curved Glass Display with 360 Health Training, 100+ Sports Modes Smartwatch  (Black Strap, Free Size)', NULL, 'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-madebymath-90946.jpg&fm=jpg', 'NIKKYBOY', '1.3 Color HD Full Touch Screen with 240*240 pixel resolution\r\n2.5D Curved Glass for Best Retina HD Color Display with Automatic Motion Recognition\r\nSpO2 Monitoring, Continuous Heart Rate Tracking| 100+ Sports Modes | IP67 Water Resistance', 'sd323', 'Men', 'rupee', 'INR', 5000, 'brochure File Name', 'brochureFileURL', 'vendors', NULL, NULL, NULL, NULL, NULL, NULL, 'shipping Method Id', NULL, NULL, 'category Name', NULL, NULL, NULL, NULL, NULL, '2024-04-29 11:41:40', NULL),
(4, 'Shopeleven Pull Rope Double Stretching Tube Latex', NULL, 'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-madebymath-90946.jpg&fm=jpg', 'NIKKYBOY', '1.3 Color HD Full Touch Screen with 240*240 pixel resolution\r\n2.5D Curved Glass for Best Retina HD Color Display with Automatic Motion Recognition\r\nSpO2 Monitoring, Continuous Heart Rate Tracking| 100+ Sports Modes | IP67 Water Resistance', 'sd323', 'Men', 'rupee', 'INR', 5000, 'brochure File Name', 'brochureFileURL', 'vendors', NULL, NULL, NULL, NULL, NULL, NULL, 'shipping Method Id', NULL, NULL, 'category Name', NULL, NULL, NULL, NULL, NULL, '2024-04-29 11:41:44', NULL),
(5, 'TQS Exercise in Gym, Home for Abdominal Workout tummy', NULL, 'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-madebymath-90946.jpg&fm=jpg', 'NIKKYBOY', '1.3 Color HD Full Touch Screen with 240*240 pixel resolution\r\n2.5D Curved Glass for Best Retina HD Color Display with Automatic Motion Recognition\r\nSpO2 Monitoring, Continuous Heart Rate Tracking| 100+ Sports Modes | IP67 Water Resistance', 'sd323', 'Men', 'rupee', 'INR', 5000, 'brochure File Name', 'brochureFileURL', 'vendors', NULL, NULL, NULL, NULL, NULL, NULL, 'shipping Method Id', NULL, NULL, 'category Name', NULL, NULL, NULL, NULL, NULL, '2024-04-29 11:41:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
