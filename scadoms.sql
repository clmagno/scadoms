-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 03:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scadoms`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `seq` int(11) NOT NULL,
  `company_code` varchar(10) NOT NULL,
  `company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`seq`, `company_code`, `company_name`) VALUES
(1, '3100', 'HIGHLANDS PRIME INC'),
(2, '0129', 'CL MAGNO I.T. SOLUTIONS');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `seq` int(11) NOT NULL,
  `project_code` varchar(10) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_desc` varchar(100) NOT NULL,
  `company` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`seq`, `project_code`, `project_name`, `project_desc`, `company`) VALUES
(1, 'ALTA', 'Altaserv, Inc.', 'Lorem ipsum, or lipsum as it is sometimes known,', '3100 ');

-- --------------------------------------------------------

--
-- Table structure for table `request_type`
--

CREATE TABLE `request_type` (
  `request_code` int(11) NOT NULL,
  `request_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_type`
--

INSERT INTO `request_type` (`request_code`, `request_desc`) VALUES
(1, 'Payment Restructuring');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `seq` int(11) NOT NULL,
  `ticket_id` varchar(15) NOT NULL,
  `company` varchar(10) NOT NULL,
  `buyer` varchar(150) NOT NULL,
  `project` varchar(25) NOT NULL,
  `unit_code` varchar(25) NOT NULL,
  `request_type` int(11) NOT NULL,
  `requestor` int(11) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `approver` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `create_date` datetime NOT NULL,
  `approve_remarks` varchar(200) NOT NULL,
  `approve_date` datetime NOT NULL,
  `implement_remarks` varchar(200) NOT NULL,
  `implement_date` datetime NOT NULL,
  `confirm_remarks` varchar(200) NOT NULL,
  `confirm_date` datetime NOT NULL,
  `implementer` int(11) NOT NULL,
  `confirmer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`seq`, `ticket_id`, `company`, `buyer`, `project`, `unit_code`, `request_type`, `requestor`, `remarks`, `approver`, `status`, `create_date`, `approve_remarks`, `approve_date`, `implement_remarks`, `implement_date`, `confirm_remarks`, `confirm_date`, `implementer`, `confirmer`) VALUES
