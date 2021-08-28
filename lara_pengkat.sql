-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 06:23 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_pengkat`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2021_01_07_085135_add_roles_field_to_users_table', 2),
(8, '2021_01_08_010522_create_pengaduan_table', 3),
(9, '2021_01_08_060634_create_pengaduan_table', 4),
(10, '2021_01_08_060634_create_pengaduans_table', 5),
(11, '2021_01_08_060634_create_pengaduan_mas_table', 6),
(12, '2021_01_09_100048_creare_peng_mas_table', 6),
(13, '2021_01_11_011623_create_tanggapans_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduans`
--

CREATE TABLE `pengaduans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum di Proses',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduans`
--

INSERT INTO `pengaduans` (`id`, `user_nik`, `name`, `user_id`, `description`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1111111111111111', 'admin1', 8, 'laporan 1', 'assets/laporan/zFi7dXoXFDtOs0acTdE8J8Y8LGmA0uV0nfSsDqp3.jpg', 'Selesai', NULL, '2021-08-26 07:52:41', '2021-08-26 07:52:41'),
(2, '111112', 'user1', 10, 'AC RUSAK', 'assets/laporan/3zbNQWaJOt6LjNBG70wKzpDvtn6qJa0SIv02NuB9.png', 'Sedang di Proses', NULL, '2021-08-26 17:40:49', '2021-08-26 17:40:49'),
(3, '111112', 'user1', 10, 'Asdjaoisd', 'assets/laporan/yyqtt34HW1oMxjtm2D43uC5lFyQulib4p5Z4U3J9.png', 'Sedang di Proses', NULL, '2021-08-27 13:16:21', '2021-08-27 13:16:21'),
(4, '111112', 'user1', 10, 'awdadwaw', 'assets/laporan/8CD6kSItU35d2lsoa0JIdgeoiltrM7YTE8cVP1fZ.jpg', 'Selesai', NULL, '2021-08-27 13:18:30', '2021-08-27 13:18:30'),
(5, '111112', 'user1', 10, 'asdwdadw', 'assets/laporan/giNqtTVkZSOJfHElJDEOrdKdeAcRhvNL0tk5lOXq.jpg', 'Belum di Proses', NULL, '2021-08-27 13:55:53', '2021-08-27 13:55:53'),
(6, '111112', 'user1', 10, 'asdpaodsap', 'assets/laporan/5Mx5qIHSfvEjZXgqaPYRgrhQ7fNzrAA4JfO7FPQI.jpg', 'Belum di Proses', NULL, '2021-08-27 14:15:39', '2021-08-27 14:15:39'),
(7, '111112', 'user1', 10, 'adascawac', '2.jpg', 'Selesai', NULL, '2021-08-27 14:43:28', '2021-08-27 14:43:28'),
(8, '111112', 'user1', 10, 'AC RUSAK', 'download (1).png', 'Belum di Proses', NULL, '2021-08-27 15:30:35', '2021-08-27 15:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapans`
--

CREATE TABLE `tanggapans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengaduan_id` int(11) NOT NULL,
  `tanggapan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petugas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tanggapans`
--

INSERT INTO `tanggapans` (`id`, `pengaduan_id`, `tanggapan`, `petugas_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bacot', 9, '2021-08-26 08:11:38', '2021-08-26 08:11:38'),
(2, 2, 'Gitu aja', 9, '2021-08-27 13:19:40', '2021-08-27 13:19:40'),
(3, 3, 'afafaf', 9, '2021-08-27 13:19:57', '2021-08-27 13:19:57'),
(4, 4, 'Ga penting', 9, '2021-08-27 13:20:10', '2021-08-27 13:20:10'),
(5, 7, 'oke', 8, '2021-08-28 04:13:25', '2021-08-28 04:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1, '12345', 'Admin', 'admin@gmail.com', '082117569494', NULL, '0192023a7bbd73250516f069df18b500', NULL, '2021-01-07 01:00:38', '2021-01-07 01:00:38', 'ADMIN'),
(3, '12345678912', 'Petugas', 'petugas@gmail.com', '082117569492', NULL, '$2y$10$RKR8I6lVC8f0h3qf63z48OkMQR3r0SxmGaAI9JIEgs34eJFS3yS92', NULL, '2021-01-12 15:16:18', '2021-01-12 15:16:18', 'PETUGAS'),
(8, '1111111111111111', 'admin1', 'admin1@gmail.com', '14022', NULL, '$2y$10$QKTkBY8DK81/MCE/kpmiDu3u8QqsPaiXui14pVFfL.wNRJb9ppSNO', NULL, '2021-08-26 07:51:49', '2021-08-26 07:51:49', 'ADMIN'),
(9, '1111', 'helmi', 'helmi@gmail.com', '14022', NULL, '$2y$10$qdIdfdaHcYD5YWUPy0o9W.uEOVqTWJeATCjaldNlEgsZ3231mEZyS', NULL, '2021-08-26 07:56:48', '2021-08-26 07:56:48', 'PETUGAS'),
(10, '111112', 'user1', 'user1@gmail.com', '14022', NULL, '$2y$10$Tg5hKv6xKslptNFK6K7VUeZIHeaAfAOBIHbo6ErVXa6GbDMfaOC2O', NULL, '2021-08-26 07:58:18', '2021-08-26 07:58:18', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengaduans`
--
ALTER TABLE `pengaduans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanggapans`
--
ALTER TABLE `tanggapans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengaduans`
--
ALTER TABLE `pengaduans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tanggapans`
--
ALTER TABLE `tanggapans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
