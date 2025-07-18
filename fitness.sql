-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for fitness
CREATE DATABASE IF NOT EXISTS `fitness` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fitness`;

-- Dumping structure for table fitness.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `small_image` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `title` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table fitness.blogs: ~2 rows (approximately)
INSERT INTO `blogs` (`id`, `image`, `small_image`, `name`, `title`, `subtitle`, `date`, `status`, `created_at`, `updated_at`) VALUES
	(1, '1750602135.png', '1750602135.png', 'Steven Nice', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-03-26', 1, '2025-06-22 08:29:01', '2025-06-22 08:52:15'),
	(2, '1750602938.png', '1750602135.png', 'Steven Nice', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-03-26', 1, '2025-06-22 08:29:01', '2025-06-22 09:05:38'),
	(3, '1750602951.png', '1750602135.png', 'Steven Nice', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-03-26', 1, '2025-06-22 08:29:01', '2025-06-22 09:05:51');

-- Dumping structure for table fitness.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.cache: ~0 rows (approximately)

-- Dumping structure for table fitness.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.cache_locks: ~0 rows (approximately)

-- Dumping structure for table fitness.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table fitness.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.jobs: ~0 rows (approximately)

-- Dumping structure for table fitness.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.job_batches: ~0 rows (approximately)

-- Dumping structure for table fitness.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1);

-- Dumping structure for table fitness.our_clients
CREATE TABLE IF NOT EXISTS `our_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `rating` varchar(191) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table fitness.our_clients: ~3 rows (approximately)
INSERT INTO `our_clients` (`id`, `image`, `title`, `subtitle`, `rating`, `status`, `created_at`, `updated_at`) VALUES
	(1, '1750751509.png', 'LOREM IPSUM', 'Lorem Ipsum Dolor Sit Amet.', '4', 1, '2025-06-22 04:25:17', '2025-06-24 02:21:49'),
	(3, '1750603034.png', 'LOREM IPSUM', 'Lorem Ipsum Dolor Sit Amet.', '5', 1, '2025-06-22 04:25:17', '2025-06-22 09:07:14'),
	(4, '1750603048.png', 'LOREM IPSUM', 'Lorem Ipsum Dolor Sit Amet.', '4', 1, '2025-06-22 04:25:17', '2025-06-22 09:07:28'),
	(5, '1750603068.png', 'LOREM IPSUM', 'Lorem Ipsum Dolor Sit Amet.', '5', 1, '2025-06-22 04:25:17', '2025-06-22 09:07:48');

-- Dumping structure for table fitness.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table fitness.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('t5OBye7H4Yag8JH5qSwnpmJXuBCW9mxClbCJoRv2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicmdBOGZuWFJkQWlBMnFObEhrczB5bzFjd1dKZ1FhaTlkWXUxaWRhViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9maXRuZXNzLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1751546995);

-- Dumping structure for table fitness.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fitness.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `dob`, `photo`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Manish . Bairwa', 'welcomemicrosoft97@gmail.com', '1234567890', '2025-06-10', NULL, 1, '2025-06-22 14:51:25', '$2y$12$WbjnBo0/pmcDevlyEm9hzuRgLNOvjosjfLChf9/.ZFezeoK0Re0jG', '8CEje3DFvlLPgc0sX0jaJPa7GuyiqWC1ogkVDgxuuV0xtmJvLGbFpsbyIieZ', '2025-06-07 09:23:27', '2025-06-22 10:15:12'),
	(2, 'Mani', 'mani@gmail.com', '1234567890', '2025-06-19', NULL, 1, '2025-06-22 14:49:47', '$2y$12$MeEsKlxVw2AjugWkcu0Oy.JS.Ks7vvzbGYzhD28KiI9XjOWuQSyFS', NULL, '2025-06-16 08:05:45', '2025-06-22 10:16:46');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
