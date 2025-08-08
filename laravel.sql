-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2025 at 06:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone_number`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test Admin', 'admin@yopmail.com', '7722441122', '$2y$12$U29C4DmRLKyxPbR0bhzO.uBq6AIpcDjiJlPCtYOB9WZm4IR79Er9u', NULL, '2025-08-07 21:38:50', '2025-08-07 21:38:50'),
(2, 'admin', 'admin1@yopmail.com', '7766552233', '$2y$12$M1.30ZWsu83V70CB6C6BweD7WvYFuuCKOSFzTx2PHnPpbC37d4HiS', NULL, '2025-08-07 21:42:27', '2025-08-07 21:42:27'),
(3, 'kaustubh', 'kd@yopmail.com', '9922379041', '$2y$12$U4tHWZ0yE0rwiGAWfrfF5.05B/CCQ1D7OkiO0FsNiHgAZO9GPmSR2', NULL, '2025-08-07 21:48:44', '2025-08-07 21:48:44'),
(4, 'Kaustubh Vijay Dalal', 'kaustubhvd5@gmail.com', '9922379041', '$2y$12$Ek87PLPMim.HIsdFzHN0Pu2FbKfJlj0kFbWT0kN1wMIKCNbCfBrAa', NULL, '2025-08-07 22:03:37', '2025-08-07 22:03:37'),
(5, 'Kaustubh Dalal', 'kdstudent11@gmail.com', '9922783311', '$2y$12$tqZXDStshfHObZBHvslKX.5Y1.70nAYoIfCdEcFspS7hTb51UHqnm', NULL, '2025-08-08 00:36:26', '2025-08-08 00:36:26'),
(6, 'test', 'test@ttyop.com', '8832112244', '$2y$12$pDJr.lBB1hzqqfNyIqr1c.pTKuP5duzakK4V6x5ngyVwaqJosnqpW', NULL, '2025-08-08 00:38:10', '2025-08-08 00:38:10'),
(7, 'tfdf', 'fd@fd.com', '9988776655', '$2y$12$ZhGDGVLAiWqXV2uCWoDXRulTD37tXLO2NDuI9C8J8cxCQ/vJUlMsa', NULL, '2025-08-08 00:40:22', '2025-08-08 00:40:22'),
(8, 'fdd', 'kk@yopmail.com', '9988776655', '$2y$12$sbnTUK3Ex438hlEnc1Ry3uCkKqhJlx5QsOQUhjq4ybsulgkjwyaAK', NULL, '2025-08-08 00:42:04', '2025-08-08 00:42:04'),
(9, 'cc', 'cc@yopmail.com', '9988776655', '$2y$12$A7AaxAmjkYL.jDSfGPr2Q.QnjClGuuggxFKBKBJi9Jb9916HMCAsq', NULL, '2025-08-08 00:43:22', '2025-08-08 00:43:22'),
(10, 'Kaustubh Dalal', 'kdtest@yopmail.com', '9922445566', '$2y$12$DhPAWqAmK8IBu2OBdPZglO6FHBeZRwmzWN6qQlOUtjZBV1/k2DCOe', NULL, '2025-08-08 00:45:02', '2025-08-08 00:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_users`
--

CREATE TABLE `client_users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_users`
--

