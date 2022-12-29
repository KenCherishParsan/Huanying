-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 12:30 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotels`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblrooms`
--

CREATE TABLE `tblrooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `room_category` varchar(100) NOT NULL,
  `max_person` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblrooms`
--

INSERT INTO `tblrooms` (`room_id`, `room_name`, `room_category`, `max_person`) VALUES
(1, 'Room 115', 'Deluxe Queen', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblroom_category`
--

CREATE TABLE `tblroom_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `availability` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` double NOT NULL,
  `max_persons` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `bed` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroom_category`
--

INSERT INTO `tblroom_category` (`category_id`, `category_name`, `availability`, `description`, `image`, `price`, `max_persons`, `size`, `bed`, `status`) VALUES
(7, 'Deluxe Twin', 8, 'Room is equipped with all the latest technologies such as 40\" flatscreen TVs with cable channels, air conditioning, free WIFI and electronic door lock systems.', 'a0483acbdcf29223e6b2a4048d107500c2a23dff.jpg', 1800, 2, 547, 2, 'Available'),
(10, 'Deluxe Queen', 5, 'Room is equipped with all the latest technologies such as 40\" flatscreen TVs with cable channels, air conditioning, free WIFI and electronic door lock systems.', 'a8d29122b9ad859206ae610dca1d145d64b5511d.jpg', 1600, 2, 367, 1, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `username`, `password`, `role`) VALUES
(1, 'admin@admin.com', '$2y$10$Ux4uYjaElrr5UCNPSm08ResUXj5ACfU8WD3s9Rs28EfLuQnUbPKme', 'administrator'),
(2, 'test@sample.com', '$2y$04$iIbIzqcsW2ETDIPquUb2LOVBwGKk9W6WeiAaMoPaS5vblBzCKlc9i', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust`
--

CREATE TABLE `tbl_cust` (
  `cust_id` int(11) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`lastname`, `firstname`, `middlename`, `address`, `gender`, `birthday`, `customer_id`) VALUES
('de_castro', 'mangubat', 'justin', 'Pola', 'Male', '2022-12-21', 3),
('DeCastro', 'Justin', 'Mangubat', 'POla', 'Male', '2022-12-14', 2),
('de_castro', 'mangubat', 'justin', 'Pola', 'Male', '2022-12-21', 4),
('de_castro', 'mangubat', 'justin', 'Pola', 'Male', '2022-12-21', 5),
('Decastro', 'm', 'Justin', 'masipit', 'Male', '2022-12-21', 6),
('Decastro', 'm', 'Justin', 'masipit', 'Male', '2022-12-21', 7),
('decastro', 'm', 'justin', 'pola', 'Male', '2022-12-20', 8),
('decastro', 'justin', 'm', 'pola', 'Male', '2022-12-20', 9),
('decastro', 'justin', 'ma', 'mindoro', 'Male', '2022-12-21', 10),
('Decastro', 'Justin', 'mangubats', 'masipit', 'Male', '2022-12-01', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `reference_number` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `image` text NOT NULL,
  `amount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `position` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `staff_name`, `age`, `gender`, `position`) VALUES
(1, 'ovl', '20', 'Female', 'Maintenance'),
(2, 'justine de castro', '20', 'male', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `usertype` varchar(200) NOT NULL,
  `validation_code` varchar(10) NOT NULL,
  `status` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `usertype`, `validation_code`, `status`) VALUES
(1, 'huanying', '$2y$04$RmYXHIbPu5nnU/VnLCN3E.gq/2luTqYcI6S2CwDwJqhizeJ8Eq1qK', 'decastrojustin24@gmail.com', 'admin', '', 1),
(2, 'huanying', '$2y$04$jUrmedsKqDcEUNyo8QY1fukb2vNEBSAaqwV.bBmwXEMVp.HB6YC6y', 'decastrojustin24@gmail.com', 'admin', '', 1),
(3, 'huanying', '$2y$04$szYLLXU.LZls/D4o4eO4oOFVbBjnmQBdyZ/8WnvLbamfrqDDJjnce', 'decastrojustin24@gmail.com', 'admin', '', 1),
(4, 'huanying', '$2y$04$IZKjPPMbO3oZGTcoYn.9t.70kmJSmTHhV4FeDNV0kVQWW6WHoDlcq', 'decastrojustin24@gmail.com', 'admin', '', 1),
(5, 'huanying', '$2y$04$LGtmBudGOO2XfumM.91aBux5chBP3nIpxIesCini4Z4c4AAUQMtry', 'decastrojustin24@gmail.com', 'admin', '', 1),
(6, 'huanying', '$2y$04$T7U0mBGCwAID6Vbn1Aiz1OdJuin6JRZsLEWgAf87nSpkj8.cRnFu.', 'decastrojustin24@gmail.com', 'admin', '532159228', 1),
(7, 'huanying', '$2y$04$EmR9Gn9htSJuRRf6s250QOoFs7rngFxG0XFvrI9pGEZeRIuhpCmS2', 'decastrojustin24@gmail.com', 'admin', '360069961', 1),
(8, 'huanying', '$2y$04$5ZoUynwiOUQ59z5PS.Ys6umOFdjTWgreRWzyQsTX82A/KzM0kY.Oy', 'decastrojustin24@gmail.com', 'admin', '140953502', 1),
(9, 'huanying', '$2y$04$5FOiim6p.Fz28bqi3a7EEeMzy/s2rfnNcw1ngHsW.iclHu3YWGcKe', 'decastrojustin24@gmail.com', 'admin', '782411346', 1),
(10, 'huanying', '$2y$04$Ekdgvv6oIxzeEMeTROlwt.hjUWY0/HiDurSU4UqakWElRT.G.pEMW', 'decastrojustin24@gmail.com', 'admin', '789990118', 1),
(11, 'huanying', '$2y$04$Lb30ZL.mhtv7ctM9PdcTseiXhOw5Rf45wL8w9NeW4I6Fq4vXm8LSa', 'decastrojustin24@gmail.com', 'admin', '133974218', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblrooms`
--
ALTER TABLE `tblrooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tblroom_category`
--
ALTER TABLE `tblroom_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_cust`
--
ALTER TABLE `tbl_cust`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblrooms`
--
ALTER TABLE `tblrooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblroom_category`
--
ALTER TABLE `tblroom_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cust`
--
ALTER TABLE `tbl_cust`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
