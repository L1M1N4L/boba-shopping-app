-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 07:59 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project_sem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `eMoneyID` varchar(20) NOT NULL,
  `moneyType` enum('Cash','E-Money') NOT NULL,
  `eMoneyName` varchar(20) NOT NULL,
  `eMoneyBalance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `userID`, `eMoneyID`, `moneyType`, `eMoneyName`, `eMoneyBalance`) VALUES
(1, 1, 'GPAYID_R01', 'E-Money', 'Gopay', 330000),
(2, 1, 'OVID_R01', 'E-Money', 'OVO', 254000),
(3, 1, 'CASHID_R01', 'Cash', 'Cash', 137200);

-- --------------------------------------------------------

--
-- Table structure for table `bcaaccount`
--

CREATE TABLE `bcaaccount` (
  `bcaAccountID` varchar(14) NOT NULL DEFAULT 'BCA_IDRAYSEN01',
  `userID` int(10) NOT NULL DEFAULT 1,
  `bcaUserName` varchar(11) NOT NULL DEFAULT 'Raysen',
  `balance` int(100) NOT NULL,
  `bcaPassword` varchar(9) NOT NULL,
  `pinNumber` varchar(10) NOT NULL DEFAULT '1234',
  `bcaTransactionID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bcaaccount`
--

INSERT INTO `bcaaccount` (`bcaAccountID`, `userID`, `bcaUserName`, `balance`, `bcaPassword`, `pinNumber`, `bcaTransactionID`) VALUES
('BCA_IDRAYSEN01', 1, 'Raysen', 99548200, 'raysen123', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bcatransaction`
--