INSERT INTO `client_users` (`id`, `name`, `email`) VALUES
(1, 'KD', 'kd@yopmail.com'),
(2, 'kanchan', 'kanchan@yopmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Retta Rosenbaum', 'klocko.mabel@example.com', '629-851-8659', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(2, 'Prof. Reynold Koss', 'kaustubhvd5@gmail.com', '551.657.5900', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(3, 'Emmanuelle Bernier', 'kaustubhvd51@gmail.com', '+13605514774', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(4, 'Dario Swift', 'marcus68@example.org', '+1 (682) 342-7879', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(5, 'Katlyn Gaylord DDS', 'josefina.kilback@example.net', '607.965.3186', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(6, 'Verda Crooks', 'abrown@example.net', '+1-667-354-1308', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(7, 'Karl Ryan', 'jayne80@example.net', '+1-234-677-4197', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(8, 'Mr. Gregorio Predovic', 'nader.shad@example.org', '+1.203.936.6722', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(9, 'Julia Homenick', 'armand.brown@example.net', '(279) 255-5224', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(10, 'Dr. Pamela Lehner DDS', 'dell.muller@example.org', '762.588.7860', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(11, 'Dr. Felipe Grady', 'luella26@example.org', '283.612.4763', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(12, 'Emmalee Luettgen', 'zemlak.aniya@example.org', '678-999-0212', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(13, 'Nona Schoen', 'jessyca49@example.net', '417.424.1288', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(14, 'Rebeka Greenfelder DVM', 'dawn.oberbrunner@example.com', '+1 (480) 216-1519', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(15, 'Mrs. Natalia Corwin Sr.', 'alverta.lubowitz@example.org', '1-346-348-4502', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(16, 'Kiera Hackett', 'schinner.laurie@example.com', '(508) 486-1459', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(17, 'Xzavier Lebsack', 'raina19@example.org', '574-803-3977', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(18, 'Mr. Bradford Daniel Jr.', 'xlehner@example.net', '1-820-696-2188', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(19, 'Cornell Mayert', 'jreynolds@example.net', '1-928-593-9470', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(20, 'Tina Vandervort', 'alia.mueller@example.com', '1-954-994-9381', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(21, 'Oleta Roob', 'odare@example.com', '1-530-308-4343', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(22, 'Mr. Damion Ullrich', 'lloyd.schulist@example.org', '971-272-2184', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(23, 'Izaiah Cremin', 'zturner@example.com', '+1 (308) 962-6937', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(24, 'Josiane Koelpin DVM', 'ohalvorson@example.org', '540.863.4422', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(25, 'Hillard Kassulke', 'lambert.mitchell@example.net', '+1.269.418.0439', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(26, 'Kaylie Gleichner', 'brooks26@example.com', '+1-409-529-0294', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(27, 'Virgil Lesch', 'lcorwin@example.org', '1-864-851-1228', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(28, 'Maria Maggio', 'nbergstrom@example.com', '+1-520-855-4789', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(29, 'Lincoln McKenzie', 'jada43@example.org', '+1.520.657.2664', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(30, 'Dejon Auer', 'josephine.mueller@example.net', '1-512-251-7848', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(31, 'Brain Hyatt', 'uturner@example.net', '+1-480-209-9920', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(32, 'Miss Ottilie Mayert DDS', 'matt22@example.org', '+1.251.408.7740', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(33, 'Deron Jacobs', 'schuppe.malinda@example.net', '+1 (505) 431-5113', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(34, 'Penelope Turner PhD', 'alysha47@example.org', '+12537269218', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(35, 'Mckenzie Upton Sr.', 'jpfannerstill@example.com', '(260) 567-6224', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(36, 'Louie Lehner', 'buckridge.junius@example.com', '+1-979-964-7813', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(37, 'Earline Haag', 'briana50@example.com', '+1-320-331-1214', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(38, 'Ms. Kacie Zieme', 'austin77@example.net', '269-548-7550', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(39, 'Piper Braun', 'abbott.lavon@example.org', '1-678-303-7644', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(40, 'Rosalinda Jacobs', 'era.hessel@example.org', '952-497-0733', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(41, 'Josephine Mraz', 'uveum@example.com', '1-269-719-8331', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(42, 'Garnett Klocko', 'xdoyle@example.org', '+1 (662) 400-0328', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(43, 'Ms. Cayla Langosh IV', 'jamison.wintheiser@example.com', '1-678-259-7890', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(44, 'Moriah Padberg', 'aubrey58@example.org', '(678) 365-2222', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(45, 'Asha Murphy', 'adach@example.net', '541.209.6272', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(46, 'Dr. Holden Reilly II', 'issac22@example.net', '551.258.8416', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(47, 'Joesph Schumm', 'willms.kaci@example.org', '1-318-820-6301', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(48, 'Dudley Stamm', 'schmidt.kaden@example.com', '+13467210220', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(49, 'Edwin Mosciski', 'kiana15@example.net', '+1.430.939.8737', '2025-08-07 23:12:11', '2025-08-07 23:12:11'),
(50, 'Nikolas Blanda MD', 'nicola26@example.org', '+1.615.686.1291', '2025-08-07 23:12:11', '2025-08-07 23:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `validation`, `created_at`, `updated_at`) VALUES
(1, 'Size/Dimensions', 'text', 'required', '2025-08-07 22:54:29', '2025-08-07 22:54:29'),
(2, 'pin code', 'number', 'required', '2025-08-07 23:05:06', '2025-08-07 23:05:06'),
(3, 'Color', 'text', 'required', '2025-08-07 23:26:41', '2025-08-07 23:26:41'),
(4, 'type', 'text', 'required', '2025-08-08 00:48:33', '2025-08-08 00:48:33');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `customer_id`, `date`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 'INV1', 2, '2025-08-08', '0.00', '2025-08-07 23:42:05', '2025-08-07 23:42:05'),
(2, 'INV2', 3, '2025-08-21', '0.00', '2025-08-07 23:45:36', '2025-08-07 23:45:36'),
(3, 'INV3', 3, '2025-08-08', '45.28', '2025-08-07 23:48:10', '2025-08-07 23:48:10'),
(4, 'INV5', 7, '2025-08-08', '1000.00', '2025-08-08 00:26:59', '2025-08-08 00:26:59'),
(5, 'INV6', 4, '2025-08-11', '4000.00', '2025-08-08 00:52:02', '2025-08-08 00:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `quantity`, `rate`, `amount`, `created_at`, `updated_at`) VALUES
(1, 2, 13, 2, '82.10', '164.20', '2025-08-07 23:45:36', '2025-08-07 23:45:36'),
(2, 3, 16, 2, '22.64', '45.28', '2025-08-07 23:48:10', '2025-08-07 23:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_field_values`
--

CREATE TABLE `invoice_item_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_item_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_item_field_values`
--

INSERT INTO `invoice_item_field_values` (`id`, `invoice_item_id`, `custom_field_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'test', '2025-08-07 23:48:10', '2025-08-07 23:48:10'),
(2, 2, 2, '53232', '2025-08-07 23:48:10', '2025-08-07 23:48:10'),
(3, 2, 3, 'fd', '2025-08-07 23:48:10', '2025-08-07 23:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_08_030037_create_admins_table', 2),
(5, '2025_08_08_033529_create_products_table', 3),
(6, '2025_08_08_041041_create_custom_fields_table', 4),
(7, '2025_08_08_041150_create_product_field_values_table', 5),
(8, '2025_08_08_043549_create_customers_table', 6),
(9, '2025_08_08_045349_create_invoices_table', 7),
(10, '2025_08_08_045356_create_invoice_items_table', 7),
(11, '2025_08_08_045400_create_invoice_item_field_values_table', 7),
(12, '2025_08_08_055432_create_product_custom_field_values_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'P1', 'Product 1', 'Sample product description', '37.90', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(2, 'P2', 'Product 2', 'Sample product description', '52.39', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(3, 'P3', 'Product 3', 'Sample product description', '59.92', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(4, 'P4', 'Product 4', 'Sample product description', '12.85', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(5, 'P5', 'Product 5', 'Sample product description', '97.57', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(6, 'P6', 'Product 6', 'Sample product description', '1.38', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(7, 'P7', 'Product 7', 'Sample product description', '82.69', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(8, 'P8', 'Product 8', 'Sample product description', '35.56', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(9, 'P9', 'Product 9', 'Sample product description', '94.51', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(10, 'P10', 'Product 10', 'Sample product description', '85.47', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(11, 'P11', 'Product 11', 'Sample product description', '40.42', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(12, 'P12', 'Product 12', 'Sample product description', '17.76', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(13, 'P13', 'Product 13', 'Sample product description', '82.10', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(14, 'P14', 'Product 14', 'Sample product description', '24.06', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(15, 'P15', 'Product 15', 'Sample product description', '80.42', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(16, 'P16', 'Product 16', 'Sample product description', '22.64', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(17, 'P17', 'Product 17', 'Sample product description', '45.53', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(18, 'P18', 'Product 18', 'Sample product description', '78.46', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(19, 'P19', 'Product 19', 'Sample product description', '73.40', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(20, 'P20', 'Product 20', 'Sample product description', '48.28', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(21, 'P21', 'Product 21', 'Sample product description', '85.77', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(22, 'P22', 'Product 22', 'Sample product description', '7.77', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(23, 'P23', 'Product 23', 'Sample product description', '42.55', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(24, 'P24', 'Product 24', 'Sample product description', '35.76', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(25, 'P25', 'Product 25', 'Sample product description', '78.90', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(26, 'P26', 'Product 26', 'Sample product description', '97.73', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(27, 'P27', 'Product 27', 'Sample product description', '59.74', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(28, 'P28', 'Product 28', 'Sample product description', '9.70', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(29, 'P29', 'Product 29', 'Sample product description', '88.86', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(30, 'P30', 'Product 30', 'Sample product description', '59.33', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(31, 'P31', 'Product 31', 'Sample product description', '50.11', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(32, 'P32', 'Product 32', 'Sample product description', '20.83', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(33, 'P33', 'Product 33', 'Sample product description', '4.12', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(34, 'P34', 'Product 34', 'Sample product description', '88.65', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(35, 'P35', 'Product 35', 'Sample product description', '32.49', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(36, 'P36', 'Product 36', 'Sample product description', '32.86', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(37, 'P37', 'Product 37', 'Sample product description', '10.91', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(38, 'P38', 'Product 38', 'Sample product description', '35.06', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(39, 'P39', 'Product 39', 'Sample product description', '81.01', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(40, 'P40', 'Product 40', 'Sample product description', '91.84', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(41, 'P41', 'Product 41', 'Sample product description', '89.65', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(42, 'P42', 'Product 42', 'Sample product description', '56.01', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(43, 'P43', 'Product 43', 'Sample product description', '72.24', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(44, 'P44', 'Product 44', 'Sample product description', '32.69', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(45, 'P45', 'Product 45', 'Sample product description', '21.82', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(46, 'P46', 'Product 46', 'Sample product description', '19.89', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(47, 'P47', 'Product 47', 'Sample product description', '70.84', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(48, 'P48', 'Product 48', 'Sample product description', '48.90', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(49, 'P49', 'Product 49', 'Sample product description', '87.21', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(50, 'P50', 'Product 50', 'Sample product description', '16.94', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(51, 'P51', 'Product 51', 'Sample product description', '46.26', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(52, 'P52', 'Product 52', 'Sample product description', '15.24', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(53, 'P53', 'Product 53', 'Sample product description', '38.85', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(54, 'P54', 'Product 54', 'Sample product description', '16.04', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(55, 'P55', 'Product 55', 'Sample product description', '10.78', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(56, 'P56', 'Product 56', 'Sample product description', '49.10', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(57, 'P57', 'Product 57', 'Sample product description', '59.10', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(58, 'P58', 'Product 58', 'Sample product description', '96.92', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(59, 'P59', 'Product 59', 'Sample product description', '9.89', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(60, 'P60', 'Product 60', 'Sample product description', '74.24', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(61, 'P61', 'Product 61', 'Sample product description', '44.94', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(62, 'P62', 'Product 62', 'Sample product description', '86.97', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(63, 'P63', 'Product 63', 'Sample product description', '75.18', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(64, 'P64', 'Product 64', 'Sample product description', '68.44', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(65, 'P65', 'Product 65', 'Sample product description', '76.59', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(66, 'P66', 'Product 66', 'Sample product description', '95.36', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(67, 'P67', 'Product 67', 'Sample product description', '65.02', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(68, 'P68', 'Product 68', 'Sample product description', '21.58', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(69, 'P69', 'Product 69', 'Sample product description', '61.49', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(70, 'P70', 'Product 70', 'Sample product description', '34.00', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(71, 'P71', 'Product 71', 'Sample product description', '50.67', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(72, 'P72', 'Product 72', 'Sample product description', '48.41', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(73, 'P73', 'Product 73', 'Sample product description', '39.22', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(74, 'P74', 'Product 74', 'Sample product description', '10.17', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(75, 'P75', 'Product 75', 'Sample product description', '42.78', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(76, 'P76', 'Product 76', 'Sample product description', '2.56', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(77, 'P77', 'Product 77', 'Sample product description', '37.50', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(78, 'P78', 'Product 78', 'Sample product description', '17.39', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(79, 'P79', 'Product 79', 'Sample product description', '5.39', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(80, 'P80', 'Product 80', 'Sample product description', '91.16', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(81, 'P81', 'Product 81', 'Sample product description', '38.17', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(82, 'P82', 'Product 82', 'Sample product description', '80.30', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(83, 'P83', 'Product 83', 'Sample product description', '85.16', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(84, 'P84', 'Product 84', 'Sample product description', '2.00', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(85, 'P85', 'Product 85', 'Sample product description', '90.55', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(86, 'P86', 'Product 86', 'Sample product description', '79.92', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(87, 'P87', 'Product 87', 'Sample product description', '35.85', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(88, 'P88', 'Product 88', 'Sample product description', '28.72', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(89, 'P89', 'Product 89', 'Sample product description', '96.27', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(90, 'P90', 'Product 90', 'Sample product description', '6.81', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(91, 'P91', 'Product 91', 'Sample product description', '81.58', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(92, 'P92', 'Product 92', 'Sample product description', '67.66', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(93, 'P93', 'Product 93', 'Sample product description', '14.58', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(94, 'P94', 'Product 94', 'Sample product description', '74.86', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(95, 'P95', 'Product 95', 'Sample product description', '67.85', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(96, 'P96', 'Product 96', 'Sample product description', '56.72', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(97, 'P97', 'Product 97', 'Sample product description', '95.63', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(98, 'P98', 'Product 98', 'Sample product description', '34.97', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(99, 'P99', 'Product 99', 'Sample product description', '62.46', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(100, 'P100', 'Product 100', 'Sample product description', '29.47', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(101, 'P101', 'Product 101', 'Sample product description', '36.95', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(102, 'P102', 'Product 102', 'Sample product description', '92.86', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(103, 'P103', 'Product 103', 'Sample product description', '53.17', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(104, 'P104', 'Product 104', 'Sample product description', '43.12', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(105, 'P105', 'Product 105', 'Sample product description', '21.08', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(106, 'P106', 'Product 106', 'Sample product description', '5.09', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(108, 'P108', 'Product 108', 'Sample product description', '81.53', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(109, 'P109', 'Product 109', 'Sample product description', '93.82', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(110, 'P110', 'Product 110', 'Sample product description', '54.37', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(111, 'P111', 'Product 111', 'Sample product description', '1.36', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(112, 'P112', 'Product 112', 'Sample product description', '2.90', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(113, 'P113', 'Product 113', 'Sample product description', '98.52', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(114, 'P114', 'Product 114', 'Sample product description', '12.85', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(115, 'P115', 'Product 115', 'Sample product description', '55.78', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(116, 'P116', 'Product 116', 'Sample product description', '86.19', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(117, 'P117', 'Product 117', 'Sample product description', '3.16', '2025-08-07 22:17:08', '2025-08-07 22:17:08'),
(118, 'P118', 'Product 118', 'Sample product description', '24.43', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(119, 'P119', 'Product 119', 'Sample product description', '15.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(120, 'P120', 'Product 120', 'Sample product description', '35.36', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(121, 'P121', 'Product 121', 'Sample product description', '90.65', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(122, 'P122', 'Product 122', 'Sample product description', '33.55', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(123, 'P123', 'Product 123', 'Sample product description', '63.08', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(124, 'P124', 'Product 124', 'Sample product description', '29.11', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(125, 'P125', 'Product 125', 'Sample product description', '67.99', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(126, 'P126', 'Product 126', 'Sample product description', '31.36', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(127, 'P127', 'Product 127', 'Sample product description', '83.56', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(128, 'P128', 'Product 128', 'Sample product description', '84.41', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(129, 'P129', 'Product 129', 'Sample product description', '3.57', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(130, 'P130', 'Product 130', 'Sample product description', '42.08', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(131, 'P131', 'Product 131', 'Sample product description', '89.00', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(132, 'P132', 'Product 132', 'Sample product description', '69.50', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(133, 'P133', 'Product 133', 'Sample product description', '40.20', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(134, 'P134', 'Product 134', 'Sample product description', '13.01', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(135, 'P135', 'Product 135', 'Sample product description', '85.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(136, 'P136', 'Product 136', 'Sample product description', '90.31', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(137, 'P137', 'Product 137', 'Sample product description', '47.15', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(138, 'P138', 'Product 138', 'Sample product description', '66.48', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(139, 'P139', 'Product 139', 'Sample product description', '35.90', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(140, 'P140', 'Product 140', 'Sample product description', '66.76', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(141, 'P141', 'Product 141', 'Sample product description', '78.12', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(142, 'P142', 'Product 142', 'Sample product description', '55.09', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(143, 'P143', 'Product 143', 'Sample product description', '43.45', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(144, 'P144', 'Product 144', 'Sample product description', '72.57', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(145, 'P145', 'Product 145', 'Sample product description', '62.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(146, 'P146', 'Product 146', 'Sample product description', '39.24', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(147, 'P147', 'Product 147', 'Sample product description', '41.04', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(148, 'P148', 'Product 148', 'Sample product description', '16.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(149, 'P149', 'Product 149', 'Sample product description', '86.37', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(150, 'P150', 'Product 150', 'Sample product description', '81.41', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(151, 'P151', 'Product 151', 'Sample product description', '95.59', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(152, 'P152', 'Product 152', 'Sample product description', '18.00', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(153, 'P153', 'Product 153', 'Sample product description', '98.21', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(154, 'P154', 'Product 154', 'Sample product description', '51.79', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(155, 'P155', 'Product 155', 'Sample product description', '45.20', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(156, 'P156', 'Product 156', 'Sample product description', '81.64', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(157, 'P157', 'Product 157', 'Sample product description', '93.51', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(158, 'P158', 'Product 158', 'Sample product description', '16.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(159, 'P159', 'Product 159', 'Sample product description', '1.84', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(160, 'P160', 'Product 160', 'Sample product description', '18.77', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(161, 'P161', 'Product 161', 'Sample product description', '16.94', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(162, 'P162', 'Product 162', 'Sample product description', '2.46', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(163, 'P163', 'Product 163', 'Sample product description', '64.19', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(164, 'P164', 'Product 164', 'Sample product description', '25.68', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(165, 'P165', 'Product 165', 'Sample product description', '69.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(166, 'P166', 'Product 166', 'Sample product description', '57.08', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(167, 'P167', 'Product 167', 'Sample product description', '55.26', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(168, 'P168', 'Product 168', 'Sample product description', '22.33', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(169, 'P169', 'Product 169', 'Sample product description', '48.71', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(170, 'P170', 'Product 170', 'Sample product description', '40.48', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(171, 'P171', 'Product 171', 'Sample product description', '57.35', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(172, 'P172', 'Product 172', 'Sample product description', '74.79', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(173, 'P173', 'Product 173', 'Sample product description', '22.24', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(174, 'P174', 'Product 174', 'Sample product description', '90.14', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(175, 'P175', 'Product 175', 'Sample product description', '41.62', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(176, 'P176', 'Product 176', 'Sample product description', '65.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(177, 'P177', 'Product 177', 'Sample product description', '21.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(178, 'P178', 'Product 178', 'Sample product description', '88.77', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(179, 'P179', 'Product 179', 'Sample product description', '12.51', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(180, 'P180', 'Product 180', 'Sample product description', '51.08', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(181, 'P181', 'Product 181', 'Sample product description', '72.67', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(182, 'P182', 'Product 182', 'Sample product description', '2.00', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(183, 'P183', 'Product 183', 'Sample product description', '83.14', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(184, 'P184', 'Product 184', 'Sample product description', '99.70', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(185, 'P185', 'Product 185', 'Sample product description', '22.67', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(186, 'P186', 'Product 186', 'Sample product description', '97.00', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(187, 'P187', 'Product 187', 'Sample product description', '19.07', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(188, 'P188', 'Product 188', 'Sample product description', '77.21', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(189, 'P189', 'Product 189', 'Sample product description', '51.47', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(190, 'P190', 'Product 190', 'Sample product description', '74.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(191, 'P191', 'Product 191', 'Sample product description', '83.80', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(192, 'P192', 'Product 192', 'Sample product description', '87.83', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(193, 'P193', 'Product 193', 'Sample product description', '58.90', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(194, 'P194', 'Product 194', 'Sample product description', '96.84', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(195, 'P195', 'Product 195', 'Sample product description', '86.78', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(196, 'P196', 'Product 196', 'Sample product description', '50.67', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(197, 'P197', 'Product 197', 'Sample product description', '59.46', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(198, 'P198', 'Product 198', 'Sample product description', '76.56', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(199, 'P199', 'Product 199', 'Sample product description', '90.01', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(200, 'P200', 'Product 200', 'Sample product description', '55.48', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(201, 'P201', 'Product 201', 'Sample product description', '2.71', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(202, 'P202', 'Product 202', 'Sample product description', '20.37', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(203, 'P203', 'Product 203', 'Sample product description', '26.67', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(204, 'P204', 'Product 204', 'Sample product description', '99.87', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(205, 'P205', 'Product 205', 'Sample product description', '27.19', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(206, 'P206', 'Product 206', 'Sample product description', '56.81', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(207, 'P207', 'Product 207', 'Sample product description', '22.85', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(208, 'P208', 'Product 208', 'Sample product description', '17.61', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(209, 'P209', 'Product 209', 'Sample product description', '75.87', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(210, 'P210', 'Product 210', 'Sample product description', '62.25', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(211, 'P211', 'Product 211', 'Sample product description', '91.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(212, 'P212', 'Product 212', 'Sample product description', '53.31', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(213, 'P213', 'Product 213', 'Sample product description', '33.10', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(214, 'P214', 'Product 214', 'Sample product description', '98.46', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(215, 'P215', 'Product 215', 'Sample product description', '63.93', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(216, 'P216', 'Product 216', 'Sample product description', '49.30', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(217, 'P217', 'Product 217', 'Sample product description', '22.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(218, 'P218', 'Product 218', 'Sample product description', '83.18', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(219, 'P219', 'Product 219', 'Sample product description', '62.29', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(220, 'P220', 'Product 220', 'Sample product description', '9.03', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(221, 'P221', 'Product 221', 'Sample product description', '16.84', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(222, 'P222', 'Product 222', 'Sample product description', '92.97', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(223, 'P223', 'Product 223', 'Sample product description', '72.13', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(224, 'P224', 'Product 224', 'Sample product description', '25.85', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(225, 'P225', 'Product 225', 'Sample product description', '92.80', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(226, 'P226', 'Product 226', 'Sample product description', '99.02', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(227, 'P227', 'Product 227', 'Sample product description', '93.59', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(228, 'P228', 'Product 228', 'Sample product description', '1.77', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(229, 'P229', 'Product 229', 'Sample product description', '32.15', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(230, 'P230', 'Product 230', 'Sample product description', '67.25', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(231, 'P231', 'Product 231', 'Sample product description', '20.39', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(232, 'P232', 'Product 232', 'Sample product description', '52.41', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(233, 'P233', 'Product 233', 'Sample product description', '91.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(234, 'P234', 'Product 234', 'Sample product description', '9.35', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(235, 'P235', 'Product 235', 'Sample product description', '83.37', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(236, 'P236', 'Product 236', 'Sample product description', '87.85', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(237, 'P237', 'Product 237', 'Sample product description', '52.02', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(238, 'P238', 'Product 238', 'Sample product description', '12.46', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(239, 'P239', 'Product 239', 'Sample product description', '93.65', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(240, 'P240', 'Product 240', 'Sample product description', '89.94', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(241, 'P241', 'Product 241', 'Sample product description', '77.84', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(242, 'P242', 'Product 242', 'Sample product description', '66.94', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(243, 'P243', 'Product 243', 'Sample product description', '76.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(244, 'P244', 'Product 244', 'Sample product description', '1.39', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(245, 'P245', 'Product 245', 'Sample product description', '25.43', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(246, 'P246', 'Product 246', 'Sample product description', '9.18', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(247, 'P247', 'Product 247', 'Sample product description', '57.63', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(248, 'P248', 'Product 248', 'Sample product description', '47.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(249, 'P249', 'Product 249', 'Sample product description', '50.03', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(250, 'P250', 'Product 250', 'Sample product description', '44.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(251, 'P251', 'Product 251', 'Sample product description', '64.26', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(252, 'P252', 'Product 252', 'Sample product description', '44.71', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(253, 'P253', 'Product 253', 'Sample product description', '13.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(254, 'P254', 'Product 254', 'Sample product description', '4.01', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(255, 'P255', 'Product 255', 'Sample product description', '77.15', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(256, 'P256', 'Product 256', 'Sample product description', '11.55', '2025-08-07 22:17:09', '2025-08-07 22:34:37'),
(257, 'P257', 'Product 257', 'Sample product description', '60.45', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(258, 'P258', 'Product 258', 'Sample product description', '21.03', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(259, 'P259', 'Product 259', 'Sample product description', '38.96', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(260, 'P260', 'Product 260', 'Sample product description', '49.72', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(261, 'P261', 'Product 261', 'Sample product description', '33.34', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(262, 'P262', 'Product 262', 'Sample product description', '51.22', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(263, 'P263', 'Product 263', 'Sample product description', '35.57', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(264, 'P264', 'Product 264', 'Sample product description', '48.80', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(265, 'P265', 'Product 265', 'Sample product description', '72.82', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(266, 'P266', 'Product 266', 'Sample product description', '51.28', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(267, 'P267', 'Product 267', 'Sample product description', '17.43', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(268, 'P268', 'Product 268', 'Sample product description', '61.59', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(269, 'P269', 'Product 269', 'Sample product description', '6.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(270, 'P270', 'Product 270', 'Sample product description', '54.50', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(271, 'P271', 'Product 271', 'Sample product description', '61.50', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(272, 'P272', 'Product 272', 'Sample product description', '69.63', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(273, 'P273', 'Product 273', 'Sample product description', '46.57', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(274, 'P274', 'Product 274', 'Sample product description', '2.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(275, 'P275', 'Product 275', 'Sample product description', '94.28', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(276, 'P276', 'Product 276', 'Sample product description', '8.33', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(277, 'P277', 'Product 277', 'Sample product description', '78.52', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(278, 'P278', 'Product 278', 'Sample product description', '37.65', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(279, 'P279', 'Product 279', 'Sample product description', '16.51', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(280, 'P280', 'Product 280', 'Sample product description', '13.95', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(281, 'P281', 'Product 281', 'Sample product description', '66.93', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(282, 'P282', 'Product 282', 'Sample product description', '22.33', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(283, 'P283', 'Product 283', 'Sample product description', '25.20', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(284, 'P284', 'Product 284', 'Sample product description', '4.33', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(285, 'P285', 'Product 285 285', 'Sample product description', '21.87', '2025-08-07 22:17:09', '2025-08-08 00:16:39'),
(286, 'P286', 'Product 286', 'Sample product description', '16.72', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(287, 'P287', 'Product 287', 'Sample product description', '96.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(288, 'P288', 'Product 288', 'Sample product description', '17.78', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(289, 'P289', 'Product 289', 'Sample product description', '29.40', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(290, 'P290', 'Product 290', 'Sample product description', '68.62', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(291, 'P291', 'Product 291', 'Sample product description', '9.45', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(292, 'P292', 'Product 292', 'Sample product description', '69.08', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(293, 'P293', 'Product 293', 'Sample product description', '28.23', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(294, 'P294', 'Product 294', 'Sample product description', '97.88', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(295, 'P295', 'Product 295', 'Sample product description', '37.33', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(296, 'P296', 'Product 296', 'Sample product description', '54.57', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(297, 'P297', 'Product 297', 'Sample product description', '88.85', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(298, 'P298', 'Product 298', 'Sample product description', '13.97', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(299, 'P299', 'Product 299', 'Sample product description', '74.01', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(300, 'P300', 'Product 300', 'Sample product description', '89.81', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(301, 'P301', 'Product 301', 'Sample product description', '77.71', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(302, 'P302', 'Product 302', 'Sample product description', '15.14', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(303, 'P303', 'Product 303', 'Sample product description', '98.71', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(304, 'P304', 'Product 304', 'Sample product description', '75.62', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(305, 'P305', 'Product 305', 'Sample product description', '2.34', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(306, 'P306', 'Product 306', 'Sample product description', '55.05', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(307, 'P307', 'Product 307', 'Sample product description', '75.28', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(308, 'P308', 'Product 308', 'Sample product description', '90.10', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(309, 'P309', 'Product 309', 'Sample product description', '36.10', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(310, 'P310', 'Product 310', 'Sample product description', '61.30', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(311, 'P311', 'Product 311', 'Sample product description', '85.58', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(312, 'P312', 'Product 312', 'Sample product description', '55.11', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(313, 'P313', 'Product 313', 'Sample product description', '10.30', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(314, 'P314', 'Product 314', 'Sample product description', '5.40', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(315, 'P315', 'Product 315', 'Sample product description', '44.78', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(316, 'P316', 'Product 316', 'Sample product description', '58.27', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(317, 'P317', 'Product 317', 'Sample product description', '89.99', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(318, 'P318', 'Product 318', 'Sample product description', '60.62', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(319, 'P319', 'Product 319', 'Sample product description', '79.15', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(320, 'P320', 'Product 320', 'Sample product description', '63.72', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(321, 'P321', 'Product 321', 'Sample product description', '90.65', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(322, 'P322', 'Product 322', 'Sample product description', '12.41', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(323, 'P323', 'Product 323', 'Sample product description', '64.76', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(324, 'P324', 'Product 324', 'Sample product description', '87.49', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(325, 'P325', 'Product 325', 'Sample product description', '9.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(326, 'P326', 'Product 326', 'Sample product description', '9.94', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(327, 'P327', 'Product 327', 'Sample product description', '73.47', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(328, 'P328', 'Product 328', 'Sample product description', '1.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(329, 'P329', 'Product 329', 'Sample product description', '65.83', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(330, 'P330', 'Product 330', 'Sample product description', '71.71', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(331, 'P331', 'Product 331', 'Sample product description', '84.05', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(332, 'P332', 'Product 332', 'Sample product description', '35.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(333, 'P333', 'Product 333', 'Sample product description', '15.63', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(334, 'P334', 'Product 334', 'Sample product description', '88.42', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(335, 'P335', 'Product 335', 'Sample product description', '88.54', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(336, 'P336', 'Product 336', 'Sample product description', '44.32', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(337, 'P337', 'Product 337', 'Sample product description', '50.73', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(338, 'P338', 'Product 338', 'Sample product description', '21.71', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(339, 'P339', 'Product 339', 'Sample product description', '32.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(340, 'P340', 'Product 340', 'Sample product description', '94.50', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(341, 'P341', 'Product 341', 'Sample product description', '2.31', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(342, 'P342', 'Product 342', 'Sample product description', '52.43', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(343, 'P343', 'Product 343', 'Sample product description', '13.39', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(344, 'P344', 'Product 344', 'Sample product description', '47.80', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(345, 'P345', 'Product 345', 'Sample product description', '37.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(346, 'P346', 'Product 346', 'Sample product description', '61.10', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(347, 'P347', 'Product 347', 'Sample product description', '56.57', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(348, 'P348', 'Product 348', 'Sample product description', '12.13', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(349, 'P349', 'Product 349', 'Sample product description', '48.82', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(350, 'P350', 'Product 350', 'Sample product description', '99.37', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(351, 'P351', 'Product 351', 'Sample product description', '21.36', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(352, 'P352', 'Product 352', 'Sample product description', '30.30', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(353, 'P353', 'Product 353', 'Sample product description', '3.08', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(354, 'P354', 'Product 354', 'Sample product description', '97.34', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(355, 'P355', 'Product 355', 'Sample product description', '72.81', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(356, 'P356', 'Product 356', 'Sample product description', '46.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(357, 'P357', 'Product 357', 'Sample product description', '5.56', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(358, 'P358', 'Product 358', 'Sample product description', '80.41', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(359, 'P359', 'Product 359', 'Sample product description', '36.19', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(360, 'P360', 'Product 360', 'Sample product description', '51.05', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(361, 'P361', 'Product 361', 'Sample product description', '52.50', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(362, 'P362', 'Product 362', 'Sample product description', '75.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(363, 'P363', 'Product 363', 'Sample product description', '79.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(364, 'P364', 'Product 364', 'Sample product description', '48.45', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(365, 'P365', 'Product 365', 'Sample product description', '95.59', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(366, 'P366', 'Product 366', 'Sample product description', '15.94', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(367, 'P367', 'Product 367', 'Sample product description', '85.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(368, 'P368', 'Product 368', 'Sample product description', '95.20', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(369, 'P369', 'Product 369', 'Sample product description', '71.43', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(370, 'P370', 'Product 370', 'Sample product description', '35.14', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(371, 'P371', 'Product 371', 'Sample product description', '82.77', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(372, 'P372', 'Product 372', 'Sample product description', '89.56', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(373, 'P373', 'Product 373', 'Sample product description', '42.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(374, 'P374', 'Product 374', 'Sample product description', '36.34', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(375, 'P375', 'Product 375', 'Sample product description', '97.08', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(376, 'P376', 'Product 376', 'Sample product description', '19.52', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(377, 'P377', 'Product 377', 'Sample product description', '67.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(378, 'P378', 'Product 378', 'Sample product description', '85.36', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(379, 'P379', 'Product 379', 'Sample product description', '22.47', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(380, 'P380', 'Product 380', 'Sample product description', '38.67', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(381, 'P381', 'Product 381', 'Sample product description', '85.93', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(382, 'P382', 'Product 382', 'Sample product description', '5.44', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(383, 'P383', 'Product 383', 'Sample product description', '56.83', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(384, 'P384', 'Product 384', 'Sample product description', '1.24', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(385, 'P385', 'Product 385', 'Sample product description', '77.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(386, 'P386', 'Product 386', 'Sample product description', '56.14', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(387, 'P387', 'Product 387', 'Sample product description', '6.73', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(388, 'P388', 'Product 388', 'Sample product description', '82.73', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(389, 'P389', 'Product 389', 'Sample product description', '49.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(390, 'P390', 'Product 390', 'Sample product description', '91.28', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(391, 'P391', 'Product 391', 'Sample product description', '72.84', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(392, 'P392', 'Product 392', 'Sample product description', '72.19', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(393, 'P393', 'Product 393', 'Sample product description', '93.62', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(394, 'P394', 'Product 394', 'Sample product description', '18.78', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(395, 'P395', 'Product 395', 'Sample product description', '95.45', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(396, 'P396', 'Product 396', 'Sample product description', '34.07', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(397, 'P397', 'Product 397', 'Sample product description', '32.87', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(398, 'P398', 'Product 398', 'Sample product description', '69.83', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(399, 'P399', 'Product 399', 'Sample product description', '70.20', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(400, 'P400', 'Product 400', 'Sample product description', '42.83', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(401, 'P401', 'Product 401', 'Sample product description', '24.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(402, 'P402', 'Product 402', 'Sample product description', '83.65', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(403, 'P403', 'Product 403', 'Sample product description', '84.22', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(404, 'P404', 'Product 404', 'Sample product description', '22.70', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(405, 'P405', 'Product 405', 'Sample product description', '40.04', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(406, 'P406', 'Product 406', 'Sample product description', '85.50', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(407, 'P407', 'Product 407', 'Sample product description', '51.87', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(408, 'P408', 'Product 408', 'Sample product description', '52.77', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(409, 'P409', 'Product 409', 'Sample product description', '74.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(410, 'P410', 'Product 410', 'Sample product description', '78.37', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(411, 'P411', 'Product 411', 'Sample product description', '20.89', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(412, 'P412', 'Product 412', 'Sample product description', '71.66', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(413, 'P413', 'Product 413', 'Sample product description', '10.95', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(414, 'P414', 'Product 414', 'Sample product description', '21.06', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(415, 'P415', 'Product 415', 'Sample product description', '22.65', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(416, 'P416', 'Product 416', 'Sample product description', '31.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(417, 'P417', 'Product 417', 'Sample product description', '20.05', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(418, 'P418', 'Product 418', 'Sample product description', '40.06', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(419, 'P419', 'Product 419', 'Sample product description', '28.49', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(420, 'P420', 'Product 420', 'Sample product description', '41.61', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(421, 'P421', 'Product 421', 'Sample product description', '73.96', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(422, 'P422', 'Product 422', 'Sample product description', '63.23', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(423, 'P423', 'Product 423', 'Sample product description', '34.80', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(424, 'P424', 'Product 424', 'Sample product description', '82.26', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(425, 'P425', 'Product 425', 'Sample product description', '67.93', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(426, 'P426', 'Product 426', 'Sample product description', '22.05', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(427, 'P427', 'Product 427', 'Sample product description', '61.25', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(428, 'P428', 'Product 428', 'Sample product description', '95.90', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(429, 'P429', 'Product 429', 'Sample product description', '54.19', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(430, 'P430', 'Product 430', 'Sample product description', '63.30', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(431, 'P431', 'Product 431', 'Sample product description', '84.79', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(432, 'P432', 'Product 432', 'Sample product description', '46.33', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(433, 'P433', 'Product 433', 'Sample product description', '42.80', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(434, 'P434', 'Product 434', 'Sample product description', '16.03', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(435, 'P435', 'Product 435', 'Sample product description', '68.30', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(436, 'P436', 'Product 436', 'Sample product description', '63.83', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(437, 'P437', 'Product 437', 'Sample product description', '50.72', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(438, 'P438', 'Product 438', 'Sample product description', '97.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(439, 'P439', 'Product 439', 'Sample product description', '79.37', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(440, 'P440', 'Product 440', 'Sample product description', '58.46', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(441, 'P441', 'Product 441', 'Sample product description', '68.05', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(442, 'P442', 'Product 442', 'Sample product description', '16.29', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(443, 'P443', 'Product 443', 'Sample product description', '98.46', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(444, 'P444', 'Product 444', 'Sample product description', '39.45', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(445, 'P445', 'Product 445', 'Sample product description', '86.43', '2025-08-07 22:17:09', '2025-08-07 22:17:09');
INSERT INTO `products` (`id`, `product_code`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(446, 'P446', 'Product 446', 'Sample product description', '65.20', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(447, 'P447', 'Product 447', 'Sample product description', '2.83', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(448, 'P448', 'Product 448', 'Sample product description', '40.70', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(449, 'P449', 'Product 449', 'Sample product description', '99.52', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(450, 'P450', 'Product 450', 'Sample product description', '66.64', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(451, 'P451', 'Product 451', 'Sample product description', '60.56', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(452, 'P452', 'Product 452', 'Sample product description', '12.95', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(453, 'P453', 'Product 453', 'Sample product description', '94.06', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(454, 'P454', 'Product 454', 'Sample product description', '55.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(455, 'P455', 'Product 455', 'Sample product description', '97.64', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(456, 'P456', 'Product 456', 'Sample product description', '84.37', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(457, 'P457', 'Product 457', 'Sample product description', '40.32', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(458, 'P458', 'Product 458', 'Sample product description', '75.60', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(459, 'P459', 'Product 459', 'Sample product description', '55.45', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(460, 'P460', 'Product 460', 'Sample product description', '78.67', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(461, 'P461', 'Product 461', 'Sample product description', '5.62', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(462, 'P462', 'Product 462', 'Sample product description', '2.06', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(463, 'P463', 'Product 463', 'Sample product description', '16.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(464, 'P464', 'Product 464', 'Sample product description', '55.58', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(465, 'P465', 'Product 465', 'Sample product description', '85.72', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(466, 'P466', 'Product 466', 'Sample product description', '99.10', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(467, 'P467', 'Product 467', 'Sample product description', '31.15', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(468, 'P468', 'Product 468', 'Sample product description', '93.24', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(469, 'P469', 'Product 469', 'Sample product description', '55.53', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(470, 'P470', 'Product 470', 'Sample product description', '39.70', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(471, 'P471', 'Product 471', 'Sample product description', '62.54', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(472, 'P472', 'Product 472', 'Sample product description', '75.01', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(473, 'P473', 'Product 473', 'Sample product description', '51.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(474, 'P474', 'Product 474', 'Sample product description', '24.65', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(475, 'P475', 'Product 475', 'Sample product description', '76.92', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(476, 'P476', 'Product 476', 'Sample product description', '94.72', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(477, 'P477', 'Product 477', 'Sample product description', '77.17', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(478, 'P478', 'Product 478', 'Sample product description', '4.27', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(479, 'P479', 'Product 479', 'Sample product description', '43.41', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(480, 'P480', 'Product 480', 'Sample product description', '63.48', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(481, 'P481', 'Product 481', 'Sample product description', '9.78', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(482, 'P482', 'Product 482', 'Sample product description', '24.82', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(483, 'P483', 'Product 483', 'Sample product description', '18.85', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(484, 'P484', 'Product 484', 'Sample product description', '13.86', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(485, 'P485', 'Product 485', 'Sample product description', '94.09', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(486, 'P486', 'Product 486', 'Sample product description', '9.41', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(487, 'P487', 'Product 487', 'Sample product description', '85.91', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(488, 'P488', 'Product 488', 'Sample product description', '58.81', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(489, 'P489', 'Product 489', 'Sample product description', '92.14', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(490, 'P490', 'Product 490', 'Sample product description', '80.44', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(491, 'P491', 'Product 491', 'Sample product description', '73.56', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(492, 'P492', 'Product 492', 'Sample product description', '93.57', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(493, 'P493', 'Product 493', 'Sample product description', '72.18', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(494, 'P494', 'Product 494', 'Sample product description', '6.16', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(495, 'P495', 'Product 495', 'Sample product description', '54.95', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(496, 'P496', 'Product 496', 'Sample product description', '86.46', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(497, 'P497', 'Product 497', 'Sample product description', '65.05', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(498, 'P498', 'Product 498', 'Sample product description', '64.02', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(499, 'P499', 'Product 499', 'Sample product description', '89.74', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(500, 'P500', 'Product 500', 'Sample product description', '7.96', '2025-08-07 22:17:09', '2025-08-07 22:17:09'),
(501, 'P501', 'My Product', 'Test desc', '10.00', '2025-08-07 22:35:24', '2025-08-07 22:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_custom_field_values`
--

CREATE TABLE `product_custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_field_values`
--

CREATE TABLE `product_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8pWjZ2nHrNuTijaQEU0HydNKbTtblj8mD6t4GNtt', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQW1LcmVmRmlRdHNCMWp6bHNYN1dYSmp5UUEyOGhCZzIyOFBNSllrSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnZvaWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO30=', 1754634196);

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
(1, 'Test User', 'test@example.com', '2025-08-07 22:14:05', '$2y$12$xc2CAhf3uPqx7IQR/Y07rOMSNsbfoQFnILLfdPo9cX/B0WBZo9BAa', 'CMoI1E57xW', '2025-08-07 22:14:05', '2025-08-07 22:14:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `client_users`
--
ALTER TABLE `client_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_no_unique` (`invoice_no`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `invoice_item_field_values`
--
ALTER TABLE `invoice_item_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_item_field_values_invoice_item_id_foreign` (`invoice_item_id`),
  ADD KEY `invoice_item_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`);

--
-- Indexes for table `product_custom_field_values`
--
ALTER TABLE `product_custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_custom_field_values_product_id_foreign` (`product_id`),
  ADD KEY `product_custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `product_field_values`
--
ALTER TABLE `product_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_field_values_product_id_foreign` (`product_id`),
  ADD KEY `product_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_users`
--
ALTER TABLE `client_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_item_field_values`
--
ALTER TABLE `invoice_item_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `product_custom_field_values`
--
ALTER TABLE `product_custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_field_values`
--
ALTER TABLE `product_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_item_field_values`
--
ALTER TABLE `invoice_item_field_values`
  ADD CONSTRAINT `invoice_item_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_item_field_values_invoice_item_id_foreign` FOREIGN KEY (`invoice_item_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_custom_field_values`
--
ALTER TABLE `product_custom_field_values`
  ADD CONSTRAINT `product_custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_custom_field_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_field_values`
--
ALTER TABLE `product_field_values`
  ADD CONSTRAINT `product_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_field_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
