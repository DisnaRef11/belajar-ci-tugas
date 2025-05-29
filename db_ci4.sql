-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 08:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-05-07-062950', 'App\\Database\\Migrations\\User', 'default', 'App', 1746599722, 1),
(2, '2025-05-07-063241', 'App\\Database\\Migrations\\Product', 'default', 'App', 1746599722, 1),
(3, '2025-05-07-063254', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1746599722, 1),
(4, '2025-05-07-063306', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1746599722, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506NF', 10899000, 5, 'asus_tuf_a15.jpg', '2025-05-07 06:42:57', NULL),
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2025-05-07 06:42:57', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2025-05-07 06:42:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'ani23', 'humaira.permata@rahmawati.desa.id', '$2y$10$cKvTX6H7Wv8mkynVxY5pA.x9PgxGWMT8dgAQfwtsY7V5HmR6ijUB.', 'admin', '2025-05-07 06:43:44', NULL),
(2, 'safitri.tira', 'upik65@gmail.co.id', '$2y$10$nI8dJ78CSuSNdn56gCztl.DafFLhsren6Xp1Es38q8yP9zuXabyA2', 'admin', '2025-05-07 06:43:44', NULL),
(3, 'maryati.darman', 'hutasoit.faizah@yahoo.com', '$2y$10$leTQAYQ7eSTMObzKAbuXpuCkcGeyZWr/v/1uO8z0/D4XVIiltfh56', 'guest', '2025-05-07 06:43:44', NULL),
(4, 'bakiman59', 'umi65@suryono.biz.id', '$2y$10$baQ5mDgrnncXEjkTAyI1BuHgdeMPp68uETeeJE5NRf.wu0RbupFJy', 'guest', '2025-05-07 06:43:45', NULL),
(5, 'mkusmawati', 'wahyudin.wasis@yahoo.com', '$2y$10$nrQG3YoFHXWPQX7UWAwH7.mvL9MJzy1ii8Uk/q3dWBez8boIaNdtK', 'admin', '2025-05-07 06:43:45', NULL),
(6, 'purnawati.dewi', 'dsiregar@melani.or.id', '$2y$10$ZmQ0TvEtkaRR8nX0uqXeae1hUjUsX3fV4i7lzqqn/VErkic8DPLia', 'admin', '2025-05-07 06:43:45', NULL),
(7, 'smardhiyah', 'fujiati.karma@yahoo.co.id', '$2y$10$1nKfzeBB9IIL4DHQh7yapeeHInXQOJJ57YAS4C47LCKg0L2hkLJEK', 'admin', '2025-05-07 06:43:45', NULL),
(8, 'endra.halimah', 'fathonah.megantara@yahoo.com', '$2y$10$aRyxP0XGudAKMjizAvXGrelO0HV5Evi5XBX2gUz752QXHBLf6Dhre', 'guest', '2025-05-07 06:43:45', NULL),
(9, 'spratiwi', 'kania42@yahoo.co.id', '$2y$10$XRisJ7jGm6RibV/keiXzhulNC4yOCerhSTWTcbw/1wuDIAuEtsyRy', 'admin', '2025-05-07 06:43:45', NULL),
(10, 'sihotang.marsudi', 'aslijan95@mansur.co', '$2y$10$fOw9QMdiMmHwuf8gKjf.qOB7g1WlDIVytJU3mk8crDd8qqUs5XO.O', 'admin', '2025-05-07 06:43:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
