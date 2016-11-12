-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2016 at 08:03 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartcarlock`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registerekey`
--

CREATE TABLE `registerekey` (
  `id` int(255) NOT NULL,
  `ekey` varchar(50) NOT NULL,
  `user_id` int(255) NOT NULL,
  `temp_user_id` int(255) NOT NULL,
  `startdatetime` timestamp NULL DEFAULT NULL,
  `enddatetime` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_user`
--

CREATE TABLE `temp_user` (
  `id` int(255) NOT NULL,
  `owner_id` int(255) NOT NULL,
  `key_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `startdatetime` timestamp NULL DEFAULT NULL,
  `enddatetime` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_user`
--

INSERT INTO `temp_user` (`id`, `owner_id`, `key_id`, `name`, `password`, `startdatetime`, `enddatetime`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, '85x3fn4svbcw4fu9bm6e', 'asdsad', 'sadasda', '2016-11-11 00:24:00', '2016-11-16 00:24:00', '2016-11-11 08:24:22', '2016-11-11 08:24:22', 1),
(2, 1, 'wxm7v59b54sjvxig5o69', 'addasdas', 'sadasdas', '2016-11-11 11:06:00', '2016-11-11 11:06:00', '2016-11-11 19:06:03', '2016-11-11 19:06:03', 1),
(3, 1, 'gdm70pt7cr1p95ol4qzx', 'asdasdas', 'asdsadasd', '2016-11-11 11:25:00', '2016-11-11 11:25:00', '2016-11-11 19:25:10', '2016-11-11 19:25:10', 1),
(4, 2, 'b79288jt175kw49gwadn', 'admin_second', 'admin__second', '2016-11-11 11:31:00', '2016-11-16 11:31:00', '2016-11-11 19:32:32', '2016-11-11 19:32:32', 1),
(5, 1, 'pk7hydfktq7b33cfl4kv', 'admin_first', 'admin_first', '2016-11-11 12:00:00', '2016-11-11 12:00:00', '2016-11-11 20:04:58', '2016-11-11 20:04:58', 1),
(6, 1, 'epgel2cq4mnswdv75pvb', 'admin_first', 'admin', '2016-11-11 12:05:00', '2016-11-11 12:05:00', '2016-11-11 20:05:28', '2016-11-11 20:05:28', 1),
(7, 1, 'eixk1ps7xsgv0s5mcgpo', 'admin22', '22222222', '2016-11-11 12:13:00', '2016-11-11 12:13:00', '2016-11-11 20:15:11', '2016-11-11 20:15:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', 'admin', NULL, '2016-11-10 08:06:00', '2016-11-10 08:06:00'),
(2, 'admin_2', 'admin_2@admin.com', 'admin_2', NULL, '2016-11-12 03:28:58', '2016-11-12 03:28:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `temp_user`
--
ALTER TABLE `temp_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `temp_user`
--
ALTER TABLE `temp_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