CREATE TABLE `bcatransaction` (
  `bcaTransactionID` int(10) NOT NULL,
  `userID` int(10) NOT NULL DEFAULT 1,
  `transferTo` varchar(20) NOT NULL,
  `amount` int(100) NOT NULL,
  `transactionDate` date NOT NULL,
  `transactionTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bcatransaction`
--

INSERT INTO `bcatransaction` (`bcaTransactionID`, `userID`, `transferTo`, `amount`, `transactionDate`, `transactionTime`) VALUES
(1, 1, 'GPAYID_R01', 30000, '2023-01-23', '2023-01-22 18:39:13'),
(2, 1, 'OVID_R01', 5000, '2023-01-23', '2023-01-22 18:50:55'),
(3, 1, 'GPAYID_R01', 200, '2023-01-23', '2023-01-23 02:37:57'),
(4, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 10:39:41'),
(5, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 10:42:32'),
(6, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 10:42:34'),
(7, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 10:42:56'),
(8, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 10:47:31'),
(9, 1, 'OVID_R01', 1000, '2023-01-23', '2023-01-23 10:48:24'),
(10, 1, 'OVID_R01', 1000, '2023-01-23', '2023-01-23 10:48:37'),
(11, 1, 'OVID_R01', 1000, '2023-01-23', '2023-01-23 10:48:38'),
(12, 1, 'OVID_R01', 1000, '2023-01-23', '2023-01-23 10:48:40'),
(13, 1, 'OVID_R01', 1000, '2023-01-23', '2023-01-23 10:49:05'),
(14, 1, 'GPAYID_R01', 3000, '2023-01-23', '2023-01-23 11:01:39'),
(15, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 11:02:17'),
(16, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 11:03:21'),
(17, 1, 'GPAYID_R01', 4000, '2023-01-23', '2023-01-23 11:09:33'),
(18, 1, 'GPAYID_R01', 5000, '2023-01-23', '2023-01-23 11:10:56'),
(19, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 11:12:04'),
(20, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 11:12:10'),
(21, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 11:12:13'),
(22, 1, 'GPAYID_R01', 1000, '2023-01-23', '2023-01-23 11:12:16'),
(23, 1, 'GPAYID_R01', 100, '2023-01-23', '2023-01-23 11:39:28'),
(24, 1, 'GPAYID_R01', 100, '2023-01-23', '2023-01-23 11:39:35'),
(25, 1, 'OVID_R01', 10000, '2023-01-23', '2023-01-23 12:01:05'),
(26, 1, 'GPAYID_R01', 10000, '2023-01-23', '2023-01-23 12:02:34'),
(27, 1, 'GPAYID_R01', 800, '2023-01-23', '2023-01-23 12:03:32'),
(28, 1, 'GPAYID_R01', 200, '2023-01-23', '2023-01-23 12:03:41'),
(29, 1, 'OVID_R01', 400, '2023-01-23', '2023-01-23 12:42:00'),
(30, 1, 'GPAYID_R01', 25000, '2023-01-24', '2023-01-24 08:09:08'),
(31, 1, 'GPAYID_R01', 30000, '2023-01-24', '2023-01-24 08:51:21'),
(32, 1, 'GPAYID_R01', 2000, '2023-01-27', '2023-01-26 17:53:44'),
(33, 1, 'GPAYID_R01', 20000, '2023-01-31', '2023-01-31 06:50:35'),
(34, 1, 'GPAYID_R01', 10000, '2023-01-31', '2023-01-31 07:28:19'),
(35, 1, 'GPAYID_R01', 40000, '2023-02-02', '2023-02-02 03:01:57'),
(36, 1, 'OVID_R01', 200000, '2023-02-02', '2023-02-02 03:04:15'),
(37, 1, 'GPAYID_R01', 10000, '2023-02-02', '2023-02-02 05:13:24'),
(38, 1, 'GPAYID_R01', 30000, '2023-02-02', '2023-02-02 06:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `gopayaccount`
--

CREATE TABLE `gopayaccount` (
  `id` int(11) NOT NULL,
  `gopayAccountID` varchar(20) NOT NULL DEFAULT 'GPAYID_R01',
  `userID` int(10) NOT NULL DEFAULT 1,
  `eMoneyBalance` int(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  `pinNumber` varchar(4) NOT NULL,
  `gopayTransactionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gopayaccount`
--

INSERT INTO `gopayaccount` (`id`, `gopayAccountID`, `userID`, `eMoneyBalance`, `email`, `phoneNumber`, `pinNumber`, `gopayTransactionID`) VALUES
(1, 'GPAYID_R01', 1, 330000, 'raysen@gmail.com', '081288885555', '1234', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gopaytransaction`
--

CREATE TABLE `gopaytransaction` (
  `gopayTransactionID` int(11) NOT NULL,
  `userID` int(10) NOT NULL DEFAULT 1,
  `eMoneyType` varchar(20) NOT NULL DEFAULT 'GoPay',
  `transactionType` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `transactionDate` date NOT NULL,
  `transactionTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gopaytransaction`
--

INSERT INTO `gopaytransaction` (`gopayTransactionID`, `userID`, `eMoneyType`, `transactionType`, `amount`, `transactionDate`, `transactionTime`) VALUES
(1, 1, 'GoPay', 'Expense', 50000, '2023-01-01', '2023-01-21 03:46:50'),
(2, 1, 'GoPay', 'Expense', 2000, '2023-01-21', '2023-01-21 04:46:50'),
(3, 1, 'GoPay', 'Expense', 1000, '2023-01-21', '2023-01-21 05:46:50'),
(4, 1, 'GoPay', 'Expense', 1000, '2023-01-21', '2023-01-21 06:46:50'),
(5, 1, 'GoPay', 'Expense', 1500, '2023-01-21', '2023-01-21 07:46:50'),
(6, 1, 'GoPay', 'Expense', 500, '2023-01-21', '2023-01-21 08:46:50'),
(7, 1, 'GoPay', 'Expense', 3000, '2023-01-21', '2023-01-21 10:23:03'),
(8, 1, 'GoPay', 'Expense', 1000, '2023-01-21', '2023-01-21 10:25:05'),
(9, 1, 'GoPay', 'Expense', 200, '2023-01-21', '2023-01-21 10:25:59'),
(10, 1, 'GoPay', 'Income', 30000, '2023-01-23', '2023-01-22 18:39:13'),
(12, 1, 'GoPay', 'Expense', 2000, '2023-01-23', '2023-01-23 08:11:06'),
(13, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 10:36:52'),
(14, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 10:39:41'),
(15, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 10:42:32'),
(16, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 10:42:34'),
(17, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 10:42:56'),
(18, 1, 'GoPay', 'Expense', 3000, '2023-01-23', '2023-01-23 10:46:49'),
(19, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 10:47:08'),
(20, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 10:47:25'),
(21, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 10:47:31'),
(22, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 10:47:45'),
(23, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 10:48:01'),
(24, 1, 'GoPay', 'Income', 3000, '2023-01-23', '2023-01-23 11:01:39'),
(25, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 11:02:06'),
(26, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 11:02:17'),
(27, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 11:03:21'),
(28, 1, 'GoPay', 'Income', 4000, '2023-01-23', '2023-01-23 11:09:33'),
(29, 1, 'GoPay', 'Income', 5000, '2023-01-23', '2023-01-23 11:10:56'),
(30, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 11:12:04'),
(31, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 11:12:10'),
(32, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 11:12:13'),
(33, 1, 'GoPay', 'Income', 1000, '2023-01-23', '2023-01-23 11:12:16'),
(34, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 11:12:32'),
(35, 1, 'GoPay', 'Expense', 200, '2023-01-23', '2023-01-23 11:15:23'),
(36, 1, 'GoPay', 'Expense', 300, '2023-01-23', '2023-01-23 11:22:42'),
(37, 1, 'GoPay', 'Expense', 2500, '2023-01-23', '2023-01-23 11:26:03'),
(38, 1, 'GoPay', 'Expense', 100, '2023-01-23', '2023-01-23 11:27:43'),
(39, 1, 'GoPay', 'Expense', 200, '2023-01-23', '2023-01-23 11:37:48'),
(40, 1, 'GoPay', 'Expense', 9000, '2023-01-23', '2023-01-23 11:38:56'),
(41, 1, 'GoPay', 'Expense', 200, '2023-01-23', '2023-01-23 11:39:06'),
(42, 1, 'GoPay', 'Income', 100, '2023-01-23', '2023-01-23 11:39:28'),
(43, 1, 'GoPay', 'Income', 100, '2023-01-23', '2023-01-23 11:39:35'),
(44, 1, 'GoPay', 'Income', 10000, '2023-01-23', '2023-01-23 12:02:34'),
(45, 1, 'GoPay', 'Expense', 700, '2023-01-23', '2023-01-23 12:02:49'),
(46, 1, 'GoPay', 'Income', 800, '2023-01-23', '2023-01-23 12:03:32'),
(47, 1, 'GoPay', 'Income', 200, '2023-01-23', '2023-01-23 12:03:41'),
(48, 1, 'GoPay', 'Expense', 1000, '2023-01-23', '2023-01-23 12:37:25'),
(49, 1, 'GoPay', 'Expense', 20000, '2023-01-24', '2023-01-24 08:08:34'),
(50, 1, 'GoPay', 'Income', 25000, '2023-01-24', '2023-01-24 08:09:08'),
(51, 1, 'GoPay', 'Expense', 5000, '2023-01-24', '2023-01-24 08:50:19'),
(52, 1, 'GoPay', 'Income', 30000, '2023-01-24', '2023-01-24 08:51:21'),
(53, 1, 'GoPay', 'Expense', 50000, '2023-01-24', '2023-01-24 10:16:49'),
(54, 1, 'GoPay', 'Expense', 20000, '2023-01-27', '2023-01-26 17:52:58'),
(55, 1, 'GoPay', 'Income', 2000, '2023-01-27', '2023-01-26 17:53:44'),
(56, 1, 'GoPay', 'Expense', 30000, '2023-01-31', '2023-01-31 06:48:55'),
(57, 1, 'GoPay', 'Income', 20000, '2023-01-31', '2023-01-31 06:50:35'),
(58, 1, 'GoPay', 'Expense', 12000, '2023-01-31', '2023-01-31 07:27:06'),
(59, 1, 'GoPay', 'Income', 10000, '2023-01-31', '2023-01-31 07:28:19'),
(60, 1, 'GoPay', 'Expense', 20000, '2023-02-02', '2023-02-02 01:59:04'),
(61, 1, 'GoPay', 'Expense', 30000, '2023-02-02', '2023-02-02 03:00:28'),
(62, 1, 'GoPay', 'Income', 40000, '2023-02-02', '2023-02-02 03:01:57'),
(63, 1, 'GoPay', 'Expense', 10000, '2023-02-02', '2023-02-02 05:11:43'),
(64, 1, 'GoPay', 'Income', 10000, '2023-02-02', '2023-02-02 05:13:24'),
(65, 1, 'GoPay', 'Expense', 10000, '2023-02-02', '2023-02-02 06:15:48'),
(66, 1, 'GoPay', 'Income', 30000, '2023-02-02', '2023-02-02 06:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `ovoaccount`
--

CREATE TABLE `ovoaccount` (
  `id` int(11) NOT NULL,
  `ovoAccountID` varchar(20) NOT NULL DEFAULT 'OVID_R01',
  `userID` int(10) NOT NULL DEFAULT 1,
  `eMoneyBalance` int(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  `pinNumber` varchar(4) NOT NULL,
  `ovoTransactionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ovoaccount`
--

INSERT INTO `ovoaccount` (`id`, `ovoAccountID`, `userID`, `eMoneyBalance`, `email`, `phoneNumber`, `pinNumber`, `ovoTransactionID`) VALUES
(1, 'OVID_R01', 1, 254000, 'raysen@gmail.com', '081288885555', '1234', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ovotransaction`
--

CREATE TABLE `ovotransaction` (
  `ovoTransactionID` int(11) NOT NULL,
  `userID` int(10) NOT NULL DEFAULT 1,
  `eMoneyType` varchar(20) NOT NULL DEFAULT 'OVO',
  `transactionType` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `transactionDate` date NOT NULL,
  `transactionTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ovotransaction`
--

INSERT INTO `ovotransaction` (`ovoTransactionID`, `userID`, `eMoneyType`, `transactionType`, `amount`, `transactionDate`, `transactionTime`) VALUES
(1, 1, 'OVO', 'Expense', 75000, '2023-01-03', '2023-01-21 08:47:36'),
(2, 1, 'OVO', 'Expense', 5000, '2023-01-21', '2023-01-21 10:50:12'),
(3, 1, 'OVO', 'Income', 5000, '2023-01-23', '2023-01-22 18:50:55'),
(4, 1, 'OVO', 'Income', 1000, '2023-01-23', '2023-01-23 10:48:24'),
(5, 1, 'OVO', 'Income', 1000, '2023-01-23', '2023-01-23 10:48:37'),
(6, 1, 'OVO', 'Income', 1000, '2023-01-23', '2023-01-23 10:48:38'),
(7, 1, 'OVO', 'Income', 1000, '2023-01-23', '2023-01-23 10:48:40'),
(8, 1, 'OVO', 'Income', 1000, '2023-01-23', '2023-01-23 10:49:05'),
(9, 1, 'OVO', 'Income', 10000, '2023-01-23', '2023-01-23 12:01:05'),
(10, 1, 'OVO', 'Expense', 2000, '2023-01-23', '2023-01-23 12:01:48'),
(11, 1, 'OVO', 'Expense', 400, '2023-01-23', '2023-01-23 12:03:58'),
(12, 1, 'OVO', 'Income', 400, '2023-01-23', '2023-01-23 12:42:00'),
(13, 1, 'OVO', 'Expense', 3000, '2023-01-24', '2023-01-24 08:50:28'),
(14, 1, 'OVO', 'Expense', 15000, '2023-01-27', '2023-01-26 17:53:27'),
(15, 1, 'OVO', 'Expense', 20000, '2023-01-31', '2023-01-31 06:49:23'),
(16, 1, 'OVO', 'Expense', 20000, '2023-01-31', '2023-01-31 07:27:33'),
(17, 1, 'OVO', 'Expense', 12000, '2023-02-02', '2023-02-02 01:59:34'),
(18, 1, 'OVO', 'Expense', 50000, '2023-02-02', '2023-02-02 03:01:11'),
(19, 1, 'OVO', 'Income', 200000, '2023-02-02', '2023-02-02 03:04:15'),
(20, 1, 'OVO', 'Expense', 12000, '2023-02-02', '2023-02-02 05:12:37'),
(21, 1, 'OVO', 'Expense', 12000, '2023-02-02', '2023-02-02 06:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `transactionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `eMoneyType` varchar(20) NOT NULL DEFAULT 'Cash',
  `amount` int(11) NOT NULL,
  `transactionDate` date NOT NULL,
  `transactionTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `transactionType` enum('Expense','Income') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`transactionID`, `userID`, `eMoneyType`, `amount`, `transactionDate`, `transactionTime`, `transactionType`) VALUES
(1, 1, 'Cash', 12000, '2022-12-27', '2023-01-21 04:38:41', 'Expense'),
(2, 2, 'Cash', 30000, '2022-12-26', '2023-01-21 05:38:41', 'Income'),
(12, 1, 'Cash', 10000, '2023-01-03', '2023-01-21 06:38:41', 'Expense'),
(13, 1, 'Cash', 29000, '2023-01-08', '2023-01-21 08:38:41', 'Income'),
(16, 1, 'Cash', 5000, '2023-01-09', '2023-01-20 17:10:00', 'Expense'),
(17, 1, 'Cash', 50000, '2023-01-21', '2023-01-20 17:00:00', 'Income'),
(18, 1, 'Cash', 20000, '2023-01-21', '2023-01-21 08:43:35', 'Income'),
(19, 1, 'Cash', 1000, '2023-01-24', '2023-01-24 07:10:30', 'Expense'),
(20, 1, 'Cash', 8000, '2023-01-24', '2023-01-24 07:20:53', 'Expense'),
(21, 1, 'Cash', 6000, '2023-01-24', '2023-01-24 07:48:59', 'Income'),
(22, 1, 'Cash', 1000, '2023-01-24', '2023-01-24 07:49:48', 'Income'),
(23, 1, 'Cash', 200, '2023-01-24', '2023-01-24 07:51:31', 'Expense'),
(24, 1, 'Cash', 200, '2023-01-24', '2023-01-24 07:51:52', 'Income'),
(25, 1, 'Cash', 200, '2023-01-24', '2023-01-24 07:52:21', 'Income'),
(26, 1, 'Cash', 200, '2023-01-24', '2023-01-24 08:02:37', 'Expense'),
(27, 1, 'Cash', 200, '2023-01-24', '2023-01-24 08:03:01', 'Income'),
(28, 1, 'Cash', 5000, '2023-01-27', '2023-01-26 17:54:24', 'Expense'),
(29, 1, 'Cash', 2000, '2023-01-28', '2023-01-28 04:53:24', 'Expense'),
(30, 1, 'Cash', 15000, '2023-01-29', '2023-01-28 17:17:53', 'Income'),
(31, 1, 'Cash', 12000, '2023-02-02', '2023-02-02 02:02:59', 'Expense'),
(32, 1, 'Cash', 10000, '2023-02-02', '2023-02-02 02:59:26', 'Expense'),
(33, 1, 'Cash', 20000, '2023-02-02', '2023-02-02 06:17:45', 'Income');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `email`, `phoneNumber`, `password`) VALUES
(1, 'Raysen', 'raysen@gmail.com', '081288885555', 'raysen123'),
(2, 'r32r32', 'r321@gmail.com', '08123323232', '87654'),
(3, 'raysen2323', 'raysen23232@gmail.com', '089812341234', 'raysen12323'),
(4, 'subanding', 'suband@gmail.com', '082112341234', 'halohalo1234'),
(5, 'subanding', 'subanding@gmail.com', '088712341234', 'sub'),
(6, 'rrefr', 't@gmail.com', '123', '123'),
(7, 'test me', 'test@gmail.com', '1234567', 'test123'),
(8, 'Budi Susanto', 'budisusanto@gmail.com', '081299997676', 'budi123'),
(10, 'Kaori', 'kaori@gmail.com', '025154115415', 'kaori');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `bcaaccount`
--
ALTER TABLE `bcaaccount`
  ADD PRIMARY KEY (`bcaAccountID`);

--
-- Indexes for table `bcatransaction`
--
ALTER TABLE `bcatransaction`
  ADD PRIMARY KEY (`bcaTransactionID`);

--
-- Indexes for table `gopayaccount`
--
ALTER TABLE `gopayaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gopaytransaction`
--
ALTER TABLE `gopaytransaction`
  ADD PRIMARY KEY (`gopayTransactionID`);

--
-- Indexes for table `ovoaccount`
--
ALTER TABLE `ovoaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ovotransaction`
--
ALTER TABLE `ovotransaction`
  ADD PRIMARY KEY (`ovoTransactionID`);

--
-- Indexes for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  ADD PRIMARY KEY (`transactionID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bcatransaction`
--
ALTER TABLE `bcatransaction`
  MODIFY `bcaTransactionID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gopayaccount`
--
ALTER TABLE `gopayaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gopaytransaction`
--
ALTER TABLE `gopaytransaction`
  MODIFY `gopayTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `ovoaccount`
--
ALTER TABLE `ovoaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ovotransaction`
--
ALTER TABLE `ovotransaction`
  MODIFY `ovoTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  MODIFY `transactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  ADD CONSTRAINT `transactionhistory_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `transactionhistory_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
