-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2020 at 04:46 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `website`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'Percival Moen', 'hschaden@morar.com', 'https://suscipit.com', 'Ipsam alias deleniti est quia harum. Occaecati veniam quibusdam labore unde molestiae. Blanditiis accusantium tempora iure dolor quo fugit soluta. Reprehenderit quibusdam veritatis nobis quia qui delectus qui.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(2, 2, 'Gerardo Daniel Jr.', 'champlin.maryse@yahoo.com', 'https://vel.com', 'Molestiae temporibus molestias rerum non qui. Voluptatibus optio voluptate aspernatur tenetur quis architecto. Eum voluptatem omnis illum quo et reprehenderit sunt.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(3, 3, 'Dr. Gino Schneider', 'arobel@klocko.com', 'https://aut.com', 'Esse sed cumque ut voluptatem facere numquam. Doloremque earum consequatur accusamus. Eos blanditiis numquam sed ullam.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(4, 1, 'dok', 'sa@gmail.com', 'bodo amat', 'dfdfdf', '2020-03-29 02:35:13', '2020-03-29 02:35:13'),
(5, 1, 'dok', 'sa@gmail.com', 'bodo amat', 'dfdfdf', '2020-03-29 02:35:48', '2020-03-29 02:35:48'),
(6, 1, 'tika', 'tika@jayantika.com', 'mama', 'Aku cinta', '2020-03-29 02:36:14', '2020-03-29 02:36:14'),
(7, 1, 'tika', 'wiwiwik@mm.com', 'msmsm', 'Aku cinta', '2020-03-29 02:38:59', '2020-03-29 02:38:59'),
(8, 1, 'Government', 'mm@gmail.com', 'n', 'eee', '2020-03-29 02:39:17', '2020-03-29 02:39:17'),
(9, 1, 'a', 'antam@gmail.com', 'a', 'ssss', '2020-03-29 02:41:00', '2020-03-29 02:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_12_19_080506_create_posts_table', 1),
(3, '2016_12_19_201351_create_comments_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ipsam rerum vel magni tenetur.', 'ipsam-rerum-vel-magni-tenetur', 'Illum aperiam nihil ab rerum voluptatem. Qui ea fugiat consequuntur tempore. Quos minima maxime modi eaque rem. Repellat at labore praesentium est beatae et tenetur. Quod est quod laboriosam et officia saepe velit reiciendis. Illum aperiam nihil ab rerum voluptatem. Qui ea fugiat consequuntur tempore. Quos minima maxime modi eaque rem. Repellat at labore praesentium est beatae et tenetur. Quod est quod laboriosam et officia saepe velit reiciendis. Illum aperiam nihil ab rerum voluptatem. Qui ea fugiat consequuntur tempore. Quos minima maxime modi eaque rem. Repellat at labore praesentium est beatae et tenetur. Quod est quod laboriosam et officia saepe velit reiciendis. Illum aperiam nihil ab rerum voluptatem. Qui ea fugiat consequuntur tempore. Quos minima maxime modi eaque rem. Repellat at labore praesentium est beatae et tenetur. Quod est quod laboriosam et officia saepe velit reiciendis. Illum aperiam nihil ab rerum voluptatem. Qui ea fugiat consequuntur tempore. Quos minima maxime modi eaque rem. Repellat at labore praesentium est beatae et tenetur. Quod est quod laboriosam et officia saepe velit reiciendis.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(2, 2, 'Sit commodi est quis ullam qui quod accusamus.', 'sit-commodi-est-quis-ullam-qui-quod-accusamus', 'Et consectetur ipsum consectetur vitae ipsum voluptatibus tenetur. Et occaecati cupiditate sit iure ut provident. Aspernatur quas voluptatem animi debitis non et et.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(3, 3, 'Deserunt est recusandae voluptates sed ut tempora.', 'deserunt-est-recusandae-voluptates-sed-ut-tempora', 'Hic architecto reprehenderit quia quidem ab numquam. Facere et eveniet et repellat veniam. Laudantium occaecati modi impedit. Molestias corporis et architecto quaerat.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(4, 4, 'Vel voluptas harum fugit maxime a fugiat repellendus.', 'vel-voluptas-harum-fugit-maxime-a-fugiat-repellendus', 'Eos qui cumque ex perferendis est ex. Asperiores quas alias ipsum et aspernatur impedit dolores. Voluptatem et beatae cumque vel tempora ut.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(5, 5, 'Esse error consequuntur placeat.', 'esse-error-consequuntur-placeat', 'Facere ut nostrum consectetur nihil. Nulla aliquam architecto et quia consequatur modi. Voluptas enim molestias delectus assumenda similique amet.', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(6, 6, 'Impedit consectetur itaque ipsam error facilis provident architecto expedita.', 'impedit-consectetur-itaque-ipsam-error-facilis-provident-architecto-expedita', 'Dolorum ab saepe necessitatibus nulla dolores illo sapiente. Fugiat veritatis sint delectus neque et expedita aut. Nostrum vero est labore nulla ipsum quis. Incidunt quaerat maxime assumenda ratione. Qui soluta sunt eius officiis inventore.', '2020-03-29 01:02:44', '2020-03-29 01:02:44');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Sharon O''Conner', 'rschneider@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oPDZ7LFyZF', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(2, 'Alivia Bernier', 'bayer.ignacio@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DgwHgemWgM', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(3, 'Mr. Micheal Murray', 'lane66@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X3NJD4KO7y', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(4, 'Buford Heidenreich', 'kaleigh58@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hHa5nLe5l0', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(5, 'Valentin Dibbert MD', 'camryn.fritsch@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'clgKdc5zuq', '2020-03-29 01:02:44', '2020-03-29 01:02:44'),
(6, 'Miss Antonetta Tromp IV', 'friesen.delaney@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y3iLyA33ik', '2020-03-29 01:02:44', '2020-03-29 01:02:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
