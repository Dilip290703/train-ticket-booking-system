-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 01, 2024 at 07:08 PM
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
-- Database: `otrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `class` varchar(10) NOT NULL DEFAULT 'second',
  `no` int(11) NOT NULL DEFAULT 1,
  `seat` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `payment_id`, `user_id`, `code`, `class`, `no`, `seat`, `date`) VALUES
(15, 5, 12, 4, '2020/005/1324', 'first', 1, 'F01', 'Sat, 07-Dec-2024 11:52:19 AM'),
(17, 5, 15, 3, '2020/005/2645', 'first', 5, 'F02', 'Sat, 07-Dec-2024 12:48:38 PM'),
(18, 6, 16, 3, '2020/006/1655', 'first', 8, 'F001 -F008', 'Sat, 07-Dec-2024 01:08:20 PM'),
(19, 6, 1, 4, '2020/006/9146', 'second', 1, 'S0001', 'Sat, 07-Dec-2024 01:09:22 PM'),
(20, 8, 18, 4, '2020/008/1144', 'second', 8, 'S0001 -S0008', 'Sat, 07-Dec-2024 01:12:58 PM'),
(21, 18, 19, 1, '2020/018/1671', 'first', 8, 'F01 -F08', 'Sat, 07-Dec-2024 04:10:29 PM'),
(22, 20, 20, 5, '2020/020/126', 'first', 30, 'F01 - F30', 'Sun, 08-Dec-2024 11:36:57 AM'),
(23, 20, 21, 6, '2020/020/31816', 'first', 2, 'F31 - F32', 'Sun, 08-Dec-2024 12:10:44 PM'),
(24, 22, 22, 6, '2020/022/1176', 'second', 1, 'S001', 'Sun, 08-Dec-2024 02:08:07 PM'),
(25, 24, 23, 2, '2020/024/197', 'second', 2, 'S001 - S002', 'Sun, 08-Dec-2024 02:25:27 PM'),
(26, 26, 24, 8, '2021/026/1183', 'first', 4, 'F01 - F04', 'Mon, 09-Dec-2024 04:25:09 PM'),
(27, 98, 25, 7, '2021/098/198', 'first', 2, 'F001 - F002', 'Mon, 09-Dec-2024 05:17:54 PM'),
(28, 99, 26, 7, '2021/099/157', 'second', 1, 'S001', 'Mon, 09-Dec-2024 05:28:54 PM'),
(29, 100, 27, 7, '2021/0100/1134', 'second', 1, 'S001', 'Mon, 09-Dec-2024 05:39:18 PM'),
(30, 101, 39, 7, '2021/0101/1116', 'second', 1, 'S001', 'Mon, 09-Dec-2024 06:15:30 PM'),
(31, 102, 40, 7, '2021/0102/1502', 'first', 1, 'F001', 'Mon, 09-Dec-2024 06:18:10 PM'),
(32, 103, 43, 7, '2021/0103/1792', 'second', 2, 'S001 - S002', 'Tue, 10-Dec-2024 11:02:56 AM'),
(33, 103, 44, 8, '2021/0103/3809', 'second', 1, 'S003', 'Tue, 10-Dec-2024 02:21:40 PM'),
(34, 104, 45, 8, '2021/0104/1526', 'first', 2, 'F001 - F002', 'Tue, 10-Dec-2024 05:22:15 PM');


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `response` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `message`, `response`) VALUES
(1, 3, 'This is a demo test.', 'none\r\n'),
(3, 6, 'Demo Test - 2', 'Are you sure that this is another test? '),
(8, 4, 'This is a feedback text', NULL),
(9, 6, 'Test Test Test Test Test', NULL),
(11, 8, 'This is a demo test for feedback sections!!!', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `loc` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `phone`, `address`, `loc`, `status`) VALUES
(1, 'Passenger One', 'pas1o@mail.com', '1f87051e29a6927b2e6651dfb9b66387', '0780100000', 'No. 20 Aiyeteju Street', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(2, 'Adelabu Simbiat', 'jobowonubi@otrs.com', '1526755d438e395e551f229a484f8a1d', '3000002000', 'No. 30 Tanke Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(3, 'Passenger Two', 'pass2@mail.com', 'c3a19571f1271af5f27a9582377b7d4a', '1400000020', 'abrahamjasmine', 'f3fc8566140434f0a3f47303c62d5146.jpg', 0),
(4, 'Passenger Three', 'pass3@mail.com', '1dd76b458af8df200a097c5b061df9b1', '9000001000', 'No. 589 Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(5, 'Passenger Four', 'pass4@mail.com', 'd780455a563c7c5dbfb74a51785ad949', '0000010020', 'Shagamu', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(6, 'Test Passenger', 'testpass@mail.com', 'abe1bcf64eb68c39847b962e8caadadf', '0000002000', 'Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(7, 'Liam Moore', 'liamoore@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7000000000', '7014 Allace Road', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(8, 'Demo Account', 'demoaccount@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7800000000', '100 Demo Address', '404a6378027a553d980b99162a5b4ce8.png', 1),
(9, 'dilip choudhary', 'dc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '12345678911', 'b1', 'a0dcb236a7ae3c9701d8de5254ae3c7d.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `passenger_id`, `schedule_id`, `amount`, `ref`, `date`) VALUES
(12, 4, 5, '520', 'oyki20masb', 'Sat, 07-Dec-2024 11:52:19 AM'),
(14, 4, 6, '23', 'oyki20masb', 'Sat, 07-Dec-2024 12:10:19 PM'),
(15, 3, 5, '1860', '5gtnjnzclw', 'Sat, 07-Dec-2024 12:48:38 PM'),
(16, 3, 6, '680', 'dzwl1488r0', 'Sat, 07-Dec-2024 01:08:20 PM'),
(18, 4, 8, '8080', 'hja9zvtmgk', 'Sat, 07-Dec-2024 01:12:58 PM'),
(19, 1, 18, '1080', '3TVSHVBQII', 'Sat, 07-Dec-2024 04:10:29 PM'),
(20, 5, 20, '120', '84JP4U5LKZ', 'Sun, 08-Dec-2024 11:36:57 AM'),
(21, 6, 20, '8080', 'VXIZSCHMOG', 'Sun, 08-Dec-2024 12:48:44 PM'),
(22, 6, 22, '1410', 'TDHRBZTZOH', 'Sun, 08-Dec-2024 02:08:07 PM'),
(23, 2, 24, '5050', '4TRM9FIFEV', 'Sun, 08-Dec-2024 02:25:27 PM'),
(24, 8, 26, '5260', '1QXPYSUTOI', 'Mon, 09-Dec-2024 04:25:09 PM'),
(25, 7, 98, '303', 'FIPJBLU5LC', 'Mon, 09-Dec-2024 05:17:54 PM'),
(26, 7, 99, '80', 'NKMGVH44QG', 'Mon, 09-Dec-2024 05:28:54 PM'),
(27, 7, 100, '51', 'NS5IEEK1HS', 'Mon, 09-Dec-2024 05:39:18 PM'),
(39, 7, 101, '56', 'OEPPIM6X9H', 'Mon, 09-Dec-2024 06:15:30 PM'),
(40, 7, 102, '107', 'M07FP4QTOV', 'Mon, 09-Dec-2024 06:18:10 PM'),
(43, 7, 103, '152', 'RITK5E5GDM', 'Tue, 10-Dec-2024 11:02:56 AM'),
(44, 8, 103, '76', 'H6CMTHBJUU', 'Tue, 10-Dec-2024 02:21:40 PM'),
(45, 8, 104, '324', 'KH70GOC8KO', 'Tue, 10-Dec-2024 05:22:15 PM');


-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `stop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `start`, `stop`) VALUES
(3, 'New Delhi (NDLS)', 'Mumbai Central (BCT)'),
(4, 'Howrah Junction (HWH)', 'Chennai Central (MAS)'),
(5, 'Secunderabad (SC)', 'Bangalore City (SBC)'),
(6, 'Pune Junction (PUNE)', 'Hyderabad Deccan (HYB)'),
(7, 'Ahmedabad Junction (ADI)', 'Jaipur Junction (JP)'),
(8, 'Kolkata (KOAA)', 'Guwahati (GHY)'),
(9, 'Lucknow NR (LKO)', 'Varanasi (BSB)'),
(10, 'Patna Junction (PNBE)', 'Ranchi (RNC)'),
(11, 'Chandigarh (CDG)', 'Amritsar (ASR)'),
(12, 'Bhubaneswar (BBS)', 'Visakhapatnam (VSKP)'),
(14, 'Madurai Junction (MDU)', 'Tiruchirappalli (TPJ)'),
(15, 'Bhopal Junction (BPL)', 'Nagpur (NGP)');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `first_fee` float NOT NULL,
  `second_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `train_id`, `route_id`, `date`, `time`, `first_fee`, `second_fee`) VALUES
(5, 7, 6, '07-12-2024', '18:30', 180, 80),
(6, 11, 10, '05-12-2024', '18:30', 200, 85),
(8, 2, 4, '06-12-2024', '18:30', 130, 60),
(18, 10, 9, '09-12-2024', '11:00', 180, 100),
(20, 14, 14, '03-12-2024', '22:24', 165, 100),
(22, 8, 7, '08-12-2024', '15:13', 130, 70),
(24, 1, 3, '09-12-2024', '15:22', 130, 95),
(26, 1, 3, '06-12-2024', '09:00', 130, 90),
(97, 9, 8, '04-12-2024', '11:05', 185, 90),
(98, 10, 9, '03-12-2024', '09:00', 150, 85),
(99, 8, 7, '06-12-2024', '11:10', 166, 79),
(100, 13, 12, '05-12-2024', '12:20', 100, 50),
(101, 11, 10, '13-12-2024', '22:59', 105, 55),
(102, 7, 6, '03-12-2024', '11:02', 105, 65),
(103, 12, 11, '12-12-2024', '04:45', 120, 75),
(104, 15, 15, '14-12-2024', '10:00', 160, 72),
(105, 3, 5, '02-12-2024', '15:15', 30, 20);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `first_seat` int(11) NOT NULL,
  `second_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `first_seat`, `second_seat`) VALUES
(1, 'Mumbai Rajdhani Express (12952)', 30, 800),
(2, 'Coromandel Express (12841)', 20, 900),
(3, 'Kacheguda Yesvantpur Express (17603)', 10, 600),
(7, 'Shatabdi Express (12025)', 400, 1000),
(8, 'Sabarmati Express (19165)', 395, 780),
(9, 'Kanchanjunga Express (13175)', 400, 850),
(10, 'Krishak Express (15007)', 500, 1200),
(11, 'Patna Ranchi Jan Shatabdi (12365)', 200, 500),
(12, 'Amritsar Shatabdi Express (12031)', 250, 600),
(13, 'Visakha Express (17015)', 300, 500),
(14, 'Vaigai Express (12635)', 100, 500),
(15, 'Bhopal Nagpur Express (12155)', 150, 600);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'D00F5D5217896FB7FD601412CB890830');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`,`user_id`,`payment_id`) USING BTREE,
  ADD KEY `schedule_id_2` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passenger_id` (`passenger_id`,`schedule_id`),
  ADD KEY `passenger_id_2` (`passenger_id`) USING BTREE,
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
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
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
