-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carafajar_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comments_contents` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2023_12_25_185748_create_posts_table', 1),
(6, '2023_12_25_192732_create_comments_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user berhasil login', 'd76cfe57aad2411af22328bd05e6dad566846fd795f42e8ad170706f2e6c0f6b', '[\"*\"]', NULL, '2024-05-05 12:42:52', '2024-05-05 12:42:52'),
(5, 'App\\Models\\User', 1, 'user berhasil login', '1a966e5a04c544585d724c713594fb3619f546c24c8ebc00d3bace77f6d3d75a', '[\"*\"]', '2024-05-06 02:34:42', '2024-05-06 02:29:31', '2024-05-06 02:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `news_content` text NOT NULL,
  `author` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `news_content`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Welcome to portal berita', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae veritatis unde facilis? Consequatur officia enim repudiandae doloribus accusantium saepe nihil rem commodi? Alias officiis nemo aliquam sequi neque dolorem error aperiam. Porro, temporibus dolore quo a, vel maxime error consectetur perferendis, autem cum excepturi totam ipsum vero neque odit itaque reiciendis consequuntur ducimus nostrum cumque illo labore fugiat. Sit sed accusantium, facere eaque quaerat ea ipsam obcaecati? Aspernatur unde, illum a commodi tempore corporis facilis amet labore mollitia autem earum provident, pariatur accusamus inventore quos tenetur odit iste facere, dolorum maxime culpa perspiciatis? Expedita quas beatae deserunt reiciendis? Nesciunt dolor doloremque aliquid fugiat quas magni. Corrupti exercitationem, error tempora expedita ipsa quod ratione alias, tempore eum repellat quis labore dolores. Pariatur excepturi eligendi earum, nisi nulla natus amet quibusdam provident quam dolorum libero eaque doloremque ipsa magni mollitia fuga esse necessitatibus exercitationem sunt eum porro ratione! Enim harum, impedit id est, sint placeat, mollitia consectetur nobis odio aperiam itaque ipsum. Exercitationem non vel, explicabo eos laudantium impedit porro aspernatur voluptatem corrupti magni! Nisi neque eveniet sed ad, sint, provident natus vitae inventore tenetur doloribus consectetur expedita? Cum nisi laboriosam repellat. Magnam pariatur minima saepe praesentium magni nulla id ullam cupiditate laudantium nisi aperiam, illum sunt quae obcaecati excepturi perspiciatis eaque quam at repudiandae aut dolorum accusantium ad asperiores consequuntur! Ratione cum dolore ad dolores. Reprehenderit necessitatibus eveniet, maiores et officia suscipit vero quia aperiam ratione est eaque dolor blanditiis incidunt corporis quo, tenetur sed dolorem cumque. Ad saepe ullam assumenda molestiae delectus ut aut praesentium. Ut accusantium reiciendis quos! Doloremque mollitia quibusdam consequatur dolore libero accusamus eos, soluta aliquid dignissimos ea aut, debitis quo! Est odio enim id quae eaque ipsa sapiente corporis molestias neque suscipit reiciendis itaque blanditiis similique porro illo iure rerum ipsam sed nemo vel, fuga dolorum?', 1, '2024-05-04 19:44:11', NULL, NULL),
(2, 'Pengumuman', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae veritatis unde facilis? Consequatur officia enim repudiandae doloribus accusantium saepe nihil rem commodi? Alias officiis nemo aliquam sequi neque dolorem error aperiam. Porro, temporibus dolore quo a, vel maxime error consectetur perferendis, autem cum excepturi totam ipsum vero neque odit itaque reiciendis consequuntur ducimus nostrum cumque illo labore fugiat. Sit sed accusantium, facere eaque quaerat ea ipsam obcaecati? Aspernatur unde, illum a commodi tempore corporis facilis amet labore mollitia autem earum provident, pariatur accusamus inventore quos tenetur odit iste facere, dolorum maxime culpa perspiciatis? Expedita quas beatae deserunt reiciendis? Nesciunt dolor doloremque aliquid fugiat quas magni. Corrupti exercitationem, error tempora expedita ipsa quod ratione alias, tempore eum repellat quis labore dolores. Pariatur excepturi eligendi earum, nisi nulla natus amet quibusdam provident quam dolorum libero eaque doloremque ipsa magni mollitia fuga esse necessitatibus exercitationem sunt eum porro ratione! Enim harum, impedit id est, sint placeat, mollitia consectetur nobis odio aperiam itaque ipsum. Exercitationem non vel, explicabo eos laudantium impedit porro aspernatur voluptatem corrupti magni! Nisi neque eveniet sed ad, sint, provident natus vitae inventore tenetur doloribus consectetur expedita? Cum nisi laboriosam repellat. Magnam pariatur minima saepe praesentium magni nulla id ullam cupiditate laudantium nisi aperiam, illum sunt quae obcaecati excepturi perspiciatis eaque quam at repudiandae aut dolorum accusantium ad asperiores consequuntur! Ratione cum dolore ad dolores. Reprehenderit necessitatibus eveniet, maiores et officia suscipit vero quia aperiam ratione est eaque dolor blanditiis incidunt corporis quo, tenetur sed dolorem cumque. Ad saepe ullam assumenda molestiae delectus ut aut praesentium. Ut accusantium reiciendis quos! Doloremque mollitia quibusdam consequatur dolore libero accusamus eos, soluta aliquid dignissimos ea aut, debitis quo! Est odio enim id quae eaque ipsa sapiente corporis molestias neque suscipit reiciendis itaque blanditiis similique porro illo iure rerum ipsam sed nemo vel, fuga dolorum?', 1, '2024-05-04 19:44:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `firstname`, `lastname`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@email.com', 'admin', '$2y$10$Gm6P1WGH3bPKUntgk4/d3eNQxezhrnud8na4bGbWkqxQaggmig0gK', 'admin', 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_foreign` (`author`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
