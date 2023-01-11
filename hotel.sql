-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 05, 2023 at 04:49 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblrooms`
--

DROP TABLE IF EXISTS `tblrooms`;
CREATE TABLE IF NOT EXISTS `tblrooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(100) NOT NULL,
  `room_category` varchar(100) NOT NULL,
  `max_person` int(11) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblrooms`
--

INSERT INTO `tblrooms` (`room_id`, `room_name`, `room_category`, `max_person`) VALUES
(1, 'Room 115', 'Deluxe Queen', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblroom_category`
--

DROP TABLE IF EXISTS `tblroom_category`;
CREATE TABLE IF NOT EXISTS `tblroom_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `availability` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` double NOT NULL,
  `max_persons` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `bed` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroom_category`
--

INSERT INTO `tblroom_category` (`category_id`, `category_name`, `availability`, `description`, `image`, `price`, `max_persons`, `size`, `bed`, `status`) VALUES
(7, 'Deluxe Twin', 8, 'Twin bed', 'a0483acbdcf29223e6b2a4048d107500c2a23dff.jpg', 1800, 2, 547, 2, 'Available'),
(10, 'Deluxe Queen', 6, 'Single Bed', 'a8d29122b9ad859206ae610dca1d145d64b5511d.jpg', 1600, 2, 367, 1, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(50) NOT NULL,
  `token` varchar(25) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=610093 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `username`, `password`, `role`, `token`, `status`) VALUES
(1, 'admin@admin.com', '$2y$10$Ux4uYjaElrr5UCNPSm08ResUXj5ACfU8WD3s9Rs28EfLuQnUbPKme', 'administrator', '', ''),
(153059, 'testings@sample.com', '$2y$04$rBMd8/pL6.Yr0opZSxTtkuw/Qhd09zyvYL7GDNF.HWi//Jc.fl3XW', 'Customer', '25440', 'Not Verified'),
(12639, 'testingss@sample.com', '$2y$04$z9ZZeDX7AFkYE3HiUl/.ZeHt9oU5JS8oZjyqRJLKMD9R9AE.PH99y', 'Customer', '31036', 'Not Verified'),
(898003, 'testingssss@sample.com', '$2y$04$CYjV5lzd0nQ.ewv7H1ryIOcvNFiJR4B0x4JfE0Q2yJUktPOcpHE3e', 'Customer', '78500', 'Not Verified'),
(501490, 'mytest@test.com', '$2y$04$1qqCrhe8qAR2mk5CdwjLz.Fcsv7TTG.dSy7YM02RkoAuWZgeiWyFy', 'Customer', '29670', 'Not Verified'),
(570214, 'marie@gmail.com', '$2y$04$1IwsukS3RFvoBE0rzZNy3u.6bp7jqHTZ4thdbYGOyat9Zsp3G4cw.', 'Customer', '65965', 'Not Verified'),
(256168, 'test@samplemail.com', '$2y$04$T/wMxQLH4dmJ9w.SfQcWVe5Igw4lLJofUucIC8zNqBkzx7OduOmdC', 'Customer', '12011', 'Not Verified'),
(645949, 'mytestacct@test.com', '$2y$04$cc6ROZq1XMvshXQt4.UlMe6AvS4OersYn/8RJm5o7qCRyd931Y.B.', 'Customer', '90014', 'Not Verified'),
(785361, 'mytestaccounts@test.com', '$2y$04$UkmwGymMd40OUn0O69YtCOJaDJ3VASlcw9NILTZcKU6zHSpOTKZgy', 'Customer', '89155', 'Not Verified'),
(414, 'mytestaccount@test.com', '$2y$04$2MlLkHheVcgUmy3RoAm9d.OB/N.kszk3QdFq/o6uxs5E08xkpGPRG', 'Customer', '44632', 'Not Verified'),
(197857, 'testmail@test.com', '$2y$04$9GdfF4B.PbgtdO2ETl2gEusnRcI1TcfUyALtrR8ROS4v/ltdL7x2S', 'Customer', '94467', 'Not Verified'),
(382820, 'test@test.com', '$2y$04$z8RATizgaOo/0CGMk3c2JungBuGdHvdRHme1nRgHUFS4jo6sV8AT2', 'Customer', '4185', 'Not Verified'),
(216450, 'justtesting@sample.com', '$2y$04$hBbvU63FapP/aCS.DrqqBOnHq/JD6UZ.PNPGJvvJvMqcz7FuTvWle', 'Customer', '92447', 'Not Verified'),
(167167, 'test@emailme.com', '$2y$04$MMTZJEOtgJ84k2Z/x1ra8uIe80G6n/cIMXKx6Tbqh7pDH8xrFMmO.', 'Customer', '88587', 'Not Verified'),
(840673, 'test@sample.com', '$2y$04$BJk3LF5.EprsLPb2rqRWqOuCGDz60jgATzUiCSccSQxm16o/jS.QK', 'Customer', '471', 'Not Verified');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`lastname`, `firstname`, `middlename`, `address`, `gender`, `birthday`, `customer_id`) VALUES
('Erasmo', 'Elenor may', 'Umali', 'San Tedoro', 'Female', '2022-12-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

DROP TABLE IF EXISTS `tbl_staff`;
CREATE TABLE IF NOT EXISTS `tbl_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `staff_name`, `age`, `gender`, `position`) VALUES
(1, 'ovl', '20', 'Female', 'Maintenance'),
(2, 'justine de castro', '20', 'male', 'Manager');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
