-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 24, 2021 at 10:01 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wowy`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ImFrOoHWuiTLUf03hrhakPXvKFji0mC7', 1, '2021-08-24 08:00:27', '2021-08-24 08:00:27', '2021-08-24 08:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Smart Offer', '2026-08-24 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/1.png', '/products', 0, 1, 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(2, 'Sale off', '2026-08-24 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/2.png', '/products', 0, 2, 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(3, 'New Arrivals', '2026-08-24 00:00:00', 'not_set', 'ILSDKVYFGXPH', 'promotion/3.png', '/products', 0, 3, 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(4, 'Gaming Area', '2026-08-24 00:00:00', 'not_set', 'ILSDKVYFGXPJ', 'promotion/4.png', '/products', 0, 4, 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(5, 'Smart Offer', '2026-08-24 00:00:00', 'not_set', 'IZ6WU8KUALYE', 'promotion/5.png', '/products', 0, 5, 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(6, 'Repair Services', '2026-08-24 00:00:00', 'banner-big', 'IZ6WU8KUALYF', 'promotion/6.png', '/products', 0, 6, 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'In facilis saepe quo asperiores doloremque fuga. Est quas nesciunt libero omnis tempore tempora. Optio voluptate deleniti voluptas. Ab eligendi aspernatur cum vel.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(2, 'Fashion', 0, 'Odio explicabo praesentium corrupti odio aut nulla explicabo. Alias aperiam aut rerum tenetur aut et repudiandae. Sunt quo et fugit doloribus aut tenetur. Porro rerum doloremque dolores est qui et.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(3, 'Electronic', 0, 'Voluptatem enim qui excepturi qui est ut rerum. Et adipisci eius dolor assumenda quis. Hic eum est optio consectetur omnis expedita. Perspiciatis omnis exercitationem sequi accusamus quod porro ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(4, 'Commercial', 0, 'Quae voluptatem distinctio eius ad. Cumque ut optio aliquam qui eos. Aut earum nesciunt blanditiis. Amet ea et quisquam dolorem aliquid.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(5, 'Thương mại điện tử', 0, 'Ex aliquam magni voluptatem aspernatur voluptatum voluptatum quibusdam. Corrupti qui neque mollitia quia. Magnam minima et nam at expedita. Nam eius est dolorem tempora sunt.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(6, 'Fashion', 0, 'Suscipit deserunt qui sit sunt ut nam. Sunt fugit enim repellendus porro hic. Reiciendis id et eius modi nulla. Repudiandae perspiciatis porro sunt commodi facilis.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(7, 'Electronic', 0, 'Quis nihil delectus et voluptas. Sit sit omnis quisquam laborum nihil. Consequuntur nesciunt sit accusantium ad fugiat debitis odio.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(8, 'Thương mại', 0, 'Dignissimos ut et error iusto tempora. Unde consequatur expedita ullam magni aspernatur iusto enim quo. Consequatur tenetur qui minus odit iure modi dolor. Deserunt ut repellat quo nostrum corrupti.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-08-24 08:00:26', '2021-08-24 08:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Perxsion', NULL, NULL, 'brands/1.png', 'published', 0, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(2, 'Hiching', NULL, NULL, 'brands/2.png', 'published', 1, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(3, 'Kepslo', NULL, NULL, 'brands/3.png', 'published', 2, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(4, 'Groneba', NULL, NULL, 'brands/4.png', 'published', 3, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(5, 'Babian', NULL, NULL, 'brands/5.png', 'published', 4, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(6, 'Valorant', NULL, NULL, 'brands/6.png', 'published', 5, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(7, 'Pure', NULL, NULL, 'brands/7.png', 'published', 6, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands_translations`
--

