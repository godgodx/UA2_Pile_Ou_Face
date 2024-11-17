-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 04:36 AM
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
-- Database: `pile_ou_face`
--

-- --------------------------------------------------------

--
-- Table structure for table `bethistories`
--

CREATE TABLE `bethistories` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `betAmount` float DEFAULT NULL,
  `betResult` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bethistories`
--

INSERT INTO `bethistories` (`id`, `userId`, `betAmount`, `betResult`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'lose', '2024-11-17 02:02:13', '2024-11-17 02:02:13'),
(2, 1, 1, 'lose', '2024-11-17 02:02:24', '2024-11-17 02:02:24'),
(3, 1, 1, 'lose', '2024-11-17 02:02:25', '2024-11-17 02:02:25'),
(4, 1, 1, 'lose', '2024-11-17 02:02:26', '2024-11-17 02:02:26'),
(5, 1, 1, 'win', '2024-11-17 02:02:27', '2024-11-17 02:02:27'),
(6, 1, 1, 'lose', '2024-11-17 02:02:27', '2024-11-17 02:02:27'),
(7, 1, 1, 'lose', '2024-11-17 02:02:28', '2024-11-17 02:02:28'),
(8, 1, 1, 'win', '2024-11-17 02:02:29', '2024-11-17 02:02:29'),
(9, 1, 1, 'lose', '2024-11-17 02:02:29', '2024-11-17 02:02:29'),
(10, 1, 1, 'lose', '2024-11-17 02:02:30', '2024-11-17 02:02:30'),
(11, 1, 1, 'lose', '2024-11-17 02:02:31', '2024-11-17 02:02:31'),
(12, 1, 1, 'lose', '2024-11-17 02:02:31', '2024-11-17 02:02:31'),
(13, 1, 1, 'win', '2024-11-17 02:02:32', '2024-11-17 02:02:32'),
(14, 1, 1, 'lose', '2024-11-17 02:02:32', '2024-11-17 02:02:32'),
(15, 1, 1, 'lose', '2024-11-17 02:02:33', '2024-11-17 02:02:33'),
(16, 1, 1, 'win', '2024-11-17 02:02:33', '2024-11-17 02:02:33'),
(17, 1, 1, 'lose', '2024-11-17 02:02:33', '2024-11-17 02:02:33'),
(18, 1, 1, 'win', '2024-11-17 02:02:34', '2024-11-17 02:02:34'),
(19, 1, 1, 'lose', '2024-11-17 02:02:35', '2024-11-17 02:02:35'),
(20, 1, 1, 'lose', '2024-11-17 02:02:35', '2024-11-17 02:02:35'),
(21, 1, 1, 'lose', '2024-11-17 02:02:36', '2024-11-17 02:02:36'),
(22, 1, 1, 'win', '2024-11-17 02:02:36', '2024-11-17 02:02:36'),
(23, 1, 1, 'lose', '2024-11-17 02:02:36', '2024-11-17 02:02:36'),
(24, 1, 1, 'win', '2024-11-17 02:02:37', '2024-11-17 02:02:37'),
(25, 1, 1, 'lose', '2024-11-17 02:02:38', '2024-11-17 02:02:38'),
(26, 1, 1, 'win', '2024-11-17 02:02:38', '2024-11-17 02:02:38'),
(27, 1, 1, 'win', '2024-11-17 02:02:39', '2024-11-17 02:02:39'),
(28, 1, 1, 'win', '2024-11-17 02:02:39', '2024-11-17 02:02:39'),
(29, 1, 1, 'lose', '2024-11-17 02:02:40', '2024-11-17 02:02:40'),
(30, 1, 50, 'win', '2024-11-17 02:09:48', '2024-11-17 02:09:48'),
(31, 1, 50, 'win', '2024-11-17 02:20:13', '2024-11-17 02:20:13'),
(32, 1, 50, 'win', '2024-11-17 02:20:14', '2024-11-17 02:20:14'),
(33, 1, 50, 'lose', '2024-11-17 02:20:15', '2024-11-17 02:20:15'),
(34, 1, 50, 'win', '2024-11-17 02:23:44', '2024-11-17 02:23:44'),
(35, 1, 50, 'win', '2024-11-17 02:23:45', '2024-11-17 02:23:45'),
(36, 1, 50, 'lose', '2024-11-17 02:23:45', '2024-11-17 02:23:45'),
(37, 1, 50, 'lose', '2024-11-17 02:27:52', '2024-11-17 02:27:52'),
(38, 1, 50, 'lose', '2024-11-17 02:36:45', '2024-11-17 02:36:45'),
(39, 1, 50, 'win', '2024-11-17 02:36:47', '2024-11-17 02:36:47'),
(40, 1, 50, 'win', '2024-11-17 02:53:39', '2024-11-17 02:53:39'),
(41, 1, 50, 'lose', '2024-11-17 02:58:53', '2024-11-17 02:58:53'),
(42, 1, 50, 'lose', '2024-11-17 03:04:12', '2024-11-17 03:04:12'),
(43, 1, 50, 'lose', '2024-11-17 03:14:58', '2024-11-17 03:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `referralCode` varchar(255) DEFAULT NULL,
  `referredUserId` int(11) DEFAULT NULL,
  `referralDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `userId`, `referralCode`, `referredUserId`, `referralDate`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'nl7rox', 4, '2024-11-17 02:51:56', '2024-11-17 02:51:56', '2024-11-17 02:51:56'),
(2, 1, 'igz3x4', 5, '2024-11-17 03:13:34', '2024-11-17 03:13:34', '2024-11-17 03:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20241117011219-create-user.js'),
('20241117011225-create-bet-history.js'),
('20241117024716-create-referral.js'),
('20241117031057-create-user.js'),
('20241117031110-create-referral.js'),
('20241117031957-create-role.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `referralCode` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `balance`, `referralCode`, `createdAt`, `updatedAt`) VALUES
(1, 'test@example.com', '$2a$10$/3e62YYedlYaQAV/Ffpyau5FtQfQdMQhoBoEjkkYBYS5WQsrvcjtu', 'admin', 1041, 'pn767a', '2024-11-17 01:33:42', '2024-11-17 03:14:58'),
(2, 'test1@example.com', '$2a$10$4kI0roP37NlWy1e1T2dSsuBc.eJ5JLoF5ZVSocXux9EoELsXr8/Ne', 'user', 100, 'vul03g', '2024-11-17 02:28:47', '2024-11-17 02:28:47'),
(3, 'tes2t@example.com', '$2a$10$uar3/G7ViJK2ruviKe94Suqs4xcNbkjoUvOf8QjmTas1vgHx73lQO', 'user', 100, 'v6rrq1', '2024-11-17 02:51:29', '2024-11-17 02:51:29'),
(4, 'tes3t@example.com', '$2a$10$hE9IuT1pzsba2ZVfyi6Yi.qbOnQwqTg44OK8obka8sHK60M4IJdLS', 'user', 200, 'nl7rox', '2024-11-17 02:51:56', '2024-11-17 02:51:56'),
(5, 'tes5t@example.com', '$2a$10$10q9EVZnIfYMobV58XCvH.tXuxmcWhFqWMaaEUxCcnL0NnWlTmMoG', 'user', 200, 'igz3x4', '2024-11-17 03:13:34', '2024-11-17 03:13:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bethistories`
--
ALTER TABLE `bethistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bethistories`
--
ALTER TABLE `bethistories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
