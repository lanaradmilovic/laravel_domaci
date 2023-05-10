-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 03:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE `art` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`id`, `title`, `year`, `value`, `created_at`, `updated_at`, `artist_id`, `form_id`) VALUES
(1, 'neque', 1958, 151837399, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 1, 1),
(2, 'et odio qui et', 1773, 208495692, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 1, 1),
(3, 'id dicta ut', 1559, 52833665, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 1, 1),
(4, 'nobis sequi qui soluta eaque', 1005, 179868384, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 1, 1),
(5, 'voluptatem praesentium nihil et', 1487, 85877315, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 1, 1),
(6, 'perspiciatis', 1542, 66794224, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 2, 1),
(7, 'qui', 1477, 369015034, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 2, 1),
(8, 'quidem voluptatem consequatur', 1384, 302311636, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 2, 1),
(9, 'dolores', 1315, 445939819, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 2, 1),
(10, 'accusamus est est eum', 1916, 98980698, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 3, 2),
(11, 'illum dicta', 1653, 377720069, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 3, 2),
(12, 'iure labore vel', 1723, 3158489, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 3, 2),
(13, 'repudiandae molestiae', 1020, 184485168, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 3, 2),
(14, 'accusantium omnis non at', 1747, 13524368, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 3, 2),
(15, 'dolor occaecati est', 1069, 38958815, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 3, 2),
(16, 'voluptatem', 1803, 5586076, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 3, 2),
(17, 'molestiae quis voluptatibus doloremque quibusdam', 1559, 164491632, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 4, 3),
(18, 'quos aut', 1221, 117603268, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 4, 3),
(19, 'et consequatur quia rerum', 1878, 93697497, '2023-01-14 23:18:56', '2023-01-14 23:18:56', 5, 3),
(20, 'Sunflowers', 1888, 100000000, '2023-01-15 01:10:49', '2023-01-15 01:10:49', 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `born` int(11) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `born`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'Talon Schmidt', 1616, 'Turks and Caicos Islands', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(2, 'Norberto Kirlin', 1902, 'China', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(3, 'Kole Monahan PhD', 1431, 'Lesotho', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(4, 'Miss Karolann Tremblay', 1171, 'Germany', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(5, 'Rembrandt', 1606, 'Netherlands', '2023-01-14 23:18:56', '2023-01-15 01:09:29'),
(6, 'Pablo Picasso', 1881, 'Spain', '2023-01-15 01:08:34', '2023-01-15 01:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'praesentium', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(2, 'ex', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(3, 'sculpture', '2023-01-14 23:18:56', '2023-01-15 01:07:36'),
(4, 'painting', '2023-01-15 01:07:12', '2023-01-15 01:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_15_000005_create_artists_table', 1),
(6, '2023_01_15_000011_create_art_table', 1),
(7, '2023_01_15_000018_create_forms_table', 1),
(8, '2023_01_15_000455_add_artist_id_and_form_id_to_art_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'auth_token', 'c497b19076ea89fca547aafd6ad9a43c244e9914f27cec5158fcaede6845e749', '[\"*\"]', NULL, NULL, '2023-01-15 00:53:12', '2023-01-15 00:53:12'),
(2, 'App\\Models\\User', 3, 'auth_token', '6893702e3eb3524ad236cf75d1f9d13642cdbe101549202933da764f6c1878ec', '[\"*\"]', '2023-01-15 01:10:49', NULL, '2023-01-15 00:53:20', '2023-01-15 01:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marcelino Emard', 'lueilwitz.willard@example.net', '2023-01-14 23:18:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'otKam8NjtM', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(2, 'Russell Konopelski', 'bahringer.monique@example.org', '2023-01-14 23:18:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1hYFQy9K0l', '2023-01-14 23:18:56', '2023-01-14 23:18:56'),
(3, 'Lana Radmilovic', 'lr20190131@student.fon.bg.ac.rs', NULL, '$2y$10$QDxzVdMqX.3L.4brkC6F0O4SYyPtg5VPnZdomw97FFwcjnK/H1tey', NULL, '2023-01-15 00:53:12', '2023-01-15 00:53:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artists_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `art`
--
ALTER TABLE `art`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