INSERT INTO `ec_brands_translations` (`lang_code`, `ec_brands_id`, `name`, `description`) VALUES
('vi', 1, 'Perxsion', NULL),
('vi', 2, 'Hiching', NULL),
('vi', 3, 'Kepslo', NULL),
('vi', 4, 'Groneba', NULL),
('vi', 5, 'Babian', NULL),
('vi', 6, 'Valorant', NULL),
('vi', 7, 'Pure', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED DEFAULT '0',
  `order` int(10) UNSIGNED DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(3, 'VND', '₫', 0, 0, 2, 0, 23203, '2021-08-24 07:58:09', '2021-08-24 07:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '$2y$10$Cop7kY7TuTeNsc2ZTLoJVO6OTZy7cpC.q9tu7DfehtfiLH4/Fhgsq', 'customers/1.jpg', NULL, '+19850096400', NULL, '2021-08-24 07:59:30', '2021-08-24 07:59:30', '2021-08-24 14:59:30', NULL),
(2, 'Marlon Prosacco', 'ohara.stephania@example.net', '$2y$10$PVQETofeD9bLgofzlLwgTul4Y8xd2vnGicBrWhWwwdZ6IUB2VUMFi', 'customers/1.jpg', NULL, '+17024032875', NULL, '2021-08-24 07:59:30', '2021-08-24 07:59:31', '2021-08-24 14:59:31', NULL),
(3, 'Caleb Miller', 'deangelo.kuphal@example.com', '$2y$10$/coIss6seZd.r6gAnLlw7O40HwUWt1gmrGT1bJ/Wq1m6B4zFXnd2O', 'customers/2.jpg', NULL, '+19548192017', NULL, '2021-08-24 07:59:31', '2021-08-24 07:59:31', '2021-08-24 14:59:31', NULL),
(4, 'Dr. Emmett Schroeder', 'qhilpert@example.com', '$2y$10$0TUKpLn4W6nrZktgawB01uVZQvdpyMpBFhiy/g6St3wT89xNYCZU6', 'customers/3.jpg', NULL, '+17342008884', NULL, '2021-08-24 07:59:31', '2021-08-24 07:59:31', '2021-08-24 14:59:31', NULL),
(5, 'Dr. Dominic Corkery Jr.', 'vhintz@example.org', '$2y$10$JltwWkEpGe7gSDNqiLt.nOCIU11TKms.iDLscG43LAWtJThCLahMS', 'customers/4.jpg', NULL, '+18020070877', NULL, '2021-08-24 07:59:32', '2021-08-24 07:59:32', '2021-08-24 14:59:32', NULL),
(6, 'Priscilla Blick', 'kade.hettinger@example.com', '$2y$10$8mW50.NmZUzdytTz5KrqcuGg6o3B7KMS0YrXrj8tkcvGt7FKspwha', 'customers/5.jpg', NULL, '+12481135337', NULL, '2021-08-24 07:59:32', '2021-08-24 07:59:32', '2021-08-24 14:59:32', NULL),
(7, 'Rosalinda Wilderman', 'jayce.bauch@example.org', '$2y$10$uuVf9JjJ0oF3Byq48hbg.ufj9qCebBNR0gOnGiC6wYfLkfyvqEYF.', 'customers/6.jpg', NULL, '+17023126209', NULL, '2021-08-24 07:59:32', '2021-08-24 07:59:32', '2021-08-24 14:59:32', NULL),
(8, 'Dr. Tyrell Mohr', 'wiegand.rosamond@example.org', '$2y$10$4p7zC/qZYqa4lXPgj8lIpObll43rmNOI6zaycPhvb8wqQKntUKsoy', 'customers/7.jpg', NULL, '+12817827991', NULL, '2021-08-24 07:59:33', '2021-08-24 07:59:33', '2021-08-24 14:59:33', NULL),
(9, 'Chadrick Kshlerin', 'aliya.schmidt@example.net', '$2y$10$7p3GPNyPxuJcuek8Pj6T5eeMffk.ybPTVyJsAikDtAZI8TS72xmHW', 'customers/8.jpg', NULL, '+16509410015', NULL, '2021-08-24 07:59:33', '2021-08-24 07:59:33', '2021-08-24 14:59:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '+13417565197', 'ER', 'Washington', 'West Clemens', '178 Haag Causeway Apt. 636', 1, 1, '2021-08-24 07:59:30', '2021-08-24 07:59:30', '59364-1518'),
(2, 'John Smith', 'john.smith@botble.com', '+16801562202', 'GF', 'Maine', 'New Lela', '94457 Nienow Center', 1, 0, '2021-08-24 07:59:30', '2021-08-24 07:59:30', '44642'),
(3, 'Marlon Prosacco', 'ohara.stephania@example.net', '+17650443031', 'BM', 'Rhode Island', 'North Frederikland', '85119 Wisozk Ramp Apt. 319', 2, 1, '2021-08-24 07:59:31', '2021-08-24 07:59:31', '90255'),
(4, 'Caleb Miller', 'deangelo.kuphal@example.com', '+15184376406', 'TV', 'Oklahoma', 'Port Anjali', '328 Hickle Meadow', 3, 1, '2021-08-24 07:59:31', '2021-08-24 07:59:31', '37349'),
(5, 'Dr. Emmett Schroeder', 'qhilpert@example.com', '+16606935375', 'DM', 'Washington', 'Westville', '345 Javon Port Suite 626', 4, 1, '2021-08-24 07:59:31', '2021-08-24 07:59:31', '60392'),
(6, 'Dr. Dominic Corkery Jr.', 'vhintz@example.org', '+15805494223', 'VG', 'Illinois', 'Lake Matteofurt', '4833 Turcotte Course', 5, 1, '2021-08-24 07:59:32', '2021-08-24 07:59:32', '41541-7514'),
(7, 'Priscilla Blick', 'kade.hettinger@example.com', '+16028465973', 'AU', 'North Dakota', 'Sengerstad', '9347 Jordyn Burg Apt. 057', 6, 1, '2021-08-24 07:59:32', '2021-08-24 07:59:32', '91800-7244'),
(8, 'Rosalinda Wilderman', 'jayce.bauch@example.org', '+17206542749', 'WS', 'Indiana', 'South Uriahstad', '603 Augusta Ferry', 7, 1, '2021-08-24 07:59:32', '2021-08-24 07:59:32', '06888'),
(9, 'Dr. Tyrell Mohr', 'wiegand.rosamond@example.org', '+14697160365', 'JO', 'North Carolina', 'Fayberg', '94564 O\'Conner Coves Apt. 758', 8, 1, '2021-08-24 07:59:33', '2021-08-24 07:59:33', '88259-8814'),
(10, 'Chadrick Kshlerin', 'aliya.schmidt@example.net', '+15643560571', 'ST', 'Virginia', 'Kingstad', '507 Lebsack Lake Suite 345', 9, 1, '2021-08-24 07:59:33', '2021-08-24 07:59:33', '89084-2393');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deal of the Day.', '2021-09-24 00:00:00', 'published', '2021-08-24 07:59:34', '2021-08-24 07:59:34'),
(2, 'Gadgets & Accessories', '2021-09-29 00:00:00', 'published', '2021-08-24 07:59:34', '2021-08-24 07:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales_translations`
--

INSERT INTO `ec_flash_sales_translations` (`lang_code`, `ec_flash_sales_id`, `name`) VALUES
('vi', 1, 'Khuyến mãi trong ngày.'),
('vi', 2, 'Tiện ích & Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 1, 265.32, 8, 5),
(2, 11, 86.4, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 8, '1', 'default', 'completed', '486.90', '23.90', '0.00', NULL, NULL, '0.00', '463.00', 1, NULL, 1, 's8y2ITRJoBQaMUCKUhGgTOMG5CkWT', 1, '2021-08-17 15:59:35', '2021-08-24 07:59:36'),
(2, 7, '1', 'default', 'pending', '475.70', '22.70', '0.00', NULL, NULL, '0.00', '453.00', 1, NULL, 1, 'hYW1WdYZyi9ZrPcCREptAOHh0fcwP', 2, '2021-08-10 01:59:35', '2021-08-24 07:59:35'),
(3, 6, '1', 'default', 'pending', '1082.00', '44.00', '0.00', NULL, NULL, '0.00', '1038.00', 1, NULL, 1, 'LHX2UV4PdUb4daXcCOR4ZFfaTPBaV', 3, '2021-08-16 19:59:35', '2021-08-24 07:59:35'),
(4, 6, '1', 'default', 'pending', '1442.70', '68.70', '0.00', NULL, NULL, '0.00', '1374.00', 1, NULL, 1, 'UsVaRLF14E6TdJI4cvaapGptruRdx', 4, '2021-08-21 11:59:35', '2021-08-24 07:59:35'),
(5, 8, '1', 'default', 'pending', '1050.90', '44.90', '0.00', NULL, NULL, '0.00', '1006.00', 1, NULL, 1, 'F7RjjlrLUaYrksbrXFCu1WPdSBMmE', 5, '2021-08-16 07:59:35', '2021-08-24 07:59:35'),
(6, 6, '1', 'default', 'pending', '271.70', '24.70', '0.00', NULL, NULL, '0.00', '247.00', 1, NULL, 1, '2UllkkPWifnMFQ2PT2lk9LCBFvoRL', 6, '2021-08-14 07:59:35', '2021-08-24 07:59:35'),
(7, 8, '1', 'default', 'completed', '1953.10', '74.10', '0.00', NULL, NULL, '0.00', '1879.00', 1, NULL, 1, '67hhvbSPWQ5T4V0IjShEZko1Hr9SX', 7, '2021-08-23 03:59:35', '2021-08-24 07:59:36'),
(8, 8, '1', 'default', 'pending', '713.00', '23.00', '0.00', NULL, NULL, '0.00', '690.00', 1, NULL, 1, 'PBUYEVyD6hHrj4sZE17jLI4RunLHd', 8, '2021-08-21 01:59:35', '2021-08-24 07:59:35'),
(9, 7, '1', 'default', 'pending', '788.30', '29.30', '0.00', NULL, NULL, '0.00', '759.00', 1, NULL, 1, 'VNN3d1vgTp37QPEMAJgefFWYhfys9', 9, '2021-08-22 07:59:35', '2021-08-24 07:59:35'),
(10, 7, '1', 'default', 'completed', '259.10', '16.10', '0.00', NULL, NULL, '0.00', '243.00', 1, NULL, 1, 'zqaZgODiG8xb87dvc1caKwSDNp1QH', 10, '2021-08-16 01:59:35', '2021-08-24 07:59:36'),
(11, 9, '1', 'default', 'pending', '894.00', '40.00', '0.00', NULL, NULL, '0.00', '854.00', 1, NULL, 1, 'tlYlWFG3QxoL26VgKIkHq5SIDZoJv', 11, '2021-08-17 15:59:35', '2021-08-24 07:59:35'),
(12, 3, '1', 'default', 'pending', '619.30', '37.30', '0.00', NULL, NULL, '0.00', '582.00', 1, NULL, 1, 'nDOiJQoRBvkXHf4IAlLldWiajuuj3', 12, '2021-08-21 07:59:35', '2021-08-24 07:59:35'),
(13, 8, '1', 'default', 'pending', '1325.80', '46.80', '0.00', NULL, NULL, '0.00', '1279.00', 1, NULL, 1, 'WEGGUxQUm4fj8IiDrpRcCZUm1U2ee', 13, '2021-08-22 23:59:35', '2021-08-24 07:59:35'),
(14, 8, '1', 'default', 'completed', '624.00', '24.00', '0.00', NULL, NULL, '0.00', '600.00', 1, NULL, 1, 'Gigp4cFchvqr16gVhVNxqGwfwnY0s', 14, '2021-08-20 19:59:35', '2021-08-24 07:59:36'),
(15, 2, '1', 'default', 'completed', '502.90', '19.90', '0.00', NULL, NULL, '0.00', '483.00', 1, NULL, 1, 's6XLh2q24CiyLNS2VjEfKEGfLZ8IQ', 15, '2021-08-19 07:59:35', '2021-08-24 07:59:36'),
(16, 6, '1', 'default', 'completed', '364.80', '22.80', '0.00', NULL, NULL, '0.00', '342.00', 1, NULL, 1, 'WudlBa7mlpQ7NsEdh4vJkvbuBjyFf', 16, '2021-08-20 23:59:35', '2021-08-24 07:59:36'),
(17, 3, '1', 'default', 'pending', '1336.10', '43.10', '0.00', NULL, NULL, '0.00', '1293.00', 1, NULL, 1, 'ALHcMq3jdG0SeWrBPn7sSwO9Fh2IJ', 17, '2021-08-23 23:59:35', '2021-08-24 07:59:35'),
(18, 6, '1', 'default', 'completed', '1482.70', '51.70', '0.00', NULL, NULL, '0.00', '1431.00', 1, NULL, 1, '2ZnYt1t1V3rist89G8b5oJGE3OBuS', 18, '2021-08-22 13:59:35', '2021-08-24 07:59:36'),
(19, 1, '1', 'default', 'pending', '400.40', '36.40', '0.00', NULL, NULL, '0.00', '364.00', 1, NULL, 1, 'zKGJlJSg6ZEc9y7wezCZeXd6ReITq', 19, '2021-08-23 15:59:35', '2021-08-24 07:59:35'),
(20, 5, '1', 'default', 'pending', '800.40', '62.40', '0.00', NULL, NULL, '0.00', '738.00', 1, NULL, 1, 'O2leqjiNEll7GtpCmNjg5pNpT5tFN', 20, '2021-08-23 13:59:35', '2021-08-24 07:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(1, 'Dr. Tyrell Mohr', '+14697160365', 'wiegand.rosamond@example.org', 'JO', 'North Carolina', 'Fayberg', '94564 O\'Conner Coves Apt. 758', 1, '88259-8814'),
(2, 'Rosalinda Wilderman', '+17206542749', 'jayce.bauch@example.org', 'WS', 'Indiana', 'South Uriahstad', '603 Augusta Ferry', 2, '06888'),
(3, 'Priscilla Blick', '+16028465973', 'kade.hettinger@example.com', 'AU', 'North Dakota', 'Sengerstad', '9347 Jordyn Burg Apt. 057', 3, '91800-7244'),
(4, 'Priscilla Blick', '+16028465973', 'kade.hettinger@example.com', 'AU', 'North Dakota', 'Sengerstad', '9347 Jordyn Burg Apt. 057', 4, '91800-7244'),
(5, 'Dr. Tyrell Mohr', '+14697160365', 'wiegand.rosamond@example.org', 'JO', 'North Carolina', 'Fayberg', '94564 O\'Conner Coves Apt. 758', 5, '88259-8814'),
(6, 'Priscilla Blick', '+16028465973', 'kade.hettinger@example.com', 'AU', 'North Dakota', 'Sengerstad', '9347 Jordyn Burg Apt. 057', 6, '91800-7244'),
(7, 'Dr. Tyrell Mohr', '+14697160365', 'wiegand.rosamond@example.org', 'JO', 'North Carolina', 'Fayberg', '94564 O\'Conner Coves Apt. 758', 7, '88259-8814'),
(8, 'Dr. Tyrell Mohr', '+14697160365', 'wiegand.rosamond@example.org', 'JO', 'North Carolina', 'Fayberg', '94564 O\'Conner Coves Apt. 758', 8, '88259-8814'),
(9, 'Rosalinda Wilderman', '+17206542749', 'jayce.bauch@example.org', 'WS', 'Indiana', 'South Uriahstad', '603 Augusta Ferry', 9, '06888'),
(10, 'Rosalinda Wilderman', '+17206542749', 'jayce.bauch@example.org', 'WS', 'Indiana', 'South Uriahstad', '603 Augusta Ferry', 10, '06888'),
(11, 'Chadrick Kshlerin', '+15643560571', 'aliya.schmidt@example.net', 'ST', 'Virginia', 'Kingstad', '507 Lebsack Lake Suite 345', 11, '89084-2393'),
(12, 'Caleb Miller', '+15184376406', 'deangelo.kuphal@example.com', 'TV', 'Oklahoma', 'Port Anjali', '328 Hickle Meadow', 12, '37349'),
(13, 'Dr. Tyrell Mohr', '+14697160365', 'wiegand.rosamond@example.org', 'JO', 'North Carolina', 'Fayberg', '94564 O\'Conner Coves Apt. 758', 13, '88259-8814'),
(14, 'Dr. Tyrell Mohr', '+14697160365', 'wiegand.rosamond@example.org', 'JO', 'North Carolina', 'Fayberg', '94564 O\'Conner Coves Apt. 758', 14, '88259-8814'),
(15, 'Marlon Prosacco', '+17650443031', 'ohara.stephania@example.net', 'BM', 'Rhode Island', 'North Frederikland', '85119 Wisozk Ramp Apt. 319', 15, '90255'),
(16, 'Priscilla Blick', '+16028465973', 'kade.hettinger@example.com', 'AU', 'North Dakota', 'Sengerstad', '9347 Jordyn Burg Apt. 057', 16, '91800-7244'),
(17, 'Caleb Miller', '+15184376406', 'deangelo.kuphal@example.com', 'TV', 'Oklahoma', 'Port Anjali', '328 Hickle Meadow', 17, '37349'),
(18, 'Priscilla Blick', '+16028465973', 'kade.hettinger@example.com', 'AU', 'North Dakota', 'Sengerstad', '9347 Jordyn Burg Apt. 057', 18, '91800-7244'),
(19, 'John Smith', '+13417565197', 'john.smith@botble.com', 'ER', 'Washington', 'West Clemens', '178 Haag Causeway Apt. 636', 19, '59364-1518'),
(20, 'Dr. Dominic Corkery Jr.', '+15805494223', 'vhintz@example.org', 'VG', 'Illinois', 'Lake Matteofurt', '4833 Turcotte Course', 20, '41541-7514');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(1, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 1, NULL, '2021-08-17 15:59:35', '2021-08-17 15:59:35'),
(2, 'confirm_order', 'Order was verified by %user_name%', 0, 1, NULL, '2021-08-17 15:59:35', '2021-08-17 15:59:35'),
(3, 'confirm_payment', 'Payment was confirmed (amount $486.90) by %user_name%', 0, 1, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(4, 'create_shipment', 'Created shipment for order', 0, 1, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(5, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(6, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 2, NULL, '2021-08-10 01:59:35', '2021-08-10 01:59:35'),
(7, 'confirm_order', 'Order was verified by %user_name%', 0, 2, NULL, '2021-08-10 01:59:35', '2021-08-10 01:59:35'),
(8, 'confirm_payment', 'Payment was confirmed (amount $475.70) by %user_name%', 0, 2, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(9, 'create_shipment', 'Created shipment for order', 0, 2, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(10, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 3, NULL, '2021-08-16 19:59:35', '2021-08-16 19:59:35'),
(11, 'confirm_order', 'Order was verified by %user_name%', 0, 3, NULL, '2021-08-16 19:59:35', '2021-08-16 19:59:35'),
(12, 'create_shipment', 'Created shipment for order', 0, 3, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(13, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(14, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 4, NULL, '2021-08-21 11:59:35', '2021-08-21 11:59:35'),
(15, 'confirm_order', 'Order was verified by %user_name%', 0, 4, NULL, '2021-08-21 11:59:35', '2021-08-21 11:59:35'),
(16, 'confirm_payment', 'Payment was confirmed (amount $1,442.70) by %user_name%', 0, 4, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(17, 'create_shipment', 'Created shipment for order', 0, 4, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(18, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2021-08-16 07:59:35', '2021-08-16 07:59:35'),
(19, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2021-08-16 07:59:35', '2021-08-16 07:59:35'),
(20, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(21, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 6, NULL, '2021-08-14 07:59:35', '2021-08-14 07:59:35'),
(22, 'confirm_order', 'Order was verified by %user_name%', 0, 6, NULL, '2021-08-14 07:59:35', '2021-08-14 07:59:35'),
(23, 'confirm_payment', 'Payment was confirmed (amount $271.70) by %user_name%', 0, 6, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(24, 'create_shipment', 'Created shipment for order', 0, 6, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(25, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 7, NULL, '2021-08-23 03:59:35', '2021-08-23 03:59:35'),
(26, 'confirm_order', 'Order was verified by %user_name%', 0, 7, NULL, '2021-08-23 03:59:35', '2021-08-23 03:59:35'),
(27, 'confirm_payment', 'Payment was confirmed (amount $1,953.10) by %user_name%', 0, 7, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(28, 'create_shipment', 'Created shipment for order', 0, 7, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(29, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 7, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(30, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 8, NULL, '2021-08-21 01:59:35', '2021-08-21 01:59:35'),
(31, 'confirm_order', 'Order was verified by %user_name%', 0, 8, NULL, '2021-08-21 01:59:35', '2021-08-21 01:59:35'),
(32, 'create_shipment', 'Created shipment for order', 0, 8, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(33, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2021-08-22 07:59:35', '2021-08-22 07:59:35'),
(34, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2021-08-22 07:59:35', '2021-08-22 07:59:35'),
(35, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(36, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(37, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 10, NULL, '2021-08-16 01:59:35', '2021-08-16 01:59:35'),
(38, 'confirm_order', 'Order was verified by %user_name%', 0, 10, NULL, '2021-08-16 01:59:35', '2021-08-16 01:59:35'),
(39, 'confirm_payment', 'Payment was confirmed (amount $259.10) by %user_name%', 0, 10, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(40, 'create_shipment', 'Created shipment for order', 0, 10, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(41, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(42, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 11, NULL, '2021-08-17 15:59:35', '2021-08-17 15:59:35'),
(43, 'confirm_order', 'Order was verified by %user_name%', 0, 11, NULL, '2021-08-17 15:59:35', '2021-08-17 15:59:35'),
(44, 'confirm_payment', 'Payment was confirmed (amount $894.00) by %user_name%', 0, 11, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(45, 'create_shipment', 'Created shipment for order', 0, 11, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(46, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 12, NULL, '2021-08-21 07:59:35', '2021-08-21 07:59:35'),
(47, 'confirm_order', 'Order was verified by %user_name%', 0, 12, NULL, '2021-08-21 07:59:35', '2021-08-21 07:59:35'),
(48, 'confirm_payment', 'Payment was confirmed (amount $619.30) by %user_name%', 0, 12, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(49, 'create_shipment', 'Created shipment for order', 0, 12, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(50, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 13, NULL, '2021-08-22 23:59:35', '2021-08-22 23:59:35'),
(51, 'confirm_order', 'Order was verified by %user_name%', 0, 13, NULL, '2021-08-22 23:59:35', '2021-08-22 23:59:35'),
(52, 'create_shipment', 'Created shipment for order', 0, 13, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(53, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(54, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 14, NULL, '2021-08-20 19:59:35', '2021-08-20 19:59:35'),
(55, 'confirm_order', 'Order was verified by %user_name%', 0, 14, NULL, '2021-08-20 19:59:35', '2021-08-20 19:59:35'),
(56, 'confirm_payment', 'Payment was confirmed (amount $624.00) by %user_name%', 0, 14, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(57, 'create_shipment', 'Created shipment for order', 0, 14, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(58, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 14, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(59, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 15, NULL, '2021-08-19 07:59:35', '2021-08-19 07:59:35'),
(60, 'confirm_order', 'Order was verified by %user_name%', 0, 15, NULL, '2021-08-19 07:59:35', '2021-08-19 07:59:35'),
(61, 'confirm_payment', 'Payment was confirmed (amount $502.90) by %user_name%', 0, 15, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(62, 'create_shipment', 'Created shipment for order', 0, 15, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(63, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(64, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 16, NULL, '2021-08-20 23:59:35', '2021-08-20 23:59:35'),
(65, 'confirm_order', 'Order was verified by %user_name%', 0, 16, NULL, '2021-08-20 23:59:35', '2021-08-20 23:59:35'),
(66, 'confirm_payment', 'Payment was confirmed (amount $364.80) by %user_name%', 0, 16, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(67, 'create_shipment', 'Created shipment for order', 0, 16, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(68, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(69, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 17, NULL, '2021-08-23 23:59:35', '2021-08-23 23:59:35'),
(70, 'confirm_order', 'Order was verified by %user_name%', 0, 17, NULL, '2021-08-23 23:59:35', '2021-08-23 23:59:35'),
(71, 'confirm_payment', 'Payment was confirmed (amount $1,336.10) by %user_name%', 0, 17, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(72, 'create_shipment', 'Created shipment for order', 0, 17, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(73, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 18, NULL, '2021-08-22 13:59:35', '2021-08-22 13:59:35'),
(74, 'confirm_order', 'Order was verified by %user_name%', 0, 18, NULL, '2021-08-22 13:59:35', '2021-08-22 13:59:35'),
(75, 'confirm_payment', 'Payment was confirmed (amount $1,482.70) by %user_name%', 0, 18, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(76, 'create_shipment', 'Created shipment for order', 0, 18, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(77, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(78, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 19, NULL, '2021-08-23 15:59:35', '2021-08-23 15:59:35'),
(79, 'confirm_order', 'Order was verified by %user_name%', 0, 19, NULL, '2021-08-23 15:59:35', '2021-08-23 15:59:35'),
(80, 'create_shipment', 'Created shipment for order', 0, 19, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(81, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(82, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 20, NULL, '2021-08-23 13:59:35', '2021-08-23 13:59:35'),
(83, 'confirm_order', 'Order was verified by %user_name%', 0, 20, NULL, '2021-08-23 13:59:35', '2021-08-23 13:59:35'),
(84, 'confirm_payment', 'Payment was confirmed (amount $800.40) by %user_name%', 0, 20, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(85, 'create_shipment', 'Created shipment for order', 0, 20, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(86, 'update_status', 'Order confirmed by %user_name%', 0, 1, NULL, '2021-08-24 07:59:36', '2021-08-24 07:59:36'),
(87, 'update_status', 'Order confirmed by %user_name%', 0, 7, NULL, '2021-08-24 07:59:36', '2021-08-24 07:59:36'),
(88, 'update_status', 'Order confirmed by %user_name%', 0, 10, NULL, '2021-08-24 07:59:36', '2021-08-24 07:59:36'),
(89, 'update_status', 'Order confirmed by %user_name%', 0, 14, NULL, '2021-08-24 07:59:36', '2021-08-24 07:59:36'),
(90, 'update_status', 'Order confirmed by %user_name%', 0, 15, NULL, '2021-08-24 07:59:36', '2021-08-24 07:59:36'),
(91, 'update_status', 'Order confirmed by %user_name%', 0, 16, NULL, '2021-08-24 07:59:36', '2021-08-24 07:59:36'),
(92, 'update_status', 'Order confirmed by %user_name%', 0, 18, NULL, '2021-08-24 07:59:36', '2021-08-24 07:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '127.00', '12.70', '[]', 42, 'Macbook Pro 2015', 621.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(2, 1, 3, '112.00', '11.20', '[]', 68, 'Black Smart Watches', 2355.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(3, 2, 1, '114.00', '11.40', '[]', 57, 'Apple Keyboard', 618.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(4, 2, 3, '113.00', '11.30', '[]', 76, 'Macbook Pro 2015 13 inch', 1671.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(5, 3, 1, '85.00', '8.50', '[]', 30, 'Chikie - Bluetooth Speaker', 567.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(6, 3, 3, '130.00', '13.00', '[]', 40, 'Apple iPhone 13 Plus', 2280.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(7, 3, 2, '112.00', '11.20', '[]', 68, 'Black Smart Watches', 1570.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(8, 3, 3, '113.00', '11.30', '[]', 76, 'Macbook Pro 2015 13 inch', 1671.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(9, 4, 2, '457.00', '45.70', '[]', 29, 'Boxed - Bluetooth Headphone', 1168.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(10, 4, 2, '110.00', '11.00', '[]', 66, 'Cool Smart Watches', 1666.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(11, 4, 2, '120.00', '12.00', '[]', 81, 'Black Glasses', 1366.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(12, 5, 1, '114.00', '11.40', '[]', 55, 'Apple Keyboard', 618.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(13, 5, 3, '110.00', '11.00', '[]', 66, 'Cool Smart Watches', 2499.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(14, 5, 2, '113.00', '11.30', '[]', 76, 'Macbook Pro 2015 13 inch', 1114.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(15, 5, 3, '112.00', '11.20', '[]', 82, 'Phillips Mouse', 1914.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(16, 6, 1, '120.00', '12.00', '[]', 48, 'Apple Watch Serial 7', 763.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(17, 6, 1, '127.00', '12.70', '[]', 50, 'Macbook Pro 13 inch', 836.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(18, 7, 3, '396.00', '39.60', '[]', 26, 'Smart Home Speaker', 1779.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(19, 7, 3, '113.00', '11.30', '[]', 59, 'MacSafe 80W', 2550.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(20, 7, 1, '112.00', '11.20', '[]', 67, 'Black Smart Watches', 785.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(21, 7, 2, '120.00', '12.00', '[]', 80, 'Black Glasses', 1366.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(22, 8, 3, '120.00', '12.00', '[]', 48, 'Apple Watch Serial 7', 2289.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(23, 8, 3, '110.00', '11.00', '[]', 83, 'Gaming Keyboard', 2160.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(24, 9, 1, '60.00', '6.00', '[]', 37, 'Camera Samsung SS-24', 692.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(25, 9, 3, '120.00', '12.00', '[]', 49, 'Apple Watch Serial 7', 2289.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(26, 9, 3, '113.00', '11.30', '[]', 74, 'Macbook Pro 2015 13 inch', 1671.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(27, 10, 3, '41.00', '4.10', '[]', 32, 'Camera Hikvision HK-35VS8', 1728.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(28, 10, 1, '120.00', '12.00', '[]', 47, 'Apple Watch Serial 7', 763.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(29, 11, 3, '60.00', '6.00', '[]', 37, 'Camera Samsung SS-24', 2076.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(30, 11, 2, '114.00', '11.40', '[]', 63, 'Apple Airpods Serial 3', 1420.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(31, 11, 1, '116.00', '11.60', '[]', 72, 'Leather Watch Band Serial 3', 772.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(32, 11, 3, '110.00', '11.00', '[]', 83, 'Gaming Keyboard', 2160.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(33, 12, 1, '85.00', '8.50', '[]', 30, 'Chikie - Bluetooth Speaker', 567.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(34, 12, 3, '41.00', '4.10', '[]', 32, 'Camera Hikvision HK-35VS8', 1728.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(35, 12, 2, '127.00', '12.70', '[]', 43, 'Macbook Pro 2015', 1242.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(36, 12, 1, '120.00', '12.00', '[]', 49, 'Apple Watch Serial 7', 763.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(37, 13, 3, '113.00', '11.30', '[]', 59, 'MacSafe 80W', 2550.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(38, 13, 2, '125.00', '12.50', '[]', 60, 'Hand playstation', 1488.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(39, 13, 3, '120.00', '12.00', '[]', 78, 'Black Glasses', 2049.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(40, 13, 3, '110.00', '11.00', '[]', 85, 'Gaming Keyboard', 2160.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(41, 14, 3, '120.00', '12.00', '[]', 48, 'Apple Watch Serial 7', 2289.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(42, 14, 2, '120.00', '12.00', '[]', 79, 'Black Glasses', 1366.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(43, 15, 3, '85.00', '8.50', '[]', 31, 'Chikie - Bluetooth Speaker', 1701.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(44, 15, 2, '114.00', '11.40', '[]', 55, 'Apple Keyboard', 1236.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(45, 16, 1, '114.00', '11.40', '[]', 55, 'Apple Keyboard', 618.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(46, 16, 2, '114.00', '11.40', '[]', 62, 'Apple Airpods Serial 3', 1420.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(47, 17, 3, '306.00', '30.60', '[]', 44, 'Macbook Air 12 inch', 1566.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(48, 17, 3, '125.00', '12.50', '[]', 60, 'Hand playstation', 2232.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(49, 18, 3, '457.00', '45.70', '[]', 28, 'Boxed - Bluetooth Headphone', 1752.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(50, 18, 1, '60.00', '6.00', '[]', 37, 'Camera Samsung SS-24', 692.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(51, 19, 1, '127.00', '12.70', '[]', 50, 'Macbook Pro 13 inch', 836.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(52, 19, 1, '127.00', '12.70', '[]', 51, 'Macbook Pro 13 inch', 836.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(53, 19, 1, '110.00', '11.00', '[]', 65, 'Cool Smart Watches', 833.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(54, 20, 1, '396.00', '39.60', '[]', 26, 'Smart Home Speaker', 593.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(55, 20, 1, '114.00', '11.40', '[]', 57, 'Apple Keyboard', 618.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(56, 20, 2, '114.00', '11.40', '[]', 63, 'Apple Airpods Serial 3', 1420.00, 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT '0',
  `is_searchable` tinyint(4) NOT NULL DEFAULT '0',
  `is_show_on_list` tinyint(4) NOT NULL DEFAULT '0',
  `sale_type` tinyint(4) NOT NULL DEFAULT '0',
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(1, 'Smart Home Speaker', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]', 'HS-111-A0', 0, 14, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 396, NULL, NULL, NULL, 17.00, 18.00, 20.00, 593.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 7470, 'in_stock'),
(2, 'Headphone Ultra Bass', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]', 'HS-130-A0', 0, 10, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 247, NULL, NULL, NULL, 12.00, 15.00, 14.00, 738.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 114979, 'in_stock'),
(3, 'Boxed - Bluetooth Headphone', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]', 'HS-172-A0', 0, 18, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 457, NULL, NULL, NULL, 16.00, 20.00, 12.00, 584.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 145848, 'in_stock'),
(4, 'Chikie - Bluetooth Speaker', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]', 'HS-103-A0', 0, 20, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 85, 70.55, NULL, NULL, 14.00, 10.00, 16.00, 567.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 1523, 'in_stock'),
(5, 'Camera Hikvision HK-35VS8', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]', 'HS-147-A0', 0, 17, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 41, NULL, NULL, NULL, 17.00, 17.00, 11.00, 576.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 76276, 'in_stock'),
(6, 'Camera Samsung SS-24', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]', 'HS-168-A0', 0, 17, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 60, NULL, NULL, NULL, 13.00, 17.00, 10.00, 692.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 39375, 'in_stock'),
(7, 'Leather Watch Band', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]', 'HS-143-A0', 0, 17, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 119, NULL, NULL, NULL, 13.00, 12.00, 12.00, 795.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 105194, 'in_stock'),
(8, 'Apple iPhone 13 Plus', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]', 'HS-158-A0', 0, 11, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 130, 115.7, NULL, NULL, 16.00, 15.00, 19.00, 760.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 181774, 'in_stock'),
(9, 'Macbook Pro 2015', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]', 'HS-141-A0', 0, 12, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 127, NULL, NULL, NULL, 13.00, 18.00, 11.00, 621.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 35228, 'in_stock'),
(10, 'Macbook Air 12 inch', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]', 'HS-131-A0', 0, 20, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 306, NULL, NULL, NULL, 20.00, 10.00, 12.00, 522.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 70197, 'in_stock'),
(11, 'Apple Watch Serial 7', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]', 'HS-190-A0', 0, 16, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 120, NULL, NULL, NULL, 10.00, 14.00, 12.00, 763.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 88038, 'in_stock'),
(12, 'Macbook Pro 13 inch', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]', 'HS-122-A0', 0, 11, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 127, 104.14, NULL, NULL, 20.00, 16.00, 12.00, 836.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 85770, 'in_stock'),
(13, 'Apple Keyboard', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]', 'HS-158-A0', 0, 10, 0, 1, 1, NULL, NULL, 2, 0, 0, 0, 0, 114, NULL, NULL, NULL, 10.00, 14.00, 16.00, 618.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 106983, 'in_stock'),
(14, 'MacSafe 80W', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]', 'HS-115-A0', 0, 20, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 113, NULL, NULL, NULL, 11.00, 14.00, 16.00, 850.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 79980, 'in_stock'),
(15, 'Hand playstation', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]', 'HS-132-A0', 0, 13, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 125, NULL, NULL, NULL, 15.00, 17.00, 18.00, 744.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 193813, 'in_stock'),
(16, 'Apple Airpods Serial 3', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/16.jpg\"]', 'HS-173-A0', 0, 15, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 114, 86.64, NULL, NULL, 10.00, 18.00, 20.00, 710.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 86610, 'in_stock'),
(17, 'Cool Smart Watches', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/17.jpg\"]', 'HS-128-A0', 0, 11, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 110, NULL, NULL, NULL, 16.00, 16.00, 13.00, 833.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 165923, 'in_stock');
INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(18, 'Black Smart Watches', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]', 'HS-200-A0', 0, 10, 0, 1, 1, NULL, NULL, 2, 0, 0, 0, 0, 112, NULL, NULL, NULL, 16.00, 15.00, 19.00, 785.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:24', 1, 29519, 'in_stock'),
(19, 'Leather Watch Band Serial 3', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]', 'HS-139-A0', 0, 17, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 116, NULL, NULL, NULL, 14.00, 18.00, 15.00, 772.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:25', 1, 188085, 'in_stock'),
(20, 'Macbook Pro 2015 13 inch', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]', 'HS-186-A0', 0, 20, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 113, 91.53, NULL, NULL, 20.00, 14.00, 10.00, 557.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:23', '2021-08-24 07:59:25', 1, 5823, 'in_stock'),
(21, 'Historic Alarm Clock', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]', 'HS-129-A0', 0, 10, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 130, NULL, NULL, NULL, 12.00, 12.00, 17.00, 806.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:25', 1, 99070, 'in_stock'),
(22, 'Black Glasses', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]', 'HS-128-A0', 0, 20, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 120, NULL, NULL, NULL, 17.00, 17.00, 20.00, 683.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:25', 1, 138006, 'in_stock'),
(23, 'Phillips Mouse', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]', 'HS-134-A0', 0, 13, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 112, NULL, NULL, NULL, 11.00, 16.00, 20.00, 638.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:25', 1, 61152, 'in_stock'),
(24, 'Gaming Keyboard', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]', 'HS-139-A0', 0, 17, 0, 1, 1, NULL, NULL, 2, 0, 0, 0, 0, 110, 83.6, NULL, NULL, 16.00, 12.00, 18.00, 720.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:25', 1, 119127, 'in_stock'),
(25, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/1.jpg\"]', 'HS-111-A0', 0, 14, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 396, NULL, NULL, NULL, 17.00, 18.00, 20.00, 593.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(26, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/1-1.jpg\"]', 'HS-111-A0-A1', 0, 14, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 396, NULL, NULL, NULL, 17.00, 18.00, 20.00, 593.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(27, 'Headphone Ultra Bass', NULL, NULL, 'published', '[\"products\\/2.jpg\"]', 'HS-130-A0', 0, 10, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 247, NULL, NULL, NULL, 12.00, 15.00, 14.00, 738.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(28, 'Boxed - Bluetooth Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'HS-172-A0', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 457, NULL, NULL, NULL, 16.00, 20.00, 12.00, 584.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(29, 'Boxed - Bluetooth Headphone', NULL, NULL, 'published', '[\"products\\/3-1.jpg\"]', 'HS-172-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 457, NULL, NULL, NULL, 16.00, 20.00, 12.00, 584.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(30, 'Chikie - Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/4.jpg\"]', 'HS-103-A0', 0, 20, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 85, 70.55, NULL, NULL, 14.00, 10.00, 16.00, 567.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(31, 'Chikie - Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/4-1.jpg\"]', 'HS-103-A0-A1', 0, 20, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 85, 67.15, NULL, NULL, 14.00, 10.00, 16.00, 567.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(32, 'Camera Hikvision HK-35VS8', NULL, NULL, 'published', '[\"products\\/5.jpg\"]', 'HS-147-A0', 0, 17, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 41, NULL, NULL, NULL, 17.00, 17.00, 11.00, 576.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(33, 'Camera Hikvision HK-35VS8', NULL, NULL, 'published', '[\"products\\/5-1.jpg\"]', 'HS-147-A0-A1', 0, 17, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 41, NULL, NULL, NULL, 17.00, 17.00, 11.00, 576.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(34, 'Camera Samsung SS-24', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'HS-168-A0', 0, 17, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 60, NULL, NULL, NULL, 13.00, 17.00, 10.00, 692.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(35, 'Camera Samsung SS-24', NULL, NULL, 'published', '[\"products\\/6-1.jpg\"]', 'HS-168-A0-A1', 0, 17, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 60, NULL, NULL, NULL, 13.00, 17.00, 10.00, 692.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(36, 'Camera Samsung SS-24', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'HS-168-A0-A2', 0, 17, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 60, NULL, NULL, NULL, 13.00, 17.00, 10.00, 692.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(37, 'Camera Samsung SS-24', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'HS-168-A0-A3', 0, 17, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 60, NULL, NULL, NULL, 13.00, 17.00, 10.00, 692.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(38, 'Leather Watch Band', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'HS-143-A0', 0, 17, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 119, NULL, NULL, NULL, 13.00, 12.00, 12.00, 795.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(39, 'Apple iPhone 13 Plus', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'HS-158-A0', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 130, 115.7, NULL, NULL, 16.00, 15.00, 19.00, 760.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(40, 'Apple iPhone 13 Plus', NULL, NULL, 'published', '[\"products\\/8-1.jpg\"]', 'HS-158-A0-A1', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 130, 98.8, NULL, NULL, 16.00, 15.00, 19.00, 760.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(41, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/9.jpg\"]', 'HS-141-A0', 0, 12, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 127, NULL, NULL, NULL, 13.00, 18.00, 11.00, 621.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(42, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/9-1.jpg\"]', 'HS-141-A0-A1', 0, 12, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 127, NULL, NULL, NULL, 13.00, 18.00, 11.00, 621.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(43, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/9.jpg\"]', 'HS-141-A0-A2', 0, 12, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 127, NULL, NULL, NULL, 13.00, 18.00, 11.00, 621.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(44, 'Macbook Air 12 inch', NULL, NULL, 'published', '[\"products\\/10.jpg\"]', 'HS-131-A0', 0, 20, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 306, NULL, NULL, NULL, 20.00, 10.00, 12.00, 522.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(45, 'Macbook Air 12 inch', NULL, NULL, 'published', '[\"products\\/10-1.jpg\"]', 'HS-131-A0-A1', 0, 20, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 306, NULL, NULL, NULL, 20.00, 10.00, 12.00, 522.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(46, 'Macbook Air 12 inch', NULL, NULL, 'published', '[\"products\\/10.jpg\"]', 'HS-131-A0-A2', 0, 20, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 306, NULL, NULL, NULL, 20.00, 10.00, 12.00, 522.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(47, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/11.jpg\"]', 'HS-190-A0', 0, 16, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 120, NULL, NULL, NULL, 10.00, 14.00, 12.00, 763.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(48, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/11-1.jpg\"]', 'HS-190-A0-A1', 0, 16, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 120, NULL, NULL, NULL, 10.00, 14.00, 12.00, 763.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(49, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/11.jpg\"]', 'HS-190-A0-A2', 0, 16, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 120, NULL, NULL, NULL, 10.00, 14.00, 12.00, 763.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(50, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'HS-122-A0', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 127, 104.14, NULL, NULL, 20.00, 16.00, 12.00, 836.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(51, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12-1.jpg\"]', 'HS-122-A0-A1', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 127, 100.33, NULL, NULL, 20.00, 16.00, 12.00, 836.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(52, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'HS-122-A0-A2', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 127, 92.71, NULL, NULL, 20.00, 16.00, 12.00, 836.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(53, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'HS-122-A0-A3', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 127, 113.03, NULL, NULL, 20.00, 16.00, 12.00, 836.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(54, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'HS-122-A0-A4', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 127, 93.98, NULL, NULL, 20.00, 16.00, 12.00, 836.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(55, 'Apple Keyboard', NULL, NULL, 'published', '[\"products\\/13.jpg\"]', 'HS-158-A0', 0, 10, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 114, NULL, NULL, NULL, 10.00, 14.00, 16.00, 618.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(56, 'Apple Keyboard', NULL, NULL, 'published', '[\"products\\/13-1.jpg\"]', 'HS-158-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 114, NULL, NULL, NULL, 10.00, 14.00, 16.00, 618.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(57, 'Apple Keyboard', NULL, NULL, 'published', '[\"products\\/13.jpg\"]', 'HS-158-A0-A2', 0, 10, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 114, NULL, NULL, NULL, 10.00, 14.00, 16.00, 618.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(58, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'HS-115-A0', 0, 20, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 113, NULL, NULL, NULL, 11.00, 14.00, 16.00, 850.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(59, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/14-1.jpg\"]', 'HS-115-A0-A1', 0, 20, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 113, NULL, NULL, NULL, 11.00, 14.00, 16.00, 850.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(60, 'Hand playstation', NULL, NULL, 'published', '[\"products\\/15.jpg\"]', 'HS-132-A0', 0, 13, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 125, NULL, NULL, NULL, 15.00, 17.00, 18.00, 744.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(61, 'Hand playstation', NULL, NULL, 'published', '[\"products\\/15-1.jpg\"]', 'HS-132-A0-A1', 0, 13, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 125, NULL, NULL, NULL, 15.00, 17.00, 18.00, 744.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(62, 'Apple Airpods Serial 3', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'HS-173-A0', 0, 15, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 114, 86.64, NULL, NULL, 10.00, 18.00, 20.00, 710.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(63, 'Apple Airpods Serial 3', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'HS-173-A0-A1', 0, 15, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 114, 96.9, NULL, NULL, 10.00, 18.00, 20.00, 710.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(64, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'HS-128-A0', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 110, NULL, NULL, NULL, 16.00, 16.00, 13.00, 833.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(65, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'HS-128-A0-A1', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 110, NULL, NULL, NULL, 16.00, 16.00, 13.00, 833.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(66, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'HS-128-A0-A2', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 110, NULL, NULL, NULL, 16.00, 16.00, 13.00, 833.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(67, 'Black Smart Watches', NULL, NULL, 'published', '[\"products\\/18.jpg\"]', 'HS-200-A0', 0, 10, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 112, NULL, NULL, NULL, 16.00, 15.00, 19.00, 785.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(68, 'Black Smart Watches', NULL, NULL, 'published', '[\"products\\/18-1.jpg\"]', 'HS-200-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 112, NULL, NULL, NULL, 16.00, 15.00, 19.00, 785.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(69, 'Black Smart Watches', NULL, NULL, 'published', '[\"products\\/18-2.jpg\"]', 'HS-200-A0-A2', 0, 10, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 112, NULL, NULL, NULL, 16.00, 15.00, 19.00, 785.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(70, 'Black Smart Watches', NULL, NULL, 'published', '[\"products\\/18.jpg\"]', 'HS-200-A0-A3', 0, 10, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 112, NULL, NULL, NULL, 16.00, 15.00, 19.00, 785.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:24', '2021-08-24 07:59:24', NULL, 0, 'in_stock'),
(71, 'Leather Watch Band Serial 3', NULL, NULL, 'published', '[\"products\\/19.jpg\"]', 'HS-139-A0', 0, 17, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 116, NULL, NULL, NULL, 14.00, 18.00, 15.00, 772.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(72, 'Leather Watch Band Serial 3', NULL, NULL, 'published', '[\"products\\/19-1.jpg\"]', 'HS-139-A0-A1', 0, 17, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 116, NULL, NULL, NULL, 14.00, 18.00, 15.00, 772.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(73, 'Leather Watch Band Serial 3', NULL, NULL, 'published', '[\"products\\/19.jpg\"]', 'HS-139-A0-A2', 0, 17, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 116, NULL, NULL, NULL, 14.00, 18.00, 15.00, 772.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(74, 'Macbook Pro 2015 13 inch', NULL, NULL, 'published', '[\"products\\/20.jpg\"]', 'HS-186-A0', 0, 20, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 113, 91.53, NULL, NULL, 20.00, 14.00, 10.00, 557.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(75, 'Macbook Pro 2015 13 inch', NULL, NULL, 'published', '[\"products\\/20-1.jpg\"]', 'HS-186-A0-A1', 0, 20, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 113, 82.49, NULL, NULL, 20.00, 14.00, 10.00, 557.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(76, 'Macbook Pro 2015 13 inch', NULL, NULL, 'published', '[\"products\\/20.jpg\"]', 'HS-186-A0-A2', 0, 20, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 113, 98.31, NULL, NULL, 20.00, 14.00, 10.00, 557.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(77, 'Historic Alarm Clock', NULL, NULL, 'published', '[\"products\\/21.jpg\"]', 'HS-129-A0', 0, 10, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 130, NULL, NULL, NULL, 12.00, 12.00, 17.00, 806.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(78, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'HS-128-A0', 0, 20, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 120, NULL, NULL, NULL, 17.00, 17.00, 20.00, 683.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(79, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22-1.jpg\"]', 'HS-128-A0-A1', 0, 20, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 120, NULL, NULL, NULL, 17.00, 17.00, 20.00, 683.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(80, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'HS-128-A0-A2', 0, 20, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 120, NULL, NULL, NULL, 17.00, 17.00, 20.00, 683.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(81, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'HS-128-A0-A3', 0, 20, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 120, NULL, NULL, NULL, 17.00, 17.00, 20.00, 683.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(82, 'Phillips Mouse', NULL, NULL, 'published', '[\"products\\/23.jpg\"]', 'HS-134-A0', 0, 13, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 112, NULL, NULL, NULL, 11.00, 16.00, 20.00, 638.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(83, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24.jpg\"]', 'HS-139-A0', 0, 17, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 110, 83.6, NULL, NULL, 16.00, 12.00, 18.00, 720.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(84, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24-1.jpg\"]', 'HS-139-A0-A1', 0, 17, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 110, 91.3, NULL, NULL, 16.00, 12.00, 18.00, 720.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock'),
(85, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24.jpg\"]', 'HS-139-A0-A2', 0, 17, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 110, 85.8, NULL, NULL, 16.00, 12.00, 18.00, 720.00, NULL, NULL, NULL, NULL, NULL, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL, 0, 'in_stock');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products_translations`
--

INSERT INTO `ec_products_translations` (`lang_code`, `ec_products_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Loa thông minh', NULL, NULL),
('vi', 2, 'Tai nghe Ultra Bass', NULL, NULL),
('vi', 3, 'Tai nghe Bluetooth', NULL, NULL),
('vi', 4, 'Chikie - Loa Bluetooth', NULL, NULL),
('vi', 5, 'Camera Hikvision HK-35VS8', NULL, NULL),
('vi', 6, 'Camera Samsung SS-24', NULL, NULL),
('vi', 7, 'Dây đeo đồng hồ da', NULL, NULL),
('vi', 8, 'Điện thoại Apple iPhone 13 Plus', NULL, NULL),
('vi', 9, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 10, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 11, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 12, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 13, 'Bàn phím Apple', NULL, NULL),
('vi', 14, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 15, 'Tay cầm chơi game', NULL, NULL),
('vi', 16, 'Apple Airpods Serial 3', NULL, NULL),
('vi', 17, 'Cool Smart Watches', NULL, NULL),
('vi', 18, 'Black Smart Watches', NULL, NULL),
('vi', 19, 'Leather Watch Band Serial 3', NULL, NULL),
('vi', 20, 'Macbook Pro 2015 13 inch', NULL, NULL),
('vi', 21, 'Đồng hồ báo thức cổ điển', NULL, NULL),
('vi', 22, 'Kính đen cool ngầu', NULL, NULL),
('vi', 23, 'Chuột máy tính Phillips', NULL, NULL),
('vi', 24, 'Bàn phím chơi game', NULL, NULL),
('vi', 25, 'Loa thông minh', NULL, NULL),
('vi', 26, 'Loa thông minh', NULL, NULL),
('vi', 27, 'Tai nghe Ultra Bass', NULL, NULL),
('vi', 28, 'Tai nghe Bluetooth', NULL, NULL),
('vi', 29, 'Tai nghe Bluetooth', NULL, NULL),
('vi', 30, 'Chikie - Loa Bluetooth', NULL, NULL),
('vi', 31, 'Chikie - Loa Bluetooth', NULL, NULL),
('vi', 32, 'Camera Hikvision HK-35VS8', NULL, NULL),
('vi', 33, 'Camera Hikvision HK-35VS8', NULL, NULL),
('vi', 34, 'Camera Samsung SS-24', NULL, NULL),
('vi', 35, 'Camera Samsung SS-24', NULL, NULL),
('vi', 36, 'Camera Samsung SS-24', NULL, NULL),
('vi', 37, 'Camera Samsung SS-24', NULL, NULL),
('vi', 38, 'Dây đeo đồng hồ da', NULL, NULL),
('vi', 39, 'Điện thoại Apple iPhone 13 Plus', NULL, NULL),
('vi', 40, 'Điện thoại Apple iPhone 13 Plus', NULL, NULL),
('vi', 41, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 42, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 43, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 44, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 45, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 46, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 47, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 48, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 49, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 50, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 51, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 52, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 53, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 54, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 55, 'Bàn phím Apple', NULL, NULL),
('vi', 56, 'Bàn phím Apple', NULL, NULL),
('vi', 57, 'Bàn phím Apple', NULL, NULL),
('vi', 58, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 59, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 60, 'Tay cầm chơi game', NULL, NULL),
('vi', 61, 'Tay cầm chơi game', NULL, NULL),
('vi', 62, 'Apple Airpods Serial 3', NULL, NULL),
('vi', 63, 'Apple Airpods Serial 3', NULL, NULL),
('vi', 64, 'Cool Smart Watches', NULL, NULL),
('vi', 65, 'Cool Smart Watches', NULL, NULL),
('vi', 66, 'Cool Smart Watches', NULL, NULL),
('vi', 67, 'Black Smart Watches', NULL, NULL),
('vi', 68, 'Black Smart Watches', NULL, NULL),
('vi', 69, 'Black Smart Watches', NULL, NULL),
('vi', 70, 'Black Smart Watches', NULL, NULL),
('vi', 71, 'Leather Watch Band Serial 3', NULL, NULL),
('vi', 72, 'Leather Watch Band Serial 3', NULL, NULL),
('vi', 73, 'Leather Watch Band Serial 3', NULL, NULL),
('vi', 74, 'Macbook Pro 2015 13 inch', NULL, NULL),
('vi', 75, 'Macbook Pro 2015 13 inch', NULL, NULL),
('vi', 76, 'Macbook Pro 2015 13 inch', NULL, NULL),
('vi', 77, 'Đồng hồ báo thức cổ điển', NULL, NULL),
('vi', 78, 'Kính đen cool ngầu', NULL, NULL),
('vi', 79, 'Kính đen cool ngầu', NULL, NULL),
('vi', 80, 'Kính đen cool ngầu', NULL, NULL),
('vi', 81, 'Kính đen cool ngầu', NULL, NULL),
('vi', 82, 'Chuột máy tính Phillips', NULL, NULL),
('vi', 83, 'Bàn phím chơi game', NULL, NULL),
('vi', 84, 'Bàn phím chơi game', NULL, NULL),
('vi', 85, 'Bàn phím chơi game', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(7, 2, 'M', 'm', NULL, NULL, 1, 2, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(8, 2, 'L', 'l', NULL, NULL, 1, 3, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(9, 2, 'XL', 'xl', NULL, NULL, 1, 4, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 1, 5, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes_translations`
--

INSERT INTO `ec_product_attributes_translations` (`lang_code`, `ec_product_attributes_id`, `title`) VALUES
('vi', 1, 'Xanh lá cây'),
('vi', 2, 'Xanh da trời'),
('vi', 3, 'Đỏ'),
('vi', 4, 'Đen'),
('vi', 5, 'Nâu'),
('vi', 6, 'S'),
('vi', 7, 'M'),
('vi', 8, 'L'),
('vi', 9, 'XL'),
('vi', 10, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

INSERT INTO `ec_product_attribute_sets_translations` (`lang_code`, `ec_product_attribute_sets_id`, `title`) VALUES
('vi', 1, 'Màu sắc'),
('vi', 2, 'Kích thước');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Hot Promotions', 0, NULL, 'published', 0, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(2, 'Electronics', 0, NULL, 'published', 1, 'product-categories/1.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(3, 'Home Audio & Theaters', 2, NULL, 'published', 1, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(4, 'TV & Videos', 2, NULL, 'published', 2, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(5, 'Camera, Photos & Videos', 2, NULL, 'published', 3, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(6, 'Cellphones & Accessories', 2, NULL, 'published', 4, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(7, 'Headphones', 2, NULL, 'published', 5, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(8, 'Videos games', 2, NULL, 'published', 6, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(9, 'Wireless Speakers', 2, NULL, 'published', 7, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(10, 'Office Electronic', 2, NULL, 'published', 8, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(11, 'Clothing', 0, NULL, 'published', 2, 'product-categories/2.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(12, 'Computers', 0, NULL, 'published', 3, 'product-categories/3.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(13, 'Computer & Tablets', 12, NULL, 'published', 3, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(14, 'Laptop', 12, NULL, 'published', 4, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(15, 'Monitors', 12, NULL, 'published', 5, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(16, 'Computer Components', 12, NULL, 'published', 6, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(17, 'Home & Kitchen', 0, NULL, 'published', 4, 'product-categories/4.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(18, 'Health & Beauty', 0, NULL, 'published', 5, 'product-categories/5.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(19, 'Jewelry & Watch', 0, NULL, 'published', 6, 'product-categories/6.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(20, 'Technology Toys', 0, NULL, 'published', 7, 'product-categories/7.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(21, 'Drive & Storages', 20, NULL, 'published', 7, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(22, 'Gaming Laptop', 20, NULL, 'published', 8, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(23, 'Security & Protection', 20, NULL, 'published', 9, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(24, 'Accessories', 20, NULL, 'published', 10, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(25, 'Phones', 0, NULL, 'published', 8, 'product-categories/8.jpg', 1, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(26, 'Babies & Moms', 0, NULL, 'published', 9, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(27, 'Sport & Outdoor', 0, NULL, 'published', 10, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(28, 'Books & Office', 0, NULL, 'published', 11, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(29, 'Cars & Motorcycles', 0, NULL, 'published', 12, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(30, 'Home Improvements', 0, NULL, 'published', 13, NULL, 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories_translations`
--

INSERT INTO `ec_product_categories_translations` (`lang_code`, `ec_product_categories_id`, `name`, `description`) VALUES
('vi', 1, 'Khuyến mãi nổi bật', NULL),
('vi', 2, 'Điện tử', NULL),
('vi', 3, 'Âm thanh và hình ảnh', NULL),
('vi', 4, 'TV & Videos', NULL),
('vi', 5, 'Máy ảnh, Ảnh & Videos', NULL),
('vi', 6, 'Điện thoại & Phụ kiện', NULL),
('vi', 7, 'Tai nghe', NULL),
('vi', 8, 'Trò chơi', NULL),
('vi', 9, 'Tai nghe không dây', NULL),
('vi', 10, 'Điện tử văn phòng', NULL),
('vi', 11, 'Quần áo', NULL),
('vi', 12, 'Máy tính', NULL),
('vi', 13, 'Máy tính và máy tính bảng', NULL),
('vi', 14, 'Máy vi tính', NULL),
('vi', 15, 'Màn hình', NULL),
('vi', 16, 'Thiết bị máy tính', NULL),
('vi', 17, 'Đồ dùng nhà bếp', NULL),
('vi', 18, 'Sức khỏe & làm đẹp', NULL),
('vi', 19, 'Đồng hồ & trang sức', NULL),
('vi', 20, 'Đồ chơi công nghệ', NULL),
('vi', 21, 'Thiết bị lưu trữ', NULL),
('vi', 22, 'Máy tính chơi game', NULL),
('vi', 23, 'Bảo mật', NULL),
('vi', 24, 'Phụ kiện', NULL),
('vi', 25, 'Điện thoại', NULL),
('vi', 26, 'Mẹ và bé', NULL),
('vi', 27, 'Thể thao & ngoài trời', NULL),
('vi', 28, 'Sách & Văn phòng', NULL),
('vi', 29, 'Ôto & Xe máy', NULL),
('vi', 30, 'Thiết bị gia đình', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 16, 1),
(2, 2, 1),
(3, 5, 1),
(4, 15, 1),
(5, 2, 2),
(6, 26, 2),
(7, 36, 2),
(8, 17, 2),
(9, 28, 3),
(10, 10, 3),
(11, 16, 3),
(12, 28, 4),
(13, 21, 4),
(14, 16, 4),
(15, 32, 5),
(16, 22, 5),
(17, 20, 5),
(18, 15, 5),
(19, 16, 6),
(20, 30, 6),
(21, 31, 6),
(22, 15, 6),
(23, 4, 7),
(24, 35, 7),
(25, 37, 7),
(26, 16, 7),
(27, 34, 8),
(28, 31, 8),
(29, 25, 8),
(30, 15, 8),
(31, 23, 9),
(32, 24, 9),
(33, 35, 9),
(34, 17, 9),
(35, 15, 10),
(36, 6, 10),
(37, 22, 11),
(38, 32, 11),
(39, 37, 11),
(40, 17, 11),
(41, 24, 12),
(42, 28, 12),
(43, 4, 12),
(44, 15, 12),
(45, 10, 13),
(46, 28, 13),
(47, 35, 13),
(48, 15, 13),
(49, 33, 14),
(50, 21, 14),
(51, 6, 14),
(52, 17, 14),
(53, 14, 15),
(54, 4, 15),
(55, 6, 15),
(56, 16, 15),
(57, 14, 16),
(58, 35, 16),
(59, 21, 16),
(60, 17, 16),
(61, 10, 17),
(62, 37, 17),
(63, 23, 17),
(64, 15, 17),
(65, 3, 18),
(66, 7, 18),
(67, 24, 18),
(68, 15, 18),
(69, 10, 19),
(70, 37, 19),
(71, 16, 19),
(72, 13, 20),
(73, 23, 20),
(74, 26, 20),
(75, 17, 20),
(76, 19, 21),
(77, 17, 21),
(78, 34, 21),
(79, 15, 21),
(80, 33, 22),
(81, 22, 22),
(82, 12, 22),
(83, 17, 22),
(84, 33, 23),
(85, 21, 23),
(86, 15, 23),
(87, 1, 24),
(88, 31, 24),
(89, 2, 24),
(90, 17, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections_translations`
--

INSERT INTO `ec_product_collections_translations` (`lang_code`, `ec_product_collections_id`, `name`, `description`) VALUES
('vi', 1, 'Hàng mới về', NULL),
('vi', 2, 'Bán chạy nhất', NULL),
('vi', 3, 'Khuyến mãi đặc biệt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`id`, `product_collection_id`, `product_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 1, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 1, 13),
(14, 2, 14),
(15, 2, 15),
(16, 3, 16),
(17, 3, 17),
(18, 1, 18),
(19, 3, 19),
(20, 2, 20),
(21, 3, 21),
(22, 2, 22),
(23, 2, 23),
(24, 3, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`id`, `from_product_id`, `to_product_id`) VALUES
(10, 3, 10),
(16, 5, 1),
(20, 6, 3),
(21, 6, 10),
(28, 8, 24),
(33, 9, 12),
(40, 11, 23),
(43, 12, 8),
(45, 13, 21),
(47, 13, 2),
(49, 14, 11),
(81, 22, 21),
(90, 24, 2),
(91, 24, 13),
(92, 1, 20),
(93, 1, 2),
(94, 1, 18),
(95, 2, 23),
(96, 2, 1),
(97, 2, 21),
(98, 2, 20),
(99, 3, 8),
(100, 3, 11),
(101, 3, 20),
(102, 4, 1),
(103, 4, 5),
(104, 4, 14),
(105, 4, 24),
(106, 5, 19),
(107, 5, 7),
(108, 6, 23),
(109, 7, 9),
(110, 7, 4),
(111, 7, 2),
(112, 8, 4),
(113, 8, 7),
(114, 8, 14),
(115, 9, 15),
(116, 9, 20),
(117, 9, 16),
(118, 10, 18),
(119, 10, 2),
(120, 10, 8),
(121, 11, 13),
(122, 11, 21),
(123, 11, 10),
(124, 12, 2),
(125, 12, 1),
(126, 12, 9),
(127, 13, 22),
(128, 13, 8),
(129, 14, 18),
(130, 14, 6),
(131, 14, 24),
(132, 15, 14),
(133, 15, 22),
(134, 15, 12),
(135, 15, 6),
(136, 16, 23),
(137, 16, 20),
(138, 16, 5),
(139, 16, 8),
(140, 17, 18),
(141, 17, 5),
(142, 17, 22),
(143, 17, 14),
(144, 18, 7),
(145, 18, 17),
(146, 18, 5),
(147, 18, 19),
(148, 19, 2),
(149, 19, 15),
(150, 19, 23),
(151, 19, 4),
(152, 20, 11),
(153, 20, 1),
(154, 20, 16),
(155, 20, 23),
(156, 21, 2),
(157, 21, 24),
(158, 21, 12),
(159, 21, 9),
(160, 22, 17),
(161, 22, 13),
(162, 22, 20),
(163, 23, 9),
(164, 23, 11),
(165, 23, 14),
(166, 23, 5),
(167, 24, 9),
(168, 24, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(2, 'New', '#00c9a7', 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(3, 'Sale', '#fe9931', 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels_translations`
--

INSERT INTO `ec_product_labels_translations` (`lang_code`, `ec_product_labels_id`, `name`, `description`) VALUES
('vi', 1, 'Nổi bật', NULL),
('vi', 2, 'Mới', NULL),
('vi', 3, 'Giảm giá', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 21),
(2, 7),
(2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wallet', NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(2, 'Bags', NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(3, 'Shoes', NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(4, 'Clothes', NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(5, 'Hand bag', NULL, 'published', '2021-08-24 07:58:11', '2021-08-24 07:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 1),
(1, 4),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 5),
(3, 6),
(4, 4),
(4, 6),
(5, 3),
(5, 4),
(5, 5),
(6, 1),
(6, 4),
(6, 6),
(7, 2),
(7, 3),
(7, 5),
(8, 2),
(8, 4),
(8, 5),
(9, 2),
(9, 6),
(10, 1),
(10, 3),
(10, 6),
(11, 3),
(11, 5),
(11, 6),
(12, 1),
(12, 3),
(12, 5),
(13, 1),
(13, 3),
(13, 5),
(14, 1),
(14, 4),
(14, 6),
(15, 2),
(15, 3),
(15, 6),
(16, 5),
(16, 6),
(17, 1),
(17, 2),
(17, 3),
(18, 3),
(18, 5),
(19, 2),
(19, 4),
(19, 6),
(20, 3),
(20, 4),
(20, 5),
(21, 2),
(21, 4),
(21, 5),
(22, 2),
(22, 3),
(22, 5),
(23, 2),
(23, 5),
(23, 6),
(24, 4),
(24, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 25, 1, 1),
(2, 26, 1, 0),
(3, 27, 2, 1),
(4, 28, 3, 1),
(5, 29, 3, 0),
(6, 30, 4, 1),
(7, 31, 4, 0),
(8, 32, 5, 1),
(9, 33, 5, 0),
(10, 34, 6, 1),
(11, 35, 6, 0),
(12, 36, 6, 0),
(13, 37, 6, 0),
(14, 38, 7, 1),
(15, 39, 8, 1),
(16, 40, 8, 0),
(17, 41, 9, 1),
(18, 42, 9, 0),
(19, 43, 9, 0),
(20, 44, 10, 1),
(21, 45, 10, 0),
(22, 46, 10, 0),
(23, 47, 11, 1),
(24, 48, 11, 0),
(25, 49, 11, 0),
(26, 50, 12, 1),
(27, 51, 12, 0),
(28, 52, 12, 0),
(29, 53, 12, 0),
(30, 54, 12, 0),
(31, 55, 13, 1),
(32, 56, 13, 0),
(33, 57, 13, 0),
(34, 58, 14, 1),
(35, 59, 14, 0),
(36, 60, 15, 1),
(37, 61, 15, 0),
(38, 62, 16, 1),
(39, 63, 16, 0),
(40, 64, 17, 1),
(41, 65, 17, 0),
(42, 66, 17, 0),
(43, 67, 18, 1),
(44, 68, 18, 0),
(45, 69, 18, 0),
(46, 70, 18, 0),
(47, 71, 19, 1),
(48, 72, 19, 0),
(49, 73, 19, 0),
(50, 74, 20, 1),
(51, 75, 20, 0),
(52, 76, 20, 0),
(53, 77, 21, 1),
(54, 78, 22, 1),
(55, 79, 22, 0),
(56, 80, 22, 0),
(57, 81, 22, 0),
(58, 82, 23, 1),
(59, 83, 24, 1),
(60, 84, 24, 0),
(61, 85, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(1, 1, 1),
(2, 6, 1),
(3, 3, 2),
(4, 10, 2),
(5, 2, 3),
(6, 7, 3),
(7, 4, 4),
(8, 6, 4),
(9, 4, 5),
(10, 8, 5),
(11, 4, 6),
(12, 8, 6),
(13, 1, 7),
(14, 9, 7),
(15, 3, 8),
(16, 7, 8),
(17, 5, 9),
(18, 6, 9),
(19, 1, 10),
(20, 8, 10),
(21, 1, 11),
(22, 10, 11),
(23, 2, 12),
(24, 8, 12),
(25, 1, 13),
(26, 9, 13),
(27, 1, 14),
(28, 8, 14),
(29, 2, 15),
(30, 9, 15),
(31, 5, 16),
(32, 6, 16),
(33, 4, 17),
(34, 6, 17),
(35, 3, 18),
(36, 9, 18),
(37, 3, 19),
(38, 8, 19),
(39, 1, 20),
(40, 7, 20),
(41, 3, 21),
(42, 8, 21),
(43, 2, 22),
(44, 7, 22),
(45, 4, 23),
(46, 6, 23),
(47, 1, 24),
(48, 9, 24),
(49, 4, 25),
(50, 7, 25),
(51, 5, 26),
(52, 6, 26),
(53, 1, 27),
(54, 8, 27),
(55, 3, 28),
(56, 10, 28),
(57, 2, 29),
(58, 10, 29),
(59, 2, 30),
(60, 9, 30),
(61, 3, 31),
(62, 7, 31),
(63, 2, 32),
(64, 10, 32),
(65, 2, 33),
(66, 10, 33),
(67, 4, 34),
(68, 6, 34),
(69, 3, 35),
(70, 10, 35),
(71, 1, 36),
(72, 6, 36),
(73, 1, 37),
(74, 10, 37),
(75, 1, 38),
(76, 6, 38),
(77, 1, 39),
(78, 10, 39),
(79, 5, 40),
(80, 10, 40),
(81, 2, 41),
(82, 7, 41),
(83, 2, 42),
(84, 7, 42),
(85, 3, 43),
(86, 10, 43),
(87, 5, 44),
(88, 7, 44),
(89, 5, 45),
(90, 10, 45),
(91, 5, 46),
(92, 7, 46),
(93, 3, 47),
(94, 10, 47),
(95, 5, 48),
(96, 6, 48),
(97, 3, 49),
(98, 9, 49),
(99, 3, 50),
(100, 8, 50),
(101, 3, 51),
(102, 7, 51),
(103, 4, 52),
(104, 6, 52),
(105, 5, 53),
(106, 6, 53),
(107, 2, 54),
(108, 8, 54),
(109, 1, 55),
(110, 10, 55),
(111, 3, 56),
(112, 6, 56),
(113, 5, 57),
(114, 7, 57),
(115, 5, 58),
(116, 8, 58),
(117, 4, 59),
(118, 6, 59),
(119, 3, 60),
(120, 7, 60),
(121, 5, 61),
(122, 6, 61);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute`
--

INSERT INTO `ec_product_with_attribute` (`id`, `attribute_id`, `product_id`) VALUES
(1, 5, 1),
(2, 8, 1),
(3, 1, 2),
(4, 10, 2),
(5, 4, 3),
(6, 7, 3),
(7, 5, 4),
(8, 6, 4),
(9, 3, 5),
(10, 9, 5),
(11, 2, 6),
(12, 7, 6),
(13, 4, 7),
(14, 9, 7),
(15, 4, 8),
(16, 8, 8),
(17, 5, 9),
(18, 6, 9),
(19, 2, 10),
(20, 6, 10),
(21, 1, 11),
(22, 9, 11),
(23, 3, 12),
(24, 8, 12),
(25, 2, 13),
(26, 9, 13),
(27, 1, 14),
(28, 8, 14),
(29, 2, 15),
(30, 7, 15),
(31, 1, 16),
(32, 6, 16),
(33, 5, 17),
(34, 8, 17),
(35, 2, 18),
(36, 9, 18),
(37, 4, 19),
(38, 8, 19),
(39, 1, 20),
(40, 6, 20),
(41, 3, 21),
(42, 8, 21),
(43, 5, 22),
(44, 7, 22),
(45, 2, 23),
(46, 10, 23),
(47, 2, 24),
(48, 6, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`id`, `attribute_set_id`, `product_id`, `order`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 1, 2, 0),
(4, 2, 2, 0),
(5, 1, 3, 0),
(6, 2, 3, 0),
(7, 1, 4, 0),
(8, 2, 4, 0),
(9, 1, 5, 0),
(10, 2, 5, 0),
(11, 1, 6, 0),
(12, 2, 6, 0),
(13, 1, 7, 0),
(14, 2, 7, 0),
(15, 1, 8, 0),
(16, 2, 8, 0),
(17, 1, 9, 0),
(18, 2, 9, 0),
(19, 1, 10, 0),
(20, 2, 10, 0),
(21, 1, 11, 0),
(22, 2, 11, 0),
(23, 1, 12, 0),
(24, 2, 12, 0),
(25, 1, 13, 0),
(26, 2, 13, 0),
(27, 1, 14, 0),
(28, 2, 14, 0),
(29, 1, 15, 0),
(30, 2, 15, 0),
(31, 1, 16, 0),
(32, 2, 16, 0),
(33, 1, 17, 0),
(34, 2, 17, 0),
(35, 1, 18, 0),
(36, 2, 18, 0),
(37, 1, 19, 0),
(38, 2, 19, 0),
(39, 1, 20, 0),
(40, 2, 20, 0),
(41, 1, 21, 0),
(42, 2, 21, 0),
(43, 1, 22, 0),
(44, 2, 22, 0),
(45, 1, 23, 0),
(46, 2, 23, 0),
(47, 1, 24, 0),
(48, 2, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_reviews`
--

INSERT INTO `ec_reviews` (`id`, `customer_id`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 53, 2.00, 'Architecto consequuntur velit alias quia sint. Magni tenetur dolor dolores aut dolores. Maxime dolorum eligendi sit eos voluptas quasi rerum.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(2, 7, 34, 3.00, 'Optio est tenetur temporibus aspernatur. Nemo quas consequatur deleniti. Aut mollitia in debitis ullam quia.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(3, 3, 36, 2.00, 'Quisquam voluptas dicta possimus rerum maxime saepe. Accusamus porro laboriosam deserunt cumque eos quia. Rem voluptate fugiat quas.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(4, 2, 53, 3.00, 'Eius iusto provident accusamus fugit quia ut. Necessitatibus id voluptas explicabo velit. Exercitationem itaque facere laborum est.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(5, 9, 8, 2.00, 'Sed fugiat voluptatum rem et ab quo provident. Sint sit error officiis vel voluptates culpa. Nihil non rerum magnam quod enim sint ipsam totam.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(6, 5, 50, 5.00, 'Vel incidunt quos magnam voluptas qui. Ut provident dolor qui ad dolorum. Porro dolores ea eaque. Ea quos officia quia nemo rerum deleniti.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(7, 6, 11, 5.00, 'Adipisci eum ullam officia sequi facere et occaecati consectetur. Qui autem minus numquam unde. Quo cum fuga dicta. Sint et nihil amet ipsam.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(8, 9, 40, 2.00, 'Exercitationem veniam ut quas quia est. Rerum eos ipsum eligendi labore et nihil. Esse quia cumque quae. Laborum voluptatem atque facere veritatis.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(9, 9, 51, 5.00, 'Sunt suscipit laborum aut qui. Itaque dignissimos blanditiis eveniet ipsa. Ut rerum itaque possimus qui omnis quae ratione asperiores.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(10, 2, 48, 5.00, 'Consequatur perferendis vel et quibusdam quae. Vel exercitationem qui suscipit nemo eius officiis. Eveniet aut quos et doloremque laborum.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(11, 9, 8, 4.00, 'Et amet ut dolorum dolorem. Sed earum cum qui. Officia sint dolor nemo provident qui. Eius voluptatem amet voluptas.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(12, 5, 69, 1.00, 'Minima et consequuntur quo corporis exercitationem a cumque. Amet a in enim delectus. Porro libero maiores nam optio rerum est ipsum.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(13, 9, 46, 1.00, 'Quia dolor reprehenderit totam. Totam rerum architecto ut et architecto sint earum. Quidem ut ut modi sit sit ipsa ea.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(14, 6, 57, 4.00, 'Eos consequatur et hic perferendis rem pariatur illo. Dolore quisquam optio fuga. Et quaerat cupiditate placeat doloremque.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(15, 1, 77, 4.00, 'Est est ea iusto maxime sint. Omnis rerum corporis natus atque iure. Quis suscipit voluptatem autem accusamus.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(16, 6, 27, 4.00, 'Sit id ipsa temporibus dicta eum maxime. Aut iure occaecati sed illo debitis. Odit unde velit molestias qui qui dolorum.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(17, 1, 61, 4.00, 'Quia maxime et dolorum dolores animi maiores. Voluptatem voluptate sequi excepturi et id.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(18, 5, 7, 4.00, 'Rerum quis magnam nulla voluptate reiciendis sequi voluptas. Sunt animi illum et. Illum laudantium est et quisquam et ad dolorum illo.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(19, 9, 46, 1.00, 'Vero ut qui est beatae corporis. Omnis voluptatum consequatur sed.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(20, 5, 54, 1.00, 'Laudantium omnis ipsam cupiditate velit. Quia aperiam est deserunt dolor. Id est quis voluptatum et et sit. Sit dolor quas et tempora facere.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(21, 2, 22, 3.00, 'Qui harum aut commodi voluptatem exercitationem placeat. Itaque velit omnis tempora reiciendis eos.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(22, 3, 58, 4.00, 'Enim ut saepe aut nostrum magnam vel. Qui fuga numquam placeat omnis cum. Eum officiis perspiciatis aut sit laborum dolor nam.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(23, 3, 77, 2.00, 'Exercitationem consectetur mollitia nemo reprehenderit. Culpa vel tenetur omnis. Ab blanditiis asperiores tenetur harum in esse qui.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(24, 1, 44, 4.00, 'Voluptas dolor voluptatem earum maxime illum tempore. Esse nihil quo voluptatem. Sit et quis sed nihil.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(25, 3, 15, 2.00, 'Non consequatur expedita molestiae id. Asperiores praesentium excepturi odio incidunt ducimus ipsam. Aut porro debitis incidunt aut mollitia saepe.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(26, 8, 43, 3.00, 'Reprehenderit et dolor commodi quo ducimus non voluptas. Perferendis quasi tenetur voluptatem. Laborum culpa earum quae ad sed voluptates.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(27, 7, 26, 1.00, 'Autem rerum voluptate enim sint sunt exercitationem earum. Voluptatem molestiae vel et delectus. Architecto odit voluptatem animi et rerum quibusdam.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(28, 3, 21, 4.00, 'Aspernatur quidem eaque aut sequi error voluptas. Voluptatem facere enim consequatur. Dolores quo rerum qui sed quod magni et.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(29, 8, 11, 4.00, 'Impedit quo vero quam quo eum ut. Iure nam saepe deserunt et iure vitae. Ut ut porro culpa in. Repellendus aut expedita quod enim.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(30, 5, 17, 4.00, 'Porro qui omnis quia. Debitis perferendis temporibus et blanditiis sunt dolor porro. Ipsum excepturi ea rem repellat assumenda magnam.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(31, 7, 27, 1.00, 'Porro exercitationem nesciunt dolor temporibus ipsa. Qui porro eum odit libero quia pariatur.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(32, 3, 56, 3.00, 'Reiciendis et asperiores rem quis explicabo quia sequi. Est molestias et dicta nobis.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(33, 4, 80, 2.00, 'Dolorum illum molestiae molestias quia quam nam ratione. In et ut deserunt et cumque sint veritatis. Quae et quae odit sequi iusto nihil officiis.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(34, 6, 8, 1.00, 'Harum aut non exercitationem molestiae. Autem accusantium quia nisi. Quas qui voluptas autem non. Autem id asperiores beatae consequuntur delectus.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(35, 8, 26, 5.00, 'Id qui sint sit error. Similique et voluptatum similique quae officiis ullam aliquid maxime. Quo qui in occaecati rerum veritatis provident.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(36, 3, 56, 1.00, 'Quod aut voluptatem sint dolor expedita pariatur et. Incidunt dolor odit facilis qui eius magni temporibus.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(37, 5, 66, 1.00, 'Accusantium laudantium voluptates ex in mollitia culpa quae. Consequatur aperiam aperiam ab doloremque est. Quibusdam quia eveniet eos.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(38, 8, 30, 3.00, 'Aut quia consequuntur non autem aut. Iure quam est veritatis omnis commodi ut et. Dolorum libero quis omnis dolorem.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(39, 7, 43, 2.00, 'Sed tempora beatae rem ipsum. Ad modi esse voluptatem animi a officia. Aut nemo beatae quia quasi.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(40, 3, 8, 5.00, 'Optio doloremque pariatur nam eum qui pariatur voluptatem. Qui totam repudiandae ut aut fugit iure nam. Omnis fuga totam commodi minus quis vel.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(41, 1, 17, 1.00, 'Sit in qui nostrum amet nesciunt. Voluptatem eveniet quae illo minus et deleniti. Ipsam ut saepe harum qui eos ut.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(42, 4, 80, 1.00, 'Autem aut et asperiores nam. Eos laudantium cumque natus sed beatae voluptatum quo. Laborum sed saepe in aut.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(43, 7, 37, 5.00, 'Ullam vel soluta ut. Nobis est id voluptas velit minus qui neque. Et qui dolores molestiae neque excepturi placeat eius.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(44, 5, 56, 2.00, 'Ratione rerum consequatur in similique. Nihil sed dolores suscipit repudiandae vel aspernatur.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(45, 8, 74, 4.00, 'Repellat voluptas ratione eum laudantium molestias omnis numquam eos. Eaque quo quo rerum adipisci.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(46, 9, 15, 2.00, 'Maiores cupiditate vitae nostrum est illum. Tenetur consequatur vitae dolorem et. Numquam vel maxime officiis temporibus provident minus aut.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(47, 5, 18, 3.00, 'Sit et ex assumenda vel. Autem nam est aut non esse. Numquam minima assumenda ratione.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(48, 1, 67, 4.00, 'Rerum sed sit qui qui libero sit et. Rerum id blanditiis qui laudantium aut perferendis. Voluptas dolores necessitatibus dolorum qui debitis.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(49, 1, 26, 3.00, 'Voluptatum sed aliquid cupiditate placeat veritatis esse. Placeat et possimus quo omnis voluptatum soluta. Debitis ipsum id porro eveniet possimus.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(50, 2, 12, 1.00, 'Enim modi amet deserunt veritatis dolores facilis. Esse fugiat ut aperiam necessitatibus labore est. Quia qui consequuntur et omnis et magnam totam.', 'published', '2021-08-24 07:59:33', '2021-08-24 07:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 2976.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(2, 2, NULL, 2289.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(3, 3, NULL, 6088.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(4, 4, NULL, 4200.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(5, 5, NULL, 6145.00, NULL, '', 'approved', '1050.90', 'pending', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(6, 6, NULL, 1599.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(7, 7, NULL, 6480.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(8, 8, NULL, 4449.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(9, 9, NULL, 4652.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(10, 10, NULL, 2491.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(11, 11, NULL, 6428.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(12, 12, NULL, 4300.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(13, 13, NULL, 8247.00, NULL, '', 'delivered', '1325.80', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(14, 14, NULL, 3655.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(15, 15, NULL, 2937.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(16, 16, NULL, 2038.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(17, 17, NULL, 3798.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(18, 18, NULL, 2444.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(19, 19, NULL, 2505.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(20, 20, NULL, 2631.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-08-24 07:59:35', '2021-08-24 07:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'create_from_order', 'Shipping was created from order %order_id%', 0, 1, 1, '2021-08-17 15:59:35', '2021-08-17 15:59:35'),
(2, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 1, 1, '2021-08-22 15:59:35', '2021-08-24 07:59:35'),
(3, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, 1, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(4, 'create_from_order', 'Shipping was created from order %order_id%', 0, 2, 2, '2021-08-10 01:59:35', '2021-08-10 01:59:35'),
(5, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 2, 2, '2021-08-22 17:59:35', '2021-08-24 07:59:35'),
(6, 'create_from_order', 'Shipping was created from order %order_id%', 0, 3, 3, '2021-08-16 19:59:35', '2021-08-16 19:59:35'),
(7, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 3, 3, '2021-08-22 19:59:35', '2021-08-24 07:59:35'),
(8, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, 3, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(9, 'create_from_order', 'Shipping was created from order %order_id%', 0, 4, 4, '2021-08-21 11:59:35', '2021-08-21 11:59:35'),
(10, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 4, 4, '2021-08-22 21:59:35', '2021-08-24 07:59:35'),
(11, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2021-08-16 07:59:35', '2021-08-16 07:59:35'),
(12, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2021-08-22 23:59:35', '2021-08-24 07:59:35'),
(13, 'create_from_order', 'Shipping was created from order %order_id%', 0, 6, 6, '2021-08-14 07:59:35', '2021-08-14 07:59:35'),
(14, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 6, 6, '2021-08-23 01:59:35', '2021-08-24 07:59:35'),
(15, 'create_from_order', 'Shipping was created from order %order_id%', 0, 7, 7, '2021-08-23 03:59:35', '2021-08-23 03:59:35'),
(16, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 7, 7, '2021-08-23 03:59:35', '2021-08-24 07:59:35'),
(17, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 7, 7, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(18, 'create_from_order', 'Shipping was created from order %order_id%', 0, 8, 8, '2021-08-21 01:59:35', '2021-08-21 01:59:35'),
(19, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 8, 8, '2021-08-23 05:59:35', '2021-08-24 07:59:35'),
(20, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2021-08-22 07:59:35', '2021-08-22 07:59:35'),
(21, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2021-08-23 07:59:35', '2021-08-24 07:59:35'),
(22, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, 9, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(23, 'create_from_order', 'Shipping was created from order %order_id%', 0, 10, 10, '2021-08-16 01:59:35', '2021-08-16 01:59:35'),
(24, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 10, 10, '2021-08-23 09:59:35', '2021-08-24 07:59:35'),
(25, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, 10, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(26, 'create_from_order', 'Shipping was created from order %order_id%', 0, 11, 11, '2021-08-17 15:59:35', '2021-08-17 15:59:35'),
(27, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 11, 11, '2021-08-23 11:59:35', '2021-08-24 07:59:35'),
(28, 'create_from_order', 'Shipping was created from order %order_id%', 0, 12, 12, '2021-08-21 07:59:35', '2021-08-21 07:59:35'),
(29, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 12, 12, '2021-08-23 13:59:35', '2021-08-24 07:59:35'),
(30, 'create_from_order', 'Shipping was created from order %order_id%', 0, 13, 13, '2021-08-22 23:59:35', '2021-08-22 23:59:35'),
(31, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 13, 13, '2021-08-23 15:59:35', '2021-08-24 07:59:35'),
(32, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 13, 13, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(33, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, 13, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(34, 'create_from_order', 'Shipping was created from order %order_id%', 0, 14, 14, '2021-08-20 19:59:35', '2021-08-20 19:59:35'),
(35, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 14, 14, '2021-08-23 17:59:35', '2021-08-24 07:59:35'),
(36, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 14, 14, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(37, 'create_from_order', 'Shipping was created from order %order_id%', 0, 15, 15, '2021-08-19 07:59:35', '2021-08-19 07:59:35'),
(38, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 15, 15, '2021-08-23 19:59:35', '2021-08-24 07:59:35'),
(39, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, 15, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(40, 'create_from_order', 'Shipping was created from order %order_id%', 0, 16, 16, '2021-08-20 23:59:35', '2021-08-20 23:59:35'),
(41, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 16, 16, '2021-08-23 21:59:35', '2021-08-24 07:59:35'),
(42, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, 16, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(43, 'create_from_order', 'Shipping was created from order %order_id%', 0, 17, 17, '2021-08-23 23:59:35', '2021-08-23 23:59:35'),
(44, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 17, 17, '2021-08-23 23:59:35', '2021-08-24 07:59:35'),
(45, 'create_from_order', 'Shipping was created from order %order_id%', 0, 18, 18, '2021-08-22 13:59:35', '2021-08-22 13:59:35'),
(46, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 18, 18, '2021-08-24 01:59:35', '2021-08-24 07:59:35'),
(47, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, 18, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(48, 'create_from_order', 'Shipping was created from order %order_id%', 0, 19, 19, '2021-08-23 15:59:35', '2021-08-23 15:59:35'),
(49, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 19, 19, '2021-08-24 03:59:35', '2021-08-24 07:59:35'),
(50, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, 19, '2021-08-24 07:59:35', '2021-08-24 07:59:35'),
(51, 'create_from_order', 'Shipping was created from order %order_id%', 0, 20, 20, '2021-08-23 13:59:35', '2021-08-23 13:59:35'),
(52, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 20, 20, '2021-08-24 05:59:35', '2021-08-24 07:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2021-08-24 07:59:33', '2021-08-24 07:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free shipping', 1, 'base_on_price', '0.00', NULL, '0.00', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(2, 'Local Pickup', 1, 'base_on_price', '0.00', NULL, '20.00', '2021-08-24 07:59:33', '2021-08-24 07:59:33'),
(3, 'Flat Rate', 1, 'base_on_price', '0.00', NULL, '25.00', '2021-08-24 07:59:33', '2021-08-24 07:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Wowy', 'sales@botble.com', '18006268', 'North Link Building, 10 Admiralty Street', 'SG', 'Singapore', 'Singapore', 1, 1, '2021-08-24 07:59:33', '2021-08-24 07:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2021-08-24 07:59:25', '2021-08-24 07:59:25'),
(2, 'None', 0.000000, 2, 'published', '2021-08-24 07:59:25', '2021-08-24 07:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'd6d790c78491e587da60340e2997117f', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'en_US', 'd23325b6e51c1ab697546d1dacd30826', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(3, 'en_US', '8eee1b8000105419d04074c72640b64c', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(4, 'en_US', '2b73c29c8e6c7fb787988276a62a132c', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(5, 'vi', 'd6d790c78491e587da60340e2997117f', 5, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(6, 'vi', 'd23325b6e51c1ab697546d1dacd30826', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(7, 'vi', '8eee1b8000105419d04074c72640b64c', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(8, 'vi', '2b73c29c8e6c7fb787988276a62a132c', 8, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(9, 'en_US', '4a2aafff20da2d90219f423ff48e45fc', 1, 'Botble\\Blog\\Models\\Category'),
(10, 'en_US', 'da69f5c102f222d55650025fa7e860ef', 2, 'Botble\\Blog\\Models\\Category'),
(11, 'en_US', '89dd3fc75cbd7bf456c2da487d18a6a8', 3, 'Botble\\Blog\\Models\\Category'),
(12, 'en_US', '0cd8ebe93bb52bf3bdb5e253541e6c7d', 4, 'Botble\\Blog\\Models\\Category'),
(13, 'vi', '4a2aafff20da2d90219f423ff48e45fc', 5, 'Botble\\Blog\\Models\\Category'),
(14, 'vi', 'da69f5c102f222d55650025fa7e860ef', 6, 'Botble\\Blog\\Models\\Category'),
(15, 'vi', '89dd3fc75cbd7bf456c2da487d18a6a8', 7, 'Botble\\Blog\\Models\\Category'),
(16, 'vi', '0cd8ebe93bb52bf3bdb5e253541e6c7d', 8, 'Botble\\Blog\\Models\\Category'),
(17, 'en_US', '3756b4eb428e49fb73a60199d85c538a', 1, 'Botble\\Blog\\Models\\Tag'),
(18, 'en_US', '910dd3a21b3565214e34d61fda0b09da', 2, 'Botble\\Blog\\Models\\Tag'),
(19, 'en_US', '78eeecec7492de0e85a522c693f3d748', 3, 'Botble\\Blog\\Models\\Tag'),
(20, 'en_US', 'ad109fb069d8534ad6fdd6addedf5f67', 4, 'Botble\\Blog\\Models\\Tag'),
(21, 'en_US', '2df1e675a14922a117384906c4c429d3', 5, 'Botble\\Blog\\Models\\Tag'),
(22, 'vi', '3756b4eb428e49fb73a60199d85c538a', 6, 'Botble\\Blog\\Models\\Tag'),
(23, 'vi', '910dd3a21b3565214e34d61fda0b09da', 7, 'Botble\\Blog\\Models\\Tag'),
(24, 'vi', '78eeecec7492de0e85a522c693f3d748', 8, 'Botble\\Blog\\Models\\Tag'),
(25, 'vi', 'ad109fb069d8534ad6fdd6addedf5f67', 9, 'Botble\\Blog\\Models\\Tag'),
(26, 'vi', '2df1e675a14922a117384906c4c429d3', 10, 'Botble\\Blog\\Models\\Tag'),
(27, 'en_US', '14e06474106868a5b6f70977edfc15e4', 1, 'Botble\\Blog\\Models\\Post'),
(28, 'en_US', '1d8ad098770d55c7dea62726f3f14947', 2, 'Botble\\Blog\\Models\\Post'),
(29, 'en_US', '90709a8d583d4833a583547fba739cb4', 3, 'Botble\\Blog\\Models\\Post'),
(30, 'en_US', '8b777ae40f06887a074cebd64d61bdd2', 4, 'Botble\\Blog\\Models\\Post'),
(31, 'en_US', '879cab82377a89c2f258a6a1c120a46c', 5, 'Botble\\Blog\\Models\\Post'),
(32, 'en_US', 'a1629c9c6283b5bd228a188f32676545', 6, 'Botble\\Blog\\Models\\Post'),
(33, 'en_US', 'c44c1ccce5b557eaaf5b7c48fcb8da99', 7, 'Botble\\Blog\\Models\\Post'),
(34, 'en_US', '3c9dd11fd4cb140f5cf8c62c0b699130', 8, 'Botble\\Blog\\Models\\Post'),
(35, 'en_US', '51644ffbbd22ea9003c2d12812e51a9c', 9, 'Botble\\Blog\\Models\\Post'),
(36, 'en_US', '23fe3e7e598718c8649d00ca9edd188b', 10, 'Botble\\Blog\\Models\\Post'),
(37, 'en_US', '6c41d81abe2fefc56075005f04a046fd', 11, 'Botble\\Blog\\Models\\Post'),
(38, 'vi', '14e06474106868a5b6f70977edfc15e4', 12, 'Botble\\Blog\\Models\\Post'),
(39, 'vi', '1d8ad098770d55c7dea62726f3f14947', 13, 'Botble\\Blog\\Models\\Post'),
(40, 'vi', '90709a8d583d4833a583547fba739cb4', 14, 'Botble\\Blog\\Models\\Post'),
(41, 'vi', '8b777ae40f06887a074cebd64d61bdd2', 15, 'Botble\\Blog\\Models\\Post'),
(42, 'vi', '879cab82377a89c2f258a6a1c120a46c', 16, 'Botble\\Blog\\Models\\Post'),
(43, 'vi', 'a1629c9c6283b5bd228a188f32676545', 17, 'Botble\\Blog\\Models\\Post'),
(44, 'vi', 'c44c1ccce5b557eaaf5b7c48fcb8da99', 18, 'Botble\\Blog\\Models\\Post'),
(45, 'vi', '3c9dd11fd4cb140f5cf8c62c0b699130', 19, 'Botble\\Blog\\Models\\Post'),
(46, 'vi', '51644ffbbd22ea9003c2d12812e51a9c', 20, 'Botble\\Blog\\Models\\Post'),
(47, 'vi', '23fe3e7e598718c8649d00ca9edd188b', 21, 'Botble\\Blog\\Models\\Post'),
(48, 'vi', '6c41d81abe2fefc56075005f04a046fd', 22, 'Botble\\Blog\\Models\\Post'),
(49, 'en_US', '7835bde3be7bf0aaea920b558b9353f4', 1, 'Botble\\Page\\Models\\Page'),
(50, 'en_US', '977db7500b49d06b63827c576447b6c1', 2, 'Botble\\Page\\Models\\Page'),
(51, 'en_US', '3c4c9c3db877e4253c9c2477f7109dae', 3, 'Botble\\Page\\Models\\Page'),
(52, 'en_US', '15d6d85205f8ef15d51325e6f4e830cb', 4, 'Botble\\Page\\Models\\Page'),
(53, 'en_US', 'daefa800b0bc9210b78f698f0912d855', 5, 'Botble\\Page\\Models\\Page'),
(54, 'en_US', 'f7a40068770fe7142087e1f8a8d9fc46', 6, 'Botble\\Page\\Models\\Page'),
(55, 'en_US', '339c10ed9d2f668dbd3b82033b5da5bd', 7, 'Botble\\Page\\Models\\Page'),
(56, 'en_US', '20223f0f224b2c8e1bdd2d5a79bf504c', 8, 'Botble\\Page\\Models\\Page'),
(57, 'en_US', '9d6d910e7fe3078bbca8d065dec3f648', 9, 'Botble\\Page\\Models\\Page'),
(58, 'en_US', 'f870197da8fa11839d4be3463de8c4b1', 10, 'Botble\\Page\\Models\\Page'),
(59, 'en_US', '56fbc8bc51584ccae5be159e54a8537c', 11, 'Botble\\Page\\Models\\Page'),
(60, 'en_US', 'f87ec38c4cabd0f3e76f7907f8c622e5', 12, 'Botble\\Page\\Models\\Page'),
(61, 'en_US', '9720940d47a0e62b933fca86ea42764d', 13, 'Botble\\Page\\Models\\Page'),
(62, 'vi', '7835bde3be7bf0aaea920b558b9353f4', 14, 'Botble\\Page\\Models\\Page'),
(63, 'vi', '977db7500b49d06b63827c576447b6c1', 15, 'Botble\\Page\\Models\\Page'),
(64, 'vi', '3c4c9c3db877e4253c9c2477f7109dae', 16, 'Botble\\Page\\Models\\Page'),
(65, 'vi', '15d6d85205f8ef15d51325e6f4e830cb', 17, 'Botble\\Page\\Models\\Page'),
(66, 'vi', 'daefa800b0bc9210b78f698f0912d855', 18, 'Botble\\Page\\Models\\Page'),
(67, 'vi', 'f7a40068770fe7142087e1f8a8d9fc46', 19, 'Botble\\Page\\Models\\Page'),
(68, 'vi', '339c10ed9d2f668dbd3b82033b5da5bd', 20, 'Botble\\Page\\Models\\Page'),
(69, 'vi', '20223f0f224b2c8e1bdd2d5a79bf504c', 21, 'Botble\\Page\\Models\\Page'),
(70, 'vi', '9d6d910e7fe3078bbca8d065dec3f648', 22, 'Botble\\Page\\Models\\Page'),
(71, 'vi', 'f870197da8fa11839d4be3463de8c4b1', 23, 'Botble\\Page\\Models\\Page'),
(72, 'vi', '56fbc8bc51584ccae5be159e54a8537c', 24, 'Botble\\Page\\Models\\Page'),
(73, 'vi', 'f87ec38c4cabd0f3e76f7907f8c622e5', 25, 'Botble\\Page\\Models\\Page'),
(74, 'vi', '9720940d47a0e62b933fca86ea42764d', 26, 'Botble\\Page\\Models\\Page'),
(75, 'en_US', 'f43b82ada220dc448107b29e5cbb90df', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(76, 'en_US', '8c3aaba621da0294d92a73aa3138cbc7', 1, 'Botble\\Menu\\Models\\Menu'),
(77, 'en_US', '93c745c97e9b035cda20ae5ed6824edd', 2, 'Botble\\Menu\\Models\\Menu'),
(78, 'en_US', '60121098526c4324ad74d53e3593deb4', 3, 'Botble\\Menu\\Models\\Menu'),
(79, 'vi', 'e9be4750d10a6a99c762f29358ff26dc', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(80, 'vi', '8c3aaba621da0294d92a73aa3138cbc7', 4, 'Botble\\Menu\\Models\\Menu'),
(81, 'vi', '93c745c97e9b035cda20ae5ed6824edd', 5, 'Botble\\Menu\\Models\\Menu'),
(82, 'vi', '60121098526c4324ad74d53e3593deb4', 6, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(81, 0, '1', 5, 'image/png', 1318, 'brands/1.png', '[]', '2021-08-24 07:58:06', '2021-08-24 07:58:06', NULL),
(82, 0, '2', 5, 'image/png', 999, 'brands/2.png', '[]', '2021-08-24 07:58:07', '2021-08-24 07:58:07', NULL),
(83, 0, '3', 5, 'image/png', 1251, 'brands/3.png', '[]', '2021-08-24 07:58:07', '2021-08-24 07:58:07', NULL),
(84, 0, '4', 5, 'image/png', 1539, 'brands/4.png', '[]', '2021-08-24 07:58:07', '2021-08-24 07:58:07', NULL),
(85, 0, '5', 5, 'image/png', 1058, 'brands/5.png', '[]', '2021-08-24 07:58:08', '2021-08-24 07:58:08', NULL),
(86, 0, '6', 5, 'image/png', 4165, 'brands/6.png', '[]', '2021-08-24 07:58:08', '2021-08-24 07:58:08', NULL),
(87, 0, '7', 5, 'image/png', 1260, 'brands/7.png', '[]', '2021-08-24 07:58:08', '2021-08-24 07:58:08', NULL),
(88, 0, '1', 6, 'image/jpeg', 75180, 'product-categories/1.jpg', '[]', '2021-08-24 07:58:09', '2021-08-24 07:58:09', NULL),
(89, 0, '2', 6, 'image/jpeg', 81345, 'product-categories/2.jpg', '[]', '2021-08-24 07:58:09', '2021-08-24 07:58:09', NULL),
(90, 0, '3', 6, 'image/jpeg', 99137, 'product-categories/3.jpg', '[]', '2021-08-24 07:58:09', '2021-08-24 07:58:09', NULL),
(91, 0, '4', 6, 'image/jpeg', 108690, 'product-categories/4.jpg', '[]', '2021-08-24 07:58:09', '2021-08-24 07:58:09', NULL),
(92, 0, '5', 6, 'image/jpeg', 53952, 'product-categories/5.jpg', '[]', '2021-08-24 07:58:10', '2021-08-24 07:58:10', NULL),
(93, 0, '6', 6, 'image/jpeg', 47088, 'product-categories/6.jpg', '[]', '2021-08-24 07:58:10', '2021-08-24 07:58:10', NULL),
(94, 0, '7', 6, 'image/jpeg', 48248, 'product-categories/7.jpg', '[]', '2021-08-24 07:58:10', '2021-08-24 07:58:10', NULL),
(95, 0, '8', 6, 'image/jpeg', 67235, 'product-categories/8.jpg', '[]', '2021-08-24 07:58:11', '2021-08-24 07:58:11', NULL),
(96, 0, '1-1', 7, 'image/jpeg', 88437, 'products/1-1.jpg', '[]', '2021-08-24 07:58:11', '2021-08-24 07:58:11', NULL),
(97, 0, '1-2', 7, 'image/jpeg', 122690, 'products/1-2.jpg', '[]', '2021-08-24 07:58:12', '2021-08-24 07:58:12', NULL),
(98, 0, '1-3', 7, 'image/jpeg', 117296, 'products/1-3.jpg', '[]', '2021-08-24 07:58:13', '2021-08-24 07:58:13', NULL),
(99, 0, '1', 7, 'image/jpeg', 139025, 'products/1.jpg', '[]', '2021-08-24 07:58:13', '2021-08-24 07:58:13', NULL),
(100, 0, '10-1', 7, 'image/jpeg', 183491, 'products/10-1.jpg', '[]', '2021-08-24 07:58:14', '2021-08-24 07:58:14', NULL),
(101, 0, '10', 7, 'image/jpeg', 150956, 'products/10.jpg', '[]', '2021-08-24 07:58:17', '2021-08-24 07:58:17', NULL),
(102, 0, '11-1', 7, 'image/jpeg', 246200, 'products/11-1.jpg', '[]', '2021-08-24 07:58:20', '2021-08-24 07:58:20', NULL),
(103, 0, '11', 7, 'image/jpeg', 279390, 'products/11.jpg', '[]', '2021-08-24 07:58:22', '2021-08-24 07:58:22', NULL),
(104, 0, '12-1', 7, 'image/jpeg', 249712, 'products/12-1.jpg', '[]', '2021-08-24 07:58:24', '2021-08-24 07:58:24', NULL),
(105, 0, '12', 7, 'image/jpeg', 172221, 'products/12.jpg', '[]', '2021-08-24 07:58:24', '2021-08-24 07:58:24', NULL),
(106, 0, '13-1', 7, 'image/jpeg', 257021, 'products/13-1.jpg', '[]', '2021-08-24 07:58:25', '2021-08-24 07:58:25', NULL),
(107, 0, '13', 7, 'image/jpeg', 232917, 'products/13.jpg', '[]', '2021-08-24 07:58:26', '2021-08-24 07:58:26', NULL),
(108, 0, '14-1', 7, 'image/jpeg', 201773, 'products/14-1.jpg', '[]', '2021-08-24 07:58:27', '2021-08-24 07:58:27', NULL),
(109, 0, '14', 7, 'image/jpeg', 287194, 'products/14.jpg', '[]', '2021-08-24 07:58:28', '2021-08-24 07:58:28', NULL),
(110, 0, '15-1', 7, 'image/jpeg', 273720, 'products/15-1.jpg', '[]', '2021-08-24 07:58:28', '2021-08-24 07:58:28', NULL),
(111, 0, '15', 7, 'image/jpeg', 114265, 'products/15.jpg', '[]', '2021-08-24 07:58:29', '2021-08-24 07:58:29', NULL),
(112, 0, '16', 7, 'image/jpeg', 97174, 'products/16.jpg', '[]', '2021-08-24 07:58:30', '2021-08-24 07:58:30', NULL),
(113, 0, '17', 7, 'image/jpeg', 70179, 'products/17.jpg', '[]', '2021-08-24 07:58:32', '2021-08-24 07:58:32', NULL),
(114, 0, '18-1', 7, 'image/jpeg', 287835, 'products/18-1.jpg', '[]', '2021-08-24 07:58:33', '2021-08-24 07:58:33', NULL),
(115, 0, '18-2', 7, 'image/jpeg', 454869, 'products/18-2.jpg', '[]', '2021-08-24 07:58:35', '2021-08-24 07:58:35', NULL),
(116, 0, '18', 7, 'image/jpeg', 257331, 'products/18.jpg', '[]', '2021-08-24 07:58:38', '2021-08-24 07:58:38', NULL),
(117, 0, '19-1', 7, 'image/jpeg', 144008, 'products/19-1.jpg', '[]', '2021-08-24 07:58:41', '2021-08-24 07:58:41', NULL),
(118, 0, '19', 7, 'image/jpeg', 188821, 'products/19.jpg', '[]', '2021-08-24 07:58:41', '2021-08-24 07:58:41', NULL),
(119, 0, '2-1', 7, 'image/jpeg', 138167, 'products/2-1.jpg', '[]', '2021-08-24 07:58:42', '2021-08-24 07:58:42', NULL),
(120, 0, '2-2', 7, 'image/jpeg', 230552, 'products/2-2.jpg', '[]', '2021-08-24 07:58:43', '2021-08-24 07:58:43', NULL),
(121, 0, '2-3', 7, 'image/jpeg', 179301, 'products/2-3.jpg', '[]', '2021-08-24 07:58:43', '2021-08-24 07:58:43', NULL),
(122, 0, '2', 7, 'image/jpeg', 130048, 'products/2.jpg', '[]', '2021-08-24 07:58:44', '2021-08-24 07:58:44', NULL),
(123, 0, '20-1', 7, 'image/jpeg', 249712, 'products/20-1.jpg', '[]', '2021-08-24 07:58:45', '2021-08-24 07:58:45', NULL),
(124, 0, '20', 7, 'image/jpeg', 172221, 'products/20.jpg', '[]', '2021-08-24 07:58:46', '2021-08-24 07:58:46', NULL),
(125, 0, '21-1', 7, 'image/jpeg', 260746, 'products/21-1.jpg', '[]', '2021-08-24 07:58:47', '2021-08-24 07:58:47', NULL),
(126, 0, '21', 7, 'image/jpeg', 124244, 'products/21.jpg', '[]', '2021-08-24 07:58:49', '2021-08-24 07:58:49', NULL),
(127, 0, '22-1', 7, 'image/jpeg', 213139, 'products/22-1.jpg', '[]', '2021-08-24 07:58:50', '2021-08-24 07:58:50', NULL),
(128, 0, '22', 7, 'image/jpeg', 105409, 'products/22.jpg', '[]', '2021-08-24 07:58:53', '2021-08-24 07:58:53', NULL),
(129, 0, '23-1', 7, 'image/jpeg', 105560, 'products/23-1.jpg', '[]', '2021-08-24 07:58:54', '2021-08-24 07:58:54', NULL),
(130, 0, '23', 7, 'image/jpeg', 177362, 'products/23.jpg', '[]', '2021-08-24 07:58:57', '2021-08-24 07:58:57', NULL),
(131, 0, '24-1', 7, 'image/jpeg', 239311, 'products/24-1.jpg', '[]', '2021-08-24 07:58:58', '2021-08-24 07:58:58', NULL),
(132, 0, '24', 7, 'image/jpeg', 363853, 'products/24.jpg', '[]', '2021-08-24 07:59:00', '2021-08-24 07:59:00', NULL),
(133, 0, '3-1', 7, 'image/jpeg', 135741, 'products/3-1.jpg', '[]', '2021-08-24 07:59:02', '2021-08-24 07:59:02', NULL),
(134, 0, '3-2', 7, 'image/jpeg', 123069, 'products/3-2.jpg', '[]', '2021-08-24 07:59:03', '2021-08-24 07:59:03', NULL),
(135, 0, '3-3', 7, 'image/jpeg', 98645, 'products/3-3.jpg', '[]', '2021-08-24 07:59:03', '2021-08-24 07:59:03', NULL),
(136, 0, '3', 7, 'image/jpeg', 201722, 'products/3.jpg', '[]', '2021-08-24 07:59:04', '2021-08-24 07:59:04', NULL),
(137, 0, '4-1', 7, 'image/jpeg', 205312, 'products/4-1.jpg', '[]', '2021-08-24 07:59:05', '2021-08-24 07:59:05', NULL),
(138, 0, '4-2', 7, 'image/jpeg', 223903, 'products/4-2.jpg', '[]', '2021-08-24 07:59:06', '2021-08-24 07:59:06', NULL),
(139, 0, '4-3', 7, 'image/jpeg', 106593, 'products/4-3.jpg', '[]', '2021-08-24 07:59:07', '2021-08-24 07:59:07', NULL),
(140, 0, '4', 7, 'image/jpeg', 456134, 'products/4.jpg', '[]', '2021-08-24 07:59:08', '2021-08-24 07:59:08', NULL),
(141, 0, '5-1', 7, 'image/jpeg', 110014, 'products/5-1.jpg', '[]', '2021-08-24 07:59:10', '2021-08-24 07:59:10', NULL),
(142, 0, '5-2', 7, 'image/jpeg', 104934, 'products/5-2.jpg', '[]', '2021-08-24 07:59:11', '2021-08-24 07:59:11', NULL),
(143, 0, '5-3', 7, 'image/jpeg', 131628, 'products/5-3.jpg', '[]', '2021-08-24 07:59:12', '2021-08-24 07:59:12', NULL),
(144, 0, '5', 7, 'image/jpeg', 214767, 'products/5.jpg', '[]', '2021-08-24 07:59:13', '2021-08-24 07:59:13', NULL),
(145, 0, '6-1', 7, 'image/jpeg', 128041, 'products/6-1.jpg', '[]', '2021-08-24 07:59:15', '2021-08-24 07:59:15', NULL),
(146, 0, '6', 7, 'image/jpeg', 148485, 'products/6.jpg', '[]', '2021-08-24 07:59:16', '2021-08-24 07:59:16', NULL),
(147, 0, '7-1', 7, 'image/jpeg', 144008, 'products/7-1.jpg', '[]', '2021-08-24 07:59:17', '2021-08-24 07:59:17', NULL),
(148, 0, '7', 7, 'image/jpeg', 188821, 'products/7.jpg', '[]', '2021-08-24 07:59:18', '2021-08-24 07:59:18', NULL),
(149, 0, '8-1', 7, 'image/jpeg', 274272, 'products/8-1.jpg', '[]', '2021-08-24 07:59:19', '2021-08-24 07:59:19', NULL),
(150, 0, '8', 7, 'image/jpeg', 217862, 'products/8.jpg', '[]', '2021-08-24 07:59:20', '2021-08-24 07:59:20', NULL),
(151, 0, '9-1', 7, 'image/jpeg', 65624, 'products/9-1.jpg', '[]', '2021-08-24 07:59:21', '2021-08-24 07:59:21', NULL),
(152, 0, '9', 7, 'image/jpeg', 159636, 'products/9.jpg', '[]', '2021-08-24 07:59:22', '2021-08-24 07:59:22', NULL),
(153, 0, '1', 8, 'image/jpeg', 274660, 'customers/1.jpg', '[]', '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL),
(154, 0, '2', 8, 'image/jpeg', 295031, 'customers/2.jpg', '[]', '2021-08-24 07:59:26', '2021-08-24 07:59:26', NULL),
(155, 0, '3', 8, 'image/jpeg', 183576, 'customers/3.jpg', '[]', '2021-08-24 07:59:26', '2021-08-24 07:59:26', NULL),
(156, 0, '4', 8, 'image/jpeg', 245360, 'customers/4.jpg', '[]', '2021-08-24 07:59:27', '2021-08-24 07:59:27', NULL),
(157, 0, '5', 8, 'image/jpeg', 262908, 'customers/5.jpg', '[]', '2021-08-24 07:59:27', '2021-08-24 07:59:27', NULL),
(158, 0, '6', 8, 'image/jpeg', 109600, 'customers/6.jpg', '[]', '2021-08-24 07:59:28', '2021-08-24 07:59:28', NULL),
(159, 0, '7', 8, 'image/jpeg', 159280, 'customers/7.jpg', '[]', '2021-08-24 07:59:28', '2021-08-24 07:59:28', NULL),
(160, 0, '8', 8, 'image/jpeg', 99998, 'customers/8.jpg', '[]', '2021-08-24 07:59:29', '2021-08-24 07:59:29', NULL),
(161, 0, '1', 9, 'image/jpeg', 62921, 'flash-sales/1.jpg', '[]', '2021-08-24 07:59:33', '2021-08-24 07:59:33', NULL),
(162, 0, '2', 9, 'image/jpeg', 74131, 'flash-sales/2.jpg', '[]', '2021-08-24 07:59:34', '2021-08-24 07:59:34', NULL),
(163, 0, '1-1', 10, 'image/png', 653539, 'sliders/1-1.png', '[]', '2021-08-24 07:59:36', '2021-08-24 07:59:36', NULL),
(164, 0, '1-2', 10, 'image/png', 688883, 'sliders/1-2.png', '[]', '2021-08-24 07:59:40', '2021-08-24 07:59:40', NULL),
(165, 0, '1-3', 10, 'image/png', 249966, 'sliders/1-3.png', '[]', '2021-08-24 07:59:44', '2021-08-24 07:59:44', NULL),
(166, 0, '2-1', 10, 'image/png', 662495, 'sliders/2-1.png', '[]', '2021-08-24 07:59:48', '2021-08-24 07:59:48', NULL),
(167, 0, '2-2', 10, 'image/png', 691309, 'sliders/2-2.png', '[]', '2021-08-24 07:59:53', '2021-08-24 07:59:53', NULL),
(168, 0, '2-3', 10, 'image/png', 249966, 'sliders/2-3.png', '[]', '2021-08-24 07:59:57', '2021-08-24 07:59:57', NULL),
(169, 0, '3-1', 10, 'image/png', 164134, 'sliders/3-1.png', '[]', '2021-08-24 07:59:59', '2021-08-24 07:59:59', NULL),
(170, 0, '3-2', 10, 'image/png', 140217, 'sliders/3-2.png', '[]', '2021-08-24 08:00:02', '2021-08-24 08:00:02', NULL),
(171, 0, '4-1', 10, 'image/png', 415854, 'sliders/4-1.png', '[]', '2021-08-24 08:00:04', '2021-08-24 08:00:04', NULL),
(172, 0, '4-2', 10, 'image/png', 407249, 'sliders/4-2.png', '[]', '2021-08-24 08:00:07', '2021-08-24 08:00:07', NULL),
(173, 0, '4-3', 10, 'image/png', 249966, 'sliders/4-3.png', '[]', '2021-08-24 08:00:09', '2021-08-24 08:00:09', NULL),
(174, 0, '1', 11, 'image/jpeg', 533441, 'news/1.jpg', '[]', '2021-08-24 08:00:12', '2021-08-24 08:00:12', NULL),
(175, 0, '10', 11, 'image/jpeg', 342651, 'news/10.jpg', '[]', '2021-08-24 08:00:13', '2021-08-24 08:00:13', NULL),
(176, 0, '11', 11, 'image/jpeg', 296740, 'news/11.jpg', '[]', '2021-08-24 08:00:15', '2021-08-24 08:00:15', NULL),
(177, 0, '2', 11, 'image/jpeg', 292594, 'news/2.jpg', '[]', '2021-08-24 08:00:17', '2021-08-24 08:00:17', NULL),
(178, 0, '3', 11, 'image/jpeg', 382930, 'news/3.jpg', '[]', '2021-08-24 08:00:20', '2021-08-24 08:00:20', NULL),
(179, 0, '4', 11, 'image/jpeg', 403060, 'news/4.jpg', '[]', '2021-08-24 08:00:21', '2021-08-24 08:00:21', NULL),
(180, 0, '5', 11, 'image/jpeg', 727445, 'news/5.jpg', '[]', '2021-08-24 08:00:22', '2021-08-24 08:00:22', NULL),
(181, 0, '6', 11, 'image/jpeg', 361958, 'news/6.jpg', '[]', '2021-08-24 08:00:23', '2021-08-24 08:00:23', NULL),
(182, 0, '7', 11, 'image/jpeg', 904027, 'news/7.jpg', '[]', '2021-08-24 08:00:24', '2021-08-24 08:00:24', NULL),
(183, 0, '8', 11, 'image/jpeg', 351088, 'news/8.jpg', '[]', '2021-08-24 08:00:25', '2021-08-24 08:00:25', NULL),
(184, 0, '9', 11, 'image/jpeg', 353751, 'news/9.jpg', '[]', '2021-08-24 08:00:25', '2021-08-24 08:00:25', NULL),
(185, 0, '1', 12, 'image/png', 66416, 'promotion/1.png', '[]', '2021-08-24 08:00:27', '2021-08-24 08:00:27', NULL),
(186, 0, '2', 12, 'image/png', 70051, 'promotion/2.png', '[]', '2021-08-24 08:00:28', '2021-08-24 08:00:28', NULL),
(187, 0, '3', 12, 'image/png', 66675, 'promotion/3.png', '[]', '2021-08-24 08:00:29', '2021-08-24 08:00:29', NULL),
(188, 0, '4', 12, 'image/png', 61720, 'promotion/4.png', '[]', '2021-08-24 08:00:30', '2021-08-24 08:00:30', NULL),
(189, 0, '5', 12, 'image/png', 25894, 'promotion/5.png', '[]', '2021-08-24 08:00:31', '2021-08-24 08:00:31', NULL),
(190, 0, '6', 12, 'image/png', 528935, 'promotion/6.png', '[]', '2021-08-24 08:00:32', '2021-08-24 08:00:32', NULL),
(191, 0, 'favicon', 13, 'image/png', 2343, 'general/favicon.png', '[]', '2021-08-24 08:00:33', '2021-08-24 08:00:33', NULL),
(192, 0, 'icon-bag', 13, 'image/png', 15551, 'general/icon-bag.png', '[]', '2021-08-24 08:00:33', '2021-08-24 08:00:33', NULL),
(193, 0, 'icon-operator', 13, 'image/png', 23328, 'general/icon-operator.png', '[]', '2021-08-24 08:00:34', '2021-08-24 08:00:34', NULL),
(194, 0, 'icon-purchase', 13, 'image/png', 22947, 'general/icon-purchase.png', '[]', '2021-08-24 08:00:35', '2021-08-24 08:00:35', NULL),
(195, 0, 'icon-truck', 13, 'image/png', 17131, 'general/icon-truck.png', '[]', '2021-08-24 08:00:36', '2021-08-24 08:00:36', NULL),
(196, 0, 'logo-light', 13, 'image/png', 1938, 'general/logo-light.png', '[]', '2021-08-24 08:00:36', '2021-08-24 08:00:36', NULL),
(197, 0, 'logo', 13, 'image/png', 2494, 'general/logo.png', '[]', '2021-08-24 08:00:36', '2021-08-24 08:00:36', NULL),
(198, 0, 'open-graph-image', 13, 'image/png', 293189, 'general/open-graph-image.png', '[]', '2021-08-24 08:00:37', '2021-08-24 08:00:37', NULL),
(199, 0, 'payment-methods', 13, 'image/png', 10634, 'general/payment-methods.png', '[]', '2021-08-24 08:00:38', '2021-08-24 08:00:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 0, 'brands', 'brands', 0, '2021-08-24 07:58:06', '2021-08-24 07:58:06', NULL),
(6, 0, 'product-categories', 'product-categories', 0, '2021-08-24 07:58:09', '2021-08-24 07:58:09', NULL),
(7, 0, 'products', 'products', 0, '2021-08-24 07:58:11', '2021-08-24 07:58:11', NULL),
(8, 0, 'customers', 'customers', 0, '2021-08-24 07:59:25', '2021-08-24 07:59:25', NULL),
(9, 0, 'flash-sales', 'flash-sales', 0, '2021-08-24 07:59:33', '2021-08-24 07:59:33', NULL),
(10, 0, 'sliders', 'sliders', 0, '2021-08-24 07:59:36', '2021-08-24 07:59:36', NULL),
(11, 0, 'news', 'news', 0, '2021-08-24 08:00:12', '2021-08-24 08:00:12', NULL),
(12, 0, 'promotion', 'promotion', 0, '2021-08-24 08:00:27', '2021-08-24 08:00:27', NULL),
(13, 0, 'general', 'general', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(2, 'Product categories', 'product-categories', 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(3, 'Information', 'information', 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(4, 'Menu chính', 'menu-chinh', 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(5, 'Product categories', 'danh-muc-san-pham', 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(6, 'Information', 'thong-tin', 'published', '2021-08-24 08:00:33', '2021-08-24 08:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(2, 4, 'main-menu', '2021-08-24 08:00:33', '2021-08-24 08:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(2, 1, 1, 1, 'Botble\\Page\\Models\\Page', '/homepage', NULL, 0, 'Home 1', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(3, 1, 1, 2, 'Botble\\Page\\Models\\Page', '/homepage-2', NULL, 0, 'Home 2', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(4, 1, 1, 3, 'Botble\\Page\\Models\\Page', '/homepage-3', NULL, 0, 'Home 3', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(5, 1, 1, 4, 'Botble\\Page\\Models\\Page', '/homepage-4', NULL, 0, 'Home 4', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(6, 1, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(7, 1, 6, NULL, NULL, '/products', NULL, 0, 'Shop Grid - Full Width', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(8, 1, 6, NULL, NULL, '/products?layout=product-right-sidebar', NULL, 0, 'Shop Grid - Right Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(9, 1, 6, NULL, NULL, '/products?layout=product-left-sidebar', NULL, 0, 'Shop Grid - Left Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(10, 1, 6, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/hot-promotions', NULL, 0, 'Products Of Category', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(11, 1, 0, NULL, NULL, '#', NULL, 0, 'Product', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(12, 1, 11, NULL, NULL, '/products/smart-home-speaker', NULL, 0, 'Product Right Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(13, 1, 11, NULL, NULL, '/products/headphone-ultra-bass', NULL, 0, 'Product Left Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(14, 1, 11, NULL, NULL, '/products/boxed-bluetooth-headphone', NULL, 0, 'Product Full Width', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(15, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(16, 1, 15, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Right Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(17, 1, 15, 13, 'Botble\\Page\\Models\\Page', '/blog-left-sidebar', NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(18, 1, 15, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Single Post Right Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(19, 1, 15, NULL, NULL, '/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', NULL, 0, 'Single Post Left Sidebar', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(20, 1, 15, NULL, NULL, '/blog/the-top-2020-handbag-trends-to-know', NULL, 0, 'Single Post Full Width', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(21, 1, 15, NULL, NULL, '/blog/how-to-match-the-color-of-your-handbag-with-an-outfit', NULL, 0, 'Single Post with Product Listing', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(22, 1, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(23, 2, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/hot-promotions', NULL, 0, 'Men', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(24, 2, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/electronics', NULL, 0, 'Women', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(25, 2, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/home-audio-theaters', NULL, 0, 'Accessories', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(26, 2, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/tv-videos', NULL, 0, 'Shoes', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(27, 2, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/camera-photos-videos', NULL, 0, 'Denim', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(28, 2, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/cellphones-accessories', NULL, 0, 'Dress', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(29, 3, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact Us', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(30, 3, 0, 8, 'Botble\\Page\\Models\\Page', '/cookie-policy', NULL, 0, 'About Us', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(31, 3, 0, 9, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(32, 3, 0, 10, 'Botble\\Page\\Models\\Page', '/returns-exchanges', NULL, 0, 'Returns & Exchanges', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(33, 3, 0, 11, 'Botble\\Page\\Models\\Page', '/shipping-delivery', NULL, 0, 'Shipping & Delivery', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(34, 3, 0, 12, 'Botble\\Page\\Models\\Page', '/privacy-policy', NULL, 0, 'Privacy Policy', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(35, 4, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(36, 4, 35, 1, 'Botble\\Page\\Models\\Page', '/homepage', NULL, 0, 'Trang chủ 1', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(37, 4, 35, 2, 'Botble\\Page\\Models\\Page', '/homepage-2', NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(38, 4, 35, 3, 'Botble\\Page\\Models\\Page', '/homepage-3', NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(39, 4, 35, 4, 'Botble\\Page\\Models\\Page', '/homepage-4', NULL, 0, 'Trang chủ 4', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(40, 4, 0, NULL, NULL, '/products', NULL, 0, 'Bán hàng', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(41, 4, 40, NULL, NULL, '/products', NULL, 0, 'Tất cả sản phẩm', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(42, 4, 40, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/hot-promotions', NULL, 0, 'Danh mục sản phẩm', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(43, 4, 0, NULL, NULL, '#', NULL, 0, 'Sản phẩm', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(44, 4, 43, NULL, NULL, '/products/smart-home-speaker', NULL, 0, 'Sản phẩm Sidebar phải', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(45, 4, 43, NULL, NULL, '/products/headphone-ultra-bass', NULL, 0, 'Sản phẩm Sidebar trái', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(46, 4, 43, NULL, NULL, '/products/boxed-bluetooth-headphone', NULL, 0, 'Sản phẩm full width', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(47, 4, 0, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức', NULL, '_self', 1, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(48, 4, 47, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức Sidebar phải', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(49, 4, 47, 13, 'Botble\\Page\\Models\\Page', '/blog-left-sidebar', NULL, 0, 'Tin tức Sidebar trái', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(50, 4, 47, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Bài viết Sidebar phải', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(51, 4, 47, NULL, NULL, '/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', NULL, 0, 'Bài viết Sidebar trái', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(52, 4, 47, NULL, NULL, '/blog/the-top-2020-handbag-trends-to-know', NULL, 0, 'Bài viết Full Width', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(53, 4, 47, NULL, NULL, '/blog/how-to-match-the-color-of-your-handbag-with-an-outfit', NULL, 0, 'Bài viết with kèm sản phẩm', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(54, 4, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(55, 5, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/hot-promotions', NULL, 0, 'Dành cho nam', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(56, 5, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/electronics', NULL, 0, 'Dành cho nữ', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(57, 5, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/home-audio-theaters', NULL, 0, 'Phụ kiện', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(58, 5, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/tv-videos', NULL, 0, 'Giày dép', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(59, 5, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/camera-photos-videos', NULL, 0, 'Denim', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(60, 5, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/cellphones-accessories', NULL, 0, 'Quần áo', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(61, 6, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(62, 6, 0, 8, 'Botble\\Page\\Models\\Page', '/cookie-policy', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(63, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Điều khoản & quy định', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(64, 6, 0, 10, 'Botble\\Page\\Models\\Page', '/returns-exchanges', NULL, 0, 'Chính sách đổi trả', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(65, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/shipping-delivery', NULL, 0, 'Chính sách vận chuyển', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(66, 6, 0, 12, 'Botble\\Page\\Models\\Page', '/privacy-policy', NULL, 0, 'Chính sách bảo mật', NULL, '_self', 0, '2021-08-24 08:00:33', '2021-08-24 08:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"far fa-star\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(2, 'icon', '[\"wowy-font-cpu\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(3, 'icon', '[\"wowy-font-tshirt\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(4, 'icon', '[\"wowy-font-desktop\"]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(5, 'icon', '[\"wowy-font-home\"]', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(6, 'icon', '[\"wowy-font-dress\"]', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(7, 'icon', '[\"wowy-font-diamond\"]', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(8, 'icon', '[\"far fa-microchip\"]', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(9, 'icon', '[\"wowy-font-smartphone\"]', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(10, 'icon', '[\"wowy-font-teddy-bear\"]', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(11, 'icon', '[\"wowy-font-kite\"]', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(12, 'icon', '[\"far fa-book\"]', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(13, 'icon', '[\"far fa-car\"]', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(14, 'icon', '[\"wowy-font-home\"]', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-08-24 07:56:33', '2021-08-24 07:56:33'),
(18, 'layout', '[\"product-right-sidebar\"]', 1, 'Botble\\Ecommerce\\Models\\Product', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(19, 'layout', '[\"product-left-sidebar\"]', 2, 'Botble\\Ecommerce\\Models\\Product', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(20, 'layout', '[\"product-full-width\"]', 3, 'Botble\\Ecommerce\\Models\\Product', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(21, 'subtitle', '[\"Limited quantities.\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-08-24 07:59:34', '2021-08-24 07:59:34'),
(22, 'image', '[\"flash-sales\\/1.jpg\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-08-24 07:59:34', '2021-08-24 07:59:34'),
(23, 'subtitle', '[\"Computers & Laptop\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-08-24 07:59:34', '2021-08-24 07:59:34'),
(24, 'image', '[\"flash-sales\\/2.jpg\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-08-24 07:59:34', '2021-08-24 07:59:34'),
(25, 'vi_subtitle', '[\"Gi\\u1edbi h\\u1ea1n s\\u1ed1 l\\u01b0\\u1ee3ng\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-08-24 07:59:34', '2021-08-24 07:59:34'),
(26, 'vi_subtitle', '[\"M\\u00e1y t\\u00ednh b\\u00e0n & Laptop\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2021-08-24 07:59:34', '2021-08-24 07:59:34'),
(27, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(28, 'subtitle', '[\"Trade-In Offer\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(29, 'highlight_text', '[\"On All Products\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(30, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(31, 'subtitle', '[\"Tech Promotions\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(32, 'highlight_text', '[\"Great Collection\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(33, 'button_text', '[\"Shop now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(34, 'subtitle', '[\"Upcoming Offer\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(35, 'highlight_text', '[\"Manufacturer\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(36, 'simple_slider_style', '[\"style-2\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(37, 'button_text', '[\"Shop now\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(38, 'subtitle', '[\"Trade-In Offer\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(39, 'highlight_text', '[\"On All Products\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(40, 'button_text', '[\"Discover now\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(41, 'subtitle', '[\"Tech Promotions\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(42, 'highlight_text', '[\"Great Collection\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(43, 'button_text', '[\"Shop now\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(44, 'subtitle', '[\"Upcoming Offer\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(45, 'highlight_text', '[\"Manufacturer\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(46, 'simple_slider_style', '[\"style-3\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(47, 'button_text', '[\"Shop now\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(48, 'subtitle', '[\"Trade-In Offer\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(49, 'highlight_text', '[\"On All Products\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(50, 'button_text', '[\"Discover now\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(51, 'subtitle', '[\"Tech Promotions\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(52, 'highlight_text', '[\"Great Collection\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(53, 'simple_slider_style', '[\"style-4\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(54, 'button_text', '[\"Shop now\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(55, 'subtitle', '[\"Trade-In Offer\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(56, 'highlight_text', '[\"On All Products\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(57, 'button_text', '[\"Discover now\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(58, 'subtitle', '[\"Tech Promotions\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(59, 'highlight_text', '[\"Great Collection\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(60, 'button_text', '[\"Shop now\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(61, 'subtitle', '[\"Upcoming Offer\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(62, 'highlight_text', '[\"Manufacturer\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(63, 'button_text', '[\"Mua ngay\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(64, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(65, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(66, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(67, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(68, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(69, 'button_text', '[\"Mua ngay\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(70, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(71, 'highlight_text', '[\"Nh\\u00e0 cung c\\u1ea5p\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(72, 'simple_slider_style', '[\"style-2\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(73, 'button_text', '[\"Mua ngay\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(74, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(75, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(76, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(77, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(78, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(79, 'button_text', '[\"Mua ngay\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(80, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(81, 'highlight_text', '[\"Nh\\u00e0 cung c\\u1ea5p\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(82, 'simple_slider_style', '[\"style-3\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(83, 'button_text', '[\"Mua ngay\"]', 18, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(84, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 18, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(85, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 18, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(86, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 19, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(87, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 19, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(88, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 19, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(89, 'simple_slider_style', '[\"style-4\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(90, 'button_text', '[\"Mua ngay\"]', 20, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(91, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 20, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(92, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 20, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(93, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 21, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(94, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 21, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(95, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 21, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(96, 'button_text', '[\"Mua ngay\"]', 22, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(97, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]', 22, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(98, 'highlight_text', '[\"Nh\\u00e0 cung c\\u1ea5p\"]', 22, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(99, 'layout', '[\"blog-right-sidebar\"]', 1, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(100, 'layout', '[\"blog-left-sidebar\"]', 2, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(101, 'layout', '[\"blog-full-width\"]', 3, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(102, 'layout', '[\"blog-full-width\"]', 4, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(103, 'layout', '[\"blog-right-sidebar\"]', 12, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(104, 'layout', '[\"blog-left-sidebar\"]', 13, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(105, 'layout', '[\"blog-full-width\"]', 14, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(106, 'layout', '[\"blog-full-width\"]', 15, 'Botble\\Blog\\Models\\Post', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(107, 'header_style', '[\"header-style-2\"]', 2, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(108, 'expanding_product_categories_on_the_homepage', '[\"yes\"]', 2, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(109, 'header_style', '[\"header-style-3\"]', 3, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(110, 'header_style', '[\"header-style-4\"]', 4, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(111, 'header_style', '[\"header-style-2\"]', 15, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(112, 'expanding_product_categories_on_the_homepage', '[\"yes\"]', 15, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(113, 'header_style', '[\"header-style-3\"]', 16, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(114, 'header_style', '[\"header-style-4\"]', 17, 'Botble\\Page\\Models\\Page', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(115, 'button_text', '[\"Shop now\"]', 1, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(116, 'subtitle', '[\"Save 20% on\\niPhone 12\"]', 1, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(117, 'button_text', '[\"Shop now\"]', 2, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(118, 'subtitle', '[\"Great Camera\\nCollection\"]', 2, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(119, 'button_text', '[\"Shop now\"]', 3, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(120, 'subtitle', '[\"Shop Today\\u2019s\\nDeals & Offers\"]', 3, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(121, 'button_text', '[\"Shop now\"]', 4, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(122, 'subtitle', '[\"Save 17% on\\nAssus Laptop\"]', 4, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(123, 'button_text', '[\"Shop now\"]', 5, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(124, 'subtitle', '[\"Save 20% on\\niPhone 12\"]', 5, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(125, 'button_text', '[\"Learn more\"]', 6, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(126, 'subtitle', '[\"We\'re an Apple\\nAuthorised Service Provider\"]', 6, 'Botble\\Ads\\Models\\Ads', '2021-08-24 08:00:33', '2021-08-24 08:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_06_10_230148_create_acl_tables', 1),
(8, '2016_06_14_230857_create_menus_table', 1),
(9, '2016_06_17_091537_create_contacts_table', 1),
(10, '2016_06_28_221418_create_pages_table', 1),
(11, '2016_10_03_032336_create_languages_table', 1),
(12, '2016_10_05_074239_create_setting_table', 1),
(13, '2016_10_07_193005_create_translations_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_05_18_080441_create_payment_tables', 1),
(18, '2017_07_11_140018_create_simple_slider_table', 1),
(19, '2017_10_24_154832_create_newsletter_table', 1),
(20, '2017_11_03_070450_create_slug_table', 1),
(21, '2019_01_05_053554_create_jobs_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2020_03_05_041139_create_ecommerce_tables', 1),
(24, '2020_09_22_135635_update_taxes_table', 1),
(25, '2020_09_29_101006_add_views_into_ec_products_table', 1),
(26, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 1),
(27, '2020_10_06_073439_improve_ecommerce_database', 1),
(28, '2020_11_01_040415_update_table_ec_order_addresses', 1),
(29, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 1),
(30, '2020_11_18_150916_ads_create_ads_table', 1),
(31, '2020_11_30_015801_update_table_ec_product_categories', 1),
(32, '2021_01_01_044147_ecommerce_create_flash_sale_table', 1),
(33, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 1),
(34, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 1),
(35, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(36, '2021_02_18_073505_update_table_ec_reviews', 1),
(37, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 1),
(38, '2021_03_10_025153_change_column_tax_amount', 1),
(39, '2021_03_20_033103_add_column_availability_to_table_ec_products', 1),
(40, '2021_03_27_144913_add_customer_type_into_table_payments', 1),
(41, '2021_04_28_074008_ecommerce_create_product_label_table', 1),
(42, '2021_05_24_034720_make_column_currency_nullable', 1),
(43, '2021_05_31_173037_ecommerce_create_ec_products_translations', 1),
(44, '2021_06_28_153141_correct_slugs_data', 1),
(45, '2021_07_18_101839_fix_old_theme_options', 1),
(46, '2021_08_02_084121_fix_old_shortcode', 1),
(47, '2021_08_09_161302_add_metadata_column_to_payments_table', 1),
(48, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[simple-slider key=\"home-slider-1\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(2, 'Homepage 2', '<div>[simple-slider key=\"home-slider-2\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(3, 'Homepage 3', '<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(4, 'Homepage 4', '<div>[simple-slider key=\"home-slider-4\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(5, 'Blog', '<p>---</p>', 1, NULL, 'blog-right-sidebar', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(6, 'Contact', '<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(7, 'About us', '<p>Alice whispered to the Gryphon. \'The reason is,\' said the King, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I hadn\'t drunk quite so much!\' said Alice, \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the others. \'Are their heads downward! The Antipathies, I think--\' (she was obliged to write this down on one side, to look over their shoulders, that all the time she had never been in a fight with.</p><p>Dormouse turned out, and, by the Hatter, \'when the Queen to play croquet.\' The Frog-Footman repeated, in the world she was exactly one a-piece all round. (It was this last remark that had a little way off, panting, with its legs hanging down, but generally, just as she could not tell whether they were lying round the thistle again; then the Rabbit\'s voice along--\'Catch him, you by the officers of the mushroom, and crawled away in the house before she came up to the part about her and to wonder.</p><p>YOUR table,\' said Alice; \'you needn\'t be so stingy about it, you know.\' \'Not at all,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the King; \'and don\'t look at all like the look of the month, and doesn\'t tell what o\'clock it is!\' As she said to Alice, very loudly and decidedly, and the arm that was lying under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were all writing very busily on slates. \'What are they made of?\' Alice asked in a helpless sort of people live about.</p><p>King said, turning to the beginning again?\' Alice ventured to say. \'What is it?\' Alice panted as she came suddenly upon an open place, with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the sea,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not quite know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails fast in their mouths--and they\'re all over with fright. \'Oh, I know!\' exclaimed Alice, who.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(8, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(9, 'Terms & Conditions', '<p>Paris is the same size: to be a letter, written by the hedge!\' then silence, and then keep tight hold of its mouth, and its great eyes half shut. This seemed to be executed for having cheated herself in Wonderland, though she felt that it was growing, and she thought at first was in the distance would take the place of the garden, and marked, with one finger; and the beak-- Pray how did you do either!\' And the Gryphon interrupted in a natural way again. \'I should like to drop the jar for fear.</p><p>Caterpillar angrily, rearing itself upright as it settled down in a coaxing tone, and she drew herself up on to himself as he spoke. \'UNimportant, of course, Alice could see, when she got used to know. Let me see--how IS it to speak good English); \'now I\'m opening out like the largest telescope that ever was! Good-bye, feet!\' (for when she caught it, and on it were nine o\'clock in the distance, and she dropped it hastily, just in time to begin with.\' \'A barrowful will do, to begin with; and.</p><p>Tortoise because he was in confusion, getting the Dormouse went on, taking first one side and then hurried on, Alice started to her in such long curly brown hair! And it\'ll fetch things when you come and join the dance. Would not, could not, could not, would not, could not make out exactly what they said. The executioner\'s argument was, that her neck kept getting entangled among the leaves, which she concluded that it had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been.</p><p>Pigeon in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they got their tails in their mouths--and they\'re all over with diamonds, and walked a little girl,\' said Alice, \'how am I to get to,\' said the Dormouse; \'VERY ill.\' Alice tried to fancy what the flame of a book,\' thought Alice \'without pictures or conversations in it, and on it were white, but there was a table set out under a tree in the distance, screaming with passion. She had quite.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(10, 'Returns & Exchanges', '<p>March Hare, \'that \"I breathe when I learn music.\' \'Ah! that accounts for it,\' said Alice. \'Well, then,\' the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Duchess; \'and that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen added to one of them attempted to explain it is to give the hedgehog to, and, as they lay on the back. However, it was getting quite crowded with the glass table.</p><p>Lobster; I heard him declare, \"You have baked me too brown, I must be getting home; the night-air doesn\'t suit my throat!\' and a large caterpillar, that was trickling down his brush, and had to pinch it to her chin in salt water. Her first idea was that she remained the same thing,\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at them with one finger, as he shook both his shoes off. \'Give your evidence,\' the King added in an offended tone. And.</p><p>CHORUS. (In which the March Hare. Alice sighed wearily. \'I think I can guess that,\' she added aloud. \'Do you play croquet?\' The soldiers were silent, and looked at Alice, and tried to speak, but for a minute or two. \'They couldn\'t have done just as she had quite forgotten the Duchess was VERY ugly; and secondly, because she was nine feet high. \'Whoever lives there,\' thought Alice, and, after glaring at her for a minute or two, they began running when they liked, and left off writing on his.</p><p>Hatter, with an anxious look at all for any lesson-books!\' And so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what to do, and perhaps after all it might end, you know,\' said the Queen, pointing to Alice for some time without interrupting it. \'They must go back and finish your story!\' Alice called out \'The race is over!\' and they sat down a good deal on where you want to go with Edgar Atheling to meet William and offer.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(11, 'Shipping & Delivery', '<p>I will prosecute YOU.--Come, I\'ll take no denial; We must have imitated somebody else\'s hand,\' said the Cat. \'--so long as there was silence for some time busily writing in his sleep, \'that \"I like what I say--that\'s the same thing, you know.\' It was, no doubt: only Alice did not wish to offend the Dormouse crossed the court, she said to herself, \'if one only knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting that she let the jury--\' \'If any one left.</p><p>She was moving them about as much use in talking to herself, \'whenever I eat one of them hit her in an offended tone, \'was, that the cause of this was his first remark, \'It was the Rabbit angrily. \'Here! Come and help me out of the wood for fear of killing somebody, so managed to swallow a morsel of the sort,\' said the Caterpillar. Here was another puzzling question; and as the doubled-up soldiers were always getting up and bawled out, \"He\'s murdering the time! Off with his nose Trims his belt.</p><p>First, because I\'m on the shingle--will you come and join the dance? \"You can really have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was no \'One, two, three, and away,\' but they were playing the Queen had only one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m not the same, the next thing is, to get through the glass, and she felt that she was exactly one a-piece all round. \'But she must have been changed in the book,\' said the Duchess. An invitation for the immediate.</p><p>Cat, and vanished. Alice was so much at this, but at any rate I\'ll never go THERE again!\' said Alice in a twinkling! Half-past one, time for dinner!\' (\'I only wish they WOULD not remember the simple and loving heart of her age knew the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the March Hare. \'Exactly so,\' said Alice. \'That\'s very important,\' the King added in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lamps hanging from the shock.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(12, 'Privacy Policy', '<p>I\'m mad?\' said Alice. \'Who\'s making personal remarks now?\' the Hatter with a soldier on each side, and opened their eyes and mouths so VERY tired of sitting by her sister on the door between us. For instance, if you want to go! Let me see: four times seven is--oh dear! I wish you wouldn\'t squeeze so.\' said the Cat. \'--so long as you might like to be a person of authority among them, called out, \'Sit down, all of you, and listen to her, though, as they came nearer, Alice could speak again. The.</p><p>Alice to herself, \'it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish I could let you out, you know.\' \'I don\'t think--\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'Why not?\' said the King. \'I can\'t go no lower,\' said the Hatter. \'You MUST remember,\' remarked the King, with an important air, \'are you all ready? This is the capital of Paris, and Paris is the same thing with.</p><p>It quite makes my forehead ache!\' Alice watched the Queen said severely \'Who is it directed to?\' said the Hatter: \'as the things I used to say whether the blows hurt it or not. So she went hunting about, and called out in a tone of great dismay, and began by producing from under his arm a great deal too flustered to tell them something more. \'You promised to tell them something more. \'You promised to tell him. \'A nice muddle their slates\'ll be in Bill\'s place for a minute or two, they began.</p><p>Alice; \'I must go by the carrier,\' she thought; \'and how funny it\'ll seem to come before that!\' \'Call the next question is, what?\' The great question certainly was, what? Alice looked round, eager to see what was going a journey, I should understand that better,\' Alice said with some difficulty, as it settled down in a very fine day!\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen was silent. The King looked anxiously over his shoulder as he spoke, and added with a sigh.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(13, 'Blog Left Sidebar', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-left-sidebar', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(14, 'Trang chủ', '<div>[simple-slider key=\"slider-trang-chu-1\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(15, 'Trang chủ 2', '<div>[simple-slider key=\"slider-trang-chu-2\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(16, 'Trang chủ 3', '<div>[simple-slider key=\"slider-trang-chu-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\"][/simple-slider]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(17, 'Trang chủ 4', '<div>[simple-slider key=\"slider-trang-chu-4\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(18, 'Tin tức', '<p>---</p>', 1, NULL, 'blog-right-sidebar', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(19, 'Liên hệ', '<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(20, 'Về chúng tôi', '<p>SHE, of course,\' said the Cat; and this time she heard a little wider. \'Come, it\'s pleased so far,\' said the Caterpillar. Alice said with a bound into the court, she said to Alice, very much pleased at having found out that one of the month is it?\' Alice panted as she swam lazily about in all directions, tumbling up against each other; however, they got settled down again, the cook tulip-roots instead of onions.\' Seven flung down his brush, and had just succeeded in bringing herself down to.</p><p>MINE.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the Dormouse, and repeated her question. \'Why did they draw the treacle from?\' \'You can draw water out of the window, I only knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a deep voice, \'are done with a bound into the open air. \'IF I don\'t remember where.\' \'Well, it must be the best plan.\' It sounded an excellent opportunity for croqueting one of the conversation. Alice replied, so eagerly.</p><p>CHAPTER V. Advice from a bottle marked \'poison,\' so Alice ventured to ask. \'Suppose we change the subject. \'Go on with the strange creatures of her ever getting out of the tail, and ending with the distant green leaves. As there seemed to Alice to herself, \'whenever I eat or drink under the window, I only knew how to set about it; if I\'m not myself, you see.\' \'I don\'t even know what to say anything. \'Why,\' said the Gryphon, and, taking Alice by the end of the other side of the court. (As that.</p><p>I think?\' \'I had NOT!\' cried the Gryphon, \'that they WOULD put their heads off?\' shouted the Gryphon, and all the right size to do it! Oh dear! I shall fall right THROUGH the earth! How funny it\'ll seem to come down the middle, wondering how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the Hatter. \'He won\'t stand beating. Now, if you please! \"William the Conqueror, whose cause was favoured by the little golden key, and when she was as steady as ever; Yet you balanced.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(21, 'Chính sách cookie', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(22, 'Điều kiện và điều khoản', '<p>Bill\'s got to come yet, please your Majesty!\' the Duchess was VERY ugly; and secondly, because she was holding, and she tried her best to climb up one of these cakes,\' she thought, \'till its ears have come, or at least one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and the March Hare. \'It was a table, with a kind of rule, \'and vinegar that makes people hot-tempered,\' she went round the refreshments!\' But there seemed to quiver all over with William.</p><p>Alice. \'Of course you know about this business?\' the King hastily said, and went on without attending to her, so she went on: \'--that begins with an M--\' \'Why with an important air, \'are you all ready? This is the same as they came nearer, Alice could speak again. The rabbit-hole went straight on like a Jack-in-the-box, and up the fan and gloves. \'How queer it seems,\' Alice said nothing: she had sat down in a dreamy sort of use in knocking,\' said the Caterpillar. \'I\'m afraid I don\'t put my arm.</p><p>Alice. \'Who\'s making personal remarks now?\' the Hatter with a sigh: \'it\'s always tea-time, and we\'ve no time to see what I say,\' the Mock Turtle recovered his voice, and, with tears again as quickly as she went on, \'I must be a walrus or hippopotamus, but then she remembered how small she was holding, and she did not dare to laugh; and, as there seemed to listen, the whole she thought it over a little way forwards each time and a sad tale!\' said the King; \'and don\'t be nervous, or I\'ll kick.</p><p>Tillie; and they went on all the way wherever she wanted much to know, but the Hatter grumbled: \'you shouldn\'t have put it in a sort of thing never happened, and now here I am now? That\'ll be a queer thing, to be listening, so she sat down at her with large round eyes, and feebly stretching out one paw, trying to touch her. \'Poor little thing!\' said Alice, surprised at this, that she ought not to lie down upon her: she gave one sharp kick, and waited to see it again, but it had gone. \'Well!.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(23, 'Chính sách trả hàng', '<p>King. \'I can\'t remember half of them--and it belongs to a snail. \"There\'s a porpoise close behind it was out of the singers in the sea. But they HAVE their tails fast in their mouths. So they couldn\'t get them out again. That\'s all.\' \'Thank you,\' said Alice, and tried to fancy what the flame of a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Of course not,\' said the.</p><p>King\'s argument was, that she was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice in a court of justice before, but she added, to herself, (not in a VERY good opportunity for making her escape; so she went to the Knave \'Turn them over!\' The Knave did so, very carefully, nibbling first at one and then quietly marched off after the candle is blown out, for she was going to do it?\' \'In my youth,\' said his father, \'I took to the end: then stop.\' These were the verses the White.</p><p>Alice looked round, eager to see what was the Duchess\'s voice died away, even in the sea. But they HAVE their tails in their paws. \'And how did you begin?\' The Hatter opened his eyes. \'I wasn\'t asleep,\' he said to Alice, \'Have you seen the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at the corners: next the ten courtiers; these were all turning into little cakes as they all crowded together at one end of the conversation. Alice replied, rather shyly.</p><p>There could be no use their putting their heads down and looked at it gloomily: then he dipped it into his cup of tea, and looked at each other for some time without interrupting it. \'They were obliged to write with one foot. \'Get up!\' said the King, and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that she was saying, and the Hatter hurriedly left the court, by the officers of the party sat silent and looked at it uneasily, shaking it every now and then said, \'It WAS a curious.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(24, 'Chính sách vận chuyển', '<p>Mock Turtle went on again:-- \'You may go,\' said the White Rabbit with pink eyes ran close by her. There was exactly three inches high). \'But I\'m NOT a serpent, I tell you!\' But she waited patiently. \'Once,\' said the Pigeon had finished. \'As if it wasn\'t trouble enough hatching the eggs,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to be?\' it asked. \'Oh, I\'m not myself, you see.\' \'I don\'t believe you do either!\' And the Eaglet bent down its head impatiently, and.</p><p>THAT\'S a good opportunity for making her escape; so she bore it as well as if she were saying lessons, and began bowing to the Caterpillar, and the Hatter began, in a moment. \'Let\'s go on in a great many teeth, so she tried the effect of lying down with wonder at the top of its mouth and yawned once or twice, half hoping that the Queen was close behind her, listening: so she bore it as she left her, leaning her head was so long since she had looked under it, and kept doubling itself up very.</p><p>Alice,) \'Well, I never knew whether it would be four thousand miles down, I think--\' (she was obliged to say whether the pleasure of making a daisy-chain would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish you wouldn\'t have come here.\' Alice didn\'t think that proved it at all. However, \'jury-men\' would have made a rush at Alice the moment how large she had caught the flamingo and brought it back, the fight was over.</p><p>King in a confused way, \'Prizes! Prizes!\' Alice had been broken to pieces. \'Please, then,\' said Alice, swallowing down her flamingo, and began staring at the top of it. Presently the Rabbit hastily interrupted. \'There\'s a great letter, nearly as large as himself, and this Alice would not join the dance? Will you, won\'t you join the dance?\"\' \'Thank you, sir, for your walk!\" \"Coming in a minute. Alice began telling them her adventures from the Gryphon, the squeaking of the ground, Alice soon.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(25, 'Chính sách bảo mật', '<p>Dormouse,\' thought Alice; \'I might as well as she added, to herself, (not in a loud, indignant voice, but she did not come the same size: to be seen: she found herself lying on their slates, and she had got to see what was on the whole pack rose up into a cucumber-frame, or something of the sort!\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon added \'Come, let\'s hear some of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle\'s heavy sobs.</p><p>I have ordered\'; and she jumped up in her life before, and she went on: \'But why did they live at the White Rabbit, who said in a more subdued tone, and added \'It isn\'t mine,\' said the White Rabbit read out, at the Cat\'s head with great curiosity, and this he handed over to the baby, and not to be full of soup. \'There\'s certainly too much frightened that she knew that were of the tale was something like this:-- \'Fury said to herself, for she was exactly one a-piece all round. (It was this last.</p><p>Yet you finished the goose, with the Queen, the royal children, and everybody laughed, \'Let the jury wrote it down into a pig,\' Alice quietly said, just as I\'d taken the highest tree in front of the March Hare took the hookah out of the table, half hoping she might as well as she picked up a little bird as soon as she went down on one side, to look at it!\' This speech caused a remarkable sensation among the party. Some of the Lobster; I heard him declare, \"You have baked me too brown, I must.</p><p>Why, I do wonder what Latitude or Longitude I\'ve got to the Mock Turtle went on, turning to the jury, who instantly made a snatch in the book,\' said the Cat, as soon as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Dormouse, who seemed too much of a sea of green leaves that had fluttered down from the change: and Alice looked all round the hall, but they all spoke at once, while all the while, till at last she spread out her hand on the other side of.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(26, 'Blog Sidebar Trái', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-left-sidebar', 0, NULL, 'published', '2021-08-24 08:00:27', '2021-08-24 08:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(1, 'USD', 0, 'QFQ7T3GB3S', 'paystack', NULL, '486.90', 1, 'completed', 'confirm', 8, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(2, 'USD', 0, 'R52UMYEIJD', 'paypal', NULL, '475.70', 2, 'completed', 'confirm', 7, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(3, 'USD', 0, 'SSQLSWK2VL', 'bank_transfer', NULL, '1082.00', 3, 'pending', 'confirm', 6, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(4, 'USD', 0, 'ZKDFIRPTU8', 'paystack', NULL, '1442.70', 4, 'completed', 'confirm', 6, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(5, 'USD', 0, 'W6JQIYRDCV', 'cod', NULL, '1050.90', 5, 'pending', 'confirm', 8, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(6, 'USD', 0, 'MHSVPHZPUH', 'paystack', NULL, '271.70', 6, 'completed', 'confirm', 6, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(7, 'USD', 0, 'ZEKMZGJUCW', 'stripe', NULL, '1953.10', 7, 'completed', 'confirm', 8, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(8, 'USD', 0, 'SGWD5EBNRP', 'bank_transfer', NULL, '713.00', 8, 'pending', 'confirm', 8, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(9, 'USD', 0, 'FVBL64Y69E', 'bank_transfer', NULL, '788.30', 9, 'pending', 'confirm', 7, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(10, 'USD', 0, 'PMZD8VWNSV', 'paypal', NULL, '259.10', 10, 'completed', 'confirm', 7, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(11, 'USD', 0, 'MUSIOMSDG5', 'paypal', NULL, '894.00', 11, 'completed', 'confirm', 9, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(12, 'USD', 0, 'F08G3D7HJE', 'razorpay', NULL, '619.30', 12, 'completed', 'confirm', 3, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(13, 'USD', 0, 'SKXYHRATAA', 'cod', NULL, '1325.80', 13, 'pending', 'confirm', 8, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(14, 'USD', 0, 'KIOR3ZPUHA', 'sslcommerz', NULL, '624.00', 14, 'completed', 'confirm', 8, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(15, 'USD', 0, '63STMYA6AY', 'mollie', NULL, '502.90', 15, 'completed', 'confirm', 2, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(16, 'USD', 0, 'LSXTBFNQUY', 'mollie', NULL, '364.80', 16, 'completed', 'confirm', 6, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(17, 'USD', 0, 'N6SOHKD2VU', 'paystack', NULL, '1336.10', 17, 'completed', 'confirm', 3, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(18, 'USD', 0, 'JRWSZUHART', 'paystack', NULL, '1482.70', 18, 'completed', 'confirm', 6, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(19, 'USD', 0, 'T0VKAS1R1Z', 'bank_transfer', NULL, '400.40', 19, 'pending', 'confirm', 1, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(20, 'USD', 0, '4NBRQTCYMF', 'sslcommerz', NULL, '800.40', 20, 'completed', 'confirm', 5, NULL, NULL, '2021-08-24 07:59:35', '2021-08-24 07:59:35', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 316, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1707, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 197, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 517, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1427, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 880, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1957, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 685, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 2443, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 1404, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1715, NULL, '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(12, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1696, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(13, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 112, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(14, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 606, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(15, 'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 2141, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(16, 'Cách Chăm sóc Túi Da', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 963, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(17, 'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 482, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(18, 'Những phẩm chất cần thiết của âm nhạc thành công cao', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 652, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(19, '9 điều tôi thích khi cạo đầu', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 275, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(20, 'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 959, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(21, 'Thế giới phục vụ cho những người trung bình', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 922, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(22, 'Các đương sự trên màn hình không phải là diễn viên', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1093, NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 1, 2),
(4, 4, 2),
(5, 2, 3),
(6, 4, 3),
(7, 2, 4),
(8, 3, 4),
(9, 2, 5),
(10, 4, 5),
(11, 1, 6),
(12, 3, 6),
(13, 1, 7),
(14, 4, 7),
(15, 2, 8),
(16, 4, 8),
(17, 1, 9),
(18, 3, 9),
(19, 1, 10),
(20, 3, 10),
(21, 1, 11),
(22, 3, 11),
(23, 5, 12),
(24, 7, 12),
(25, 5, 13),
(26, 8, 13),
(27, 5, 14),
(28, 7, 14),
(29, 5, 15),
(30, 8, 15),
(31, 5, 16),
(32, 7, 16),
(33, 5, 17),
(34, 8, 17),
(35, 5, 18),
(36, 7, 18),
(37, 5, 19),
(38, 7, 19),
(39, 6, 20),
(40, 8, 20),
(41, 5, 21),
(42, 7, 21),
(43, 6, 22),
(44, 8, 22);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11),
(56, 6, 12),
(57, 7, 12),
(58, 8, 12),
(59, 9, 12),
(60, 10, 12),
(61, 6, 13),
(62, 7, 13),
(63, 8, 13),
(64, 9, 13),
(65, 10, 13),
(66, 6, 14),
(67, 7, 14),
(68, 8, 14),
(69, 9, 14),
(70, 10, 14),
(71, 6, 15),
(72, 7, 15),
(73, 8, 15),
(74, 9, 15),
(75, 10, 15),
(76, 6, 16),
(77, 7, 16),
(78, 8, 16),
(79, 9, 16),
(80, 10, 16),
(81, 6, 17),
(82, 7, 17),
(83, 8, 17),
(84, 9, 17),
(85, 10, 17),
(86, 6, 18),
(87, 7, 18),
(88, 8, 18),
(89, 9, 18),
(90, 10, 18),
(91, 6, 19),
(92, 7, 19),
(93, 8, 19),
(94, 9, 19),
(95, 10, 19),
(96, 6, 20),
(97, 7, 20),
(98, 8, 20),
(99, 9, 20),
(100, 10, 20),
(101, 6, 21),
(102, 7, 21),
(103, 8, 21),
(104, 9, 21),
(105, 10, 21),
(106, 6, 22),
(107, 7, 22),
(108, 8, 22),
(109, 9, 22),
(110, 10, 22);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'theme', 'wowy', NULL, NULL),
(2, 'activated_plugins', '[\"language\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"language-advanced\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\",\"ads\"]', NULL, NULL),
(9, 'language_hide_default', '1', NULL, NULL),
(10, 'language_switcher_display', 'dropdown', NULL, NULL),
(11, 'language_display', 'all', NULL, NULL),
(12, 'language_hide_languages', '[]', NULL, NULL),
(13, 'ecommerce_store_name', 'Wowy', NULL, NULL),
(14, 'ecommerce_store_phone', '18006268', NULL, NULL),
(15, 'ecommerce_store_address', 'North Link Building, 10 Admiralty Street', NULL, NULL),
(16, 'ecommerce_store_state', 'Singapore', NULL, NULL),
(17, 'ecommerce_store_city', 'Singapore', NULL, NULL),
(18, 'ecommerce_store_country', 'SG', NULL, NULL),
(19, 'media_random_hash', '0557aa7377198cabe9ce569cdd9a280c', NULL, NULL),
(20, 'permalink-botble-blog-models-post', 'blog', NULL, NULL),
(21, 'permalink-botble-blog-models-category', 'blog', NULL, NULL),
(22, 'permalink-botble-blog-models-tag', 'tag', NULL, NULL),
(23, 'payment_cod_status', '1', NULL, NULL),
(24, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(25, 'payment_bank_transfer_status', '1', NULL, NULL),
(26, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(27, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(28, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(29, 'sale_popup_display_pages', '[\"public.index\"]', NULL, NULL),
(30, 'admin_favicon', 'general/favicon.png', NULL, NULL),
(31, 'admin_logo', 'general/logo-light.png', NULL, NULL),
(32, 'theme-wowy-site_title', 'Wowy - Laravel Multipurpose eCommerce Script', NULL, NULL),
(33, 'theme-wowy-copyright', 'Copyright © 2021 Wowy all rights reserved. Powered by Botble.', NULL, NULL),
(34, 'theme-wowy-favicon', 'general/favicon.png', NULL, NULL),
(35, 'theme-wowy-logo', 'general/logo.png', NULL, NULL),
(36, 'theme-wowy-logo_light', 'general/logo-light.png', NULL, NULL),
(37, 'theme-wowy-seo_og_image', 'general/open-graph-image.png', NULL, NULL),
(38, 'theme-wowy-address', '562 Wellington Road, Street 32, San Francisco', NULL, NULL),
(39, 'theme-wowy-hotline', '1900 - 888', NULL, NULL),
(40, 'theme-wowy-phone', '+01 2222 365 /(+91) 01 2345 6789', NULL, NULL),
(41, 'theme-wowy-working_hours', '10:00 - 18:00, Mon - Sat', NULL, NULL),
(42, 'theme-wowy-homepage_id', '1', NULL, NULL),
(43, 'theme-wowy-blog_page_id', '5', NULL, NULL),
(44, 'theme-wowy-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(45, 'theme-wowy-cookie_consent_learn_more_url', 'http://wowy.local/cookie-policy', NULL, NULL),
(46, 'theme-wowy-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(47, 'theme-wowy-payment_methods', 'general/payment-methods.png', NULL, NULL),
(48, 'theme-wowy-number_of_cross_sale_products_in_cart_page', '4', NULL, NULL),
(50, 'theme-wowy-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]', NULL, NULL),
(51, 'theme-wowy-header_messages', '[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]', NULL, NULL),
(52, 'theme-wowy-contact_info_boxes', '[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]', NULL, NULL),
(53, 'theme-wowy-vi-font_text', 'Roboto Condensed', NULL, NULL),
(54, 'theme-wowy-vi-copyright', 'Bản quyền © 2021 Wowy tất cả quyền đã được bảo hộ. Phát triển bởi Botble.', NULL, NULL),
(55, 'theme-wowy-vi-working_hours', '10:00 - 18:00, Thứ Hai - Thứ Bảy', NULL, NULL),
(56, 'theme-wowy-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(57, 'theme-wowy-vi-cookie_consent_learn_more_url', 'http://wowy.local/cookie-policy', NULL, NULL),
(58, 'theme-wowy-vi-cookie_consent_learn_more_text', 'Chính sách cookie', NULL, NULL),
(59, 'theme-wowy-vi-homepage_id', '14', NULL, NULL),
(60, 'theme-wowy-vi-blog_page_id', '18', NULL, NULL),
(61, 'theme-wowy-vi-header_messages', '[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]', NULL, NULL),
(62, 'theme-wowy-vi-contact_info_boxes', '[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider 1', 'home-slider-1', NULL, 'published', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(2, 'Home slider 2', 'home-slider-2', NULL, 'published', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(3, 'Home slider 3', 'home-slider-3', NULL, 'published', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(4, 'Home slider 4', 'home-slider-4', NULL, 'published', '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(5, 'Slider trang chủ 1', 'slider-trang-chu-1', NULL, 'published', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(6, 'Slider trang chủ 2', 'slider-trang-chu-2', NULL, 'published', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(7, 'Slider trang chủ 3', 'slider-trang-chu-3', NULL, 'published', '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(8, 'Slider trang chủ 4', 'slider-trang-chu-4', NULL, 'published', '2021-08-24 08:00:12', '2021-08-24 08:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Value Deals', 'sliders/1-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(2, 1, 'Tech Trending', 'sliders/1-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(3, 1, 'Big Deals From', 'sliders/1-3.png', '/products', 'Headphone, Gaming Laptop, PC and more...', 3, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(4, 2, 'Super Value Deals', 'sliders/2-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(5, 2, 'Tech Trending', 'sliders/2-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(6, 2, 'Big Deals From', 'sliders/2-3.png', '/products', 'Headphone, Gaming Laptop, PC and more...', 3, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(7, 3, 'Super Value Deals', 'sliders/3-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(8, 3, 'Tech Trending', 'sliders/3-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(9, 4, 'Super Value Deals', 'sliders/4-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(10, 4, 'Tech Trending', 'sliders/4-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2021-08-24 08:00:11', '2021-08-24 08:00:11'),
(11, 4, 'Big Deals From', 'sliders/4-3.png', '/products', 'Headphone, Gaming Laptop, PC and more...', 3, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(12, 5, 'Giảm giá đặc biệt', 'sliders/1-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(13, 5, 'Công nghệ nổi bật', 'sliders/1-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(14, 5, 'Giảm giá lớn nhất từ', 'sliders/1-3.png', '/products', 'Tai nghe, Máy tính chơi game, PC và hơn nữa...', 3, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(15, 6, 'Giảm giá đặc biệt', 'sliders/2-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(16, 6, 'Công nghệ nổi bật', 'sliders/2-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(17, 6, 'Giảm giá lớn nhất từ', 'sliders/2-3.png', '/products', 'Tai nghe, Máy tính chơi game, PC và hơn nữa...', 3, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(18, 7, 'Giảm giá đặc biệt', 'sliders/3-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(19, 7, 'Công nghệ nổi bật', 'sliders/3-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(20, 8, 'Giảm giá đặc biệt', 'sliders/4-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(21, 8, 'Công nghệ nổi bật', 'sliders/4-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2021-08-24 08:00:12', '2021-08-24 08:00:12'),
(22, 8, 'Giảm giá lớn nhất từ', 'sliders/4-3.png', '/products', 'Tai nghe, Máy tính chơi game, PC và hơn nữa...', 3, '2021-08-24 08:00:12', '2021-08-24 08:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(67, 'perxsion', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(68, 'hiching', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(69, 'kepslo', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(70, 'groneba', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(71, 'babian', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(72, 'valorant', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(73, 'pure', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-08-24 07:58:09', '2021-08-24 07:58:09'),
(74, 'hot-promotions', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(75, 'electronics', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(76, 'home-audio-theaters', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(77, 'tv-videos', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(78, 'camera-photos-videos', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(79, 'cellphones-accessories', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(80, 'headphones', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(81, 'videos-games', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(82, 'wireless-speakers', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(83, 'office-electronic', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(84, 'clothing', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(85, 'computers', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(86, 'computer-tablets', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(87, 'laptop', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(88, 'monitors', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(89, 'computer-components', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(90, 'home-kitchen', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(91, 'health-beauty', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(92, 'jewelry-watch', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(93, 'technology-toys', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(94, 'drive-storages', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(95, 'gaming-laptop', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(96, 'security-protection', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(97, 'accessories', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(98, 'phones', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(99, 'babies-moms', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(100, 'sport-outdoor', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(101, 'books-office', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(102, 'cars-motorcycles', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(103, 'home-improvements', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(104, 'wallet', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(105, 'bags', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(106, 'shoes', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(107, 'clothes', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(108, 'hand-bag', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-08-24 07:58:11', '2021-08-24 07:58:11'),
(109, 'smart-home-speaker', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(110, 'headphone-ultra-bass', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(111, 'boxed-bluetooth-headphone', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(112, 'chikie-bluetooth-speaker', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(113, 'camera-hikvision-hk-35vs8', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(114, 'camera-samsung-ss-24', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(115, 'leather-watch-band', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(116, 'apple-iphone-13-plus', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(117, 'macbook-pro-2015', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(118, 'macbook-air-12-inch', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(119, 'apple-watch-serial-7', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(120, 'macbook-pro-13-inch', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(121, 'apple-keyboard', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(122, 'macsafe-80w', 14, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(123, 'hand-playstation', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(124, 'apple-airpods-serial-3', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(125, 'cool-smart-watches', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(126, 'black-smart-watches', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(127, 'leather-watch-band-serial-3', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:23', '2021-08-24 07:59:23'),
(128, 'macbook-pro-2015-13-inch', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:24', '2021-08-24 07:59:24'),
(129, 'historic-alarm-clock', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:24', '2021-08-24 07:59:24'),
(130, 'black-glasses', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:24', '2021-08-24 07:59:24'),
(131, 'phillips-mouse', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:24', '2021-08-24 07:59:24'),
(132, 'gaming-keyboard', 24, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-08-24 07:59:24', '2021-08-24 07:59:24'),
(133, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(134, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(135, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(136, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(137, 'thuong-mai-dien-tu', 5, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(138, 'fashion', 6, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(139, 'electronic', 7, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(140, 'thuong-mai', 8, 'Botble\\Blog\\Models\\Category', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(141, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(142, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(143, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(144, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(145, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(146, 'chung', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(147, 'thiet-ke', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(148, 'thoi-trang', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(149, 'thuong-hieu', 9, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(150, 'hien-dai', 10, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(151, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(152, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(153, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(154, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(155, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(156, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(157, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(158, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(159, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(160, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:26', '2021-08-24 08:00:27'),
(161, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(162, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 12, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(163, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 13, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(164, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 14, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(165, 'cach-phoi-mau-tui-xach-cua-ban-voi-trang-phuc', 15, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(166, 'cach-cham-soc-tui-da', 16, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(167, 'chung-toi-dang-nghien-ngam-10-xu-huong-tui-lon-nhat-cua-mua-he', 17, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(168, 'nhung-pham-chat-can-thiet-cua-am-nhac-thanh-cong-cao', 18, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(169, '9-dieu-toi-thich-khi-cao-dau', 19, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(170, 'tai-sao-lam-viec-theo-nhom-thuc-su-bien-giac-mo-thanh-cong', 20, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(171, 'the-gioi-phuc-vu-cho-nhung-nguoi-trung-binh', 21, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(172, 'cac-duong-su-tren-man-hinh-khong-phai-la-dien-vien', 22, 'Botble\\Blog\\Models\\Post', 'blog', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(173, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(174, 'homepage-2', 2, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(175, 'homepage-3', 3, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(176, 'homepage-4', 4, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(177, 'blog', 5, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(178, 'contact', 6, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(179, 'about-us', 7, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(180, 'cookie-policy', 8, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(181, 'terms-conditions', 9, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(182, 'returns-exchanges', 10, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(183, 'shipping-delivery', 11, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(184, 'privacy-policy', 12, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(185, 'blog-left-sidebar', 13, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(186, 'trang-chu', 14, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(187, 'trang-chu-2', 15, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(188, 'trang-chu-3', 16, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(189, 'trang-chu-4', 17, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(190, 'tin-tuc', 18, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(191, 'lien-he', 19, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(192, 've-chung-toi', 20, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(193, 'chinh-sach-cookie', 21, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(194, 'dieu-kien-va-dieu-khoan', 22, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(195, 'chinh-sach-tra-hang', 23, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(196, 'chinh-sach-van-chuyen', 24, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(197, 'chinh-sach-bao-mat', 25, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27'),
(198, 'blog-sidebar-trai', 26, 'Botble\\Page\\Models\\Page', '', '2021-08-24 08:00:27', '2021-08-24 08:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(6, 'Chung', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(7, 'Thiết kế', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(8, 'Thời trang', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(9, 'Thương hiệu', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26'),
(10, 'Hiện đại', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-08-24 08:00:26', '2021-08-24 08:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(12, 1, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(13, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(14, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(15, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(16, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(17, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(18, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(19, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(20, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(21, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(22, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(23, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(24, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(25, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(26, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(27, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(28, 1, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(29, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(30, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(31, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(32, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(33, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(34, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(35, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(36, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(37, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(38, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(39, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(40, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(41, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(42, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(43, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(44, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(45, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(46, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(47, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(48, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(49, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(50, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(51, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(52, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(53, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(54, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(55, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(56, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(57, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(58, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(59, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(60, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(61, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(62, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(63, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(64, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(65, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(66, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(67, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(68, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(69, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(70, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(71, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(72, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(73, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(74, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(75, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(76, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(77, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(78, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(79, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(80, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(81, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(82, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(83, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(84, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(85, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(86, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(87, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(88, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(89, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(90, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(91, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(92, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(93, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(94, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(95, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(96, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(97, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(98, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(99, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(100, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(101, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(102, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(103, 1, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(104, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(105, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(106, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(107, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(108, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(109, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(110, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(111, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(112, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(113, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(114, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(115, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(116, 1, 'en', 'core/acl/api', 'name', 'Name', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(117, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(118, 1, 'en', 'core/acl/api', 'save', 'Save', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(119, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(120, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(121, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(122, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(123, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(124, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(125, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(126, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(127, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(128, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(129, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(130, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(131, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(132, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(133, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(134, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(135, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(136, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(137, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(138, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(139, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(140, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(141, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(142, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(143, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(144, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(145, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(146, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(147, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(148, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(149, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(150, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(151, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(152, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(153, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(154, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(155, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(156, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(157, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(158, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(159, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(160, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(161, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(162, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(163, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(164, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(165, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(166, 1, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(167, 1, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(168, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(169, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(170, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(171, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(172, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(173, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(174, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(175, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(176, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(177, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(178, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(179, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(180, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(181, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(182, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(183, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(184, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(185, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(186, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(187, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(188, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(189, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(190, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(191, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(192, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(193, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(194, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(195, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(196, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(197, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(198, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(199, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(200, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(201, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(202, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(203, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(204, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(205, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(206, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(207, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(208, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(209, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(210, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(211, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(212, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(213, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(214, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(215, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(216, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(217, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(218, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(219, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(220, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(221, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(222, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(223, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(224, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(225, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(226, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(227, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(228, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(229, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(230, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(231, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(232, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(233, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(234, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(235, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(236, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(237, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(238, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(239, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-08-24 08:00:59', '2021-08-24 08:00:59'),
(240, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(241, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(242, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(243, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(244, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(245, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(246, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(247, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(248, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(249, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(250, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(251, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(252, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(253, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(254, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(255, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(256, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(257, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(258, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(259, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(260, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(261, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(262, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(263, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(264, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(265, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(266, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(267, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(268, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(269, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(270, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(271, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(272, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(273, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(274, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(275, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(276, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(277, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(278, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(279, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(280, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(281, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(282, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(283, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(284, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(285, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(286, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(287, 1, 'vi', 'core/acl/auth', 'login.username', 'Tên truy cập', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(288, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(289, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(290, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(291, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(292, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(293, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(294, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(295, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(296, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(297, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(298, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(299, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(300, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(301, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(302, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(303, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(304, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(305, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(306, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(307, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(308, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(309, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(310, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(311, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(312, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(313, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(314, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(315, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(316, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(317, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(318, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(319, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(320, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(321, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(322, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(323, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(324, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(325, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(326, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(327, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(328, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(329, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(330, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(331, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(332, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(333, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(334, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(335, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(336, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(337, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(338, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(339, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(340, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(341, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(342, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(343, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(344, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(345, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(346, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(347, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(348, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(349, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(350, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(351, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(352, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(353, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(354, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(355, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(356, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(357, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(358, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(359, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(360, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(361, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(362, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(363, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(364, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(365, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(366, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(367, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(368, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(369, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(370, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(371, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(372, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(373, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(374, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(375, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(376, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(377, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(378, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(379, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(380, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(381, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-08-24 08:01:00', '2021-08-24 08:01:00');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(383, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(384, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(385, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(386, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(387, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(388, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(389, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(390, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(391, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(392, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(393, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(394, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(395, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(396, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(397, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(398, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(399, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(400, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(401, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(402, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(403, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(404, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(405, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(406, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(407, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(408, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(409, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(410, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(411, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(412, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(413, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(414, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(415, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(416, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(417, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(418, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(419, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(420, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(421, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(422, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(423, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(424, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(425, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(426, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(427, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(428, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(429, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(430, 1, 'en', 'core/base/base', 'no', 'No', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(431, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(432, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(433, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(434, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(435, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(436, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(437, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(438, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(439, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(440, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(441, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(442, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(443, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(444, 1, 'en', 'core/base/base', 'image', 'Image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(445, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(446, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(447, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(448, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(449, 1, 'en', 'core/base/base', 'tools', 'Tools', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(450, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(451, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(452, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(453, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(454, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(455, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(456, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(457, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(458, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(460, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(461, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(462, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(463, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(464, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(465, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(466, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(467, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(468, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(469, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(470, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(471, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(472, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(473, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(474, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(475, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(476, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(477, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://wowy.local/admin\">clicking here</a>.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(478, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(479, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(480, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(481, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(482, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(483, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(484, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(485, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(486, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(487, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(488, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(489, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(490, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(491, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(492, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(493, 1, 'en', 'core/base/forms', 'file', 'File', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(494, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(495, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(496, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(497, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(498, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(499, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(500, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(501, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(502, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(503, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(504, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(505, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(506, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(507, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(508, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(509, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(510, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(511, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(512, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(513, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(514, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(515, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(516, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(517, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(518, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(519, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(520, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(521, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(522, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(523, 1, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(524, 1, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(525, 1, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(526, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(527, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(528, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(529, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(530, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(531, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(532, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(533, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(534, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(535, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(536, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(537, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(538, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(539, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(540, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(541, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(542, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(543, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(544, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(545, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(546, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(547, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(548, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(549, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(550, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(551, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(552, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(553, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(554, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(555, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(556, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(557, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(558, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(559, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(560, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(561, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(562, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(563, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(564, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(565, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(566, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(567, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(568, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(569, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(570, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(571, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(572, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-08-24 08:01:00', '2021-08-24 08:01:00'),
(573, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(574, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(575, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(576, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(577, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(578, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(579, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(580, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(581, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(582, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(583, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(584, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(585, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(586, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(587, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(588, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(589, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(590, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(591, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(592, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(593, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(594, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(595, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(596, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(597, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(598, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(599, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(600, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(601, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(602, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(603, 1, 'en', 'core/base/system', 'database', 'Database', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(604, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(605, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(606, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(607, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(608, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(609, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(610, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(611, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(612, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(613, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(614, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(615, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(616, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(617, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(618, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(619, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(620, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(621, 1, 'en', 'core/base/system', 'version', 'Version', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(622, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(623, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(624, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(625, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(626, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(627, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(628, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(629, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(630, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(631, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(632, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(633, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(634, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(635, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(636, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(637, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(638, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(639, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(640, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(641, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(642, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(643, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(644, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(645, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(646, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(647, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(648, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(649, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(650, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(651, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(652, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(653, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(654, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(655, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(656, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(657, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(658, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(659, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(660, 1, 'en', 'core/base/tables', 'all', 'All', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(661, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(662, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(663, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(664, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(665, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(666, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(667, 1, 'en', 'core/base/tables', 'to', 'to', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(668, 1, 'en', 'core/base/tables', 'in', 'in', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(669, 1, 'en', 'core/base/tables', 'records', 'records', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(670, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(671, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(672, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(673, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(674, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(675, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(676, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(677, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(678, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(679, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(680, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(681, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(682, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(683, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(684, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(685, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(686, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(687, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(688, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(689, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(690, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(691, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(692, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(693, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(694, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(695, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(696, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(697, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(698, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(699, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(700, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(701, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(702, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(703, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(704, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(705, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(706, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(707, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(708, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(709, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(710, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(711, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(712, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(713, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(714, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(715, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(716, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(717, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(718, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(719, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(720, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(721, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(722, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(723, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(724, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(725, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(726, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(727, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(728, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(729, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(730, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(731, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(732, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(733, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(734, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(735, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(736, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(737, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(738, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(739, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(740, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(741, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(742, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(743, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(744, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(745, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(746, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(747, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(748, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(749, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(750, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(751, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(752, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(753, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(754, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(755, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(756, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(757, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(758, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(759, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(760, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(761, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(762, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(763, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(764, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(765, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(766, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(767, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(768, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(769, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(770, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(771, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(772, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(773, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(774, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(775, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(776, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(777, 1, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(778, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(779, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(780, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(781, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(782, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(783, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(784, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(785, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(786, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(787, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(788, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-08-24 08:01:01', '2021-08-24 08:01:01');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(789, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(790, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(791, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(792, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(793, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(794, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(795, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(796, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(797, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(798, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(799, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(800, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(801, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(802, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(803, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(804, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(805, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(806, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(807, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(808, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(809, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(810, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(811, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(812, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(813, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(814, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(815, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(816, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(817, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(818, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(819, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(820, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(821, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(822, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(823, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(824, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(825, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(826, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(827, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(828, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(829, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(830, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(831, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(832, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(833, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(834, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(835, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(836, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(837, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(838, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(839, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(840, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(841, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(842, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(843, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(844, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(845, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(846, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(847, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(848, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(849, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(850, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(851, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(852, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(853, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(854, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(855, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(856, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(857, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(858, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(859, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(860, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(861, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(862, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(863, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(864, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(865, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(866, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(867, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(868, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(869, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(870, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(871, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(872, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(873, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(874, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(875, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(876, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(877, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(878, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(879, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(880, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(881, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(882, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(883, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(884, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(885, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(886, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(887, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(888, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(889, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(890, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(891, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(892, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(893, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(894, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(895, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(896, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(897, 1, 'vi', 'core/base/tables', 'to', 'đến', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(898, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(899, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(900, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(901, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(902, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(903, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(904, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(905, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(906, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(907, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(908, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(909, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(910, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(911, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-08-24 08:01:01', '2021-08-24 08:01:01'),
(912, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(913, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(914, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(915, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(916, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(917, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(918, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(919, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(920, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(921, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(922, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(923, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(924, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(925, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(926, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(927, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(928, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(929, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(930, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(931, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(932, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(933, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(934, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(935, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(936, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(937, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(938, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(939, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(940, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(941, 1, 'en', 'core/media/media', 'image', 'Image', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(942, 1, 'en', 'core/media/media', 'video', 'Video', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(943, 1, 'en', 'core/media/media', 'document', 'Document', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(944, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(945, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(946, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(947, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(948, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(949, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(950, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(951, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(952, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(953, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(954, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(955, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(956, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(957, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(958, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(959, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(960, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(961, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(962, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(963, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(964, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(965, 1, 'en', 'core/media/media', 'create', 'Create', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(966, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(967, 1, 'en', 'core/media/media', 'close', 'Close', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(968, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(969, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(970, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(971, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(972, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(973, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(974, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(975, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(976, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(977, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(978, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(979, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(980, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(981, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(982, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(983, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(984, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(985, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(986, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(987, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(988, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(989, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(990, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(991, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(992, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(993, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(994, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(995, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(996, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(997, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(998, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(999, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1000, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1001, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1002, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1003, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1004, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1005, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1006, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1007, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1008, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1009, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1010, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1011, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1012, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1013, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1014, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1015, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1016, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1017, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1018, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1019, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1020, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1021, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1022, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1023, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1024, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1025, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1026, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1027, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1028, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1029, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1030, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1031, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1032, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1033, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1034, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1035, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1036, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1037, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1038, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1039, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1040, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1041, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1042, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1043, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1044, 1, 'en', 'core/media/media', 'download_link', 'Download', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1045, 1, 'en', 'core/media/media', 'url', 'URL', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1046, 1, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1047, 1, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1048, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1049, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1050, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1051, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1052, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1053, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1054, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1055, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1056, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1057, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1058, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1059, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1060, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1061, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1062, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1063, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1064, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1065, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1066, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1067, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1068, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1069, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1070, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1071, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1072, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1073, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1074, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1075, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1076, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1077, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1078, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1079, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1080, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1081, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1082, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1083, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1084, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1085, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1086, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1087, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1088, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1089, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1090, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1091, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1092, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1093, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1094, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1095, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1096, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1097, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1098, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1099, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1100, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1101, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1102, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1103, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1104, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1105, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1106, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1107, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1108, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1109, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1110, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1111, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1112, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1113, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1114, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1115, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1116, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1117, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1118, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1119, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1120, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1121, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1122, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1123, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1124, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1125, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1126, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1127, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1128, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1129, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1130, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1131, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1132, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1133, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1134, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1135, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1136, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1137, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1138, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1139, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1140, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1141, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1142, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1143, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1144, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1145, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1146, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1147, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1148, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1149, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1150, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1151, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1152, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1153, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1154, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1155, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1156, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1157, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1158, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1159, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1160, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1161, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1162, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1163, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1164, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1165, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1166, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1167, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1168, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1169, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1170, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1171, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1172, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1173, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1174, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1175, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1176, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1177, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1178, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1179, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1180, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1181, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1182, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1183, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1184, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1185, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-08-24 08:01:02', '2021-08-24 08:01:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1186, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1187, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1188, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1189, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1190, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1191, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1192, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1193, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1194, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1195, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1196, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1197, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1198, 1, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1199, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1200, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1201, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1202, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1203, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1204, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1205, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1206, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1207, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1208, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1209, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1210, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1211, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1212, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1213, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1214, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1215, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1216, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1217, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1218, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1219, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1220, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1221, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1222, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1223, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1224, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1225, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1226, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1227, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1228, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1229, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1230, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1231, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-08-24 08:01:02', '2021-08-24 08:01:02'),
(1232, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1233, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1234, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1235, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1236, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1237, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1238, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1239, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1240, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1241, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1242, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1243, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1244, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1245, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1246, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1247, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1248, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1249, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1250, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1251, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1252, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1253, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1254, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1255, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1256, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1257, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1258, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1259, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1260, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1261, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1262, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1263, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1264, 1, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1265, 1, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1266, 1, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1267, 1, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1268, 1, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1269, 1, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1270, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1271, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1272, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1273, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1274, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1275, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1276, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1277, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1278, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1279, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1280, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1281, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1282, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1283, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1284, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1285, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1286, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1287, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1288, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1289, 1, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1290, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1291, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1292, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1293, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1294, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1295, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1296, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1297, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1298, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1299, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1300, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1301, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1302, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1303, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1304, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1305, 1, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1306, 1, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1307, 1, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1308, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1309, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1310, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1311, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1312, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1313, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1314, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1315, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1316, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1317, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1318, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1319, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1320, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1321, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1322, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1323, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1324, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1325, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1326, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1327, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1328, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1329, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1330, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1331, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1332, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1333, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1334, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1335, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1336, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1337, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1338, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1339, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1340, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1341, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1342, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1343, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1344, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1345, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1346, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1347, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1348, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1349, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1350, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1351, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1352, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1353, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1354, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1355, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1356, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1357, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1358, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1359, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1360, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1361, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1362, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1363, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1364, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1365, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1366, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1367, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1368, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1369, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1370, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1371, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1372, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1373, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1374, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1375, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1376, 1, 'en', 'core/table/general', 'operations', 'Operations', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1377, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1378, 1, 'en', 'core/table/general', 'display', 'Display', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1379, 1, 'en', 'core/table/general', 'all', 'All', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1380, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1381, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1382, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1383, 1, 'en', 'core/table/general', 'to', 'to', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1384, 1, 'en', 'core/table/general', 'in', 'in', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1385, 1, 'en', 'core/table/general', 'records', 'records', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1386, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1387, 1, 'en', 'core/table/general', 'no_record', 'No record', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1388, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1389, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1390, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1391, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1392, 1, 'en', 'core/table/general', 'delete', 'Delete', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1393, 1, 'en', 'core/table/general', 'close', 'Close', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1394, 1, 'en', 'core/table/general', 'contains', 'Contains', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1395, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1396, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1397, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1398, 1, 'en', 'core/table/general', 'value', 'Value', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1399, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1400, 1, 'en', 'core/table/general', 'reset', 'Reset', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1401, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1402, 1, 'en', 'core/table/general', 'apply', 'Apply', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1403, 1, 'en', 'core/table/general', 'filters', 'Filters', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1404, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1405, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1406, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1407, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1408, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1409, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1410, 1, 'en', 'core/table/general', 'search', 'Search...', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1411, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1412, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1413, 1, 'en', 'core/table/table', 'display', 'Display', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1414, 1, 'en', 'core/table/table', 'all', 'All', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1415, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1416, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1417, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1418, 1, 'en', 'core/table/table', 'to', 'to', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1419, 1, 'en', 'core/table/table', 'in', 'in', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1420, 1, 'en', 'core/table/table', 'records', 'records', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1421, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1422, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1423, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1424, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1425, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1426, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1427, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1428, 1, 'en', 'core/table/table', 'close', 'Close', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1429, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1430, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1431, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1432, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1433, 1, 'en', 'core/table/table', 'value', 'Value', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1434, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1435, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1436, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1437, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1438, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1439, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1440, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1441, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1442, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1443, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1444, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1445, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1446, 1, 'vi', 'core/table/general', 'operations', 'Hành động', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1447, 1, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1448, 1, 'vi', 'core/table/general', 'display', 'Hiển thị', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1449, 1, 'vi', 'core/table/general', 'all', 'Tất cả', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1450, 1, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1451, 1, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1452, 1, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1453, 1, 'vi', 'core/table/general', 'to', 'đến', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1454, 1, 'vi', 'core/table/general', 'in', 'trong tổng số', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1455, 1, 'vi', 'core/table/general', 'records', 'bản ghi', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1456, 1, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1457, 1, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1458, 1, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1459, 1, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1460, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1461, 1, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1462, 1, 'vi', 'core/table/general', 'delete', 'Xoá', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1463, 1, 'vi', 'core/table/general', 'close', 'Đóng', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1464, 1, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1465, 1, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1466, 1, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1467, 1, 'vi', 'core/table/general', 'value', 'Giá trị', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1468, 1, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1469, 1, 'vi', 'core/table/general', 'reset', 'Làm mới', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1470, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1471, 1, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1472, 1, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1473, 1, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1474, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1475, 1, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1476, 1, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1477, 1, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1478, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1479, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1480, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1481, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1482, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1483, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1484, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1485, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1486, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1487, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1488, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1489, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1490, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1491, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1492, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1493, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1494, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1495, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1496, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1497, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1498, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1499, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1500, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1501, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1502, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1503, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1504, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1505, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1506, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1507, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1508, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1509, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1510, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1511, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1512, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1513, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1514, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1515, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1516, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1517, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1518, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1519, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1520, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1521, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1522, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1523, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1524, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-08-24 08:01:03', '2021-08-24 08:01:03'),
(1525, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1526, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1527, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1528, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1529, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1530, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1531, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1532, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1533, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1534, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1535, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1536, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1537, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1538, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1539, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1540, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1541, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1542, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1543, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1544, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1545, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1546, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1547, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1548, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1549, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1550, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1551, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1552, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1553, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1554, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1555, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1556, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1557, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1558, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1559, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1560, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1561, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1562, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1563, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1564, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1565, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1566, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1567, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1568, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1569, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1570, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1571, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1572, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1573, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1574, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1575, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1576, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1577, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1578, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1579, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1580, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1581, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-08-24 08:01:04', '2021-08-24 08:01:04');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1582, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1583, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1584, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1585, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1586, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1587, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Tiện ích mở rộng', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1588, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1589, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1590, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1591, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1592, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1593, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1594, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1595, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1596, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1597, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1598, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1599, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1600, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1601, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1602, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1603, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1604, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1605, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1606, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1607, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1608, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1609, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1610, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1611, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1612, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1613, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1614, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1615, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1616, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1617, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1618, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1619, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1620, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1621, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1622, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1623, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1624, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1625, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1626, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1627, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1628, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1629, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1630, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1631, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1632, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1633, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1634, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1635, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1636, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1637, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1638, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1639, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1640, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1641, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1642, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1643, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1644, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1645, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1646, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1647, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1648, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1649, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1650, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1651, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1652, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1653, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1654, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1655, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1656, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1657, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1658, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1659, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1660, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1661, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1662, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1663, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1664, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1665, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1666, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1667, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1668, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1669, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1670, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1671, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1672, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1673, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1674, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1675, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1676, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1677, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1678, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1679, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1680, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1681, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1682, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1683, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1684, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1685, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1686, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1687, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1688, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1689, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1690, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1691, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1692, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1693, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1694, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1695, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1696, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1697, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1698, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1699, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1700, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1701, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1702, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1703, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1704, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1705, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1706, 1, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1707, 1, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1708, 1, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1709, 1, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1710, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1711, 1, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1712, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1713, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1714, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1715, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1716, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1717, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1718, 1, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1719, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1720, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1721, 1, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1722, 1, 'en', 'plugins/ads/ads', 'name', 'Ads', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1723, 1, 'en', 'plugins/ads/ads', 'create', 'New ads', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1724, 1, 'en', 'plugins/ads/ads', 'edit', 'Edit ads', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1725, 1, 'en', 'plugins/ads/ads', 'location', 'Location', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1726, 1, 'en', 'plugins/ads/ads', 'url', 'URL', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1727, 1, 'en', 'plugins/ads/ads', 'expired_at', 'Expired at', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1728, 1, 'en', 'plugins/ads/ads', 'key', 'Key', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1729, 1, 'en', 'plugins/ads/ads', 'shortcode', 'Shortcode', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1730, 1, 'en', 'plugins/ads/ads', 'clicked', 'Clicked', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1731, 1, 'en', 'plugins/ads/ads', 'not_set', 'Not set', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1732, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1733, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1734, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1735, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1736, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1737, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1738, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1739, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1740, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1741, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1742, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1743, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1744, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1745, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1746, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1747, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1748, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1749, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1750, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1751, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1752, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1753, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1754, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1755, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1756, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1757, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1758, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1759, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1760, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1761, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1762, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1763, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1764, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1765, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1766, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1767, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1768, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1769, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1770, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1771, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1772, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1773, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1774, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1775, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1776, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1777, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1778, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1779, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-08-24 08:01:04', '2021-08-24 08:01:04'),
(1780, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1781, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1782, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1783, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1784, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1785, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1786, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1787, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1788, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1789, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1790, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1791, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1792, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1793, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1794, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1795, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1796, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1797, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1798, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1799, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1800, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1801, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1802, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1803, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1804, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1805, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1806, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1807, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1808, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1809, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1810, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1811, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1812, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1813, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1814, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1815, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1816, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1817, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1818, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1819, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1820, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1821, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1822, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1823, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1824, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1825, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1826, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1827, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1828, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1829, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1830, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1831, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1832, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1833, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1834, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1835, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1836, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1837, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1838, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1839, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1840, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1841, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1842, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1843, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1844, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1845, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1846, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1847, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1848, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1849, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1850, 1, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1851, 1, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1852, 1, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1853, 1, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1854, 1, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1855, 1, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1856, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1857, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1858, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1859, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1860, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1861, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1862, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1863, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1864, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1865, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1866, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1867, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1868, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1869, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1870, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1871, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1872, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1873, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1874, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1875, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1876, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1877, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1878, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1879, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1880, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1881, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1882, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1883, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1884, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1885, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1886, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1887, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1888, 1, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1889, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1890, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1891, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1892, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1893, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1894, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1895, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1896, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1897, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1898, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1899, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1900, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1901, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1902, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1903, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1904, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1905, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1906, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1907, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1908, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1909, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1910, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1911, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1912, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1913, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1914, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1915, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1916, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1917, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1918, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1919, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1920, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1921, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1922, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1923, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1924, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1925, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1926, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1927, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1928, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1929, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1930, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1931, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1932, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1933, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1934, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1935, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1936, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1937, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1938, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1939, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1940, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1941, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1942, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1943, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1944, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1945, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1946, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1947, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1948, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1949, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1950, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1951, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1952, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1953, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1954, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1955, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1956, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1957, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-08-24 08:01:05', '2021-08-24 08:01:05');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1958, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1959, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1960, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1961, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1962, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1963, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1964, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1965, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1966, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1967, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1968, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1969, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1970, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1971, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1972, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1973, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1974, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1975, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1976, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1977, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1978, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1979, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1980, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1981, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1982, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1983, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1984, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1985, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1986, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1987, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1988, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1989, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1990, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1991, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1992, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1993, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1994, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1995, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1996, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1997, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1998, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(1999, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2000, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2001, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2002, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2003, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2004, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2005, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2006, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2007, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2008, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2009, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2010, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2011, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2012, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2013, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2014, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2015, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2016, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2017, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2018, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2019, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2020, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2021, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2022, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2023, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2024, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2025, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2026, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2027, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2028, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-08-24 08:01:05', '2021-08-24 08:01:05'),
(2029, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2030, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2031, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2032, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2033, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2034, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2035, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2036, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2037, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2038, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2039, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2040, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2041, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2042, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2043, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2044, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2045, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2046, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2047, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2048, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2049, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2050, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2051, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2052, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2053, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2054, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2055, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2056, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2057, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2058, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2059, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2060, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2061, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2062, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2063, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2064, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2065, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2066, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2067, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2068, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2069, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2070, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2071, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2072, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2073, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2074, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2075, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2076, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2077, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2078, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2079, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2080, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2081, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2082, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2083, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2084, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2085, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2086, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2087, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2088, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2089, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2090, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2091, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2092, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2093, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2094, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2095, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2096, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2097, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2098, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2099, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2100, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2101, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2102, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2103, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2104, 1, 'en', 'plugins/ecommerce/bulk-import', 'name', 'Bulk Import', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2105, 1, 'en', 'plugins/ecommerce/bulk-import', 'loading_text', 'Importing', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2106, 1, 'en', 'plugins/ecommerce/bulk-import', 'imported_successfully', 'Imported successfully.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2107, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2108, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file', 'Please choose the file', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2109, 1, 'en', 'plugins/ecommerce/bulk-import', 'start_import', 'Start Import', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2110, 1, 'en', 'plugins/ecommerce/bulk-import', 'note', 'Note!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2111, 1, 'en', 'plugins/ecommerce/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2112, 1, 'en', 'plugins/ecommerce/bulk-import', 'results', 'Result: :success successes, :failed failures', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2113, 1, 'en', 'plugins/ecommerce/bulk-import', 'failures', 'Failures', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2114, 1, 'en', 'plugins/ecommerce/bulk-import', 'tables.import', 'Import', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2115, 1, 'en', 'plugins/ecommerce/bulk-import', 'template', 'Template', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2116, 1, 'en', 'plugins/ecommerce/bulk-import', 'rules', 'Rules', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2117, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2118, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file', 'Choose file', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2119, 1, 'en', 'plugins/ecommerce/bulk-import', 'menu', 'Import products', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2120, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-csv-file', 'Download CSV template', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2121, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-excel-file', 'Download Excel template', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2122, 1, 'en', 'plugins/ecommerce/bulk-import', 'downloading', 'Downloading...', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2123, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.input_error', 'Input error', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2124, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2125, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.allowed_input', 'Allowed input', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2126, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2127, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2128, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2129, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2130, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2131, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2132, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2133, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2134, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2135, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2136, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2137, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2138, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2139, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2140, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2141, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2142, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2143, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2144, 1, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2145, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2146, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2147, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2148, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2149, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2150, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2151, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2152, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2153, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2154, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2155, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2156, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2157, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2158, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2159, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2160, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2161, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2162, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2163, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2164, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2165, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2166, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2167, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2168, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2169, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2170, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2171, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2172, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2173, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2174, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2175, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2176, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2177, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2178, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2179, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2180, 1, 'en', 'plugins/ecommerce/discount', 'create_coupon_code', 'Create coupon code', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2181, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_promotion', 'Create discount promotion', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2182, 1, 'en', 'plugins/ecommerce/discount', 'generate_coupon_code', 'Generate coupon code', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2183, 1, 'en', 'plugins/ecommerce/discount', 'customers_will_enter_this_coupon_code_when_they_checkout', 'Customers will enter this coupon code when they checkout', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2184, 1, 'en', 'plugins/ecommerce/discount', 'select_type_of_discount', 'Select type of discount', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2185, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2186, 1, 'en', 'plugins/ecommerce/discount', 'promotion', 'Promotion', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2187, 1, 'en', 'plugins/ecommerce/discount', 'can_be_used_with_promotion', 'Can be used with promotion', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2188, 1, 'en', 'plugins/ecommerce/discount', 'unlimited_coupon', 'Unlimited coupon', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2189, 1, 'en', 'plugins/ecommerce/discount', 'enter_number', 'Enter number', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2190, 1, 'en', 'plugins/ecommerce/discount', 'coupon_type', 'Coupon type', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2191, 1, 'en', 'plugins/ecommerce/discount', 'percentage_discount', 'Percentage discount (%)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2192, 1, 'en', 'plugins/ecommerce/discount', 'free_shipping', 'Free shipping', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2193, 1, 'en', 'plugins/ecommerce/discount', 'same_price', 'Same price', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2194, 1, 'en', 'plugins/ecommerce/discount', 'apply_for', 'apply for', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2195, 1, 'en', 'plugins/ecommerce/discount', 'all_orders', 'All orders', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2196, 1, 'en', 'plugins/ecommerce/discount', 'order_amount_from', 'Order amount from', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2197, 1, 'en', 'plugins/ecommerce/discount', 'product_collection', 'Product collection', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2198, 1, 'en', 'plugins/ecommerce/discount', 'product', 'Product', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2199, 1, 'en', 'plugins/ecommerce/discount', 'customer', 'Customer', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2200, 1, 'en', 'plugins/ecommerce/discount', 'variant', 'Variant', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2201, 1, 'en', 'plugins/ecommerce/discount', 'search_product', 'Search product', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2202, 1, 'en', 'plugins/ecommerce/discount', 'no_products_found', 'No products found!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2203, 1, 'en', 'plugins/ecommerce/discount', 'search_customer', 'Search customer', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2204, 1, 'en', 'plugins/ecommerce/discount', 'no_customer_found', 'No customer found!', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2205, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_order', 'One time per order', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2206, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_product_in_cart', 'One time per product in cart', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2207, 1, 'en', 'plugins/ecommerce/discount', 'number_of_products', 'Number of products', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2208, 1, 'en', 'plugins/ecommerce/discount', 'selected_products', 'Selected products', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2209, 1, 'en', 'plugins/ecommerce/discount', 'selected_customers', 'Selected customers', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2210, 1, 'en', 'plugins/ecommerce/discount', 'time', 'Time', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2211, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2212, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2213, 1, 'en', 'plugins/ecommerce/discount', 'never_expired', 'Never expired', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2214, 1, 'en', 'plugins/ecommerce/discount', 'save', 'Save', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2215, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2216, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2217, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2218, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2219, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2220, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2221, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2222, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2223, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2224, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2225, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2226, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2227, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2228, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2229, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2230, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2231, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2232, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2233, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2234, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2235, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2236, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2237, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2238, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2239, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-08-24 08:01:06', '2021-08-24 08:01:06'),
(2240, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2241, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2242, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2243, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2244, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2245, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2246, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2247, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2248, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2249, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2250, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2251, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2252, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2253, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2254, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2255, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2256, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2257, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2258, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2259, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2260, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2261, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2262, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2263, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2264, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2265, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2266, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2267, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2268, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2269, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2270, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2271, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2272, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2273, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2274, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2275, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2276, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2277, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2278, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2279, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2280, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2281, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2282, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2283, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2284, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2285, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2286, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2287, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2288, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2289, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2290, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2291, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2292, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2293, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2294, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2295, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2296, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2297, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2298, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2299, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2300, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2301, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2302, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2303, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2304, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2305, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2306, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2307, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2308, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2309, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2310, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2311, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2312, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2313, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2314, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2315, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2316, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2317, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2318, 1, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2319, 1, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2320, 1, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2321, 1, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2322, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2323, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2324, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-08-24 08:01:07', '2021-08-24 08:01:07');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2325, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2326, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2327, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2328, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2329, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2330, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2331, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2332, 1, 'en', 'plugins/ecommerce/order', 'menu', 'Orders', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2333, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2334, 1, 'en', 'plugins/ecommerce/order', 'cancel_error', 'The order is delivering or completed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2335, 1, 'en', 'plugins/ecommerce/order', 'cancel_success', 'You do cancel the order successful', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2336, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2337, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2338, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2339, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2340, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2341, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2342, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2343, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2344, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2345, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2346, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2347, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2348, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2349, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2350, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2351, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2352, 1, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2353, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2354, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2355, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2356, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2357, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2358, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2359, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2360, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2361, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2362, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2363, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2364, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2365, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2366, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2367, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2368, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2369, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2370, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2371, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2372, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2373, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2374, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2375, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2376, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2377, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2378, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2379, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2380, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2381, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2382, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2383, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2384, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2385, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2386, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2387, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2388, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2389, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2390, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2391, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2392, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2393, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2394, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2395, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2396, 1, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2397, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2398, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2399, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2400, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2401, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2402, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2403, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2404, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2405, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2406, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2407, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2408, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2409, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2410, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2411, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2412, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2413, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2414, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2415, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2416, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2417, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2418, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2419, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2420, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2421, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2422, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2423, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2424, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2425, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2426, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2427, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2428, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2429, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2430, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2431, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2432, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2433, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2434, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2435, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2436, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2437, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2438, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2439, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2440, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2441, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2442, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2443, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2444, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2445, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2446, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2447, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2448, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2449, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2450, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2451, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2452, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2453, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2454, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2455, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2456, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2457, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2458, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2459, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2460, 1, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2461, 1, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2021-08-24 08:01:07', '2021-08-24 08:01:07'),
(2462, 1, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2463, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2464, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2465, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_product', 'Create a new product', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2466, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2467, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2468, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2469, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2470, 1, 'en', 'plugins/ecommerce/order', 'note_for_order', 'Note for order...', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2471, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2472, 1, 'en', 'plugins/ecommerce/order', 'add_discount', 'Add discount', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2473, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2474, 1, 'en', 'plugins/ecommerce/order', 'add_shipping_fee', 'Add shipping fee', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2475, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2476, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2477, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_and_create_order', 'Confirm payment and create order', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2478, 1, 'en', 'plugins/ecommerce/order', 'paid', 'Paid', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2479, 1, 'en', 'plugins/ecommerce/order', 'pay_later', 'Pay later', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2480, 1, 'en', 'plugins/ecommerce/order', 'customer_information', 'Customer information', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2481, 1, 'en', 'plugins/ecommerce/order', 'create_new_customer', 'Create new customer', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2482, 1, 'en', 'plugins/ecommerce/order', 'no_customer_found', 'No customer found!', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2483, 1, 'en', 'plugins/ecommerce/order', 'customer', 'Customer', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2484, 1, 'en', 'plugins/ecommerce/order', 'orders', 'order(s)', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2485, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping Address', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2486, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2487, 1, 'en', 'plugins/ecommerce/order', 'name', 'Name', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2488, 1, 'en', 'plugins/ecommerce/order', 'price', 'Price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2489, 1, 'en', 'plugins/ecommerce/order', 'sku_optional', 'SKU (optional)', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2490, 1, 'en', 'plugins/ecommerce/order', 'with_storehouse_management', 'With storehouse management?', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2491, 1, 'en', 'plugins/ecommerce/order', 'quantity', 'Quantity', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2492, 1, 'en', 'plugins/ecommerce/order', 'allow_customer_checkout_when_this_product_out_of_stock', 'Allow customer checkout when this product out of stock?', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2493, 1, 'en', 'plugins/ecommerce/order', 'address', 'Address', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2494, 1, 'en', 'plugins/ecommerce/order', 'phone', 'Phone', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2495, 1, 'en', 'plugins/ecommerce/order', 'country', 'Country', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2496, 1, 'en', 'plugins/ecommerce/order', 'state', 'State', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2497, 1, 'en', 'plugins/ecommerce/order', 'city', 'City', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2498, 1, 'en', 'plugins/ecommerce/order', 'zip_code', 'Zip code', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2499, 1, 'en', 'plugins/ecommerce/order', 'discount_based_on', 'Discount based on', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2500, 1, 'en', 'plugins/ecommerce/order', 'or_coupon_code', 'Or coupon code', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2501, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2502, 1, 'en', 'plugins/ecommerce/order', 'how_to_select_configured_shipping', 'How to select configured shipping?', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2503, 1, 'en', 'plugins/ecommerce/order', 'please_add_customer_information_with_the_complete_shipping_address_to_see_the_configured_shipping_rates', 'Please add customer information with the complete shipping address to see the configured shipping rates', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2504, 1, 'en', 'plugins/ecommerce/order', 'free_shipping', 'Free shipping', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2505, 1, 'en', 'plugins/ecommerce/order', 'custom', 'Custom', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2506, 1, 'en', 'plugins/ecommerce/order', 'email', 'Email', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2507, 1, 'en', 'plugins/ecommerce/order', 'create_order', 'Create order', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2508, 1, 'en', 'plugins/ecommerce/order', 'close', 'Close', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2509, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_is_paid_for_this_order', 'Confirm payment is paid for this order', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2510, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_paid_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Paid. Once the order has been created, you cannot change the payment method or status', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2511, 1, 'en', 'plugins/ecommerce/order', 'select_payment_method', 'Select payment method', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2512, 1, 'en', 'plugins/ecommerce/order', 'cash_on_delivery_cod', 'Cash on delivery (COD)', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2513, 1, 'en', 'plugins/ecommerce/order', 'bank_transfer', 'Bank transfer', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2514, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2515, 1, 'en', 'plugins/ecommerce/order', 'confirm_that_payment_for_this_order_will_be_paid_later', 'Confirm that payment for this order will be paid later', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2516, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_pending_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Pending. Once the order has been created, you cannot change the payment method or status', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2517, 1, 'en', 'plugins/ecommerce/order', 'pending_amount', 'Pending amount', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2518, 1, 'en', 'plugins/ecommerce/order', 'update_email', 'Update email', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2519, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2520, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2521, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_order', 'Create a new order', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2522, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2523, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2524, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2525, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2526, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2527, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2528, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2529, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2530, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2531, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2532, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2533, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2534, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2535, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2536, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2537, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2538, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2539, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2540, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2541, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2542, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2543, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2544, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2545, 1, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2546, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2547, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2548, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2549, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2550, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2551, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2552, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2553, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2554, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2555, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2556, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2557, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2558, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2559, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2560, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2561, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2562, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2563, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2564, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2565, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2566, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2567, 1, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2568, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2569, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2570, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2571, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2572, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2573, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2574, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2575, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2576, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2577, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2578, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2579, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2580, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2581, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2582, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2583, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2584, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2585, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2586, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2587, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2588, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2589, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2590, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2591, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2592, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2593, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2594, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2595, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2596, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2597, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2598, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2599, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2600, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2601, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2602, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2603, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2604, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2605, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2606, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2607, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2608, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2609, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2610, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2611, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2612, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2613, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2614, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2615, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2616, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2617, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2618, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2619, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2620, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2621, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2622, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2623, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2624, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2625, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2626, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2627, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2628, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2629, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2630, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2631, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2632, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2633, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2634, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2635, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2636, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2637, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2638, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2639, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2640, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2641, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2642, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2643, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2644, 1, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2645, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2646, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2647, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2648, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2649, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2650, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2651, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2652, 1, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2653, 1, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2654, 1, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2655, 1, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2656, 1, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2657, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2658, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2659, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2660, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2661, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2662, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-08-24 08:01:08', '2021-08-24 08:01:08'),
(2663, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2664, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2665, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2666, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2667, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2668, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2669, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2670, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2671, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2672, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2673, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2674, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2675, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2676, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2677, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2678, 1, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2679, 1, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2680, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2681, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2682, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2683, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2684, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2685, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2686, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2687, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2688, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2689, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2690, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2691, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2692, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2693, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2694, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2695, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-08-24 08:01:09', '2021-08-24 08:01:09');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2696, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2697, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2698, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2699, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2700, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2701, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2702, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2703, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2704, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2705, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2706, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2707, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2708, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2709, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2710, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2711, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2712, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2713, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2714, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2715, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2716, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2717, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2718, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2719, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2720, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2721, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2722, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2723, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2724, 1, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2725, 1, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2726, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2727, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2728, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2729, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2730, 1, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2731, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2732, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2733, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2734, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2735, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2736, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2737, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2738, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2739, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2740, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2741, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2742, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2743, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2744, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2745, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2746, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2747, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2748, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2749, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2750, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2751, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2752, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2753, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2754, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2755, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2756, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2757, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2758, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2759, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2760, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2761, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2762, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2763, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2764, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2765, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2766, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2767, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2768, 1, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2769, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2770, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2771, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2772, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2773, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2774, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2775, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2776, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2777, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2778, 1, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2779, 1, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2780, 1, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2781, 1, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2782, 1, 'en', 'plugins/ecommerce/products', 'category', 'Category', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2783, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2784, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2785, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2786, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2787, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2788, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2789, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2790, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2791, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2792, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top Selling Products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2793, 1, 'en', 'plugins/ecommerce/reports', 'ranges.today', 'Today', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2794, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_week', 'This week', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2795, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_7_days', 'Last 7 days', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2796, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_month', 'This month', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2797, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_year', 'This year', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2798, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2799, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2800, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2801, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2802, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2803, 1, 'en', 'plugins/ecommerce/reports', 'sales_reports', 'Sales Reports', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2804, 1, 'en', 'plugins/ecommerce/reports', 'total_earnings', 'Total Earnings', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2805, 1, 'en', 'plugins/ecommerce/reports', 'recent_orders', 'Recent Orders', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2806, 1, 'en', 'plugins/ecommerce/reports', 'statistics', 'Statistics', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2807, 1, 'en', 'plugins/ecommerce/reports', 'items_earning_sales', 'Items Earning Sales: :value', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2808, 1, 'en', 'plugins/ecommerce/reports', 'revenue', 'Revenue', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2809, 1, 'en', 'plugins/ecommerce/reports', 'orders', 'Orders', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2810, 1, 'en', 'plugins/ecommerce/reports', 'products', 'Products', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2811, 1, 'en', 'plugins/ecommerce/reports', 'customers', 'Customers', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2812, 1, 'en', 'plugins/ecommerce/reports', 'earnings', 'Earnings', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2813, 1, 'en', 'plugins/ecommerce/reports', 'date_range_format_value', 'From :from to :to', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2814, 1, 'en', 'plugins/ecommerce/reports', 'select_range', 'Select Range', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2815, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2816, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2817, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2818, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2819, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2820, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2821, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2822, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-08-24 08:01:09', '2021-08-24 08:01:09'),
(2823, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2824, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2825, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2826, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2827, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2828, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2829, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2830, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2831, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2832, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2833, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2834, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2835, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2836, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2837, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2838, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2839, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2840, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2841, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2842, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2843, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2844, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2845, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2846, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2847, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2848, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2849, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2850, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2851, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2852, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2853, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2854, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2855, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2856, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2857, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2858, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2859, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2860, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2861, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2862, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2863, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2864, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2865, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2866, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2867, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2868, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2869, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2870, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2871, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2872, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2873, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2874, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2875, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2876, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2877, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2878, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2879, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2880, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2881, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2882, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2883, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2884, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2885, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2886, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2887, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2888, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2889, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2890, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2891, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2892, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2893, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2894, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2895, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2896, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2897, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2898, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2899, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2900, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2901, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2902, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2903, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2904, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2905, 1, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2906, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2907, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2908, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2909, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2910, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2911, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2912, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2913, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2914, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2915, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2916, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2917, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2918, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2919, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2920, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2921, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2922, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2923, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2924, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2925, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2926, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2927, 1, 'en', 'plugins/ecommerce/shipping', 'warehouse', 'Warehouse', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2928, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2929, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2930, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2931, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2932, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2933, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2934, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2935, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2936, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2937, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2938, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2939, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2940, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2941, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2942, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2943, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2944, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2945, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2946, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2947, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2948, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2949, 1, 'vi', 'plugins/ecommerce/brands', 'name', 'Thương hiệu', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2950, 1, 'vi', 'plugins/ecommerce/brands', 'create', 'Thêm thương hiệu mới', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2951, 1, 'vi', 'plugins/ecommerce/brands', 'edit', 'Sửa thương hiệu', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2952, 1, 'vi', 'plugins/ecommerce/brands', 'form.name', 'Tên', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2953, 1, 'vi', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Tên thương hiệu (tối đa 255 kí tự)', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2954, 1, 'vi', 'plugins/ecommerce/brands', 'form.description', 'Mô tả', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2955, 1, 'vi', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Mô tả ngắn cho thương hiệu này (tối đa 400 kí tự)', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2956, 1, 'vi', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2957, 1, 'vi', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2958, 1, 'vi', 'plugins/ecommerce/brands', 'form.is_featured', 'Nổi bật?', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2959, 1, 'vi', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2960, 1, 'vi', 'plugins/ecommerce/brands', 'website', 'Website', '2021-08-24 08:01:10', '2021-08-24 08:01:10'),
(2961, 1, 'vi', 'plugins/ecommerce/brands', 'notices.no_select', 'Không có bản ghi nào được chọn!', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2962, 1, 'vi', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Cập nhật thành công', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2963, 1, 'vi', 'plugins/ecommerce/brands', 'cannot_delete', 'Xoá không thành công', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2964, 1, 'vi', 'plugins/ecommerce/brands', 'brand_deleted', 'Xoá thương hiệu thành công', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2965, 1, 'vi', 'plugins/ecommerce/brands', 'menu', 'Thương hiệu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2966, 1, 'vi', 'plugins/ecommerce/brands', 'intro.title', 'Quản lý danh sách thương hiệu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2967, 1, 'vi', 'plugins/ecommerce/brands', 'intro.description', 'Các thương hiệu của sản phẩm như Nike, Adidas, Bitis ...', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2968, 1, 'vi', 'plugins/ecommerce/brands', 'intro.button_text', 'Tạo thương hiệu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2969, 1, 'vi', 'plugins/ecommerce/currencies', 'name', 'Tiền tệ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2970, 1, 'vi', 'plugins/ecommerce/currencies', 'create', 'Thêm loại tiền tệ mới', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2971, 1, 'vi', 'plugins/ecommerce/currencies', 'edit', 'Sửa tiền tệ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2972, 1, 'vi', 'plugins/ecommerce/currencies', 'list', 'Danh sách tiền tệ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2973, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.title', 'Tên', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2974, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.code', 'Mã', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2975, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.symbol', 'Kí hiệu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2976, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2977, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.status', 'Trạng thái', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2978, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.order', 'Sắp xếp', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2979, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.title', 'Tiêu đề', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2980, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.code', 'Mã', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2981, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.symbol', 'Kí hiệu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2982, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2983, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.status', 'Trạng thái', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2984, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.order', 'Sắp xếp', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2985, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.decimals', 'Số kí tự sau dấu phân cách', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2986, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.activated', 'Đã kích hoạt', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2987, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.deactivated', 'Đã bị huỷ kích hoạt', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2988, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.yes', 'Có', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2989, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.no', 'Không', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2990, 1, 'vi', 'plugins/ecommerce/currency', 'currencies', 'Tiền tệ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2991, 1, 'vi', 'plugins/ecommerce/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2992, 1, 'vi', 'plugins/ecommerce/currency', 'name', 'Tên', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2993, 1, 'vi', 'plugins/ecommerce/currency', 'symbol', 'Ký hiệu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2994, 1, 'vi', 'plugins/ecommerce/currency', 'number_of_decimals', 'Số thập phân', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2995, 1, 'vi', 'plugins/ecommerce/currency', 'exchange_rate', 'Tỷ giá', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2996, 1, 'vi', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2997, 1, 'vi', 'plugins/ecommerce/currency', 'is_default', 'Mặc định?', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2998, 1, 'vi', 'plugins/ecommerce/currency', 'remove', 'Xoá', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(2999, 1, 'vi', 'plugins/ecommerce/currency', 'new_currency', 'Thêm tiền tệ mới', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3000, 1, 'vi', 'plugins/ecommerce/currency', 'save_settings', 'Lưu cài đặt', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3001, 1, 'vi', 'plugins/ecommerce/currency', 'before_number', 'Trước số', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3002, 1, 'vi', 'plugins/ecommerce/currency', 'after_number', 'Sau số', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3003, 1, 'vi', 'plugins/ecommerce/customer', 'name', 'Khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3004, 1, 'vi', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3005, 1, 'vi', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3006, 1, 'vi', 'plugins/ecommerce/customer', 'email', 'Email', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3007, 1, 'vi', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3008, 1, 'vi', 'plugins/ecommerce/customer', 'password', 'Password', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3009, 1, 'vi', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3010, 1, 'vi', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3011, 1, 'vi', 'plugins/ecommerce/customer', 'intro.title', 'Quản lý danh sách khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3012, 1, 'vi', 'plugins/ecommerce/customer', 'intro.description', 'Khi khách hàng đặt hàng, bạn sẽ biết được thông tin và lịch sử mua hàng của khách hàng.', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3013, 1, 'vi', 'plugins/ecommerce/customer', 'intro.button_text', 'Tạo khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3014, 1, 'vi', 'plugins/ecommerce/discount', 'name', 'Khuyến mãi', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3015, 1, 'vi', 'plugins/ecommerce/discount', 'invalid_coupon', 'Mã khuyến mãi không hợp lệ hoặc đã hết hạn!', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3016, 1, 'vi', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Mã khuyến mãi này không thể sử dụng chung với chương trình khuyến mãi!', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3017, 1, 'vi', 'plugins/ecommerce/discount', 'not_used', 'Chưa sử dụng mã giảm giá này', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3018, 1, 'vi', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3019, 1, 'vi', 'plugins/ecommerce/discount', 'used', 'Used', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3020, 1, 'vi', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3021, 1, 'vi', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3022, 1, 'vi', 'plugins/ecommerce/discount', 'intro.title', 'Chương trình khuyến mãi', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3023, 1, 'vi', 'plugins/ecommerce/discount', 'intro.description', 'Tạo ra các mã coupon, cài đặt một sản phẩm, hoặc một nhóm sản phẩm khuyến mãi dành cho các khách hàng thân thiết của bạn.', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3024, 1, 'vi', 'plugins/ecommerce/discount', 'intro.button_text', 'Tạo khuyến mãi', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3025, 1, 'vi', 'plugins/ecommerce/ecommerce', 'settings', 'Cài đặt', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3026, 1, 'vi', 'plugins/ecommerce/ecommerce', 'name', 'Thương mại điện tử', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3027, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3028, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3029, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3030, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3031, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3032, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3033, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3034, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3035, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3036, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3037, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_address', 'Địa chỉ cửa hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3038, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_phone', 'Số điện thoại cửa hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3039, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_id', 'Mã đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3040, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_token', 'Chuỗi mã hoá đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3041, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_name', 'Tên khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3042, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_email', 'Email khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3043, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Số điện thoại khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3044, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_address', 'Địa chỉ khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3045, 1, 'vi', 'plugins/ecommerce/ecommerce', 'product_list', 'Danh sách sản phẩm trong đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3046, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Chi tiết thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3047, 1, 'vi', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Phương thức vận chuyển', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3048, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_method', 'Phương thức thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3049, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Tiêu chuẩn & Định dạng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3050, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Các tiêu chuẩn và các định dạng được sử dụng để tính toán những thứ như giá cả sản phẩm, trọng lượng vận chuyển và thời gian đơn hàng được đặt.', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3051, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Chỉnh sửa định dạng mã đơn hàng (tùy chọn)', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3052, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'Mã đơn hàng mặc định bắt đầu từ :number. Bạn có thể thay đổi chuỗi bắt đầu hoặc kết thúc để tạo mã đơn hàng theo ý bạn, ví dụ \"DH-:number\" hoặc \":number-A\"', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3053, 1, 'vi', 'plugins/ecommerce/ecommerce', 'start_with', 'Bắt đầu bằng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3054, 1, 'vi', 'plugins/ecommerce/ecommerce', 'end_with', 'Kết thúc bằng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3055, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Mã đơn hàng của bạn sẽ hiển thị theo mẫu', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3056, 1, 'vi', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Đơn vị cân nặng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3057, 1, 'vi', 'plugins/ecommerce/ecommerce', 'height_unit', 'Đơn vị chiều dài/chiều cao', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3058, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_title', 'Xác nhận đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3059, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_description', 'Được gửi khi khách hàng tạo đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3060, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_title', 'Hủy đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3061, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_description', 'Được gửi khi khách hàng hủy đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3062, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Xác nhận giao hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3063, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Được gửi đến khách hàng khi bắt đầu giao hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3064, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_title', 'Thông báo có đơn hàng mới', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3065, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_description', 'Được gửi cho quản trị viên khi có khách mua hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3066, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_title', 'Xác nhận đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3067, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3068, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Xác nhận thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3069, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3070, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_title', 'Đơn hàng đang chờ hoàn tất', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3071, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_description', 'Email nhắc nhở khách hàng hoàn tất đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3072, 1, 'vi', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'hoặc <a href=\":link\">Truy cập website</a>', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3073, 1, 'vi', 'plugins/ecommerce/email', 'order_information', 'Thông tin đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3074, 1, 'vi', 'plugins/ecommerce/email', 'order_number', 'Mã đơn hàng: <strong>:order_id</strong>', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3075, 1, 'vi', 'plugins/ecommerce/email', 'view_order', 'Xem đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3076, 1, 'vi', 'plugins/ecommerce/order', 'statuses.pending', 'Chưa xử lý', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3077, 1, 'vi', 'plugins/ecommerce/order', 'statuses.processing', 'Đang xử lý', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3078, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivering', 'Đang giao hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3079, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivered', 'Đã giao hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3080, 1, 'vi', 'plugins/ecommerce/order', 'statuses.completed', 'Hoàn thành', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3081, 1, 'vi', 'plugins/ecommerce/order', 'statuses.canceled', 'Bị huỷ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3082, 1, 'vi', 'plugins/ecommerce/order', 'name', 'Đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3083, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order', 'Đơn hàng chưa hoàn tất', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3084, 1, 'vi', 'plugins/ecommerce/order', 'order_id', 'Mã đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3085, 1, 'vi', 'plugins/ecommerce/order', 'customer_label', 'Khách hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3086, 1, 'vi', 'plugins/ecommerce/order', 'amount', 'Tổng cộng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3087, 1, 'vi', 'plugins/ecommerce/order', 'shipping_amount', 'Phí vận chuyển', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3088, 1, 'vi', 'plugins/ecommerce/order', 'payment_method', 'Phương thức thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3089, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_label', 'Trạng thái thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3090, 1, 'vi', 'plugins/ecommerce/order', 'manage_orders', 'Quản lý đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3091, 1, 'vi', 'plugins/ecommerce/order', 'order_intro_description', 'Một khi cửa hàng của bạn có đơn đặt hàng, đây sẽ là nơi bạn xử lý và theo dõi những đơn đặt hàng đó.', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3092, 1, 'vi', 'plugins/ecommerce/order', 'create_new_order', 'Tạo đơn hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3093, 1, 'vi', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Quản lý đơn hàng chưa hoàn tất', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3094, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Đơn hàng chưa hoàn tất là đơn hàng được tạo khi khách hàng thêm sản phẩm vào giỏ hàng, tiến hành điền thông tin mua hàng nhưng không hoàn tất quá trình thanh toán.', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3095, 1, 'vi', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'Không tìm thấy email nên không thể gửi email khôi phục cho khách hàng.', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3096, 1, 'vi', 'plugins/ecommerce/payment', 'name', 'Thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3097, 1, 'vi', 'plugins/ecommerce/payment', 'payment_method', 'Phương thức thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3098, 1, 'vi', 'plugins/ecommerce/payment', 'view_payment', 'Xem thanh toán #', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3099, 1, 'vi', 'plugins/ecommerce/payment', 'charge_id', 'Mã giao dịch', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3100, 1, 'vi', 'plugins/ecommerce/payment', 'amount', 'Số tiền', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3101, 1, 'vi', 'plugins/ecommerce/payment', 'currency', 'Đơn vị tiền tệ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3102, 1, 'vi', 'plugins/ecommerce/payment', 'user', 'Người dùng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3103, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_required', 'Tên của phương thức PayPal là bắt buộc!', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3104, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_max', 'Tên của phương thức PayPal quá dài!', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3105, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_required', 'Tên của phương thức Stripe là bắt buộc!', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3106, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_max', 'Tên của phương thức Stripe quá dài!', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3107, 1, 'vi', 'plugins/ecommerce/payment', 'status', 'Trạng thái', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3108, 1, 'vi', 'plugins/ecommerce/payment', 'enabled', 'Bật', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3109, 1, 'vi', 'plugins/ecommerce/payment', 'disabled', 'Tắt', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3110, 1, 'vi', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3111, 1, 'vi', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3112, 1, 'vi', 'plugins/ecommerce/payment', 'mode', 'Chế độ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3113, 1, 'vi', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3114, 1, 'vi', 'plugins/ecommerce/payment', 'live', 'Live', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3115, 1, 'vi', 'plugins/ecommerce/payment', 'enable_payment_log', 'Bật lưu nhật ký thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3116, 1, 'vi', 'plugins/ecommerce/payment', 'yes', 'Có', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3117, 1, 'vi', 'plugins/ecommerce/payment', 'no', 'Không', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3118, 1, 'vi', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3119, 1, 'vi', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3120, 1, 'vi', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3121, 1, 'vi', 'plugins/ecommerce/payment', 'action', 'Hành động', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3122, 1, 'vi', 'plugins/ecommerce/payment', 'go_back', 'Quay lại', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3123, 1, 'vi', 'plugins/ecommerce/payment', 'view', 'Xem', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3124, 1, 'vi', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Thanh toán khi nhận hàng (COD)', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3125, 1, 'vi', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Thông qua chuyển khoản ngân hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3126, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_cart', 'Thanh toán bằng thẻ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3127, 1, 'vi', 'plugins/ecommerce/payment', 'card_number', 'Số thẻ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3128, 1, 'vi', 'plugins/ecommerce/payment', 'full_name', 'Tên trên thẻ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3129, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Thanh toán thông qua PayPal', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3130, 1, 'vi', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3131, 1, 'vi', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3132, 1, 'vi', 'plugins/ecommerce/payment', 'details', 'Chi tiết', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3133, 1, 'vi', 'plugins/ecommerce/payment', 'payer_name', 'Người thanh toán', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3134, 1, 'vi', 'plugins/ecommerce/payment', 'email', 'Địa chỉ email', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3135, 1, 'vi', 'plugins/ecommerce/payment', 'phone', 'Điện thoại', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3136, 1, 'vi', 'plugins/ecommerce/payment', 'country', 'Quốc gia', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3137, 1, 'vi', 'plugins/ecommerce/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3138, 1, 'vi', 'plugins/ecommerce/payment', 'payment_details', 'Chi tiết giao dịch', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3139, 1, 'vi', 'plugins/ecommerce/payment', 'card', 'Thẻ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3140, 1, 'vi', 'plugins/ecommerce/payment', 'address', 'Địa chỉ', '2021-08-24 08:01:11', '2021-08-24 08:01:11'),
(3141, 1, 'vi', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3142, 1, 'vi', 'plugins/ecommerce/payment', 'new_payment', 'Thanh toán cho đơn hàng :id', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3143, 1, 'vi', 'plugins/ecommerce/payment', 'payment_id', 'Mã thanh toán', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3144, 1, 'vi', 'plugins/ecommerce/prices', 'name', 'Price', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3145, 1, 'vi', 'plugins/ecommerce/prices', 'create', 'New price', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3146, 1, 'vi', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3147, 1, 'vi', 'plugins/ecommerce/prices', 'list', 'List price', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3148, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3149, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3150, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3151, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3152, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3153, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3154, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3155, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3156, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3157, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3158, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3159, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3160, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3161, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3162, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3163, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3164, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3165, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3166, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3167, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3168, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3169, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3170, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3171, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3172, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3173, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3174, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3175, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3176, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3177, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3178, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3179, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3180, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3181, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3182, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3183, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3184, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3185, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3186, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3187, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3188, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3189, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3190, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3191, 1, 'vi', 'plugins/ecommerce/product-attributes', 'name', 'Thuộc tính sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3192, 1, 'vi', 'plugins/ecommerce/product-attributes', 'create', 'Tạo', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3193, 1, 'vi', 'plugins/ecommerce/product-attributes', 'edit', 'Sửa', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3194, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.title', 'Quản lý danh sách thuộc tính sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3195, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.description', 'Các thuộc tính của sản phẩm như màu sắc, kích thước ...', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3196, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Tạo thuộc tính sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3197, 1, 'vi', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3198, 1, 'vi', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3199, 1, 'vi', 'plugins/ecommerce/product-categories', 'name', 'Danh mục sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3200, 1, 'vi', 'plugins/ecommerce/product-categories', 'none', 'Không có', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3201, 1, 'vi', 'plugins/ecommerce/product-categories', 'menu', 'Danh mục sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3202, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.title', 'Quản lý danh sách danh mục sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3203, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.description', 'Danh mục sản phẩm như quần áo, giày dép, linh kiện điện tử ...', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3204, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Tạo danh mục sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3205, 1, 'vi', 'plugins/ecommerce/product-categories', 'total_products', 'Tổng sản phẩm: :total', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3206, 1, 'vi', 'plugins/ecommerce/product-collections', 'name', 'Nhóm sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3207, 1, 'vi', 'plugins/ecommerce/product-collections', 'create', 'Thêm nhóm sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3208, 1, 'vi', 'plugins/ecommerce/product-collections', 'edit', 'Sửa nhóm sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3209, 1, 'vi', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3210, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.title', 'Quản lý nhóm sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3211, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.description', 'Nhóm sản phẩm giúp quản lý sản phẩm và khách hàng tìm kiếm sản phẩm một cách dễ dàng.', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3212, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Tạo nhóm sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3213, 1, 'vi', 'plugins/ecommerce/products', 'name', 'Sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3214, 1, 'vi', 'plugins/ecommerce/products', 'create', 'Thêm sản phẩm mới', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3215, 1, 'vi', 'plugins/ecommerce/products', 'edit', 'Sửa sản phẩm - :name', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3216, 1, 'vi', 'plugins/ecommerce/products', 'form.name', 'Tên sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3217, 1, 'vi', 'plugins/ecommerce/products', 'form.name_placeholder', 'Tên sản phẩm (Tối đa 120 chữ cái)', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3218, 1, 'vi', 'plugins/ecommerce/products', 'form.description', 'Mô tả ngắn', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3219, 1, 'vi', 'plugins/ecommerce/products', 'form.description_placeholder', 'Mô tả ngắn gọn cho sản phẩm (Tối đa 400 chữ cái)', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3220, 1, 'vi', 'plugins/ecommerce/products', 'form.categories', 'Danh mục', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3221, 1, 'vi', 'plugins/ecommerce/products', 'form.content', 'Chi tiết sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3222, 1, 'vi', 'plugins/ecommerce/products', 'form.price', 'Giá cơ bản', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3223, 1, 'vi', 'plugins/ecommerce/products', 'form.price_sale', 'Giá giảm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3224, 1, 'vi', 'plugins/ecommerce/products', 'form.quantity', 'Số lượng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3225, 1, 'vi', 'plugins/ecommerce/products', 'form.brand', 'Thương hiệu', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3226, 1, 'vi', 'plugins/ecommerce/products', 'form.width', 'Rộng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3227, 1, 'vi', 'plugins/ecommerce/products', 'form.height', 'Cao', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3228, 1, 'vi', 'plugins/ecommerce/products', 'form.weight', 'Cân nặng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3229, 1, 'vi', 'plugins/ecommerce/products', 'form.image', 'Hình ảnh', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3230, 1, 'vi', 'plugins/ecommerce/products', 'form.product_type.title', 'Loại sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3231, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.title', 'Tình trạng kho', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3232, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.in_stock', 'Còn hàng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3233, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Hết hàng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3234, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Cho phép đặt hàng khi hết', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3235, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.title', 'Quản lý kho', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3236, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'Không quản lý kho', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3237, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'Quản lý kho', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3238, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Số lượng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3239, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.title', 'Giao hàng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3240, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.length', 'Chiều dài', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3241, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.wide', 'Chiều rộng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3242, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.height', 'Chiều cao', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3243, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.weight', 'Cân nặng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3244, 1, 'vi', 'plugins/ecommerce/products', 'form.date.start', 'Ngày bắt đầu', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3245, 1, 'vi', 'plugins/ecommerce/products', 'form.date.end', 'Ngày kết thúc', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3246, 1, 'vi', 'plugins/ecommerce/products', 'form.tags', 'Nhãn', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3247, 1, 'vi', 'plugins/ecommerce/products', 'form.tax', 'Thuế', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3248, 1, 'vi', 'plugins/ecommerce/products', 'price', 'Giá cơ bản', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3249, 1, 'vi', 'plugins/ecommerce/products', 'price_sale', 'Giá giảm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3250, 1, 'vi', 'plugins/ecommerce/products', 'quantity', 'Số lượng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3251, 1, 'vi', 'plugins/ecommerce/products', 'type', 'Loại sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3252, 1, 'vi', 'plugins/ecommerce/products', 'image', 'Ảnh', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3253, 1, 'vi', 'plugins/ecommerce/products', 'sku', 'Mã sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3254, 1, 'vi', 'plugins/ecommerce/products', 'brand', 'Thương hiệu', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3255, 1, 'vi', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3256, 1, 'vi', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3257, 1, 'vi', 'plugins/ecommerce/products', 'products', 'Sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3258, 1, 'vi', 'plugins/ecommerce/products', 'menu', 'Sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3259, 1, 'vi', 'plugins/ecommerce/products', 'control.button_add_image', 'Thêm hình ảnh', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3260, 1, 'vi', 'plugins/ecommerce/products', 'overview', 'Tổng quan', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3261, 1, 'vi', 'plugins/ecommerce/products', 'attributes', 'Thuộc tính', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3262, 1, 'vi', 'plugins/ecommerce/products', 'product_has_variations', 'Sản phẩm có nhiều phiên bản', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3263, 1, 'vi', 'plugins/ecommerce/products', 'manage_products', 'Quản lý danh sách sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3264, 1, 'vi', 'plugins/ecommerce/products', 'add_new_product', 'Tạo sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3265, 1, 'vi', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Bắt đầu bán hàng bằng việc thêm sản phẩm.', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3266, 1, 'vi', 'plugins/ecommerce/reports', 'name', 'Báo cáo', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3267, 1, 'vi', 'plugins/ecommerce/reports', 'widget.order.title', 'Đơn hàng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3268, 1, 'vi', 'plugins/ecommerce/reports', 'count.revenue', 'Doanh thu hôm nay', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3269, 1, 'vi', 'plugins/ecommerce/reports', 'count.orders', 'Đơn hàng hôm nay', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3270, 1, 'vi', 'plugins/ecommerce/reports', 'count.products', 'Sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3271, 1, 'vi', 'plugins/ecommerce/reports', 'count.customers', 'Khách hàng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3272, 1, 'vi', 'plugins/ecommerce/reports', 'product_name', 'Tên sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3273, 1, 'vi', 'plugins/ecommerce/reports', 'quantity', 'Số lượng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3274, 1, 'vi', 'plugins/ecommerce/reports', 'revenue_statistics', 'Thống kê doanh thu', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3275, 1, 'vi', 'plugins/ecommerce/reports', 'top_selling_products', 'Sản phẩm bán chạy trong tháng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3276, 1, 'vi', 'plugins/ecommerce/review', 'name', 'Đánh giá', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3277, 1, 'vi', 'plugins/ecommerce/review', 'list_review', 'Khách hàng đánh giá', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3278, 1, 'vi', 'plugins/ecommerce/review', 'add_review', 'Thêm đánh giá', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3279, 1, 'vi', 'plugins/ecommerce/review', 'delete_review', 'Xóa đánh giá', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3280, 1, 'vi', 'plugins/ecommerce/review', 'create_review', 'Tạo đánh giá', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3281, 1, 'vi', 'plugins/ecommerce/review', 'please_select_rating', 'Chọn đánh giá', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3282, 1, 'vi', 'plugins/ecommerce/review', 'comment', 'Bình luận', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3283, 1, 'vi', 'plugins/ecommerce/review', 'approve', 'Chấp thuận', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3284, 1, 'vi', 'plugins/ecommerce/review', 'approved', 'Đã chấp thuận', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3285, 1, 'vi', 'plugins/ecommerce/review', 'disapprove', 'Không chấp thuận', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3286, 1, 'vi', 'plugins/ecommerce/review', 'disapproved', 'Đã không chấp thuận', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3287, 1, 'vi', 'plugins/ecommerce/review', 'product', 'Sản phẩm', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3288, 1, 'vi', 'plugins/ecommerce/review', 'user', 'Người dùng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3289, 1, 'vi', 'plugins/ecommerce/review', 'star', 'Sao', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3290, 1, 'vi', 'plugins/ecommerce/review', 'status', 'Trạng thái', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3291, 1, 'vi', 'plugins/ecommerce/review', 'intro.title', 'Quản lý danh sách nhận xét của khách hàng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3292, 1, 'vi', 'plugins/ecommerce/review', 'intro.description', 'Lưu trữ các nhận xét, đánh giá của khách hàng', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3293, 1, 'vi', 'plugins/ecommerce/shipping', 'name', 'Phí vận chuyển', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3294, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping', 'Vận chuyển', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3295, 1, 'vi', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3296, 1, 'vi', 'plugins/ecommerce/shipping', 'country', 'Quốc gia', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3297, 1, 'vi', 'plugins/ecommerce/shipping', 'state', 'State', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3298, 1, 'vi', 'plugins/ecommerce/shipping', 'city', 'City', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3299, 1, 'vi', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3300, 1, 'vi', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3301, 1, 'vi', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3302, 1, 'vi', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3303, 1, 'vi', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3304, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3305, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping #', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3306, 1, 'vi', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3307, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping_methods', 'Phương thức vận chuyển', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3308, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Tạo phương thức vận chuyển', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3309, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Sửa phương thức vận chuyển', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3310, 1, 'vi', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Thêm khu vực vận chuyển', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3311, 1, 'vi', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3312, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-08-24 08:01:12', '2021-08-24 08:01:12'),
(3313, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3314, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3315, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3316, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3317, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3318, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3319, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3320, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3321, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3322, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3323, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3324, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3325, 1, 'vi', 'plugins/ecommerce/store-locator', 'name', 'Địa chỉ cửa hàng', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3326, 1, 'vi', 'plugins/ecommerce/store-locator', 'description', 'Địa chỉ này sẽ xuất hiện trên hoá đơn của bạn và sẽ được sử dụng để tính toán mức giá vận chuyển của bạn.', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3327, 1, 'vi', 'plugins/ecommerce/store-locator', 'shop_name', 'Tên cửa hàng', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3328, 1, 'vi', 'plugins/ecommerce/store-locator', 'phone', 'Điện thoại', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3329, 1, 'vi', 'plugins/ecommerce/store-locator', 'address', 'Địa chỉ', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3330, 1, 'vi', 'plugins/ecommerce/tax', 'name', 'Thuế', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3331, 1, 'vi', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3332, 1, 'vi', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3333, 1, 'vi', 'plugins/ecommerce/tax', 'title', 'Title', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3334, 1, 'vi', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3335, 1, 'vi', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3336, 1, 'vi', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3337, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3338, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3339, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3340, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3341, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3342, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3343, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3344, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3345, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3346, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3347, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3348, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3349, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3350, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3351, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3352, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3353, 1, 'en', 'plugins/language/language', 'order', 'Order', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3354, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3355, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3356, 1, 'en', 'plugins/language/language', 'code', 'Code', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3357, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3358, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3359, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3360, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3361, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3362, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3363, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3364, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3365, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3366, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3367, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3368, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3369, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3370, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3371, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3372, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3373, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3374, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3375, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3376, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3377, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3378, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3379, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3380, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3381, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3382, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3383, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3384, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3385, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3386, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3387, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3388, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3389, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3390, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3391, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3392, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3393, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3394, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3395, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3396, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3397, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3398, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3399, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3400, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3401, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3402, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3403, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3404, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3405, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3406, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3407, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3408, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3409, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3410, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3411, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3412, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3413, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3414, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3415, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3416, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3417, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3418, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3419, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3420, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3421, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3422, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3423, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3424, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3425, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3426, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3427, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3428, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3429, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3430, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3431, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3432, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3433, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3434, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3435, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3436, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3437, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3438, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3439, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3440, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3441, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3442, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-08-24 08:01:13', '2021-08-24 08:01:13');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3443, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3444, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3445, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3446, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3447, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3448, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3449, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3450, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3451, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3452, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3453, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3454, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3455, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3456, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3457, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3458, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3459, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3460, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3461, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3462, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3463, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3464, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3465, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3466, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3467, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3468, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3469, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3470, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3471, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3472, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3473, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3474, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3475, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3476, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3477, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3478, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3479, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3480, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3481, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3482, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3483, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-08-24 08:01:13', '2021-08-24 08:01:13'),
(3484, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3485, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3486, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3487, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3488, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3489, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3490, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3491, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3492, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3493, 1, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3494, 1, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3495, 1, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3496, 1, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3497, 1, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3498, 1, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3499, 1, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3500, 1, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3501, 1, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3502, 1, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3503, 1, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3504, 1, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3505, 1, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3506, 1, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3507, 1, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3508, 1, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3509, 1, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3510, 1, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3511, 1, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3512, 1, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3513, 1, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3514, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3515, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3516, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3517, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3518, 1, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3519, 1, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3520, 1, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3521, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3522, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3523, 1, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3524, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3525, 1, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3526, 1, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3527, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3528, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3529, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3530, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3531, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3532, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3533, 1, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3534, 1, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3535, 1, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3536, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3537, 1, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3538, 1, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3539, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3540, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3541, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3542, 1, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3543, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3544, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3545, 1, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3546, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3547, 1, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3548, 1, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3549, 1, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3550, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3551, 1, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3552, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3553, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3554, 1, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3555, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3556, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3557, 1, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3558, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3559, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3560, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3561, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3562, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3563, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3564, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3565, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3566, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3567, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3568, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3569, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3570, 1, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3571, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3572, 1, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3573, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3574, 1, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3575, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3576, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3577, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3578, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3579, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3580, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3581, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3582, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3583, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3584, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3585, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3586, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3587, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3588, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3589, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3590, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3591, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3592, 1, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3593, 1, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3594, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3595, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3596, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3597, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3598, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3599, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3600, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3601, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3602, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3603, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3604, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3605, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3606, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3607, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3608, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3609, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3610, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3611, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3612, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3613, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3614, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3615, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3616, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3617, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3618, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3619, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3620, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3621, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3622, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3623, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3624, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3625, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3626, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3627, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3628, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3629, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3630, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3631, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3632, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3633, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3634, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3635, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3636, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3637, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3638, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3639, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3640, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3641, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3642, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3643, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3644, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3645, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3646, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3647, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3648, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3649, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-08-24 08:01:14', '2021-08-24 08:01:14'),
(3650, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3651, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3652, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3653, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3654, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3655, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3656, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3657, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3658, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3659, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3660, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3661, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3662, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3663, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3664, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3665, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3666, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3667, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3668, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3669, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3670, 1, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3671, 1, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3672, 1, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3673, 1, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3674, 1, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3675, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3676, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3677, 1, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3678, 1, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3679, 1, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3680, 1, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3681, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3682, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3683, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3684, 1, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3685, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3686, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3687, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3688, 1, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3689, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3690, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3691, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3692, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3693, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3694, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3695, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3696, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3697, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3698, 1, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3699, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3700, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3701, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3702, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3703, 1, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3704, 1, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3705, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3706, 1, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3707, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3708, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3709, 1, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3710, 1, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3711, 1, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3712, 1, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3713, 1, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3714, 1, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3715, 1, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3716, 1, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3717, 1, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3718, 1, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3719, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3720, 1, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3721, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3722, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3723, 1, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3724, 1, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3725, 1, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3726, 1, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3727, 1, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3728, 1, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3729, 1, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3730, 1, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3731, 1, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3732, 1, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3733, 1, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3734, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3735, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3736, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3737, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3738, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3739, 1, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3740, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3741, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3742, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3743, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3744, 1, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3745, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3746, 1, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3747, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3748, 1, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3749, 1, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3750, 1, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3751, 1, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3752, 1, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3753, 1, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3754, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3755, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3756, 1, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3757, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3758, 1, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3759, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3760, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3761, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3762, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3763, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3764, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3765, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3766, 1, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3767, 1, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3768, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3769, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3770, 1, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3771, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3772, 1, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2021-08-24 08:01:15', '2021-08-24 08:01:15'),
(3773, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-08-24 08:01:15', '2021-08-24 08:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$W4d6WX3cCGw9RxPlmJ2NEeSqFdtalf9AX.Sf5kcA4DatYSmw7oCum', NULL, '2021-08-24 08:00:27', '2021-08-24 08:00:27', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'SiteInfoWidget', 'footer_sidebar', 'wowy', 0, '{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'wowy', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'wowy', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(4, 'BlogSearchWidget', 'primary_sidebar', 'wowy', 0, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(5, 'BlogCategoriesWidget', 'primary_sidebar', 'wowy', 1, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(6, 'RecentPostsWidget', 'primary_sidebar', 'wowy', 2, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(7, 'TagsWidget', 'primary_sidebar', 'wowy', 4, '{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(8, 'ProductCategoriesWidget', 'product_sidebar', 'wowy', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(9, 'FeaturedProductsWidget', 'product_sidebar', 'wowy', 2, '{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(10, 'FeaturedBrandsWidget', 'product_sidebar', 'wowy', 3, '{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(11, 'SiteInfoWidget', 'footer_sidebar', 'wowy-vi', 0, '{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(12, 'CustomMenuWidget', 'footer_sidebar', 'wowy-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(13, 'CustomMenuWidget', 'footer_sidebar', 'wowy-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(14, 'BlogSearchWidget', 'primary_sidebar', 'wowy-vi', 0, '{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(15, 'BlogCategoriesWidget', 'primary_sidebar', 'wowy-vi', 1, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(16, 'RecentPostsWidget', 'primary_sidebar', 'wowy-vi', 2, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(17, 'TagsWidget', 'primary_sidebar', 'wowy-vi', 4, '{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(18, 'ProductCategoriesWidget', 'product_sidebar', 'wowy-vi', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(19, 'FeaturedProductsWidget', 'product_sidebar', 'wowy-vi', 2, '{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33'),
(20, 'FeaturedBrandsWidget', 'product_sidebar', 'wowy-vi', 3, '{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}', '2021-08-24 08:00:33', '2021-08-24 08:00:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3774;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
