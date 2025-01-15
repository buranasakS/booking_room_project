-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 08:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(6) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `head` varchar(100) CHARACTER SET utf8 NOT NULL,
  `numattend` int(3) NOT NULL,
  `listname` varchar(500) CHARACTER SET utf8 NOT NULL,
  `roomid` int(3) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `addequipment` varchar(100) CHARACTER SET utf8 NOT NULL,
  `userid` int(3) NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8 NOT NULL,
  `meetfile` varchar(100) CHARACTER SET utf8 NOT NULL,
  `color` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `head`, `numattend`, `listname`, `roomid`, `start`, `end`, `addequipment`, `userid`, `remark`, `meetfile`, `color`) VALUES
(29, 'tssdqwdwq', 'รองนายกเทศมนตรี3', 50, '50', 10, '2022-04-06 01:04:00', '2022-04-06 01:50:00', 'ไมค์ 5 อัน', 0, 'test ห้อง 3', 'upload/1648923023.', ''),
(31, '3123', 'รองนายกเทศมนตรี3', 10, '123', 10, '2022-04-03 03:58:00', '2022-04-03 04:58:00', 'tes', 0, '3123', 'upload/1648922293.', ''),
(32, 'test34', 'รองนายกเทศมนตรี1', 123, '100', 5, '2022-04-03 03:04:00', '2022-04-03 05:04:00', '31231', 0, 'test2', 'upload/1648922668.webp', ''),
(33, '1', 'รองนายกเทศมนตรี1', 1, '1', 5, '2022-04-05 01:16:00', '2022-04-06 02:16:00', '1', 0, '1', 'upload/1648923398.jpg', ''),
(34, '2', 'รองนายกเทศมนตรี2', 2, '2', 10, '2022-04-20 01:17:00', '2022-04-20 03:17:00', '2', 0, '2', 'upload/1648923458.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(3) NOT NULL,
  `roomname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(3) NOT NULL,
  `projector` int(2) NOT NULL,
  `microphone` int(2) NOT NULL,
  `other` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `roomname`, `location`, `capacity`, `projector`, `microphone`, `other`) VALUES
(5, 'ห้อง 1', 'ตึก 1', 200, 2, 5, 'ไม่มี'),
(6, 'ห้อง 2', 'test', 100, 2, 4, 'ไม่มี'),
(10, 'ห้อง 3', 'ตึก 10 ', 50, 2, 3, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `username` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`, `firstname`, `surname`, `tel`) VALUES
(1, 'admin', '1234', '01', 'บูรณศักดิ์', 'แสนภูวา', '0912345678'),
(2, 'user1', '1234', '02', 'testuser', 'testuser', '0423456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