(1, '3100-2020-0001', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 10:22:14', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(2, '3100-2020-0002', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'view update', 2, 'APPROVED', '2020-04-20 10:49:59', ' test approval ', '2020-04-20 10:58:41', ' implement this ', '2020-04-20 11:21:12', '', '0000-00-00 00:00:00', 0, 0),
(3, '3100-2020-0003', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 2, 'asdf', 2, 'APPROVED', '2020-04-20 10:59:27', ' di katanggap tanggap ', '2020-04-21 11:50:36', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(4, '3100-2020-0004', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'farklgjhserb', 2, 'APPROVED', '2020-04-20 11:01:56', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(5, '3100-2020-0005', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'testp', 2, 'APPROVED', '2020-04-20 11:03:28', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(6, '3100-2020-0006', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:08:16', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(7, '0129-2020-0007', '0129 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'CONFIRMED', '2020-04-20 11:10:20', ' test approval ', '2020-04-20 13:04:38', ' Implement this for test ', '2020-04-21 20:34:47', ' confirm thos ', '2020-04-21 20:42:27', 0, 0),
(8, '3100-2020-0008', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:13:32', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(9, '3100-2020-0009', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:16:36', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(10, '3100-2020-0010', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:27:44', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(11, '3100-2020-0011', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'APPROVED', '2020-04-20 09:29:35', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(12, '3100-2020-0012', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 09:31:05', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(13, '3100-2020-0013', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 09:31:44', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(14, '3100-2020-0014', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 09:32:21', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(15, '3100-2020-0015', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'APPROVED', '2020-04-20 09:32:57', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(16, '3100-2020-0016', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'sdf', 2, 'APPROVED', '2020-04-20 09:33:22', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(17, '3100-2020-0017', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'sdfadfad', 2, 'APPROVED', '2020-04-20 09:33:38', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(18, '0129-2020-0018', '0129 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'REJECTED', '2020-04-20 09:35:19', '', '0000-00-00 00:00:00', ' Implement rejected ', '2020-04-21 20:36:15', '', '0000-00-00 00:00:00', 0, 0),
(19, '3100-2020-0019', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asq', 2, 'APPROVED', '2020-04-20 09:36:23', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(20, '3100-2020-0020', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'APPROVED', '2020-04-20 11:36:47', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(21, '0129-2020-0021', '0129 ', 'asdf', 'Altaserv, Inc.', ' SDAF', 1, 1, 'asdasad', 2, 'IMPLEMENTED', '2020-04-20 11:37:42', ' approve ', '2020-04-20 14:13:09', ' implement for testing ', '2020-04-21 20:43:10', ' confirm ', '2020-04-20 14:14:05', 0, 0),
(22, '0129-2020-0022', '0129 ', 'asdf', 'Altaserv, Inc.', ' SDAF', 1, 1, 'asdasad', 2, 'APPROVED', '2020-04-20 11:38:57', ' remarks dito ', '2020-04-21 11:49:45', ' iimplement ito. now na! ', '2020-04-21 11:53:18', ' confirm na! ', '2020-04-21 11:57:06', 0, 0),
(23, '3100-2020-0023', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'APPROVED', '2020-04-20 11:39:09', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(24, '3100-2020-0024', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'APPROVED', '2020-04-20 11:40:41', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(25, '3100-2020-0025', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asd', 2, 'APPROVED', '2020-04-20 11:42:35', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(26, '3100-2020-0026', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:49:14', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(27, '3100-2020-0027', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:51:15', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(28, '3100-2020-0028', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:51:26', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(29, '3100-2020-0029', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:52:09', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(30, '3100-2020-0030', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'APPROVED', '2020-04-20 11:55:10', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(31, '3100-2020-0031', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdf', 2, 'APPROVED', '2020-04-20 11:55:34', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(32, '3100-2020-0032', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:57:31', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(33, '3100-2020-0033', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asdfqa', 2, 'APPROVED', '2020-04-20 11:57:54', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(34, '3100-2020-0034', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 11:58:43', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(35, '3100-2020-0035', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'PHP Mailer in test', 2, 'APPROVED', '2020-04-20 12:17:23', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(36, '3100-2020-0036', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test', 2, 'APPROVED', '2020-04-20 12:17:50', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(37, '3100-2020-0037', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'PHPMAiler 3rd', 2, 'APPROVED', '2020-04-20 12:18:58', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(38, '3100-2020-0038', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'mail from full', 2, 'APPROVED', '2020-04-20 12:20:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(39, '3100-2020-0039', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'phpailer 5', 2, 'APPROVED', '2020-04-20 12:21:18', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(40, '0129-2020-0040', '0129 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'asd', 2, 'APPROVED', '2020-04-20 12:22:23', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(41, '3100-2020-0041', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test formatting', 2, 'APPROVED', '2020-04-20 12:23:51', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(42, '0129-2020-0042', '0129 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'text formatiing', 2, 'APPROVED', '2020-04-20 12:24:58', ' for implementation ', '2020-04-21 20:16:05', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(43, '0129-2020-0043', '0129 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'multi receive', 2, 'APPROVED', '2020-04-20 12:32:44', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0),
(44, '3100-2020-0044', '3100 ', 'Christopher Lloyd Magno', 'Altaserv, Inc.', ' 1010', 1, 1, 'test for delegation', 2, 'CREATED', '2020-04-24 17:07:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_name` varchar(25) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `user_unit` varchar(25) NOT NULL,
  `user_level` varchar(30) NOT NULL,
  `email_address` varchar(25) NOT NULL,
  `company` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `user_unit`, `user_level`, `email_address`, `company`, `username`, `password`) VALUES
(1, 'Christopher Lloyd', 'Saylon', 'Magno', 'Male', 'Sales Documenta', 'Employee', 'chris.ultd@gmail.com', '3100 ', 'requestor', 'requestor'),
(2, 'Jancy Kate', 'Tismo', 'Magno', 'Female', 'Sales Documenta', 'Approver', 'jancy.magno@gmail.com', '3100 ', 'approver', 'approver'),
(3, 'Jay', 'Seven', 'Tuwentisixteen', 'Male', 'Sales Documentation', 'Administrator - DC Assistant', 'jhay.7.2016@gmail.com', '3100 ', 'assistant', 'assistant'),
(4, 'George', 'King', 'Junior', 'Male', 'Sales Documentation', 'Administrator - DC Head', 'gkjr2020@gmail.com', '3100 ', 'head', 'head'),
(5, 'Chrincy Kayd', 'Tismo', 'Magno', 'Male', 'Sales Documentation', 'Approver', 'kaydbac2zero@gmail.com', '0129 ', 'approver_2', 'approver_2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `request_type`
--
ALTER TABLE `request_type`
  ADD PRIMARY KEY (`request_code`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request_type`
--
ALTER TABLE `request_type`
  MODIFY `request_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
