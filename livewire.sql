-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.33 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6376
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных lwdb
DROP DATABASE IF EXISTS `lwdb`;
CREATE DATABASE IF NOT EXISTS `lwdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `lwdb`;

-- Дамп структуры для таблица lwdb.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы lwdb.failed_jobs: ~0 rows (приблизительно)
DELETE FROM `failed_jobs`;

-- Дамп структуры для таблица lwdb.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы lwdb.migrations: ~4 rows (приблизительно)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_11_11_222014_create_students_table', 2);

-- Дамп структуры для таблица lwdb.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы lwdb.password_resets: ~0 rows (приблизительно)
DELETE FROM `password_resets`;

-- Дамп структуры для таблица lwdb.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы lwdb.personal_access_tokens: ~0 rows (приблизительно)
DELETE FROM `personal_access_tokens`;

-- Дамп структуры для таблица lwdb.students
DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы lwdb.students: ~14 rows (приблизительно)
DELETE FROM `students`;
INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES
	(1, 'Alberta', 'Turcotte', 'preichel@hotmail.com', '+1-912-420-5384', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(2, 'Mattie', 'Dibbert', 'abbigail.oconnell@hotmail.com', '(808) 548-0794', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(3, 'Katarina', 'Ryan', 'orenner@gmail.com', '(765) 747-0903', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(4, 'Madonna', 'Hahn', 'lehner.raoul@yahoo.com', '1-402-468-9331', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(5, 'Jaqueline', 'Gutkowski', 'wreichert@yahoo.com', '575.716.5085', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(6, 'Ellsworth', 'Harris', 'egusikowski@hotmail.com', '+1-731-896-8747', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(7, 'Vicente', 'Wilderman', 'dach.cristian@raynor.com', '234-440-6470', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(8, 'Cheyanne', 'Bergnaum', 'mariela15@lindgren.com', '1-505-261-5160', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(9, 'Brendan', 'Tillman', 'streich.bertrand@corwin.info', '(513) 613-5038', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(10, 'Easton', 'Hilpert', 'frederik87@predovic.com', '+1.830.683.3530', '2022-11-11 17:29:43', '2022-11-11 17:29:43'),
	(11, 'Leopoldo', 'Mayertie', 'boehm.rosalia@kutch.com', '+15178789795', '2022-11-11 17:29:44', '2022-11-30 12:47:57'),
	(13, 'Babamurad', 'Caryev', 'bobo@tm.tm', '123456', '2022-11-11 18:37:47', '2022-11-11 18:37:47'),
	(15, 'Чарыев', 'Babamurad', 'babamurad2010@yandex.ru', '+99365865881', '2022-11-11 18:41:07', '2022-11-11 19:08:43');

-- Дамп структуры для таблица lwdb.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы lwdb.users: ~100 rows (приблизительно)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dr. Kennedy Rogahn', 'qblanda@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5TyJetWWou', '2022-11-11 16:50:52', '2022-11-11 16:50:52'),
	(2, 'Dr. Fern Monahan II', 'jena50@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hwpb3NIORm', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(3, 'Zoie Toy PhD', 'mccullough.edyth@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EL1FtMhSGv', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(4, 'Korey Bednar Jr.', 'zmckenzie@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BGiGYk7BEY', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(5, 'Clint Witting', 'eusebio28@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yvj4UPJa5e', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(6, 'Elisa Renner', 'orland.kulas@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MZFp6zHOsQ', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(7, 'Dr. Jarrett Kuhn', 'craig.kohler@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EeN3LcHGnE', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(8, 'Elouise Kutch', 'buddy93@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bW07UQprFu', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(9, 'Erin Jacobson', 'kunde.arlene@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y5qrQyoaji', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(10, 'Prof. Hester Crist', 'florian.cremin@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TxPqgZoy56', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(11, 'Jacklyn Nader', 'wolff.derick@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fqWZnzlJVz', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(12, 'Miss Nicolette McGlynn DVM', 'wrice@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MERhCEww0Z', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(13, 'Catherine Champlin', 'collier.alek@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KB1uQZ1Us8', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(14, 'Maximillia Orn', 'gianni75@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZvAXj4FmBW', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(15, 'Prof. Angel Carroll MD', 'ayla45@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dAEXJR4mK5', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(16, 'Dr. Deangelo Bechtelar', 'jerrod.fritsch@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tZxyW99MLw', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(17, 'Sigrid Olson', 'kali.sauer@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y6HlbeLK8H', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(18, 'Jennings Heller', 'paucek.destiney@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e6jaeaNNfe', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(19, 'Prof. Ewell Marquardt MD', 'lizzie00@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ASWeuUTqUH', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(20, 'Rozella Zulauf', 'wfranecki@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tcr7X3LUrw', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(21, 'Verla Runolfsdottir', 'mleffler@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3Mg2QN0ca4', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(22, 'Clinton Streich IV', 'jettie66@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sAULU7yEUJ', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(23, 'Gay Wilderman', 'moen.frederick@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o2xneUp5m2', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(24, 'Daphnee Schulist', 'mjacobson@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0qOqVDaXfA', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(25, 'Wallace Hyatt', 'yharvey@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lXsI8HNqoK', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(26, 'Edwin Wolff', 'maxwell.heidenreich@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qbh8dvlgS8', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(27, 'Esmeralda Wuckert', 'bergnaum.luz@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R78JUQKj7x', '2022-11-11 16:50:53', '2022-11-11 16:50:53'),
	(28, 'Samanta Toy', 'zgraham@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jkepdhsfax', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(29, 'Prof. Makenna Bruen', 'jimmy13@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DKAGhxXdlQ', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(30, 'Robb Murazik', 'molly.schmidt@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5rjC02oD8F', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(31, 'Krystal Pagac', 'nolan.marcos@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eBxWqnlkNH', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(32, 'Candida Watsica', 'zulauf.maria@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MypWKivtT4', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(33, 'Dr. Felix Kuvalis', 'uwatsica@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kb75lhVeVe', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(34, 'Mr. Deron Runte IV', 'krice@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dTDjZpp7AW', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(35, 'Cristian Dicki', 'sward@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'McljgnT3Tr', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(36, 'Destany Prosacco', 'larkin.jaron@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NOAxnDdc0p', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(37, 'Dr. Deven Heidenreich IV', 'denesik.corine@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x51XzKwhDP', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(38, 'Davion Bayer', 'jace24@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dQ32RHEO6r', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(39, 'Granville Beahan MD', 'viva.lang@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GiyEXQMFxN', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(40, 'Dr. Gladys Robel MD', 'tania.rutherford@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HDlXhHZuzz', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(41, 'Priscilla Morissette', 'fisher.desiree@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IWzxL9aQ5W', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(42, 'Dr. Patricia Zulauf', 'shagenes@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3x6ytjVz1h', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(43, 'Horace Watsica', 'thelma56@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'efTotTYoeq', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(44, 'Miss Eliane Stracke II', 'marianne.cruickshank@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oP3Pa5b826', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(45, 'Brant Cummerata', 'krolfson@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RNHHyBIQ8q', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(46, 'Mrs. Cathryn Bode', 'enoch61@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xzZGWpL0JX', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(47, 'Angelo Hartmann Jr.', 'kacie.terry@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zu7kuHcGAd', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(48, 'Willis Leffler', 'stanton.savion@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aYpeUifAG6', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(49, 'Rafael Glover', 'marcia.lesch@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DW2MxcrStN', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(50, 'Francesco Koch', 'jprosacco@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YI62TCptdt', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(51, 'Mr. Kyleigh Raynor MD', 'lowe.monroe@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cuTGMhFBnh', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(52, 'Augusta Bosco', 'audreanne.kuvalis@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'exXBP2ZEye', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(53, 'Clare Harris', 'clair.williamson@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pn0ezE6ZLE', '2022-11-11 16:50:54', '2022-11-11 16:50:54'),
	(54, 'Brady Moen', 'hbins@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJMalKvmwi', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(55, 'Hank Mertz', 'syble.buckridge@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '51SX2BMJDz', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(56, 'Prof. Keith Bernhard', 'hirthe.maverick@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0PKyORtDPT', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(57, 'Barbara Batz', 'ulices.fadel@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '98T355W6uv', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(58, 'Prof. Ansel Schimmel', 'akoch@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8BdQHpGTfx', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(59, 'Lexus Crist', 'weldon.oberbrunner@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fwGMKZKp5Q', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(60, 'Luciano Steuber', 'zmccullough@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LzEfDNJ2Wa', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(61, 'Fernando Wuckert Sr.', 'graham.donny@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cP1IJ4CBWC', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(62, 'Prof. Princess Johnson', 'qmonahan@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BxexOHTgBF', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(63, 'Prof. Felton D\'Amore II', 'ubrakus@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WfRbay0yea', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(64, 'Dr. Brendan Crona', 'sterling.hansen@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S2uxDRxdwv', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(65, 'Jaylon Bahringer', 'jessica.legros@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i3NfwfzJ8e', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(66, 'Warren Barrows', 'matilda71@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sdp2DQU4vC', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(67, 'Prof. Graham Berge MD', 'elfrieda.cormier@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zq9pNIKmre', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(68, 'Stephania Windler', 'adrianna.moore@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xga7gydVnW', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(69, 'Franz Bartoletti', 'birdie47@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VOScCaJlnZ', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(70, 'Alvena Schimmel', 'qhyatt@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XwFswUd6n8', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(71, 'Clovis Kuphal', 'hildegard11@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3s6qUTT8px', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(72, 'Chadd Schulist MD', 'colton51@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C0FIAxb2Vg', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(73, 'Miss Luella Heathcote PhD', 'edna24@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oWnlwk3iKv', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(74, 'Amya Willms', 'vreynolds@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yUthvGSBWa', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(75, 'Genoveva Marks', 'eliza24@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7cyG6QAn7w', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(76, 'Kianna Lockman', 'weber.dianna@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rv1B3dsMKB', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(77, 'Cicero Gulgowski', 'demetris.runolfsdottir@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'awBxd8Vp2B', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(78, 'Mr. Arvid Pouros I', 'schoen.newell@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xyu1lA3CkI', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(79, 'Miss Lottie O\'Kon Jr.', 'zbreitenberg@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NCTeB2J9Yh', '2022-11-11 16:50:55', '2022-11-11 16:50:55'),
	(80, 'Mrs. Linnea Baumbach', 'beahan.jarret@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v8UqIU66qr', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(81, 'Teagan Lemke', 'oyundt@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZbOW5WAaFr', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(82, 'Tremayne Hagenes Sr.', 'catalina.gerlach@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K0moKATVvv', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(83, 'Dion Johnson', 'howell.joshua@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vZLGo0DXuB', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(84, 'Prof. Curt Pacocha', 'ara.okon@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4saTAGIA2u', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(85, 'Anya Zboncak', 'crolfson@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'va821byOQ3', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(86, 'Mr. Cary Keebler', 'hand.guadalupe@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ejIfCqPrpq', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(87, 'Arnaldo D\'Amore', 'ischiller@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ffUrVYljMr', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(88, 'Eulah Nikolaus', 'ecasper@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mqotf3u9uT', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(89, 'Blanche Wehner', 'fredy44@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'an7pSOAVbx', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(90, 'Prof. Dino O\'Kon II', 'rkling@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i6Puur9m92', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(91, 'Jazmyn Labadie', 'kcasper@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '58xnUj0KUE', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(92, 'Hannah Gorczany', 'adenesik@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ubQ7kTIVIS', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(93, 'Ashlynn Klocko', 'noble.labadie@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H1zXAqbSJs', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(94, 'Dr. Peter Lowe PhD', 'lynch.elinor@example.com', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2IWDgyjsaf', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(95, 'Brittany Ledner', 'eloy.jacobson@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vNr0rRMXa9', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(96, 'Ms. Eulah Fadel', 'aileen.ortiz@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v2uUWpRfhw', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(97, 'Prof. Adelia Baumbach I', 'dare.mylene@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '997rH6Gxim', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(98, 'Cheyanne Hoppe', 'america.dietrich@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xHy3dOkIxN', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(99, 'Macey Effertz', 'jwest@example.org', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BzyPsl6vvz', '2022-11-11 16:50:56', '2022-11-11 16:50:56'),
	(100, 'Noemy Barrows I', 'ugleason@example.net', '2022-11-11 16:50:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aIHJNAZ9Rv', '2022-11-11 16:50:56', '2022-11-11 16:50:56');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
