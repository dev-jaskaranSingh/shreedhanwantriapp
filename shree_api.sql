-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2021 at 12:52 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shree_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cat 1', '1', '2020-03-20 13:12:49', '2020-03-21 18:50:08', '2020-03-21 18:50:08'),
(2, 'category 2', '1', '2020-03-20 13:52:25', '2020-03-21 18:50:05', '2020-03-21 18:50:05'),
(3, 'ortho', '1', '2020-03-21 18:49:18', '2020-03-26 21:10:14', '2020-03-26 21:10:14'),
(4, 'Gynaecology', '1', '2020-03-21 18:50:00', '2020-03-26 21:10:17', '2020-03-26 21:10:17'),
(5, 'ortho', '1', '2020-03-26 21:10:23', '2020-03-26 21:10:23', NULL),
(6, 'ALL', '1', '2020-03-26 21:10:30', '2020-03-26 21:10:30', '2020-05-06 07:00:00'),
(7, 'COUGH', '1', '2020-03-26 21:10:39', '2020-03-26 21:10:39', NULL),
(8, 'OTC', '1', '2020-03-26 21:10:48', '2020-03-26 21:10:48', NULL),
(9, 'Gastro', '1', '2020-03-26 21:18:27', '2020-03-26 21:18:27', NULL),
(10, 'General', '1', '2020-03-26 21:29:43', '2020-03-26 21:29:43', NULL),
(11, 'abc', '1', '2020-08-17 17:09:11', '2020-08-17 17:10:00', '2020-08-17 17:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `circulus`
--

CREATE TABLE `circulus` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `circulus`
--

INSERT INTO `circulus` (`id`, `attachment`, `division`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1583844034-Price List (Eupesia) 2019 (1).pdf', 1, '2020-03-10 19:40:34', '2020-03-10 19:40:34', NULL),
(2, '1583844052-Price List (Benecea) 2020.pdf', 2, '2020-03-10 19:40:52', '2020-03-10 19:40:52', NULL),
(3, '1583844071-Price List (Benecea) 2020 (1).pdf', 3, '2020-03-10 19:41:11', '2020-03-10 19:41:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vedish', 'Vedish', '1612953080-Vedish1.png', '2020-03-10 19:37:01', '2021-02-10 17:31:21', NULL),
(2, 'Eupesia', 'Eupesia', '1583843879-Eupesia.jpg', '2020-03-10 19:37:59', '2020-03-10 19:37:59', NULL),
(3, 'Benecea', 'Benecea', '1583843914-Benecea.jpg', '2020-03-10 19:38:34', '2020-03-10 19:38:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employeeslist`
--

CREATE TABLE `employeeslist` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 'fa-list', 'Divisions', 'Divisions', NULL, '2020-02-12 06:25:57', '2020-07-30 17:05:46'),
(4, 3, 1, 'fa-list', 'Product', 'List Product', NULL, '2020-02-13 01:38:11', '2020-07-30 17:05:46'),
(5, 4, 1, 'fa-database', 'Notification', 'Notification', NULL, '2020-02-20 16:45:54', '2020-07-30 17:05:46'),
(6, 5, 1, 'fa-database', 'Circulus', 'Circular', NULL, '2020-02-29 13:38:00', '2020-07-30 17:05:46'),
(7, 6, 1, 'fa-database', 'PriceList', 'Price List', NULL, '2020-02-29 13:55:47', '2020-07-30 17:05:46'),
(8, 2, 1, 'fa-database', 'Category', 'Category', NULL, '2020-03-20 13:04:39', '2020-07-30 17:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_10_10_000000_create_menus_table', 1),
(4, '2015_10_10_000000_create_roles_table', 1),
(5, '2015_10_10_000000_update_users_table', 1),
(6, '2015_12_11_000000_create_users_logs_table', 1),
(7, '2016_03_14_000000_update_menus_table', 1),
(8, '2019_06_01_123827_create_categories_table', 1),
(9, '2019_06_03_043951_create_employees_list_table', 1),
(11, '2020_02_12_115557_create_divisions_table', 2),
(12, '2020_02_13_070811_create_product_table', 3),
(13, '2020_02_20_094554_create_notification_table', 4),
(14, '2020_02_29_063800_create_circulus_table', 5),
(15, '2020_02_29_065547_create_pricelist_table', 6),
(16, '2020_03_20_060439_create_category_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `to`, `message`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', '1', 'this is a message', 'singleDivision', '2020-04-01 18:29:59', '2020-04-01 18:29:59', NULL),
(2, 'test', '1', 'this is a message', 'singleDivision', '2020-04-01 18:34:17', '2020-04-01 18:34:17', NULL),
(3, 'test', '1', 'this is a message', 'singleDivision', '2020-04-01 18:34:33', '2020-04-01 18:34:33', NULL),
(4, 'fsd', '1', 'efefr', 'singleDivision', '2020-04-01 18:50:17', '2020-04-01 18:50:17', NULL),
(5, 'jhbj', '237', 'this is a message', 'singluser', '2020-04-01 18:52:36', '2020-04-01 18:52:36', NULL),
(6, 'dfg', '237', 'this is a message', 'singluser', '2020-04-01 19:15:11', '2020-04-01 19:15:11', NULL),
(7, 'rfgre', '237', 'this is a message', 'singluser', '2020-04-02 13:26:09', '2020-04-02 13:26:09', NULL),
(8, 'acdsac', '237', 'this is a message', 'singluser', '2020-04-02 13:27:36', '2020-04-02 13:27:36', NULL),
(9, 'dsdcs', '237', 'thisis', 'singluser', '2020-04-02 13:36:49', '2020-04-02 13:36:49', NULL),
(10, 'efcd', '237', 'this is a message', 'singluser', '2020-04-02 13:40:40', '2020-04-02 13:40:40', NULL),
(11, 'sdv', '237', 'this is a message', 'singluser', '2020-04-02 13:41:21', '2020-04-02 13:41:21', NULL),
(12, 'efesf', '237', 'cvxvx', 'singluser', '2020-04-02 14:51:09', '2020-04-02 14:51:09', NULL),
(13, 'dfdf', '237', 'jhj', 'singluser', '2020-04-02 15:10:50', '2020-04-02 15:10:50', NULL),
(14, 'cdsc', '237', 'hgvh', 'singluser', '2020-04-02 15:16:24', '2020-04-02 15:16:24', NULL),
(15, 'sdcsdfv', '237', 'this isa a test message', 'singluser', '2020-04-02 16:23:20', '2020-04-02 16:23:20', NULL),
(16, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:33:46', '2020-04-03 14:33:46', NULL),
(17, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:34:38', '2020-04-03 14:34:38', NULL),
(18, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:35:09', '2020-04-03 14:35:09', NULL),
(19, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:35:20', '2020-04-03 14:35:20', NULL),
(20, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:36:02', '2020-04-03 14:36:02', NULL),
(21, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:47:29', '2020-04-03 14:47:29', NULL),
(22, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:47:43', '2020-04-03 14:47:43', NULL),
(23, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:50:12', '2020-04-03 14:50:12', NULL),
(24, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 14:50:40', '2020-04-03 14:50:40', NULL),
(25, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 15:25:01', '2020-04-03 15:25:01', NULL),
(26, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 15:28:55', '2020-04-03 15:28:55', NULL),
(27, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 15:50:37', '2020-04-03 15:50:37', NULL),
(28, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 15:52:06', '2020-04-03 15:52:06', NULL),
(29, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 15:52:21', '2020-04-03 15:52:21', NULL),
(30, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 15:52:45', '2020-04-03 15:52:45', NULL),
(31, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 16:02:11', '2020-04-03 16:02:11', NULL),
(32, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 16:02:21', '2020-04-03 16:02:21', NULL),
(33, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 16:17:17', '2020-04-03 16:17:17', NULL),
(34, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 16:21:33', '2020-04-03 16:21:33', NULL),
(35, 'hjgy', '237', 'test here', 'singluser', '2020-04-03 16:26:20', '2020-04-03 16:26:20', NULL),
(36, 'uyguj', '237', 'test here', 'singluser', '2020-04-03 16:57:55', '2020-04-03 16:57:55', NULL),
(37, 'uyguj', '237', 'test here', 'singluser', '2020-04-03 17:04:50', '2020-04-03 17:04:50', NULL),
(38, 'uyguj', '237', 'test here', 'singluser', '2020-04-03 17:23:05', '2020-04-03 17:23:05', NULL),
(39, 'uyguj', '237', 'test here', 'singluser', '2020-04-03 17:34:00', '2020-04-03 17:34:00', NULL),
(40, 'uyguj', '237', 'test here', 'singluser', '2020-04-03 17:34:40', '2020-04-03 17:34:40', NULL),
(41, 'uyguj', '237', 'test here', 'singluser', '2020-04-03 17:37:06', '2020-04-03 17:37:06', NULL),
(42, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 12:57:31', '2020-04-04 12:57:31', NULL),
(43, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 12:57:47', '2020-04-04 12:57:47', NULL),
(44, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:02:14', '2020-04-04 13:02:14', NULL),
(45, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:07:03', '2020-04-04 13:07:03', NULL),
(46, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:07:44', '2020-04-04 13:07:44', NULL),
(47, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:08:01', '2020-04-04 13:08:01', NULL),
(48, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:09:26', '2020-04-04 13:09:26', NULL),
(49, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:09:50', '2020-04-04 13:09:50', NULL),
(50, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:10:30', '2020-04-04 13:10:30', NULL),
(51, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:11:48', '2020-04-04 13:11:48', NULL),
(52, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:12:08', '2020-04-04 13:12:08', NULL),
(53, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:13:18', '2020-04-04 13:13:18', NULL),
(54, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:15:32', '2020-04-04 13:15:32', NULL),
(55, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:15:40', '2020-04-04 13:15:40', NULL),
(56, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:16:12', '2020-04-04 13:16:12', NULL),
(57, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:16:28', '2020-04-04 13:16:28', NULL),
(58, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:17:16', '2020-04-04 13:17:16', NULL),
(59, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:18:17', '2020-04-04 13:18:17', NULL),
(60, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:18:56', '2020-04-04 13:18:56', NULL),
(61, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:21:04', '2020-04-04 13:21:04', NULL),
(62, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:21:17', '2020-04-04 13:21:17', NULL),
(63, 'test', '237', 'this is a test message', 'singluser', '2020-04-04 13:22:44', '2020-04-04 13:22:44', NULL),
(64, 'ughj', '237', 'test here', 'singluser', '2020-04-04 13:42:51', '2020-04-04 13:42:51', NULL),
(65, 'ughj', '237', 'test here', 'singluser', '2020-04-04 13:43:02', '2020-04-04 13:43:02', NULL),
(66, 'ughj', '237', 'test here', 'singluser', '2020-04-04 14:28:10', '2020-04-04 14:28:10', NULL),
(67, 'ughj', '237', 'test here', 'singluser', '2020-04-04 14:28:25', '2020-04-04 14:28:25', NULL),
(68, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 16:36:26', '2020-04-04 16:36:26', NULL),
(69, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 16:36:41', '2020-04-04 16:36:41', NULL),
(70, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 16:36:54', '2020-04-04 16:36:54', NULL),
(71, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 17:04:54', '2020-04-04 17:04:54', NULL),
(72, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 17:15:36', '2020-04-04 17:15:36', NULL),
(73, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 17:19:28', '2020-04-04 17:19:28', NULL),
(74, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 17:19:39', '2020-04-04 17:19:39', NULL),
(75, 'gfdb', '237', 'this is a message', 'singluser', '2020-04-04 17:21:20', '2020-04-04 17:21:20', NULL),
(76, 'Acidon', '1', 'Acidon is added', 'singleDivision', '2020-04-04 19:34:36', '2020-04-04 19:34:36', NULL),
(77, 'test', '1', 'this is a test message', 'singleDivision', '2020-04-06 15:32:21', '2020-04-06 15:32:21', NULL),
(78, 'test', '2', 'this is a test message', 'singleDivision', '2020-04-06 15:32:21', '2020-04-06 15:32:21', NULL),
(79, 'test', '1', 'this is a message', 'singleDivision', '2020-04-06 16:01:08', '2020-04-06 16:01:08', NULL),
(80, 'test', '2', 'this is a message', 'singleDivision', '2020-04-06 16:01:08', '2020-04-06 16:01:08', NULL),
(81, 'test', '1', 'this is a test message', 'singleDivision', '2020-04-06 16:01:33', '2020-04-06 16:01:33', NULL),
(82, 'test', '2', 'this is a test message', 'singleDivision', '2020-04-06 16:01:33', '2020-04-06 16:01:33', NULL),
(83, 'test', '3', 'this is a test message', 'singleDivision', '2020-04-06 16:01:33', '2020-04-06 16:01:33', NULL),
(84, 'TEST NOTIFICATION', '237', 'TEST NOTIFICATION', 'singluser', '2020-04-06 22:59:47', '2020-04-06 22:59:47', NULL);

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
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`id`, `attachment`, `division`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1583843959-Binder1.pdf', 1, '2020-03-10 19:39:19', '2020-08-06 19:00:35', '2020-08-06 19:00:35'),
(2, '1583843977-Price List (Eupesia) 2019 (1).pdf', 2, '2020-03-10 19:39:37', '2020-03-10 19:39:37', NULL),
(3, '1583844003-Price List (Benecea) 2020.pdf', 3, '2020-03-10 19:40:03', '2020-03-10 19:40:03', NULL),
(4, '1599127725-1.jpeg', 1, '2020-09-03 17:08:45', '2021-02-10 17:08:59', '2021-02-10 17:08:59'),
(5, '1612952459-Vedish Price List (Curve) 11 July 2014-compressed.pdf', 1, '2021-02-10 17:20:59', '2021-02-10 17:20:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `price`, `unit`, `qty`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'ACIDON', 'Acidon', NULL, NULL, NULL, '1585310011-Acidon.jpg', '2020-03-27 18:53:31', '2020-10-06 16:07:24', NULL),
(4, 'BOWLSOFT', 'Bowlsoft', NULL, NULL, NULL, '1585310443-Bowlsoft.jpg', '2020-03-27 19:00:29', '2020-10-06 16:07:08', NULL),
(5, 'C-PILL', 'C-PILL', NULL, NULL, NULL, '1597833167-C-Pill.jpg', '2020-04-06 22:08:01', '2020-08-19 17:32:47', NULL),
(6, 'CRUSH SYRUP', 'CRUSH SYRUP', NULL, NULL, NULL, '1597833127-Crush-Syrup.jpg', '2020-04-06 22:11:16', '2020-08-19 17:32:07', NULL),
(7, 'SHVET CAPSULE', 'SHVET CAPSULE', NULL, NULL, NULL, '1597833069-Shvet.jpg', '2020-04-06 22:18:49', '2020-08-19 17:31:09', NULL),
(8, 'SHWASI', 'SHWASI', NULL, NULL, NULL, '1597833031-Shwasi.jpg', '2020-04-06 22:22:58', '2020-08-19 17:30:31', NULL),
(9, 'VITAMRIT-SF', 'VITAMRIT-SF', NULL, NULL, NULL, '1597832987-Vitamrit-SF.jpg', '2020-04-06 22:27:26', '2020-08-19 17:29:47', NULL),
(10, 'ZOA PLUS', 'ZOA PLUS', NULL, NULL, NULL, '1597832939-Zoa-Plus.jpg', '2020-04-06 22:32:18', '2020-08-19 17:28:59', NULL),
(11, 'KOFNIL', 'KOFNIL', NULL, NULL, NULL, '1597832886-Kofnil.jpg', '2020-04-06 22:36:37', '2020-08-19 17:28:06', NULL),
(13, 'LACTOTOP', 'LACTOTOP', NULL, NULL, NULL, '1597832815-Lactotop.jpg', '2020-04-06 22:44:40', '2020-08-19 17:26:55', NULL),
(14, 'LIVOSYP-DS', 'LIVOSYP-DS', NULL, NULL, NULL, '1597834771-Untitled-2.1.jpg', '2020-04-06 22:49:29', '2020-08-19 17:59:31', NULL),
(18, 'RHEUMO OIL', 'Rheumo Oil', NULL, NULL, NULL, '1597741867-Rheumo-Oil-2.jpg', '2020-08-18 16:11:05', '2020-10-06 16:06:03', NULL),
(20, 'F-LIV COMPOUND', NULL, NULL, NULL, NULL, '1601281661-F-Liv Comp.jpg', '2020-09-28 15:27:41', '2020-09-28 15:27:41', NULL),
(21, 'MEGHNA HAIR OIL', 'Hair Oil', NULL, NULL, NULL, '1601283098-Meghna-Oil.jpg', '2020-09-28 15:51:38', '2021-02-10 17:33:18', NULL),
(22, 'RHEUMO GOLD', NULL, NULL, NULL, NULL, '1601972206-Rheumo Gold.jpg', '2020-10-06 15:16:20', '2020-10-06 15:16:46', NULL),
(23, 'PREGNOAID CAPSULE', NULL, NULL, NULL, NULL, '1601973588-Pregnoaid.jpg', '2020-10-06 15:39:19', '2020-10-06 15:39:48', NULL),
(24, 'CRUSH-BPH CAPS', NULL, NULL, NULL, NULL, '1601974026-Crush-BPH.jpg', '2020-10-06 15:46:24', '2020-10-06 15:47:06', NULL),
(25, 'CRUSH-RT SYRUP', NULL, NULL, NULL, NULL, '1601974897-Crush-RT.jpg', '2020-10-06 16:00:54', '2020-10-06 16:01:37', NULL),
(26, 'FETONE SYRUP', NULL, NULL, NULL, NULL, '1601976401-FETONE-SYRUP.jpg', '2020-10-06 16:26:19', '2020-10-06 16:26:41', NULL),
(27, 'ACNOCURE CAP', NULL, NULL, NULL, NULL, '1614585196-Acnocure-Caps.jpg', '2021-03-01 14:53:00', '2021-03-01 14:53:16', NULL),
(28, 'ACNOCURE CREAM', NULL, NULL, NULL, NULL, '1614586859-Acnocure Cream.jpg', '2021-03-01 15:18:44', '2021-03-01 15:20:59', NULL),
(29, 'BABYKOL', NULL, NULL, NULL, NULL, '1614590901-Babykol.jpg', '2021-03-01 16:27:56', '2021-03-01 16:28:21', NULL),
(30, 'BONARTHO', NULL, NULL, NULL, NULL, '1614591033-Bonartho.jpg', '2021-03-01 16:30:09', '2021-03-01 16:30:33', NULL),
(31, 'BRAINTONE', NULL, NULL, NULL, NULL, '1614591295-Braintone.jpg', '2021-03-01 16:34:33', '2021-03-01 16:34:55', NULL),
(32, 'D4-MANIC', NULL, NULL, NULL, NULL, '1614591428-D4-Manic.jpg', '2021-03-01 16:36:41', '2021-03-01 16:37:08', NULL),
(33, 'DYSENTROL', NULL, NULL, NULL, NULL, '1614591571-Dysentrol.jpg', '2021-03-01 16:39:15', '2021-03-01 16:39:32', NULL),
(34, 'FEVEREX SYRUP', NULL, NULL, NULL, NULL, '1614591682-Feverex.jpg', '2021-03-01 16:41:08', '2021-03-01 16:41:22', NULL),
(35, 'G-AMRITA CAP', NULL, NULL, NULL, NULL, '1614591815-G-Amrita.jpg', '2021-03-01 16:43:17', '2021-03-01 16:43:35', NULL),
(36, 'JONTIGO SPRAY', NULL, NULL, NULL, NULL, '1614592022-Jontigo.jpg', '2021-03-01 16:46:49', '2021-03-01 16:47:02', NULL),
(37, 'KOFNIL-SF SYRUP', NULL, NULL, NULL, NULL, '1614592168-Kofnil.jpg', '2021-03-01 16:48:29', '2021-03-01 16:49:28', NULL),
(38, 'KRIMIHAR SYRUP', NULL, NULL, NULL, NULL, '1614592592-Krimihar.jpg', '2021-03-01 16:56:11', '2021-03-01 16:56:32', NULL),
(39, 'LIVOSYP-DS', NULL, NULL, NULL, NULL, '1614593097-Livosyp Drop.jpg', '2021-03-01 17:04:34', '2021-03-01 17:04:58', NULL),
(40, 'PSORAWELL (CAP/CREAM)', NULL, NULL, NULL, NULL, '1614593354-Psorawell.jpg', '2021-03-01 17:08:53', '2021-03-01 17:09:14', NULL),
(41, 'PURE-UP SYRUP', NULL, NULL, NULL, NULL, '1614593763-Pure UP.jpg', '2021-03-01 17:15:41', '2021-03-01 17:16:03', NULL),
(42, 'R-AMRITA TAB', NULL, NULL, NULL, NULL, '1614593844-R-Amrita.jpg', '2021-03-01 17:16:59', '2021-03-01 17:17:25', NULL),
(43, 'URTITAB', NULL, NULL, NULL, NULL, '1614593964-Urtitab.jpg', '2021-03-01 17:19:07', '2021-03-01 17:19:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productCategoryMap`
--

CREATE TABLE `productCategoryMap` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productCategoryMap`
--

INSERT INTO `productCategoryMap` (`id`, `cat_id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 6, 1, 1, '2020-03-27 18:38:22', '2020-03-27 18:38:22'),
(4, 6, 2, 1, '2020-03-27 18:45:42', '2020-03-27 18:45:42'),
(111, 10, 3, 1, '2020-10-06 16:07:24', '2020-10-06 16:07:24'),
(110, 9, 3, 1, '2020-10-06 16:07:24', '2020-10-06 16:07:24'),
(156, 10, 4, 1, '2021-03-01 17:44:51', '2021-03-01 17:44:51'),
(155, 9, 4, 1, '2021-03-01 17:44:51', '2021-03-01 17:44:51'),
(74, 10, 5, 1, '2020-08-19 17:32:47', '2020-08-19 17:32:47'),
(92, 10, 6, 1, '2020-09-28 16:29:14', '2020-09-28 16:29:14'),
(84, 10, 19, 1, '2020-09-28 15:20:15', '2020-09-28 15:20:15'),
(72, 10, 7, 1, '2020-08-19 17:31:09', '2020-08-19 17:31:09'),
(137, 7, 8, 1, '2021-03-01 16:18:09', '2021-03-01 16:18:09'),
(70, 10, 9, 1, '2020-08-19 17:29:47', '2020-08-19 17:29:47'),
(100, 10, 10, 1, '2020-10-06 14:53:35', '2020-10-06 14:53:35'),
(133, 7, 11, 1, '2021-03-01 16:12:45', '2021-03-01 16:12:45'),
(83, 10, 12, 1, '2020-09-28 15:05:48', '2020-09-28 15:05:48'),
(66, 10, 13, 1, '2020-08-19 17:26:55', '2020-08-19 17:26:55'),
(135, 9, 14, 1, '2021-03-01 16:17:02', '2021-03-01 16:17:02'),
(35, 5, 15, 1, '2020-08-17 14:44:53', '2020-08-17 14:44:53'),
(42, 10, 16, 1, '2020-08-18 15:57:43', '2020-08-18 15:57:43'),
(46, 10, 17, 1, '2020-08-18 16:08:49', '2020-08-18 16:08:49'),
(134, 5, 18, 1, '2021-03-01 16:16:02', '2021-03-01 16:16:02'),
(98, 10, 20, 1, '2020-10-06 14:47:20', '2020-10-06 14:47:20'),
(124, 10, 21, 1, '2021-02-10 17:33:18', '2021-02-10 17:33:18'),
(138, 5, 22, 1, '2021-03-01 16:19:19', '2021-03-01 16:19:19'),
(102, 10, 23, 1, '2020-10-06 15:39:19', '2020-10-06 15:39:19'),
(104, 10, 24, 1, '2020-10-06 15:52:37', '2020-10-06 15:52:37'),
(105, 10, 25, 1, '2020-10-06 16:00:54', '2020-10-06 16:00:54'),
(136, 9, 26, 1, '2021-03-01 16:17:23', '2021-03-01 16:17:23'),
(131, 10, 27, 1, '2021-03-01 15:12:52', '2021-03-01 15:12:52'),
(132, 10, 28, 1, '2021-03-01 15:18:44', '2021-03-01 15:18:44'),
(139, 9, 29, 1, '2021-03-01 16:27:56', '2021-03-01 16:27:56'),
(141, 5, 30, 1, '2021-03-01 16:31:14', '2021-03-01 16:31:14'),
(142, 10, 31, 1, '2021-03-01 16:34:33', '2021-03-01 16:34:33'),
(143, 10, 32, 1, '2021-03-01 16:36:41', '2021-03-01 16:36:41'),
(144, 10, 33, 1, '2021-03-01 16:39:15', '2021-03-01 16:39:15'),
(145, 10, 34, 1, '2021-03-01 16:41:08', '2021-03-01 16:41:08'),
(146, 5, 35, 1, '2021-03-01 16:43:17', '2021-03-01 16:43:17'),
(147, 5, 36, 1, '2021-03-01 16:46:49', '2021-03-01 16:46:49'),
(148, 7, 37, 1, '2021-03-01 16:48:29', '2021-03-01 16:48:29'),
(149, 10, 38, 1, '2021-03-01 16:56:11', '2021-03-01 16:56:11'),
(150, 10, 39, 1, '2021-03-01 17:04:34', '2021-03-01 17:04:34'),
(151, 10, 40, 1, '2021-03-01 17:08:53', '2021-03-01 17:08:53'),
(152, 10, 41, 1, '2021-03-01 17:15:41', '2021-03-01 17:15:41'),
(153, 5, 42, 1, '2021-03-01 17:16:59', '2021-03-01 17:16:59'),
(154, 10, 43, 1, '2021-03-01 17:19:07', '2021-03-01 17:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `productmapattachment`
--

CREATE TABLE `productmapattachment` (
  `id` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmapattachment`
--

INSERT INTO `productmapattachment` (`id`, `image`, `type`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Acidon-1_1585310156.jpg', 'visual', 3, 1, '2020-03-27 18:56:08', '2020-03-27 18:56:08'),
(7, 'Acidon-2_1585310168.jpg', 'visual', 3, 1, '2020-03-27 18:56:26', '2020-03-27 18:56:26'),
(8, 'Bowlsoft-1_1585310429.jpg', 'visual', 4, 1, '2020-03-27 19:00:35', '2020-03-27 19:00:35'),
(9, 'Bowlsoft-2_1585310435.jpg', 'visual', 4, 1, '2020-03-27 19:00:43', '2020-03-27 19:00:43'),
(10, 'C-Pill-1_1586185681.jpg', 'visual', 5, 1, '2020-04-06 22:08:12', '2020-04-06 22:08:12'),
(11, 'C-Pill-2_1586185692.jpg', 'visual', 5, 1, '2020-04-06 22:08:21', '2020-04-06 22:08:21'),
(12, 'C-Pill-3_1586185701.jpg', 'visual', 5, 1, '2020-04-06 22:08:29', '2020-04-06 22:08:29'),
(13, 'Crush Syp-1_1586185876.jpg', 'visual', 6, 1, '2020-04-06 22:11:28', '2020-04-06 22:11:28'),
(14, 'Shvet-1_1586186329.jpg', 'visual', 7, 1, '2020-04-06 22:18:56', '2020-04-06 22:18:56'),
(15, 'Shvet-2_1586186336.jpg', 'visual', 7, 1, '2020-04-06 22:19:02', '2020-04-06 22:19:02'),
(16, 'Shwasi-1_1586186578.jpg', 'visual', 8, 1, '2020-04-06 22:23:06', '2020-04-06 22:23:06'),
(17, 'Shwasi-2_1586186586.jpg', 'visual', 8, 1, '2020-04-06 22:23:18', '2020-04-06 22:23:18'),
(18, 'Vitamrit-1_1586186846.jpg', 'visual', 9, 1, '2020-04-06 22:27:33', '2020-04-06 22:27:33'),
(19, 'Vitamrit-2_1586186853.jpg', 'visual', 9, 1, '2020-04-06 22:27:41', '2020-04-06 22:27:41'),
(20, 'Zoa Plus-1_1586187138.jpg', 'visual', 10, 1, '2020-04-06 22:32:44', '2020-04-06 22:32:44'),
(21, 'Zoa Plus-2_1586187164.jpg', 'visual', 10, 1, '2020-04-06 22:33:01', '2020-04-06 22:33:01'),
(22, 'Kofnil-1_1586187397.jpg', 'visual', 11, 1, '2020-04-06 22:36:49', '2020-04-06 22:36:49'),
(23, 'Kofnil-2_1586187409.jpg', 'visual', 11, 1, '2020-04-06 22:36:57', '2020-04-06 22:36:57'),
(25, 'Lactotop-1_1586187880.jpg', 'visual', 13, 1, '2020-04-06 22:44:54', '2020-04-06 22:44:54'),
(26, 'Lactotop-2_1586187894.jpg', 'visual', 13, 1, '2020-04-06 22:45:05', '2020-04-06 22:45:05'),
(27, 'Livosyp-DS -1_1586188169.jpg', 'visual', 14, 1, '2020-04-06 22:49:37', '2020-04-06 22:49:37'),
(28, 'Livosyp-DS -2_1586188177.jpg', 'visual', 14, 1, '2020-04-06 22:49:43', '2020-04-06 22:49:43'),
(29, 'Livosyp-DS -3_1586188183.jpg', 'visual', 14, 1, '2020-04-06 22:49:49', '2020-04-06 22:49:49'),
(35, 'Rheumo-Oil-1(2)_1597741865.jpg', 'visual', 18, 1, '2020-08-18 16:11:07', '2020-08-18 16:11:07'),
(36, 'Rheumo-Oil-1(3)_1597744139.jpg', 'visual', 18, 1, '2020-08-18 16:49:03', '2020-08-18 16:49:03'),
(41, 'Crush Syp-2_1601285354.jpg', 'visual', 6, 1, '2020-09-28 16:29:27', '2020-09-28 16:29:27'),
(42, 'F-liv-Compound-visual-1_1601285821.jpg', 'visual', 20, 1, '2020-09-28 16:37:05', '2020-09-28 16:37:05'),
(43, 'meghna-hair-oil-1_1601285929.jpg', 'visual', 21, 1, '2020-09-28 16:38:56', '2020-09-28 16:38:56'),
(45, 'Meghna-2_1601969989.jpg', 'visual', 21, 1, '2020-10-06 14:39:56', '2020-10-06 14:39:56'),
(47, 'F-Liv-2_3200X1800_1601970440.jpg', 'visual', 20, 1, '2020-10-06 14:47:29', '2020-10-06 14:47:29'),
(49, 'Zoa-Plus-3_3200X1800_1601970815.jpg', 'visual', 10, 1, '2020-10-06 14:53:44', '2020-10-06 14:53:44'),
(50, 'Rheumo-Gold-1_1601972180.jpg', 'visual', 22, 1, '2020-10-06 15:16:26', '2020-10-06 15:16:26'),
(51, 'Rheumo-Gold-2_1601972186.jpg', 'visual', 22, 1, '2020-10-06 15:16:46', '2020-10-06 15:16:46'),
(52, 'Pregnoaid-1_1601973559.jpg', 'visual', 23, 1, '2020-10-06 15:39:31', '2020-10-06 15:39:31'),
(53, 'Pregnoaid-2_1601973571.jpg', 'visual', 23, 1, '2020-10-06 15:39:39', '2020-10-06 15:39:39'),
(54, 'Pregnoaid-3_1601973579.jpg', 'visual', 23, 1, '2020-10-06 15:39:48', '2020-10-06 15:39:48'),
(55, 'Crush-BPH-1_1601973984.jpg', 'visual', 24, 1, '2020-10-06 15:46:44', '2020-10-06 15:46:44'),
(56, 'Crush-BPH-2_1601974004.jpg', 'visual', 24, 1, '2020-10-06 15:46:52', '2020-10-06 15:46:52'),
(58, 'Crush-BPH-3_1601974357.jpg', 'visual', 24, 1, '2020-10-06 15:52:43', '2020-10-06 15:52:43'),
(59, 'Crush-RT-1_1601974854.jpg', 'visual', 25, 1, '2020-10-06 16:01:07', '2020-10-06 16:01:07'),
(60, 'Crush-RT-2_1601974867.jpg', 'visual', 25, 1, '2020-10-06 16:01:19', '2020-10-06 16:01:19'),
(61, 'Crush-RT-3_1601974879.jpg', 'visual', 25, 1, '2020-10-06 16:01:29', '2020-10-06 16:01:29'),
(62, 'Crush-RT-4_1601974889.jpg', 'visual', 25, 1, '2020-10-06 16:01:37', '2020-10-06 16:01:37'),
(69, 'Livosyp-DS -4_1601979517.jpg', 'visual', 14, 1, '2020-10-06 17:18:42', '2020-10-06 17:18:42'),
(73, 'Fetone-1_1601980578.jpg', 'visual', 26, 1, '2020-10-06 17:36:28', '2020-10-06 17:36:28'),
(74, 'Fetone-2_1601980588.jpg', 'visual', 26, 1, '2020-10-06 17:36:38', '2020-10-06 17:36:38'),
(75, 'Fetone-3_1601980598.jpg', 'visual', 26, 1, '2020-10-06 17:36:46', '2020-10-06 17:36:46'),
(82, 'Acnocure Cap-1_1614586348.jpg', 'visual', 27, 1, '2021-03-01 15:12:40', '2021-03-01 15:12:40'),
(83, 'Acnocure Cap-2_1614586360.jpg', 'visual', 27, 1, '2021-03-01 15:12:47', '2021-03-01 15:12:47'),
(84, 'Acnocure Cream-1_1614586724.jpg', 'visual', 28, 1, '2021-03-01 15:19:57', '2021-03-01 15:19:57'),
(85, 'Acnocure Cream-2_1614586797.jpg', 'visual', 28, 1, '2021-03-01 15:20:59', '2021-03-01 15:20:59'),
(86, 'Babykol-1_1614590876.jpg', 'visual', 29, 1, '2021-03-01 16:28:07', '2021-03-01 16:28:07'),
(87, 'Babykol-2_1614590887.jpg', 'visual', 29, 1, '2021-03-01 16:28:21', '2021-03-01 16:28:21'),
(88, 'Bonartho-1_1614591009.jpg', 'visual', 30, 1, '2021-03-01 16:30:25', '2021-03-01 16:30:25'),
(89, 'Bonartho-2_1614591025.jpg', 'visual', 30, 1, '2021-03-01 16:30:33', '2021-03-01 16:30:33'),
(90, 'Bonartho-3_1614591074.jpg', 'visual', 30, 1, '2021-03-01 16:31:24', '2021-03-01 16:31:24'),
(91, 'Braintone-1_1614591273.jpg', 'visual', 31, 1, '2021-03-01 16:34:46', '2021-03-01 16:34:46'),
(92, 'Braintone-2_1614591286.jpg', 'visual', 31, 1, '2021-03-01 16:34:55', '2021-03-01 16:34:55'),
(93, 'D4-Manic-1_1614591401.jpg', 'visual', 32, 1, '2021-03-01 16:36:53', '2021-03-01 16:36:53'),
(94, 'D4-Manic-2_1614591413.jpg', 'visual', 32, 1, '2021-03-01 16:37:00', '2021-03-01 16:37:00'),
(95, 'D4-Manic-3_1614591420.jpg', 'visual', 32, 1, '2021-03-01 16:37:08', '2021-03-01 16:37:08'),
(96, 'Dysentrol-1_1614591555.jpg', 'visual', 33, 1, '2021-03-01 16:39:20', '2021-03-01 16:39:20'),
(97, 'Dysentrol-2_1614591560.jpg', 'visual', 33, 1, '2021-03-01 16:39:24', '2021-03-01 16:39:24'),
(98, 'Dysentrol-3_1614591564.jpg', 'visual', 33, 1, '2021-03-01 16:39:31', '2021-03-01 16:39:31'),
(99, 'Feverex-1_1614591668.jpg', 'visual', 34, 1, '2021-03-01 16:41:15', '2021-03-01 16:41:15'),
(100, 'Feverex-2_1614591675.jpg', 'visual', 34, 1, '2021-03-01 16:41:22', '2021-03-01 16:41:22'),
(101, 'G-Amrita-1_1614591797.jpg', 'visual', 35, 1, '2021-03-01 16:43:23', '2021-03-01 16:43:23'),
(102, 'G-Amrita-2_1614591803.jpg', 'visual', 35, 1, '2021-03-01 16:43:29', '2021-03-01 16:43:29'),
(103, 'G-Amrita-3_1614591809.jpg', 'visual', 35, 1, '2021-03-01 16:43:35', '2021-03-01 16:43:35'),
(104, 'Jontigo-1_1614592009.jpg', 'visual', 36, 1, '2021-03-01 16:46:56', '2021-03-01 16:46:56'),
(105, 'Jontigo-2_1614592016.jpg', 'visual', 36, 1, '2021-03-01 16:47:02', '2021-03-01 16:47:02'),
(106, 'Kofnil-1_1614592109.jpg', 'visual', 37, 1, '2021-03-01 16:48:48', '2021-03-01 16:48:48'),
(107, 'Kofnil-2_1614592128.jpg', 'visual', 37, 1, '2021-03-01 16:49:28', '2021-03-01 16:49:28'),
(108, 'Krimihar-1_1614592571.jpg', 'visual', 38, 1, '2021-03-01 16:56:21', '2021-03-01 16:56:21'),
(109, 'Krimihar-2_1614592581.jpg', 'visual', 38, 1, '2021-03-01 16:56:32', '2021-03-01 16:56:32'),
(110, 'Livosyp Drop-1_1614593074.jpg', 'visual', 39, 1, '2021-03-01 17:04:45', '2021-03-01 17:04:45'),
(111, 'Livosyp Drop-2_1614593085.jpg', 'visual', 39, 1, '2021-03-01 17:04:57', '2021-03-01 17:04:57'),
(112, 'Psorawell-1_1614593333.jpg', 'visual', 40, 1, '2021-03-01 17:09:04', '2021-03-01 17:09:04'),
(113, 'Psorawell-2_1614593344.jpg', 'visual', 40, 1, '2021-03-01 17:09:14', '2021-03-01 17:09:14'),
(114, 'Pure UP-1_1614593741.jpg', 'visual', 41, 1, '2021-03-01 17:15:51', '2021-03-01 17:15:51'),
(115, 'Pure UP-2_1614593751.jpg', 'visual', 41, 1, '2021-03-01 17:16:03', '2021-03-01 17:16:03'),
(116, 'R-Amrita-1_1614593819.jpg', 'visual', 42, 1, '2021-03-01 17:17:09', '2021-03-01 17:17:09'),
(117, 'R-Amrita-2_1614593829.jpg', 'visual', 42, 1, '2021-03-01 17:17:24', '2021-03-01 17:17:24'),
(118, 'Urtitab-1_1614593947.jpg', 'visual', 43, 1, '2021-03-01 17:19:15', '2021-03-01 17:19:15'),
(119, 'Urtitab-2_1614593955.jpg', 'visual', 43, 1, '2021-03-01 17:19:24', '2021-03-01 17:19:24'),
(120, 'Bowlsoft-LBL-1_1614595491.jpg', 'lbl', 4, 1, '2021-03-01 17:44:57', '2021-03-01 17:44:57'),
(121, 'Bowlsoft-LBL-2_1614595497.jpg', 'lbl', 4, 1, '2021-03-01 17:45:25', '2021-03-01 17:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `productmapdivision`
--

CREATE TABLE `productmapdivision` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmapdivision`
--

INSERT INTO `productmapdivision` (`id`, `product_id`, `division_id`, `created_at`, `updated_at`) VALUES
(77, 13, 3, '2020-08-19 17:26:55', '2020-08-19 17:26:55'),
(81, 9, 3, '2020-08-19 17:29:47', '2020-08-19 17:29:47'),
(83, 7, 3, '2020-08-19 17:31:09', '2020-08-19 17:31:09'),
(85, 5, 3, '2020-08-19 17:32:47', '2020-08-19 17:32:47'),
(103, 6, 3, '2020-09-28 16:29:14', '2020-09-28 16:29:14'),
(109, 20, 3, '2020-10-06 14:47:20', '2020-10-06 14:47:20'),
(111, 10, 3, '2020-10-06 14:53:35', '2020-10-06 14:53:35'),
(113, 23, 3, '2020-10-06 15:39:19', '2020-10-06 15:39:19'),
(115, 24, 3, '2020-10-06 15:52:37', '2020-10-06 15:52:37'),
(116, 25, 3, '2020-10-06 16:00:54', '2020-10-06 16:00:54'),
(120, 3, 3, '2020-10-06 16:07:24', '2020-10-06 16:07:24'),
(133, 21, 3, '2021-02-10 17:33:18', '2021-02-10 17:33:18'),
(140, 27, 2, '2021-03-01 15:12:52', '2021-03-01 15:12:52'),
(141, 28, 2, '2021-03-01 15:18:44', '2021-03-01 15:18:44'),
(142, 11, 3, '2021-03-01 16:12:45', '2021-03-01 16:12:45'),
(143, 18, 3, '2021-03-01 16:16:02', '2021-03-01 16:16:02'),
(144, 14, 3, '2021-03-01 16:17:02', '2021-03-01 16:17:02'),
(145, 26, 3, '2021-03-01 16:17:23', '2021-03-01 16:17:23'),
(146, 8, 3, '2021-03-01 16:18:09', '2021-03-01 16:18:09'),
(147, 22, 3, '2021-03-01 16:19:19', '2021-03-01 16:19:19'),
(148, 29, 2, '2021-03-01 16:27:56', '2021-03-01 16:27:56'),
(150, 30, 2, '2021-03-01 16:31:14', '2021-03-01 16:31:14'),
(151, 31, 2, '2021-03-01 16:34:33', '2021-03-01 16:34:33'),
(152, 32, 2, '2021-03-01 16:36:41', '2021-03-01 16:36:41'),
(153, 33, 2, '2021-03-01 16:39:15', '2021-03-01 16:39:15'),
(154, 34, 2, '2021-03-01 16:41:08', '2021-03-01 16:41:08'),
(155, 35, 2, '2021-03-01 16:43:17', '2021-03-01 16:43:17'),
(156, 36, 2, '2021-03-01 16:46:49', '2021-03-01 16:46:49'),
(157, 37, 2, '2021-03-01 16:48:29', '2021-03-01 16:48:29'),
(158, 38, 2, '2021-03-01 16:56:11', '2021-03-01 16:56:11'),
(159, 39, 2, '2021-03-01 17:04:34', '2021-03-01 17:04:34'),
(160, 40, 2, '2021-03-01 17:08:53', '2021-03-01 17:08:53'),
(161, 41, 2, '2021-03-01 17:15:41', '2021-03-01 17:15:41'),
(162, 42, 2, '2021-03-01 17:16:59', '2021-03-01 17:16:59'),
(163, 43, 2, '2021-03-01 17:19:07', '2021-03-01 17:19:07'),
(164, 4, 3, '2021-03-01 17:44:51', '2021-03-01 17:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-02-11 18:30:00', NULL),
(2, 'user', '2020-02-12 06:09:47', '2020-02-12 06:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOJ` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head_qtr` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `normalPassword` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `staff_type`, `DOJ`, `head_qtr`, `user_id`, `state`, `email`, `mobile`, `email_verified_at`, `password`, `normalPassword`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '', '', '', '', '', 'admin@gmail.com', '', NULL, '$2y$12$m5AmuUKMhEiQezr.x96SMuM.xKfsSxr4vucuztLyKfnJVDZWeGIke', NULL, 'H1pqjQmwnmagx5gKVTEy8ofbmGURtbIXq3tTGlRqvIGjEWcyvqv8TWRYsmhR', NULL, NULL),
(2, 2, 'sandeep', '', '', '', '', '', 'sandeep@gmail.com', '9653338547', NULL, '$2y$12$Lua31DrlzbAaWuBpVR/fge.KEAtuP0gNFuXpggI5UJV2LISRwV4We', '123456', 'coNuvaAOUpw:APA91bEFc15Qitzk0bC_BGiMNYiode9SJ5ywOt6RCVcRt0HWIdRLCSRGLs-FdOuAv5QXm81Achu-Hx-5bm7K7VlPCUCmb3DNFK9QfsHYOL-DvXyiGrbq9fM3hCtZUiT5cunusYhomrjP', NULL, '2020-03-05 12:42:49'),
(4, 2, 'sandeep', '', '', '', '', '', 'sandeep12@gmail.com', '9653338547', NULL, '$2y$12$.5hG99CqBfQQ3141Wtd2oe5uAkMze5UVKskYumEKOucAAlqpTeOIi\r\n', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(5, 2, 'sandeep', '', '', '', '14200000', '', 'sandeep1@gmail.com', '9653338547', NULL, '$2y$12$.5hG99CqBfQQ3141Wtd2oe5uAkMze5UVKskYumEKOucAAlqpTeOIi\r\n', '123456', 'cY78v59C8JY:APA91bE_YIWqowcfVxLQ4me56_S0eCD5PC6tr-Q32qz9ekuTkmSqPzRmjpb3Ehfjj6CaHjaj8Sh8S6C6jTObJ5DK4qIhV3kt0jQap8IfLiDDYIBvgSlZpTCwed18nsayJkCJeF14BP9G', NULL, '2020-03-05 22:09:24'),
(6, 2, 'ABHAY SHUKLA', 'PSR', '2019-11-18', 'BANDA -E-', '14471ABHAY', 'UTTAR PRADESH', 'abhayshukla.bnd@gmail.com', '9984097889', NULL, '$2y$10$l2mNWYnaaDyH.KPlPCSDEeF9mkS7IxZsq.lZKZJZv6bfx5Skq..hy', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-09 13:15:31'),
(7, 2, 'ABHISHEK KANAUJIA', 'PSR', '2019-10-11', 'KANPUR -E-', '14351ABHISHEK', 'UTTAR PRADESH', 'abhishekkanaujia13@gmail.com', '7355544273', NULL, '$2y$10$Pifn0Etmjpfxi65bYN1zZuydVwqMR2yNRNwZ1LSpfjfLCBs9Hlo7C', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-03 18:24:14'),
(8, 2, 'ABHISHEK SRIVASTAVA', 'PSR', '2019-07-25', 'LUCKNOW -E-', '14044ABHISHEK', 'UTTAR PRADESH', 'abhi.srivastava4321@gmail.com', '8601681256', NULL, '$2y$10$UnJeT39N7UL.Thvp/xenUelM29gjU4V8ZOersrcesJr3ABsqx0.f.', '123456', NULL, NULL, '2021-03-03 17:19:22'),
(9, 2, 'AMIT KUMAR (BULANDSHAHR)', 'PSR', '2019-05-22', 'BULANDSHEHAR -E-', '13775AMIT', 'UTTAR PRADESH', 'amitsaini844596@gmail.com', '7906580947', NULL, '$2y$10$hDsTob89bGsxA0I7VGzy4eZghsh/cZuJjWpA2qlTC5yBB5v.4Rv1y', '123456', NULL, NULL, '2021-03-03 17:36:27'),
(10, 2, 'ANIL KUMAR PASWAN', 'PSR', '2019-08-01', 'MAHARAJGANJ -E-', '14064ANIL', 'UTTAR PRADESH', 'mranilpaswan3@gmail.com', '8052987832', NULL, '$2y$10$/z7azhfgR4gE5d9mGd1wVOvd/PbllARS2uH1eK7fpEzT1EA/Dx.P2', '123456', NULL, NULL, '2021-03-03 17:42:07'),
(11, 2, 'ASHISH KUMAR (VARANASI)', 'ASM', '2019-08-07', 'VARANASI-E', '13554ASHISH', 'UTTAR PRADESH', 'mauryaashish654@gmail.com', '09889871118', NULL, '$2y$10$gGCm2UdZXJBM/InguH8iC.7QwUoevATHja5L6ZjMgMmzOS27oKVby', '123456', NULL, NULL, '2021-03-03 18:04:06'),
(12, 2, 'ASHWANI KUMAR YADAV', 'DRSM', '2020-01-27', 'LUCKNOW -E-', '14689ASHWANI', 'UTTAR PRADESH', 'ashwaniylko@gmail.com', '09956632786', NULL, '$2y$10$wcrfRdZ.3ek18p2JR3/16OFvfvtQ/1n6/rY0q5p1l09K9vgw2akJm', '123456', NULL, NULL, '2021-03-03 18:26:18'),
(13, 2, 'AWADH RAM PANDEY', 'PSR', '2019-12-13', 'GONDA -E-', '14555AWADH', 'UTTAR PRADESH', 'awadh07u@gmail.com', '9554163236', NULL, '$2y$10$ebmqEdCKMcV1Wm4tdtN.FeI8jsFVxOKTsY1J0AQ7X7GNTVikZeKsi', '123456', NULL, NULL, '2021-03-03 18:28:48'),
(14, 2, 'CHANDAN KUMAR SAINI', 'PSR', '2019-09-02', 'AZAMGARH -E-', '14187CHANDAN', 'UTTAR PRADESH', 'chandanruby675@gmail.com', '9889348318', NULL, '$2y$10$x14Jy8O6HvVc.NRBYgGZvuALUYITIjfh9DM.lol.64ObMtjW1you2', '123456', NULL, NULL, '2021-03-05 16:35:08'),
(15, 2, 'DEEPAK SAXENA', 'PSR', '2017-10-15', 'BARIELLY-E', '14362DEEPAK', 'UTTAR PRADESH', 'deepaksaxena074@gmail.com', '9368342465', NULL, '$2y$10$DLzMjKltFvhP9eQJkgVC2usezxuG7y4Dyihc1iAD0qdUdKhVRQ.hK', '123456', NULL, NULL, '2021-03-05 16:43:05'),
(16, 2, 'DEV SINGH CHAUDHARY', 'PSR', '2019-05-25', 'AGRA -E-', '13781DEV', 'UTTAR PRADESH', 'devchaudhary112986@gmail.com', '7906059797', NULL, '$2y$10$zrocxv7e0lqAIqKo9ha9fuUmATVLMYUNPhurqZpBhPgZA6DHefqK6', '123456', NULL, NULL, '2021-03-05 16:44:26'),
(17, 2, 'DEVENDRA PRATAP SINGH', 'ASM', '2019-05-16', 'FAIZABAD -E-', '13712DEVENDRA', 'UTTAR PRADESH', 'glaremedicare@gmail.com', '9838982066', NULL, '$2y$10$4uJ.kSUpInSgNcAy56O3puk2gT3P/e5HSgqq1GD857fzzMwy2t96W', '123456', NULL, NULL, '2021-03-05 16:47:26'),
(18, 2, 'DUSHYANT BANSAL', 'SR.ASM', '2019-03-28', 'BARIELLY-E', '12370DUSHYANT', 'UTTAR PRADESH', 'bansaldushyant98@rediffmail.com', '8630800669', NULL, '$2y$10$IxEIrFzaati5efBsB0558e6IFf8FLv.Px2FY0Y1BIWKOFsU6A/T..', '123456', NULL, NULL, '2021-03-05 17:12:26'),
(19, 2, 'GHANENDRA KUMAR GARG', 'PSR', '2019-10-23', 'GHAZIABAD -E-', '14394GHANENDRA', 'UTTAR PRADESH', 'ghanendragarg786@gmail.com', '9411954010', NULL, '$2y$10$/XmnoHzzc.y1S7PKIwnxDeLHuhADvbNzQhcTqg48dR4xV942Uv2RS', '123456', NULL, NULL, '2021-03-05 17:20:37'),
(20, 2, 'GHANSHYAM SHARMA', 'PSR', '2019-01-21', 'ALIGARH -E-', '12185GHANSHYAM', 'UTTAR PRADESH', 'ghanshyam794sharma@gmail.com', '6398910296', NULL, '$2y$10$6U/69XwlZdsPBDRwDlAuSeuF.mdGjibSNl7xg1hwcFMhxNWYoRXQm', '123456', NULL, NULL, '2021-03-05 17:21:39'),
(21, 2, 'GOPAL AGNIHOTRI', 'PSR', '2019-08-08', 'FARUKHABAD -E-', '14097GOPAL', 'UTTAR PRADESH', 'agnihotrig49@gmail.com', '9875941087', NULL, '$2y$10$/r3Om6bn0H841J8W9Ix2LORW/PY6V00CmRAbBqLnHYvlnHE1jZl86', '123456', NULL, NULL, '2021-03-05 17:22:47'),
(22, 2, 'HIMALAY GAUTAM', 'PSR', '2019-06-08', 'JHANSI -E-', '13847HIMALAY', 'UTTAR PRADESH', 'himalayagautamiya58@gmail.com', '9936859940', NULL, '$2y$10$JX.8vXctR0YZMrxxMXSF3evWXyCwMvi556FYdvxWHWb/8QwSEhX3m', '123456', NULL, NULL, '2021-03-05 17:28:20'),
(23, 2, 'MAHFOOZ ALI', 'PSR', '2019-03-28', 'RAMPUR-E-', '12371MAHFOOZ', 'UTTAR PRADESH', 'amahfoozali1234@gmail.com', '9927739610', NULL, '$2y$10$UdXDXmb/WGe8FryC1aUCGOKI00Z556Xwjvc6KVR4ZT/Gyx0RvH.CW', '123456', NULL, NULL, '2021-03-05 18:05:36'),
(24, 2, 'MANEESH PRAJAPATI', 'PSR', '2019-12-09', 'ETAWAH -E-', '14546MANEESH', 'UTTAR PRADESH', 'manishprajapati53837@gmail.com', '8868828969', NULL, '$2y$10$5MlqEvssY0J5vTVmXEzvt.kVV/4Y95oCUK/EOWUZ/YXLI4XyexKom', '123456', NULL, NULL, '2021-03-05 18:06:13'),
(25, 2, 'MUKESH KUMAR DWIVEDI', 'ASM', '21/06/2019', 'GORAKHPUR -E-', '13884MUKESH', 'UTTAR PRADESH', 'dwivedi.mukesh11@gmail.com', '8601445556', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(26, 2, 'PANKAJ KUMAR SINGH', 'PSR', '25/10/2019', 'BAHARIACH -E-', '14401PANKAJ', 'UTTAR PRADESH', 'pankajsingh6574307@gmail.com', '7570805047', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(27, 2, 'PRASHANT PARASHAR', 'RSM', '08/05/2019', 'AGRA -E-', '13708PRASHANT', 'UTTAR PRADESH', 'prashantparashar046@gmail.com', '8218922880', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(28, 2, 'RAHUL KUMAR SAINI', 'PSR', '03/01/2020', 'MEERUT -E-', '14605RAHUL', 'UTTAR PRADESH', 'rahulsainiop@gmail.com', '8272804770', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(29, 2, 'RAVINDER KUMAR.', 'PSR', '2019-12-26', 'SAHARANPUR -E-', '14587RAVINDER', 'UTTAR PRADESH', 'ravinder8064@gmail.com', '9027361039', NULL, '$2y$10$dZTdBS/ErEYhAc.jj13np.aJVzlpnd6gKaAfl6bLQl6Uold9X6tfG', '123456', NULL, NULL, '2021-03-03 15:52:34'),
(30, 2, 'ROHIT KUMAR MISHRA', 'PSR', '06/08/2019', 'DEORIYA -E-', '14085ROHIT', 'UTTAR PRADESH', 'rmishra7798@gmail.com', '6393269774', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(31, 2, 'ROHIT MISHRA', 'PSR', '11/09/2019', 'LAKHIMPUR -E-', '14232ROHIT', 'UTTAR PRADESH', 'rmlmp8055@gmail.com', '7355741071', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(32, 2, 'SANDEEP KUMAR PANDAY', 'PSR', '01/06/2019', 'PARTAPGARH-E', '13813SANDEEP', 'UTTAR PRADESH', 'sandeepkp.pbh@gmail.com', '9670000193', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(33, 2, 'SANJEEV MOHAN DUBEY', 'PSR', '17/07/2019', 'GORAKHPUR -E-', '14018SANJEEV', 'UTTAR PRADESH', 'sanjeevmohand@gmail.com', '9838446638', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(34, 2, 'SARWER ALAM', 'ASM', '14/09/2019', 'KANPUR -E-', '14241SARWER', 'UTTAR PRADESH', 'sarwer13@gmail.com', '9336215884', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(35, 2, 'SUMIT KUMAR (BASTI)', 'PSR', '13/06/2019', 'BASTI -E-', '13860SUMIT', 'UTTAR PRADESH', 'sumitpandey292@gmail.com', '7309377962', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(36, 2, 'TARUN ARYA', 'ASM', '08/01/2014', 'ALIGARH -E-', '3500TARUN', 'UTTAR PRADESH', 'aryatarunkumar@gmail.com', '8392904107', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(37, 2, 'VARUN TRIVEDI', 'PSR', '19/08/2019', 'SHAHJAHANPUR -E-', '14129VARUN', 'UTTAR PRADESH', 'spn.varun1995@gmail.com', '8604806749', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(38, 2, 'VIKASH SRIVASTAVA', 'PSR', '16/07/2019', 'VARANASI-E', '14011VIKASH', 'UTTAR PRADESH', 'vikashvv358@gmail.com', '8799139397', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(39, 2, 'VIRENDRA KUMAR', 'PSR', '28/03/2019', 'PILIBHIT-E', '12376VIRENDRA', 'UTTAR PRADESH', 'vksharma150@gmail.com', '9412667017', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(40, 2, 'VIVEK KUMAR SINGH', 'PSR', '03/04/2019', 'KASGANJ-E-', '13387VIVEK', 'UTTAR PRADESH', 'solankivivek782@gmail.com', '8193929772', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(41, 2, 'YOGESH MAURYA', 'PSR', '02/09/2019', 'JAUNPUR-E', '14192YOGESH', 'UTTAR PRADESH', 'yogeshmaurya666@gmail.com', '9648001133', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(42, 2, 'ANUJ SINGH', 'PSR', '2019-09-24', 'NAJIBABAD -E-', '14274ANUJ', 'UTTRAKHAND', 'anujchaudhary837@gmail.com', '9045698900', NULL, '$2y$10$jnDt1lRUWEfCbW76Qr6b8uqEr2GMOoIYNK8/DVTrGsafZ2/Mzc.le', '123456', NULL, NULL, '2021-03-03 17:56:24'),
(43, 2, 'DHIRENDRA BAM', 'PSR', '2019-04-18', 'HALDWANI -E-', '13488DHIRENDRA', 'UTTRAKHAND', 'dhirajsinghksp@gmail.com', '9639058914', NULL, '$2y$10$447D6lT/nLF1zu6PlQY4aOwoJ25s.qkDSNMtGLqiRSFf/AqQZzPLy', '123456', NULL, NULL, '2021-03-05 16:55:38'),
(44, 2, 'HRISHEEKESH PARASHAR', 'ASM', '2019-07-25', 'HALDWANI -E-', '14046HRISHEEKESH', 'UTTRAKHAND', 'aristohrisheekesh@gmail.com', '9997617057', NULL, '$2y$10$HEEiboIeTrUY9nmwtde23.FJlWkvwVQhSm.KVi18PjrsaKlSOhf0u', '123456', NULL, NULL, '2021-03-05 17:29:18'),
(45, 2, 'MONU', 'PSR', '2020-05-06', 'DEHRADUN -E-', '13862', 'UTTRAKHAND', 'sales@zipzap.in', '0000000000', NULL, '$2y$10$22vRpZ4vAbKU8OojnGhRReTKHQE9ZyQXy0E4hksSf/lTntyeUJlk2', 'admin', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-03 11:20:48'),
(46, 2, 'ROHIT KUMAR SAXENA', 'PSR', '01/08/2019', 'KHATIMA-E-', '14065ROHIT', 'UTTRAKHAND', 'rohitsaxenapbt2@gmail.com', '8057312566', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(47, 2, 'ROHIT KUMAR.', 'PSR', '25/12/2019', 'ROORKEE -E-', '14585ROHIT', 'UTTRAKHAND', 'rohitnayak9027@gmail.com', '9027161182', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(48, 2, 'SANDEEP KUMAR.', 'ASM', '18/12/2019', 'ROORKEE -E-', '14562SANDEEP', 'UTTRAKHAND', 'sandeepatrey2372016@gmail.com', '07895384775', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(49, 2, 'VINEET KUMAR', 'PSR', '05/02/2020', 'KASHIPUR -E-', '14708VINEET', 'UTTRAKHAND', 'kvineet574@gmail.com', '9997373303', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(50, 2, 'ABHAY PRATAP SINGH', 'PSR', '2020-04-01', 'BALLIA -B-', '11921ABHAY', 'UTTAR PRADESH', 'abhysngh93@rediffmail.com', '9451609229', NULL, '$2y$10$5EDmklNFZqtZrm.7RNGReucCXgs./wlypDQIanfTILaIqIQw9RplC', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-09 15:35:45'),
(51, 2, 'ABHISHEK MZN', 'PSR', '2017-10-21', 'MUZAFFARNAGAR -B-', '9942ABHISHEK', 'UTTAR PRADESH', 'AKCMZN@GMAIL.COM', '9897941634', NULL, '$2y$10$a3XVxvsNKNYi3/PqeuhWT.lvO3hDKF3lWHRf8MsH92iZS1kHvIMN2', '123456', NULL, NULL, '2021-03-03 16:15:15'),
(52, 2, 'AJAY KUMAR (GORAKHPUR)', 'ASM', '2019-05-09', 'GORAKHPUR -B-', '13674AJAY', 'UTTAR PRADESH', 'ajaykumarsdh@yahoo.com', '9236038169', NULL, '$2y$10$G65cH6CBwRD/WiwKwVsq.uJ7Tck4ENx9Hx3YUZI9m5SNYqjfodowm', '123456', NULL, NULL, '2021-03-03 17:25:47'),
(53, 2, 'AJENDRA PARTAP SINGH', 'PSR', '2014-12-29', 'DEORIYA -B-', '3376AJENDRA', 'UTTAR PRADESH', 'apsinghsdh@gmail.com', '8392904153', NULL, '$2y$10$xJnMfqgXumKG0Fo5mzkuyuVsUTbliOIXTS.IZLsPrDPq9t41t9MAm', '123456', 'coNuvaAOUpw:APA91bEFc15Qitzk0bC_BGiMNYiode9SJ5ywOt6RCVcRt0HWIdRLCSRGLs-FdOuAv5QXm81Achu-Hx-5bm7K7VlPCUCmb3DNFK9QfsHYOL-DvXyiGrbq9fM3hCtZUiT5cunusYhomrjP', NULL, '2021-03-03 17:31:59'),
(54, 2, 'AMIT KUMAR SINGH', 'PSR', '2008-05-02', 'BALRAMPUR -B-', '3381AMIT', 'UTTAR PRADESH', 'amit.singhsdh@gmail.com', '8392904146', NULL, '$2y$10$lzW97VamSH4cmQ/9PMpDMeuWIcQoNBuuNYYOhpZS2p2jLPlXMSiM6', '123456', NULL, NULL, '2021-03-03 17:37:47'),
(55, 2, 'ANIL KUMAR SINGH', 'RSM', '2008-01-02', 'GONDA -B-', '3384ANIL', 'UTTAR PRADESH', 'anilsingh15007@gmail.com', '8392904162', NULL, '$2y$10$R6Vyeg6zdBlHoylR1WF7jeTBfsSZQdVfMnUiaAmuw3TnUVui6ubiK', '123456', NULL, NULL, '2021-03-03 17:46:47'),
(56, 2, 'ANOOP SHRIVASTAV.', 'PSR', '2019-11-07', 'RAMPUR -B-', '14437ANOOP', 'UTTAR PRADESH', 'anoop.shrivastav9@gmail.com', '8267859871', NULL, '$2y$10$6CxpKDquZ6.rKm8x3pV5p.Dwpdgj1VxTdK.nX27ltc/5RNXTMFlqS', '123456', NULL, NULL, '2021-03-03 17:54:20'),
(57, 2, 'ARUN', 'PSR', '2019-08-26', 'MEERUT -B-', '14153', 'UTTAR PRADESH', 'arunkumarpharmecy@gmail.com', '8941933279', NULL, '$2y$10$y0co2ZmfXhi0tyXpAFnrbubDebEesyGnqpPLTo2O5aleVCPW9kcO2', '123456', NULL, NULL, '2021-03-03 18:00:31'),
(58, 2, 'ARUN KUMAR BAJPAI', 'PSR', '2016-12-23', 'ETAWAH -B-', '7521ARUN', 'UTTAR PRADESH', 'arunbajpai1971@gmail.com', '9411018947', NULL, '$2y$10$HWqBL/PdwynphtHBHnZWNuy6ZPfIpqA6L5v2NQdnaKgTqPJjprtlS', '123456', NULL, NULL, '2021-03-03 18:03:05'),
(59, 2, 'ASHVANI KUMAR', 'PSR', '2019-02-15', 'ORAI -B-', '12259ASHVANI', 'UTTAR PRADESH', 'ashwanikumarorai@gmail.com', '8423428359', NULL, '$2y$10$5Voq2uiHeDOguQoIBTVK1.U2TIjtM9FYSK/oFjQ9NBDRwHD4msqzC', '123456', NULL, NULL, '2021-03-03 18:23:35'),
(60, 2, 'BRIJESH NISHAD', 'PSR', '2019-05-13', 'MAHARAJGANJ -B-', '13709BRIJESH', 'UTTAR PRADESH', 'bk1481625@gmail.com', '8392904155', NULL, '$2y$10$OxnxjHRcO8Yd8KAorm1zlO2dY2XJKWRJDqC5y69DH1C0uUGS7XTbS', '123456', NULL, NULL, '2021-03-05 16:28:09'),
(61, 2, 'BUDDESHWAR TRIPATHI', 'PSR', '2016-10-10', 'LUCKNOW', '7003BUDDESHWAR', 'UTTAR PRADESH', 'buddheshwartripathi3@gmail.com', '8392904135', NULL, '$2y$10$3diY5y1CfhPn0t190al0gOKP9fbdNw4M6zYpJUr6aTeZWAFWZMgvC', '123456', NULL, NULL, '2021-03-05 16:32:35'),
(62, 2, 'CHARAN SINGH RATHO', 'ASM', '2010-02-12', 'PILIBHIT -B-', '3400CHARAN', 'UTTAR PRADESH', 'csrathour2012@gmail.com', '9319311301', NULL, '$2y$10$Qgt4gh5WJLIJRScZGwSaTOCpZOwLShJhmlceC5jVz7hJHfTWxKLmu', '123456', NULL, NULL, '2021-03-05 16:38:14'),
(63, 2, 'DEEPAK KISHORE RUHELA', 'ASM', '2017-09-02', 'MEERUT -B-', '9658DEEPAK', 'UTTAR PRADESH', 'dr.deepakkruhela22@gmail.com', '9719011088', NULL, '$2y$10$xYi5tT8tMrU6Ji2AtpmYgu1VD8QbnbzdsBpGaeQ8rEgq1yk0eMlJm', '123456', NULL, NULL, '2021-03-05 16:42:00'),
(64, 2, 'DEVI SHANKER SRIVASTAVA', 'PSR', '2019-06-21', 'JAUNPUR -B-', '13882DEVI', 'UTTAR PRADESH', 'devishankersdh@gmail.com', '9453724705', NULL, '$2y$10$dRsHJc6tEP9fjh.5/QIUzOyqxM4F1./YnqkMEYdJy7bQjDJALV3IK', '123456', NULL, NULL, '2021-03-05 16:49:04'),
(65, 2, 'DILEEP KUMAR SONKAR', 'PSR', '2019-01-23', 'VARANASI -B-', '12198DILEEP', 'UTTAR PRADESH', 'dksonkar75@gmail.com', '8392904139', NULL, '$2y$10$4o7.6R1TAwDutuwG206PnepjBkGa2yXxsOD1fU.fzI4NXiafC3M4a', '123456', NULL, NULL, '2021-03-05 17:07:09'),
(66, 2, 'DILEEP SINGH.', 'PSR', '2019-07-12', 'LAKHIMPUR -B-', '13993DILEEP', 'UTTAR PRADESH', 'dileepsdh@gmail.com', '9839361696', NULL, '$2y$10$LbjmgsBSGxa0zUorrg4YNu/aYWa7egbMl/k64sNSCe.OINlgvVUea', '123456', NULL, NULL, '2021-03-05 17:09:02'),
(67, 2, 'GANESH SINGH', 'PSR', '2015-01-13', 'SIDHARTHNAGAR -B-', '3413GANESH', 'UTTAR PRADESH', 'ganesh3413@gmail.com', '8392904150', NULL, '$2y$10$1W3YYQz1TcxQyG9vr4b8LuArNOkS0sVnZOGjZJEbA3H5zxBZXsh..', '123456', NULL, NULL, '2021-03-05 17:14:19'),
(68, 2, 'GAURAV YADEV', 'ASM', '2018-09-06', 'KANPUR -B-', '11813GAURAV', 'UTTAR PRADESH', 'ygaurav816@gmail.com', '9026566825', NULL, '$2y$10$y5Q2K.TEGVHPBjQAno3hgOz28OTqFPmEzMZfgxyYBQ.Y/7yvaN.sO', '123456', NULL, NULL, '2021-03-05 17:19:50'),
(69, 2, 'HARENDRA SINGH', 'ASM', '2019-11-21', 'AGRA-B-', '14472HARENDRA', 'UTTAR PRADESH', 'harendra.dsb2015@gmail.com', '9690496080', NULL, '$2y$10$l8PDVfdkvQN23HjMB0xYM.nJccKuzTL1ZSd71Yr3gxd2abb8Po8xy', '123456', NULL, NULL, '2021-03-05 17:24:43'),
(70, 2, 'HARIBANSH PANDEY', 'ASM', '2008-08-24', 'PARTAPGARH -B-', '3416HARIBANSH', 'UTTAR PRADESH', 'haribanshsdh@gmail.com', '9580718898', NULL, '$2y$10$8ycttM4RrEfcq3RaquHOa.UgLzTZMafQM.5sEzmY/5/RWbjYttx6O', '123456', NULL, NULL, '2021-03-05 17:25:39'),
(71, 2, 'INDRESH KUMAR SINGH (BANDA)', 'PSR', '2018-09-19', 'BANDA -B-', '11863INDRESH', 'UTTAR PRADESH', 'indreshsdh@gmail.com', '6386369299', NULL, '$2y$10$.zqXwRoiho6X09of/tceUOFN/6dGRPtle/44UcjWLBF0vo1EjlLBy', '123456', NULL, NULL, '2021-03-05 17:31:06'),
(72, 2, 'KUNWAR SANJAY SINGH', 'PSR', '2008-12-17', 'BARABANKI -B-', '3429KUNWAR', 'UTTAR PRADESH', 'ks.singhsdh@yahoo.com', '8392904133', NULL, '$2y$10$s8X2NNPvrH3fFRXveJKsZeOifccijy90Of39cj25shFYKK5.plqyW', '123456', NULL, NULL, '2021-03-05 17:59:36'),
(73, 2, 'MANOJ SHARMA', 'PSR', '2005-01-08', 'SAHARANPUR -B-', '3437MANOJ', 'UTTAR PRADESH', 'mkraghav1178@gmail.com', '8393081293', NULL, '$2y$10$CDP/z6ps2ymm2f1sqUcFC.PH8OpxYcE1/C3dsfnr7VaLiBdQFRqSq', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-05 18:16:01'),
(74, 2, 'MAYUR SINGHAL', 'PSR', '08/11/2019', 'DHAMPUR -B-', '14447MAYUR', 'UTTAR PRADESH', 'm.s78668@gmail.com', '8218337870', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(75, 2, 'MOHD YUSUF', 'PSR', '15/12/2017', 'FATEHPUR -B-', '10142MOHD', 'UTTAR PRADESH', 'yusufmohd1106@gmail.com', '9151318189', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(76, 2, 'MONU DEEN', 'PSR', '24/04/2019', 'AGRA-B-', '13518MONU', 'UTTAR PRADESH', 'mk92984@gmail.com', '9756667174', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(77, 2, 'MRITUNJAI KUMAR TIWARI', 'PSR', '04/01/2017', 'ALLAHABAD -B-', '7502MRITUNJAI', 'UTTAR PRADESH', 'mritunjai888.mt@gmail.com', '8392904157', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(78, 2, 'NAVDEEP CHAUDHARY (SITAPUR)', 'PSR', '07/05/2019', 'SITAPUR -B-', '13647NAVDEEP', 'UTTAR PRADESH', 'navdeepchaudharystp@gmail.com', '9919140082', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(79, 2, 'NAVEEN KUMAR', 'PSR', '02/04/2008', 'GONDA -B-', '3446NAVEEN', 'UTTAR PRADESH', 'naveen01one@gmail.com', '9415616880', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(80, 2, 'NEERAJ KUMAR TRIVEDI', 'PSR', '15/09/2015', 'HARDOI -B-', '3448NEERAJ', 'UTTAR PRADESH', 'trivediniraj.000@gmail.com', '9450577561', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(81, 2, 'PAWAN KUMAR TRILOKI', 'PSR', '09/05/2019', 'GORAKHPUR -B-', '13677PAWAN', 'UTTAR PRADESH', 'pawangkp1990@gmail.com', '9450580538', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(82, 2, 'PRADEEP KUMAR (MORADABAD)', 'PSR', '11/10/2018', 'MORADABAD -B-', '11942PRADEEP', 'UTTAR PRADESH', 'pkdsingh043@gmail.com', '9639965032', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(83, 2, 'RAHUL (GHAZIABAD)', 'PSR', '01/01/2018', 'GHAZIABAD -B-', '10207RAHUL', 'UTTAR PRADESH', 'rahulsharma880054@gmail.com', '8800548826', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(84, 2, 'RAJ KUMAR', 'PSR', '13/06/2009', 'NAJIBABAD -B-', '3460RAJ', 'UTTAR PRADESH', 'dhanwantri.rajkumar2012@gmail.com', '8392904201', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(85, 2, 'RAJESH KUMAR KATERIA', 'PSR', '25/09/2017', 'SHAHJAHANPUR -B-', '9803RAJESH', 'UTTAR PRADESH', 'rajeshkatheria5@gmail.com', '9452863215', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(86, 2, 'RAMESH KUMAR LONGWANI', 'PSR', '16/03/2015', 'BARIELLY -B-', '3471RAMESH', 'UTTAR PRADESH', 'rameshkumarlongwani@gmail.com', '8392904125', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(87, 2, 'RAVI KUMAR', 'PSR', '18/04/2014', 'KASGANJ -B-', '3473RAVI', 'UTTAR PRADESH', 'ravi18790@gmail.com', '9690314907', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(88, 2, 'RAVI KUMAR GUPTA', 'RSM', '05/11/2015', 'MATHURA -B-', '3474RAVI', 'UTTAR PRADESH', 'aryan.ravi007@gmail.com', '8445084002', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(89, 2, 'RINKU SHARMA', 'PSR', '25/02/2012', 'BULANDSHEHAR -B-', '3478RINKU', 'UTTAR PRADESH', 'rinku.sharmasdh@gmail.com', '9639348310', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(90, 2, 'SHIV SHANKER SINGH', 'PSR', '02/09/2005', 'BAHARIACH -B-', '3486SHIV', 'UTTAR PRADESH', 'sssingh_sdh@yahoo.in', '07897485913', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(91, 2, 'SHIVAM SHUKLA', 'PSR', '10/02/2017', 'PARTAPGARH -B-', '7718SHIVAM', 'UTTAR PRADESH', 'ss1102038@gmail.com', '8392904151', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(92, 2, 'SUBODH MISHRA', 'PSR', '17/11/2012', 'FARUKHABAD -B-', '3490SUBODH', 'UTTAR PRADESH', 'subodhmishra.birla@gmail.com', '8924990733', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(93, 2, 'SURYA BHAN SINGH', 'PSR', '04/12/2019', 'ALIGARH -B-', '14534SURYA', 'UTTAR PRADESH', 'surya.etw1985@gmail.com', '08979838744', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(94, 2, 'TARUN KUMAR.', 'PSR', '10/10/2019', 'MATHURA -B-', '14346TARUN', 'UTTAR PRADESH', 'tanukumar536@gmail.com', '8392904110', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(95, 2, 'VIJENDRA PAL SINGH', 'PSR', '16/07/2012', 'BADAUN -B-', '3504VIJENDRA', 'UTTAR PRADESH', 'vijendrabadaun@yahoo.in', '8392904124', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(96, 2, 'VIKRAM PRATAP SINGH', 'PSR', '02/03/2019', 'BASTI -B-', '12303VIKRAM', 'UTTAR PRADESH', 'spsingh9554@gmail.com', '09554608232', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(97, 2, 'VINAY MISHRA', 'PSR', '11/01/2018', 'UNNAO -B-', '10236VINAY', 'UTTAR PRADESH', 'VINAY6322@GMAIL.COM', '9838336322', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(98, 2, 'VIVEK KUMAR VISHWAKARMA (BENECEA', 'ASM', '16/07/2019', 'LUCKNOW', '14012VIVEK', 'UTTAR PRADESH', 'viveksdh888@gmail.com', '8707003881', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(99, 2, 'ANIL RAWAT', 'PSR', '2018-04-10', 'KOTDWAR -B-', '11448ANIL', 'UTTRAKHAND', 'anilklg198900@gmail.com', '9412118385', NULL, '$2y$10$Or3/Y7slbxD3oJmtp9GDueNXS0trsG1z97xfwVVcXieRQn1x/x/Uy', '123456', NULL, NULL, '2021-03-03 17:49:34'),
(100, 2, 'ASHOK KUMAR CHOHAN', 'ASM', '2017-04-03', 'HARIDWAR -B-', '8885ASHOK', 'UTTRAKHAND', 'chauhansdh@yahoo.co.in', '8392904122', NULL, '$2y$10$cPf6WycMuRMuCsTerlito.dusHqOC25I5B59aCSdEzv33GaQJtlVC', '123456', NULL, NULL, '2021-03-03 18:09:00'),
(101, 2, 'AZAZ HUSAIN', 'PSR', '2016-04-22', 'HARIDWAR -B-', '5547AZAZ', 'UTTRAKHAND', 'azazhusain645@gmail.com', '7078124064', NULL, '$2y$10$sVG7Kdtdq4xc9j4YobZReO0kqPIgnqBHCb44gbFJaajOJC0uEbAs.', '123456', NULL, NULL, '2021-03-03 18:29:48'),
(102, 2, 'KAPIL KUMAR.', 'PSR', '2019-03-16', 'DEHRADUN -B-', '12339KAPIL', 'UTTRAKHAND', 'kapilchoudhary1904@gmail.com', '8630421377', NULL, '$2y$10$J2lXxSB6KjWgIv7sN7a1PejPq0qSnzNdpLAjFveTcIaokC1aKgK4m', '123456', NULL, NULL, '2021-03-05 17:56:23'),
(103, 2, 'RAJESH GHILDIYAL', 'PSR', '02/09/2019', 'KASHIPUR -B-', '14189RAJESH', 'UTTRAKHAND', 'rajeshghildiyalba@gmail.com', '9756127050', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(104, 2, 'SANJEEV KUMAR SHARMA', 'PSR', '16/08/2017', 'ROORKEI -B-', '9563SANJEEV', 'UTTRAKHAND', 'sanjeevkumarsharma120@gmail.com', '8958876812', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(105, 2, 'SUNIL JOSHI', 'PSR', '01/04/2019', 'HALDWANI -B-', '13384SUNIL', 'UTTRAKHAND', 'sunil95joshi@gmail.com', '8937082279', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(106, 2, 'SURENDRA PAL', 'PSR', '03/09/2019', 'KHATIMA -B-', '14193SURENDRA', 'UTTRAKHAND', 'surendragarg3@gmail.com', '70783466624', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(107, 2, 'SURESH CHANDRA KESTWAL', 'ASM', '01/07/2019', 'HALDWANI -B-', '13929SURESH', 'UTTRAKHAND', 'kestwalsdh@yahoo.in', '9720986905', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(108, 2, 'SUSHIL KUMAR SHARMA', 'ZSM', '01/01/1996', 'SAHARANPUR -B-', '3479SUSHIL', 'UTTAR PRADESH', 'sk_sharmasdh@yahoo.com', '9235000002', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', 'coNuvaAOUpw:APA91bEFc15Qitzk0bC_BGiMNYiode9SJ5ywOt6RCVcRt0HWIdRLCSRGLs-FdOuAv5QXm81Achu-Hx-5bm7K7VlPCUCmb3DNFK9QfsHYOL-DvXyiGrbq9fM3hCtZUiT5cunusYhomrjP', NULL, '2020-03-05 12:42:49'),
(109, 2, 'AJAY KUMAR MISHRA', 'PSR', '2017-04-11', 'GAYA -B-', '8963AJAY', 'BIHAR', 'akmishragayasdh@gmail.com', '7547000816', NULL, '$2y$10$Vjlz2IguE.eyNNs4NaObGeo4uDwp9IZDq/sKT67WaGdf.fVyLcHHm', '123456', NULL, NULL, '2021-03-03 17:27:53'),
(110, 2, 'AKASH KUMAR SINGH', 'PSR', '2019-07-01', 'MOTIHARI -B-', '13931AKASH', 'BIHAR', 'akashrxl06@gmail.com', '8969781816', NULL, '$2y$10$HIQXaPikgUaqjJbeuYtNWuYNkCZBaUoguzT4bC8ohdWhruDSITkIW', '123456', NULL, NULL, '2021-03-03 17:33:28'),
(111, 2, 'AMIT KUMAR SINGH-Raxaul', 'PSR', '2019-02-09', 'RAXOL -B-', '12244AMIT', 'BIHAR', 'amitsingh.jagdhar@gmail.com', '7547000825', NULL, '$2y$10$TF1cXpcyM9IGucu9tXRJPOwIExWBAO9p9HNx1strmAEQWCS/YnBC2', '123456', NULL, NULL, '2021-03-03 17:39:01'),
(112, 2, 'AMITABH KUMAR SINHA', 'DNSM', '2019-11-05', 'PATNA -B-', '14449AMITABH', 'BIHAR', 'dnsm_east@shridhanwantri.com', '9507992997', NULL, '$2y$10$0/w1fOAM6bLzzLF3v5I7E.KVqFa81/zJKFLlP7YBV./XVeVpWfDhm', '123456', NULL, NULL, '2021-03-03 17:40:35'),
(113, 2, 'ANSHURAJ PANDEY', 'PSR', '2011-01-08', 'SAMASTIPUR -B-', '3388ANSHURAJ', 'BIHAR', 'anshusdh@gmail.com', '9263520180', NULL, '$2y$10$potMP9MhJl43SNSX9WQNPe/uq3YwjhcPr9wie663DTGxEnlGN4eT2', '123456', NULL, NULL, '2021-03-03 17:55:24'),
(114, 2, 'AVINAW KUMAR', 'ASM', '2018-11-16', 'PATNA -B-', '12036AVINAW', 'BIHAR', 'avinawkumar1984@gmail.com', '9431644928', NULL, '$2y$10$dLCaY3ZaNBD3pNK3/rz4..YhZRcnb33hxfEOimdACfbAbPtSPvTom', '123456', NULL, NULL, '2021-03-03 18:27:38'),
(115, 2, 'BINOD MISHRA', 'PSR', '2017-12-05', 'SITAMARHI -B-', '10120BINOD', 'BIHAR', 'binodmishrastm@gmail.com', '8340246600', NULL, '$2y$10$pT9Xz7N1wvY1zm4tutUzheNstzrdMwhKiYBhv.hsrK168UhYdfZbi', '123456', NULL, NULL, '2021-03-05 16:24:44'),
(116, 2, 'KAUSHAL KUMAR JHA', 'PSR', '2019-04-09', 'MUZAFFARPUR -B-', '13423KAUSHAL', 'BIHAR', 'Kaushalsdh@gmail.com', '9525313102', NULL, '$2y$10$x9xdbly1Q2XvWbCSvVKaQe5TGfXl8r80lftMoJBxevklI8xtLG70K', '123456', NULL, NULL, '2021-03-05 17:57:02'),
(117, 2, 'LAVLEEN KUMAR', 'PSR', '2018-08-25', 'CHHAPRA -B-', '11791LAVLEEN', 'BIHAR', 'lavleen.pal@gmail.com', '7547000815', NULL, '$2y$10$IVJobRwvy2rwRd4.b0Py5Ox4AC94fmAgccBpFQjzuzjGC.gFbhrd.', '123456', NULL, NULL, '2021-03-05 18:03:12'),
(118, 2, 'MUKESH KUMAR', 'PSR', '2019-05-02', 'PATNA -B-', '13627MUKESH', 'BIHAR', 'mk9643031@gmail.com', '9115550258', NULL, '$2y$10$Cc.X7Xz7FzACrlem1giP6u7CqZW3UxS5vew6eIHYCs.CDUs4SIGw6', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-03 15:37:38'),
(119, 2, 'NIRAJ BURMAN', 'PSR', '13/05/2019', 'MUNGER -B-', '13699NIRAJ', 'BIHAR', 'nirajburmanjmp12@gmail.com', '7547000829', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(120, 2, 'PRABHAT RANJAN PRABHAT', 'PSR', '21/07/2016', 'BEGUSARAI -B-', '6654PRABHAT', 'BIHAR', 'prabhatranjan691@gmail.com', '9431885804', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(121, 2, 'PRATIK MANJUL', 'ASM', '16/01/2020', 'PATNA -B-', '14659PRATIK', 'BIHAR', 'pratikmanjul24@gmail.com', '9102032876', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(122, 2, 'PRAWEEN KUMAR', 'PSR', '18/03/2019', 'PURNIA -B-', '12341PRAWEEN', 'BIHAR', 'praweenkumar8271@gmail.com', '8271516161', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(123, 2, 'RADHA RAMAN', 'ASM', '04/02/2019', 'MUZAFFARPUR -B-', '12233RADHA', 'BIHAR', 'radha.raman41@gmail.com', '7547000827', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(124, 2, 'RAJ KUMAR UPADHAYAY', 'PSR', '01/08/2018', 'BHAGALPUR -B-', '11735RAJ', 'BIHAR', 'rkuadm@gmail.com', '7488840018', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(125, 2, 'RAJIV NAYAN', 'RSM', '19/02/2019', 'PATNA -B-', '12270RAJIV', 'BIHAR', 'rajivnayan2012@gmail.com', '07979069791', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(126, 2, 'RUPESH KUMAR', 'PSR', '09/02/2019', 'BETTIAH -B-', '12243RUPESH', 'BIHAR', 'rupeshinfo009@gmail.com', '7547000820', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(127, 2, 'SHAMIM KAUSAR', 'PSR', '21/11/2008', 'MOTIHARI -B-', '3485SHAMIM', 'BIHAR', 'shamimkausarmth@gmail.com', '9263428470', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(128, 2, 'SUNIL KISHORE PANDEY', 'PSR', '02/07/2018', 'DARBHANGA -B-', '11657SUNIL', 'BIHAR', 'sunilpriya23@gmail.com', '7547000821', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(129, 2, 'DILIP KUMAR.', 'PSR', '2019-09-11', 'SIWAN -B-', '14230DILIP', 'BIHAR', 'dilip123kumar123@gmail.com', '7903237754', NULL, '$2y$10$xynT5oEoig6et/BnGVn.2O0Q4q0FvWmd.s6ADPvGj6uh0cNHYWVGe', '123456', NULL, NULL, '2021-03-05 17:10:28'),
(130, 2, 'UMA SHANKAR JHA (SAHARSA)', 'PSR', '25/06/2019', 'SAHARASA -B-', '13908UMA', 'BIHAR', 'usjha11@gmail.com', '9470712221', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(131, 2, 'VIJAY SHANKAR', 'PSR', '2019-04-16', 'PATNA -B-', '13462VIJAY', 'BIHAR', 'vskumarpatsdh@gmail.com', '7547000817', NULL, '$2y$10$QbhGa4WgzaCfCxRIDQDDZ.Q/eQQcDJGWmvPkWJw8zlEbVIP3epk46', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-10 17:17:45'),
(132, 2, 'JEETENDRA SINGH (BILASPUR)', 'PSR', '2018-05-04', 'BILASPUR -B-', '11486JEETENDRA', 'CHATTISGARH', 'jittusingh888@gmail.com', '7879091897', NULL, '$2y$10$RSB3Igd.8oEhRWUDuwi0YuKFL5ZkT4eotmbHlux/Of1xbiwdIcn0S', '123456', NULL, NULL, '2021-03-05 17:54:12'),
(133, 2, 'JHANAK LAL SAHU', 'ASM', '2018-03-23', 'RAJNANDGAON -B-', '10390JHANAK', 'CHATTISGARH', 'jhanakgurupanch1983@gmail.com', '8085290639', NULL, '$2y$10$3/Qhy6UmDhL6GWfRfMM2ze.JhVVB.wxo5gwzCxr10zTHLPEUefOby', '123456', NULL, NULL, '2021-03-05 17:55:08'),
(134, 2, 'KHILESH KUMAR SAHU', 'PSR', '2019-07-19', 'DHAMTARI -B-', '14032KHILESH', 'CHATTISGARH', 'khileshsahu6204@gmail.com', '7694890898', NULL, '$2y$10$mu0r3HO2.11se5Tqdw0R2OzXJqCWiIrW/LNJKDhvfZP0Uk7BwKga2', '123456', NULL, NULL, '2021-03-05 17:57:59'),
(135, 2, 'MAHESH KUMAR KAUSHIK', 'PSR', '2017-12-22', 'RAJNANDGAON -B-', '10177MAHESH', 'CHATTISGARH', 'Maheshkoushik033@gmail.com', '9479244555', NULL, '$2y$10$PIQE81NJz5zG.6a6P3s.ceH3B8iayezduf5iBpTis9OLRw4p1MaAC', '123456', NULL, NULL, '2021-03-05 18:04:57'),
(136, 2, 'RAM KUMAR DIWANGAN', 'PSR', '06/05/2019', 'DURG -B-', '13710RAM', 'CHATTISGARH', 'ramkumardewangan2012@rediffmail.com', '7583889750', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(137, 2, 'SUNIL KUMAR MISHRA', 'PSR', '05/09/2019', 'RAIPUR -B-', '14201SUNIL', 'CHATTISGARH', 'sunil28mishra@gmail.com', '9630053069', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(138, 2, 'ABHISHEK KUMAR GUPTA', 'ASM', '2016-05-13', 'DELHI-3 -B-', '5829ABHISHEK', 'Delhi', 'abhishekg463@gmail.com', '9015304577', NULL, '$2y$10$SKo.hyDZIIhzgIu159hMy.UnXmVxPKGUwueq9uLNlNnl2vdeZSwoS', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-03 16:38:28'),
(139, 2, 'BRAHAM PRAKASH', 'PSR', '2019-06-11', 'DELHI-2 - 3 -B-', '13854BRAHAM', 'Delhi', 'bptyagi0@gmail.com', '9013046848', NULL, '$2y$10$GB1mDK8nwourMm/J5ta67ezNzd8gGN2dzLlB48hik7EWf5MIORB42', '123456', NULL, NULL, '2021-03-05 16:26:28'),
(140, 2, 'GANESH SINGH.', 'PSR', '2018-07-03', 'DELHI-4 - 5 -B-', '11658GANESH', 'Delhi', 'sganeshsingh89@gmail.com', '9999043081', NULL, '$2y$10$6ggQ02tQjgEFOY6EdbEt9O3AhoWWPIwEeoI4y5e2YgjCPEuuqvlLC', '123456', NULL, NULL, '2021-03-05 17:15:53'),
(141, 2, 'GOVIND THAPA', 'PSR', '2019-12-02', 'DELHI-6 -B-', '14524GOVIND', 'Delhi', 'govind26061987@gmail.com', '9871158939', NULL, '$2y$10$M3fNIFshlANlCrwpuU6CxOvBvVPPeDiLBHGGN.LoBSTg8gjKvLnhG', '123456', NULL, NULL, '2021-03-05 17:23:45'),
(142, 2, 'KRISHNA MURARI MISHRA', 'PSR', '2019-10-11', 'DELHI-1 -B-', '14359KRISHNA', 'Delhi', 'mishrakrishanmurari@gmail.com', '9958422043', NULL, '$2y$10$f4qZByb.AQBKDXAB2y0xaucHrXd8DSOuq2.paB/FtCH8QNe6engxy', '123456', NULL, NULL, '2021-03-05 17:58:50'),
(143, 2, 'AJAY', 'PSR', '2017-12-25', 'HISSAR -B-', '10182AJAY', 'HARYANA', 'ajaykhatak92@gmail.com', '8295469160', NULL, '$2y$10$Q87LDKNx/hhC2PtMnIDbpue45p/4ttgJEKfDG4D1Xaok/NDoffrZG', '123456', 'eHY9bWsnqmI:APA91bEKEKEEXAZsfU-LeJLCstVEox2MbbqlPbaRbwbroS4sLtz2iAely5jBx2DTsP9MupQrV7O-VSVzlhVAIHw0p8nj7GiKXz12m-x-b8IR4dpvWQ_gEJy5p3OxrD74re3tR2rjXYmM', NULL, '2021-03-03 17:24:14'),
(144, 2, 'ASHOK KUMAR', 'PSR', '2006-04-01', 'UKLANA -B-', '3392ASHOK', 'HARYANA', 'ashokbanga85@gmail.com', '9812332203', NULL, '$2y$10$gRsrfDTnev3bzA6Uh/Fc4ujUNzBMFqU2X0/oo.tyNL3prnXMkIjqG', '123456', NULL, NULL, '2021-03-03 18:07:35'),
(145, 2, 'HARISH KUMAR (BENECEA)', 'FSE/FSO', '2019-09-02', 'ROHTAK -B-', '14190HARISH', 'HARYANA', 'harisharora013@gmail.com', '9354312036', NULL, '$2y$10$wlX4BxUeAMYdgNkMQk804.QhtCcLZVvLhcMe8KgI6Cmh6xWm9URXu', '123456', NULL, NULL, '2021-03-05 17:26:47'),
(146, 2, 'NARESH KUMAR', 'PSR', '11/08/2014', 'SIRSA -B-', '3444NARESH', 'HARYANA', 'nareshmehta77@gmail.com', '8816886865', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(147, 2, 'OMBIR SINGH.', 'PSR', '25/11/2019', 'BHIWANI -B-', '14503OMBIR', 'HARYANA', 'ombirsingh018@gmail.com', '9991591620', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(148, 2, 'PARVEEN KUMAR (DELHI)', 'PSR', '16/05/2017', 'FARIDABAD -B-', '9081PARVEEN', 'HARYANA', 'parveenkumardada@gmail.com', '9115550236', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(149, 2, 'SATNAM SINGH (PANIPAT)', 'PSR', '25/05/2019', 'PANIPAT -B-', '13785SATNAM', 'HARYANA', 'satnamsingh0270@gmail.com', '9050226120', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(150, 2, 'DINESH DOGRA', 'ASM', '2001-06-11', 'UNA -B-', '3410DINESH', 'HIMACHAL PRADESH', 'dograsdh@gmail.com', '9418258718', NULL, '$2y$10$DSwzIThc7ND8U5TaVeSg9Ol7dajWu5yUgdShc6Ooc4EDk6.K19yza', '123456', NULL, NULL, '2021-03-05 17:11:37'),
(151, 2, 'JAVED KHAN', 'PSR', '2008-01-02', 'Ghumarwin -B-', '3423JAVED', 'HIMACHAL PRADESH', 'javedsdh@gmail.com', '9459097676', NULL, '$2y$10$4UcEYsjWK2D92MTAPP9JWe6tCyYojKhJvEKu7LSLI40C3zRWoHAra', '123456', NULL, NULL, '2021-03-05 17:42:16'),
(152, 2, 'MADAN LAL SHARMA', 'PSR', '2008-12-02', 'JASSUR -B-', '3431MADAN', 'HIMACHAL PRADESH', 'madanlalsharma43@gmail.com', '9418769695', NULL, '$2y$10$HweQdflJxWUxKPXtpUiz9Owjf//CTyMR4zmfknyM7gbPTysU0Jf92', '123456', NULL, NULL, '2021-03-05 18:04:03'),
(153, 2, 'MOHD. NADEEM', 'PSR', '23/11/2019', 'NAHAN -B-', '14486MOHD', 'HIMACHAL PRADESH', 'nadeemkn437@gmail.com', '9418649676', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(154, 2, 'NITIN KAPOOR', 'PSR', '08/02/2008', 'KANGRA -B-', '3451NITIN', 'HIMACHAL PRADESH', 'nitinkapoor70@gmail.com', '0941816261', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(155, 2, 'PRAKASH CHAND', 'PSR', '16/12/2019', 'MANDI -B-', '14558PRAKASH', 'HIMACHAL PRADESH', 'pchand095@gmail.com', '8350862901', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(156, 2, 'RAMEEZ MOHAMMD', 'PSR', '01/10/2012', 'NALAGARH -B-', '3470RAMEEZ', 'HIMACHAL PRADESH', 'mrameez85@gmail.com', '7018633373', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(157, 2, 'SURAJ CHAUHAN', 'PSR', '09/08/2019', 'SHIMLA -B-', '14100SURAJ', 'HIMACHAL PRADESH', 'csuraj377.sc@gmail.com', '8894588004', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(158, 2, 'VIKAS SHARMA', 'PSR', '10/05/2018', 'UNA -B-', '11503VIKAS', 'HIMACHAL PRADESH', 'vikaspandit37@yahoo.in', '8627856007', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(159, 2, 'VINOD KUMAR.', 'PSR', '02/01/2018', 'SOLAN -B-', '10239VINOD', 'HIMACHAL PRADESH', 'vinodchauhan095@gmail.com', '9418662143', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(160, 2, 'NEERAJ KUMAR (JAMMU)', 'PSR', '03/07/2018', 'JAMMU -B-', '11664NEERAJ', 'J & K', 'nks.2016120@gmail.com', '9419290120', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(161, 2, 'ANUPAM MISHRA', 'ASM', '2016-12-15', 'DHANBAD -B-', '7415ANUPAM', 'JHARKHAND', 'mishraanupam2017@gmail.com', '7547000808', NULL, '$2y$10$77R7E9ooAz3kdX/p6GNSi.y...H7s3qY8DCQnLnAUhbRwZgnkXsa.', '123456', NULL, NULL, '2021-03-03 17:59:31'),
(162, 2, 'ASHOK KUMAR HZB', 'PSR', '2017-01-16', 'HAZARIBAGH-JHUMRI TALLIYA-B-', '7571ASHOK', 'JHARKHAND', 'ashokkumarhzb2015@gmail.com', '9709087756', NULL, '$2y$10$rB1hCRmxEwx.fqpuVSOEpOT3FueFp.u7fZyOioWVVvVqAAs1BDXyC', '123456', NULL, NULL, '2021-03-03 18:12:28'),
(163, 2, 'MITHLESH KUMAR JHA', 'PSR', '20/12/2016', 'DEOGHAR -B-', '7433MITHLESH', 'JHARKHAND', 'mitdeoghar@gmail.com', '8294122278', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(164, 2, 'MOHD. IKLAKH HUSSAIN', 'PSR', '07/11/2019', 'KODARMA -B-', '14438MOHD', 'JHARKHAND', 'mahikaifkhan786@gmail.com', '9122584185', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(165, 2, 'RAJEEV KUMAR MISHRA', 'PSR', '19/03/2018', 'DHANBAD -B-', '10376RAJEEV', 'JHARKHAND', 'mishrarajeev.2011@gmail.com', '8340288141', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(166, 2, 'RAJESH KUMAR PANDEY.', 'ASM', '19/07/2019', 'KODARMA -B-', '14031RAJESH', 'JHARKHAND', 'rajeshpandey.193@rediffmail.com', '8051075333', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(167, 2, 'RAKESH KUMAR PANDEY', 'PSR', '03/04/2019', 'DALTONGANJ -B-', '13386RAKESH', 'JHARKHAND', 'rakeshpandey1191@gmail.com', '7547000804', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(168, 2, 'RAMANUJ DUBEY', 'PSR', '19/12/2019', 'RANCHI -B-', '14567RAMANUJ', 'JHARKHAND', 'ramanujdubey2012@gmail.com', '9135184082', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(169, 2, 'VISHAL SINGH', 'PSR', '05/09/2018', 'JAMSHEDPUR -B-', '11812VISHAL', 'JHARKHAND', 'vishalsinghpj@rediffmail.com', '7004704166', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(170, 2, 'AIN KUMAR SIMONIYA', 'PSR', '2016-12-06', 'CHHINDWARA -B-', '7143AIN', 'MADHYA PRADESH', 'ain.kumar86@gmail.com', '9516682453', NULL, '$2y$10$Q1UJOeQRnO1d6rQ12q0Y5.4cFzdDJluUakJ0x6XhfxI6Z9NKNK4Vq', '123456', NULL, NULL, '2021-03-03 17:22:31'),
(171, 2, 'AJAY MISHRA', 'PSR', '2019-01-01', 'SHAHDOL - B-', '12138AJAY', 'MADHYA PRADESH', 'ajay.varunchanchal@gmail.com', '9826462280', NULL, '$2y$10$xfdjJwDRKTYelQkO7vk0n.Pjr0IxR9zW9OovgayZLLVOwPx8OUTa2', '123456', 'coNuvaAOUpw:APA91bEFc15Qitzk0bC_BGiMNYiode9SJ5ywOt6RCVcRt0HWIdRLCSRGLs-FdOuAv5QXm81Achu-Hx-5bm7K7VlPCUCmb3DNFK9QfsHYOL-DvXyiGrbq9fM3hCtZUiT5cunusYhomrjP', NULL, '2021-03-03 17:29:11'),
(172, 2, 'AJAY SHUKLA', 'PSR', '2016-07-18', 'REWA -B-', '6646AJAY', 'MADHYA PRADESH', 'rewa.ajayshukla@gmail.com', '8109255578', NULL, '$2y$10$SdfYraKYQ1W.shis8MJA0.knmspspRoP0eTc2SvZ89BwWzlRbfGL2', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-03 15:38:33'),
(173, 2, 'AJAY YADAV', 'PSR', '2019-01-25', 'BETUL -B-', '12203AJAY', 'MADHYA PRADESH', 'yadavajay714@gmail.com', '7583889728', NULL, '$2y$10$wTjvUc53kjtSxDV0aEGYVu9Cv00zkBgvXOSOnmIePdOZp0G4y.G.C', '123456', NULL, NULL, '2021-03-03 17:30:50'),
(174, 2, 'ANKIT JAISWAL', 'PSR', '2019-11-08', 'INDORE -B-', '14454ANKIT', 'MADHYA PRADESH', 'jaiswal.ankit67@gmail.com', '8959447067', NULL, '$2y$10$fhSbdLKpuCIyJwlN2mD4BeGtOlN75DuXvAyCsho2n3i2XcKfMf9By', '123456', NULL, NULL, '2021-03-03 17:51:24'),
(175, 2, 'JEETENDRA KIRAR', 'PSR', '2018-05-15', 'GUNA -B-', '11515JEETENDRA', 'MADHYA PRADESH', 'jeetendrakirar021@gmail.com', '9993117114', NULL, '$2y$10$9m2WWcmXD1RAs0es6/HYF.41wDSKGOn6X6txgYkfz53tg5nrBjSme', '123456', NULL, NULL, '2021-03-05 17:43:59'),
(176, 2, 'MIRZA AKHTAR BEG', 'PSR', '01/06/2019', 'DAMOH -B-', '13815MIRZA', 'MADHYA PRADESH', 'akhtarmirza1991@gmail.com', '9753506952', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(177, 2, 'NARESH CHANDRAVANSHI', 'PSR', '04/06/2018', 'BHOPAL -B-', '11584NARESH', 'MADHYA PRADESH', 'nk2chandravanshi@gmail.com', '8878530229', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(178, 2, 'PANKAJ SHARMA (GWALIOR)', 'PSR', '06/10/2017', 'GWALIOR - Morena -B-', '9912PANKAJ', 'MADHYA PRADESH', 'pankajsharma41115@gmail.com', '9754285613', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(179, 2, 'RANJEET SINGH KOHALI', 'PSR', '17/04/2019', 'SATNA -B-', '13471RANJEET', 'MADHYA PRADESH', 'ranjeetsingh13071989@gmail.com', '9981853434', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(180, 2, 'SANJAY DAKHALE', 'PSR', '01/10/2019', 'UJJAIN -B-', '14310SANJAY', 'MADHYA PRADESH', 'dakhalesanjay@gmail.com', '9406886388', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(181, 2, 'SANJEEV PAL', 'DRSM', '18/04/2019', 'JABALPUR -B-', '13480SANJEEV', 'MADHYA PRADESH', 'sanjeevpal.sdl@gmail.com', '9826509035', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(182, 2, 'SARVESHWAR NATH SHRIVASTAVA', 'FSE/FSO', '24/09/2019', 'GWALIOR - Morena -B-', '14283SARVESHWAR', 'MADHYA PRADESH', 'sarveshshrivastava81@gmail.com', '7898384643', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(183, 2, 'SAURABH TIWARI', 'ASM', '24/09/2019', 'BHOPAL -B-', '14273SAURABH', 'MADHYA PRADESH', 'saurabhtiwari327@gmail.com', '8878052506', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(184, 2, 'SHIWENDRA KUSHWAHA', 'PSR', '25/03/2019', 'JABALPUR -B-', '12362SHIWENDRA', 'MADHYA PRADESH', 'shiwendra.kushwaha@yahoo.com', '9713765082', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(185, 2, 'VINAY SONI', 'PSR', '01/08/2019', 'CHHATERPUR -B-', '14066VINAY', 'MADHYA PRADESH', 'vnsoni7@gmail.com', '9074032381', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(186, 2, 'GAJENDRA DALBEHERA', 'PSR', '2017-07-07', 'SAMBALPUR -B-', '9351GAJENDRA', 'ORISSA', 'gajendradalbehera@rediffmail.com', '9115550218', NULL, '$2y$10$Q3AdVMVGWh54MuiLAXT6Fe3yEeuh.pXGuW7vrwt/t7XTdz5nIChhC', '123456', NULL, NULL, '2021-03-05 17:13:10'),
(187, 2, 'LAMBODARA PANIGRAHI', 'PSR', '2017-04-17', 'BALANGIR -B-', '8961LAMBODARA', 'ORISSA', 'ldpanigrahi1234@gmail.com', '9437706486', NULL, '$2y$10$pqtT6ZIPq5NP2yNhssrWceg8UmARbOfidax1PadJwYyvnpgPP7QIe', '123456', NULL, NULL, '2021-03-05 18:01:41'),
(188, 2, 'NARAYAN BARIK', 'PSR', '07/01/2011', 'BHUBNESHWAR -B-', '3338NARAYAN', 'ORISSA', 'narayan.barik158@gmail.com', '9861469390', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(189, 2, 'PARIKSHITA PANDA', 'PSR', '23/07/2016', 'CUTTACK -B-', '6656PARIKSHITA', 'ORISSA', 'pkpanda2u@gmail.com', '9692161670', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(190, 2, 'PRADEEP KUMAR NEPAK', 'PSR', '19/12/2017', 'BEHRAMPUR -B-', '10183PRADEEP', 'ORISSA', 'pradeep.nepak@gmail.com', '9115550217', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49');
INSERT INTO `users` (`id`, `role_id`, `name`, `staff_type`, `DOJ`, `head_qtr`, `user_id`, `state`, `email`, `mobile`, `email_verified_at`, `password`, `normalPassword`, `remember_token`, `created_at`, `updated_at`) VALUES
(191, 2, 'RAJ KISHORE SENAPATI', 'DRSM', '03/06/2010', 'CUTTACK -B-', '3342RAJ', 'ORISSA', 'senapatirajkishore@gmail.com', '9861170164', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(192, 2, 'UPENDRA SINGH', 'PSR', '03/01/2014', 'BALASORE -B-', '3355UPENDRA', 'ORISSA', 'upen8002@gmail.com', '9778362467', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(193, 2, 'AKSHAY KUMAR! LUDHIANA', 'PSR', '2016-12-06', 'LUDHIANA -B-', '7351AKSHAY', 'PUNJAB', 'akshaykumar2600@gmail.com', '9988732600', NULL, '$2y$10$LrfudsWKTMp4WuREoWxFKO21/XVO5vm16Kymm2039tOyPycOz9Nzi', '123456', NULL, NULL, '2021-03-03 17:35:25'),
(194, 2, 'ANKUR BHALLA', 'PSR', '2017-05-01', 'JALANDHAR -B-', '9053ANKUR', 'PUNJAB', 'ankurbhalla12@gmail.com', '7707902319', NULL, '$2y$10$f91vJWADiOTyCIKqvFfY0elC.ta2wmfqmHvtfg9inrFVmktjwD6ju', '123456', NULL, NULL, '2021-03-03 17:53:13'),
(195, 2, 'ANUP KUMAR (CHANDIGARH)', 'PSR', '2019-05-04', 'CHANDIGARH -B-', '13637ANUP', 'PUNJAB', 'anup.mona7feb@gmail.com', '9855995056', NULL, '$2y$10$UBv/4Kg0Hv/TeAshA4ZwbOW3j.p13cOcB2hgYamnnscXq8EZldgQ2', '123456', NULL, NULL, '2021-03-03 17:57:54'),
(196, 2, 'ARUN KAPOOR', 'PSR', '2020-03-21', 'AMRITSAR -B-', '14872ARUN', 'PUNJAB', 'arunkapoor9404362@gmail.com', '9988636305', NULL, '$2y$10$U.5vQ1wQjT7zS85y6GIqr.8fxOZ9ILpriu3Ad2uxWYrHpONpe9Rsi', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-03 18:01:58'),
(197, 2, 'BHARAT SHARMA', 'PSR', '2014-05-05', 'AMRITSAR -B-', '3396BHARAT', 'PUNJAB', 'bs85831@gmail.com', '8558822652', NULL, '$2y$10$7f4Q5S9rLtbR2f/lCfOsDeLBg9773lpPAW3OP8ZJuNmu3PhMN3Z06', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', NULL, '2021-03-05 14:36:29'),
(198, 2, 'HARJIT SINGH', 'PSR', '2017-03-06', 'KHANNA -B-', '7761HARJIT', 'PUNJAB', 'harjitsdh@yahoo.com', '9592947138', NULL, '$2y$10$EU1Vk.QqRPGcrzKpcrcMpO2w6M5SN8.i9tOiNWdQyzt6RD0zXvfKa', '123456', NULL, NULL, '2021-03-05 17:27:35'),
(199, 2, 'JASPAL SINGH', 'PSR', '2019-04-01', 'BATALA -B-', '13382JASPAL', 'PUNJAB', 'singhjaspal099@gmail.com', '9041176411', NULL, '$2y$10$9/6DAPld4WDOgy5u6edoDu9L43G1AZaXCfh547mwyzjZFDIJXqdjm', '123456', NULL, NULL, '2021-03-05 17:32:11'),
(200, 2, 'JASPREET SINGH', 'PSR', '2001-02-11', 'SANGRUR -B-', '3422JASPREET', 'PUNJAB', 'jaspreetsangrur@rediffmail.com', '8558802668', NULL, '$2y$10$LjONk7BALF1WRpDyKfy07el9CT71kRWT89w1ATtR4inf.xtNDATXO', '123456', NULL, NULL, '2021-03-05 17:37:06'),
(201, 2, 'LALIT MOHAN', 'PSR', '2019-07-18', 'PHAGWARA -B-', '14026LALIT', 'PUNJAB', 'lalitmohan71@yahoo.com', '9646452156', NULL, '$2y$10$jLM3r.zt0dBK5BSrc95KOOe7F1dhod.PHLfeAglaYRTEaNQk5g3qq', '123456', NULL, NULL, '2021-03-05 18:00:35'),
(202, 2, 'MANOJ KUMAR!MOGA', 'PSR', '2014-11-15', 'MOGA -B-', '3613MANOJ', 'PUNJAB', 'manojhanda777@gmail.com', '9592227009', NULL, '$2y$10$vMKpFm.BetL8EP7a.A6xjub.E5x8NV/2mKwi8ujsCyP1pk3SixH9G', '123456', NULL, NULL, '2021-03-05 18:08:28'),
(203, 2, 'MANPREET SINGH', 'PSR', '06/08/2018', 'JAGROAN -B-', '11755MANPREET', 'PUNJAB', 'chsukhman@gmail.com', '9878608845', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(204, 2, 'NIKHIL SINGH CHAUHAN.', 'ASM', '10/10/2019', 'CHANDIGARH -B-', '14347NIKHIL', 'PUNJAB', 'chauhannikhil190@gmail.com', '7888704899', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(205, 2, 'PARDEEP SOOD', 'PSR', '28/11/2007', 'PATIALA -B-', '3453PARDEEP', 'PUNJAB', 'sood_pardeep2008@yahoo.com', '8558802667', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(206, 2, 'PARMINDER SINGH', 'ASM', '02/12/2013', 'BATALA -B-', '3454PARMINDER', 'PUNJAB', 'parmindersingh609@yahoo.com', '8558822651', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(207, 2, 'RAJ KUMAR SAINI', 'PSR', '14/04/2008', 'HOSHIARPUR -B-', '3461RAJ', 'PUNJAB', 'rajkumar.saini976@gmail.com', '9872103203', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(208, 2, 'RAJESH NARANG', 'RSM', '04/01/1995', 'JALANDHAR -B-', '3464RAJESH', 'PUNJAB', 'narangsdh@yahoo.co.in', '9815948231', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(209, 2, 'RETAISH KUMAR', 'PSR', '02/02/2011', 'FEROZPUR -B-', '3477RETAISH', 'PUNJAB', 'retaishkumar.rk@gmail.com', '8558802664', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(210, 2, 'SANJAY KUMAR', 'PSR', '16/04/2012', 'BATHINDA -B-', '3482SANJAY', 'PUNJAB', 'sanjayyadav972@gmail.com', '8558802663', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(211, 2, 'TEJINDER SINGH', 'ASM', '01/02/2000', 'BATHINDA -B-', '3501TEJINDER', 'PUNJAB', 'tejinder0809@yahoo.com', '8558802669', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(212, 2, 'VED SAHAI', 'ASM', '15/05/2017', 'PHAGWARA -B-', '9083VED', 'PUNJAB', 'ved.sahai@yahoo.com', '09910572580', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(213, 2, 'VINOD KUMAR..', 'PSR', '13/05/2019', 'KOTKAPURA -B-', '13698VINOD', 'PUNJAB', 'vk6310526@gmail.com', '8847262314', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(214, 2, 'AKHTER ALI', 'PSR', '2015-11-06', 'KOTA -B-', '3378AKHTER', 'RAJASTHAN', 'akhterali9838@gmail.com', '9887802234', NULL, '$2y$10$eW0GwsmkJ.tJmww94wOOcu5r1/2A00h3UfUq9xOOAkzy.330UXQ9G', '123456', NULL, NULL, '2021-03-03 17:34:26'),
(215, 2, 'ASHOK KUMAR PAREEK', 'PSR', '2018-10-15', 'BHILWARA -B-', '11953ASHOK', 'RAJASTHAN', 'apareek305@gmail.com', '9829796439', NULL, '$2y$10$kgOQe2dtF0A5nXYlmhbQfeDlHL6wcRgNAHfe9Ylq.3RbsyTamW2KS', '123456', NULL, NULL, '2021-03-03 18:14:12'),
(216, 2, 'BHOMA RAM', 'PSR', '2019-10-07', 'JODHPUR -B-', '14340BHOMA', 'RAJASTHAN', 'bhomaramsaini17@gmail.com', '7976129720', NULL, '$2y$10$A2AQzgcY8iFwVawHbg1jOuMo2BKrqBWxYDqgGJA3gGH5ysuI05W2i', '123456', NULL, NULL, '2021-03-05 16:23:39'),
(217, 2, 'CHANDRA PRAKASH', 'PSR', '2017-05-08', 'AJMER -B-', '9069CHANDRA', 'RAJASTHAN', 'chandra.prakash0606@gmail.com', '9799937030', NULL, '$2y$10$sekehHszu.ilnkRMcPYElOEUYxbVZ9XMhgmIdJqAyopT1bajLl2Ue', '123456', NULL, NULL, '2021-03-05 16:36:41'),
(218, 2, 'LAVISH GUMBER.', 'PSR', '2019-10-10', 'SRIGANGANAGAR -B-', '14353LAVISH', 'RAJASTHAN', 'lavishgumber92@gmail.com', '7891064964', NULL, '$2y$10$5NUCKGgheXczKRoSNS0W3e7M7ZhQkQ9m9A.5J3yTBXhpKMKqyx6bS', '123456', NULL, NULL, '2021-03-05 18:02:32'),
(219, 2, 'MANOJ KUMAR SAINI', 'PSR', '2019-09-18', 'SHAHPURA-B', '14257MANOJ', 'RAJASTHAN', 'kumarsaini54@gmail.com', '9887003283', NULL, '$2y$10$aEBO..JL.Cw4ADAPvRaD8OHkeCB2LbRemwC7MbmGe4RfgiHzSBLJC', '123456', NULL, NULL, '2021-03-05 18:07:11'),
(220, 2, 'MANOJ KUMAR.', 'PSR', '2020-01-06', 'JHUNJHUNU - B -', '14612MANOJ', 'RAJASTHAN', 'manojkumar901510@gmail.com', '9610367300', NULL, '$2y$10$A/FSMG0MmlpfOWiZN.oHmO6hSWy69b8VF2MvqoUs5FslhZXeyH0UK', '123456', NULL, NULL, '2021-03-05 18:11:32'),
(221, 2, 'MANOJ SHARMA (JODHPUR)', 'SR.ASM', '2018-07-16', 'JODHPUR -B-', '11702MANOJ', 'RAJASTHAN', 'manoj.rksharma@gmail.com', '09672371140', NULL, '$2y$10$c8obaYodnpUwXTFu263RreLYwUfcjlgfi8rmvbOKH1LlMvEKuiu42', '123456', NULL, NULL, '2021-03-05 18:35:31'),
(222, 2, 'NITIN SAXENA', 'SR.ASM', '19/08/2019', 'JAIPUR', '14128NITIN', 'RAJASTHAN', 'nitinsaxena74@gmail.com', '9829767599', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(223, 2, 'RAJENDRA SHRIMALI', 'PSR', '06/05/2013', 'UDAIPUR -B-', '3463RAJENDRA', 'RAJASTHAN', 'shrimalirajendra@yahoo.in', '7665001041', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(224, 2, 'SHASHIKANT SHARMA', 'PSR', '01/02/2018', 'JAIPUR', '10292SHASHIKANT', 'RAJASTHAN', 'shashikants860@gmail.com', '8107275349', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(225, 2, 'SITA RAM MEGHWAL', 'PSR', '20/11/2017', 'SIKAR -B-', '10042SITA', 'RAJASTHAN', 'sitasangliya8@gmail.com', '9887525571', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(226, 2, 'SUNIL KUMAR (JAIPUR)', 'PSR', '01/06/2018', 'JAIPUR', '11551SUNIL', 'RAJASTHAN', 'sunilgurjar500@gmail.com', '9521885556', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(227, 2, 'SURAJ MAL KUMAWAT', 'ASM', '16/11/2019', 'JAIPUR', '14460SURAJ', 'RAJASTHAN', 'skmlan@yahoo.co.in', '9983091692', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(228, 2, 'DHANANJAY GHOSH', 'PSR', '2020-01-21', 'JALPAIGURI-B-', '14674DHANANJAY', 'WEST BENGAL', 'joyghosh201415@gmail.com', '9733121268', NULL, '$2y$10$Pf2YJqtXJVVR2QxZf2wtk.UJ2aNQH8IXx9td7a.T3ADf3Gb7RlR.S', '123456', NULL, NULL, '2021-03-05 16:49:59'),
(229, 2, 'PARAG RENU HALDAR', 'PSR', '22/01/2020', 'DIAMOND HARBOUR-B-', '14676PARAG', 'WEST BENGAL', 'suvojithaldar3@gmail.com', '9046248045', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(230, 2, 'SAIFUL MONDAL', 'PSR', '20/01/2020', 'KOLKATTA -B-', '14672SAIFUL', 'WEST BENGAL', 'saifulmondal1981@gmail.com', '9734103638', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(231, 2, 'SOUTIK GHOSH', 'ASM', '22/01/2020', 'KOLKATTA -B-', '14675SOUTIK', 'WEST BENGAL', 'soutik.ghosh@yahoo.com', '9339163924', NULL, '$2y$12$sbY0HXjfGs.Iug0cGt8R/udY5mu7oc/SMRMgWrrPW4XByQAZUh2tq', '123456789', NULL, NULL, '2020-03-05 12:42:49'),
(238, 2, 'test', 'PSR', '02/02/2020', 'BANDA -E-', '14471ABHAYEE', 'UTTAR PRADESH', 'test@gmail.com', '9984000889', NULL, '$2y$10$L0.9x9FmE2ZRhTwn6WLGbOS8IyhGplG5XMrQL3o4Haaugx6TY.XyC', '123456', NULL, '2020-09-15 02:13:51', '2020-09-15 02:13:51'),
(241, 2, 'ROHIT MAHAJAN', 'PSR', '2014-09-05', 'Amritsar', '3558ROHIT', 'punjab', 'janatrohit1418@gmail.com', '9915711622', NULL, '$2y$10$ycf0qmbzwwVZz1eMMjoOXen0TFq4fPKNXred5bWbqLUv/OkNIdxBC', '123456', 'enq5D1mEQFedIOMoas0O81:APA91bEgWS1JxnAhuaEMYwQtmBmY2qxaxyyHaWZ5sLF7m3WeS3r1v0YKJnPeFtwKvX3ToZhL9NAYx5Q7JhAyMloKZ-718Aahp6-hDG0U2_5vOE8vZjLNzYD2K4zvN8aCjWrwGFr6YYLI', '2021-03-03 13:25:34', '2021-03-03 17:45:13'),
(243, 2, 'VIKRAM SINGH', 'PSR', '2014-05-11', 'ROORKE', '3579VIKRAM', 'UTTRAKHAND', 'vikramnadiyan1988@gmail.com', '7417411258', NULL, '$2y$10$7sP.mSXP8w6fkaQz.Npcqe77Iws33VWrsstxZvN1T7OC9pDm/4Dl2', '123456', NULL, '2021-03-03 16:08:39', '2021-03-03 16:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'created', 'users', 2, '2020-02-12 06:27:36', '2020-02-12 06:27:36'),
(2, 2, 'created', 'divisions', 1, '2020-02-12 06:35:19', '2020-02-12 06:35:19'),
(3, 2, 'created', 'divisions', 2, '2020-02-12 23:53:13', '2020-02-12 23:53:13'),
(4, 1, 'created', 'users', 3, '2020-02-13 00:04:33', '2020-02-13 00:04:33'),
(5, 1, 'created', 'users', 4, '2020-02-13 00:34:00', '2020-02-13 00:34:00'),
(6, 1, 'created', 'users', 6, '2020-02-13 00:35:39', '2020-02-13 00:35:39'),
(7, 1, 'updated', 'users', 4, '2020-02-13 00:59:46', '2020-02-13 00:59:46'),
(8, 1, 'updated', 'users', 6, '2020-02-13 01:08:26', '2020-02-13 01:08:26'),
(9, 1, 'updated', 'users', 4, '2020-02-13 01:21:21', '2020-02-13 01:21:21'),
(10, 1, 'updated', 'users', 2, '2020-02-13 01:21:33', '2020-02-13 01:21:33'),
(11, 1, 'updated', 'users', 3, '2020-02-13 01:21:42', '2020-02-13 01:21:42'),
(12, 1, 'created', 'product', 1, '2020-02-13 01:46:45', '2020-02-13 01:46:45'),
(13, 1, 'created', 'product', 2, '2020-02-13 03:58:27', '2020-02-13 03:58:27'),
(14, 1, 'updated', 'product', 2, '2020-02-13 05:06:18', '2020-02-13 05:06:18'),
(15, 1, 'updated', 'product', 2, '2020-02-13 05:07:37', '2020-02-13 05:07:37'),
(16, 1, 'updated', 'product', 2, '2020-02-13 05:08:23', '2020-02-13 05:08:23'),
(17, 1, 'updated', 'product', 2, '2020-02-13 05:14:17', '2020-02-13 05:14:17'),
(18, 1, 'updated', 'product', 2, '2020-02-13 05:15:39', '2020-02-13 05:15:39'),
(19, 1, 'updated', 'product', 2, '2020-02-13 05:16:12', '2020-02-13 05:16:12'),
(20, 1, 'updated', 'product', 2, '2020-02-13 05:17:45', '2020-02-13 05:17:45'),
(21, 1, 'updated', 'product', 2, '2020-02-13 05:17:52', '2020-02-13 05:17:52'),
(22, 1, 'created', 'notification', 1, '2020-02-21 13:09:33', '2020-02-21 13:09:33'),
(23, 1, 'created', 'notification', 2, '2020-02-21 16:42:28', '2020-02-21 16:42:28'),
(24, 1, 'created', 'notification', 3, '2020-02-21 17:00:58', '2020-02-21 17:00:58'),
(25, 1, 'created', 'notification', 4, '2020-02-21 17:01:11', '2020-02-21 17:01:11'),
(26, 1, 'created', 'notification', 5, '2020-02-21 17:02:10', '2020-02-21 17:02:10'),
(27, 1, 'created', 'notification', 6, '2020-02-21 17:33:14', '2020-02-21 17:33:14'),
(28, 1, 'created', 'notification', 7, '2020-02-21 18:13:48', '2020-02-21 18:13:48'),
(29, 1, 'created', 'notification', 8, '2020-02-21 18:14:00', '2020-02-21 18:14:00'),
(30, 1, 'created', 'notification', 9, '2020-02-21 18:14:49', '2020-02-21 18:14:49'),
(31, 1, 'created', 'notification', 10, '2020-02-21 18:15:27', '2020-02-21 18:15:27'),
(32, 1, 'created', 'notification', 11, '2020-02-21 18:16:00', '2020-02-21 18:16:00'),
(33, 1, 'created', 'notification', 12, '2020-02-21 18:28:01', '2020-02-21 18:28:01'),
(34, 1, 'created', 'notification', 13, '2020-02-21 18:29:52', '2020-02-21 18:29:52'),
(35, 1, 'created', 'circulus', 1, '2020-02-29 13:39:33', '2020-02-29 13:39:33'),
(36, 1, 'created', 'pricelist', 1, '2020-02-29 13:59:17', '2020-02-29 13:59:17'),
(37, 1, 'created', 'circulus', 2, '2020-03-02 12:41:54', '2020-03-02 12:41:54'),
(38, 1, 'created', 'product', 3, '2020-03-02 13:11:15', '2020-03-02 13:11:15'),
(39, 1, 'created', 'product', 4, '2020-03-02 13:13:08', '2020-03-02 13:13:08'),
(40, 1, 'created', 'product', 5, '2020-03-02 13:13:33', '2020-03-02 13:13:33'),
(41, 1, 'created', 'product', 6, '2020-03-02 13:15:05', '2020-03-02 13:15:05'),
(42, 1, 'created', 'product', 7, '2020-03-02 13:16:48', '2020-03-02 13:16:48'),
(43, 1, 'created', 'product', 8, '2020-03-02 13:18:31', '2020-03-02 13:18:31'),
(44, 1, 'created', 'product', 9, '2020-03-02 13:19:28', '2020-03-02 13:19:28'),
(45, 1, 'created', 'product', 10, '2020-03-02 13:20:01', '2020-03-02 13:20:01'),
(46, 1, 'created', 'product', 11, '2020-03-02 13:24:07', '2020-03-02 13:24:07'),
(47, 1, 'created', 'product', 12, '2020-03-02 13:24:36', '2020-03-02 13:24:36'),
(48, 1, 'created', 'product', 13, '2020-03-02 13:24:51', '2020-03-02 13:24:51'),
(49, 1, 'created', 'product', 14, '2020-03-02 13:26:02', '2020-03-02 13:26:02'),
(50, 1, 'created', 'product', 15, '2020-03-02 13:28:17', '2020-03-02 13:28:17'),
(51, 1, 'created', 'product', 16, '2020-03-02 13:28:49', '2020-03-02 13:28:49'),
(52, 1, 'created', 'product', 17, '2020-03-02 13:30:30', '2020-03-02 13:30:30'),
(53, 1, 'created', 'product', 18, '2020-03-02 13:31:19', '2020-03-02 13:31:19'),
(54, 1, 'created', 'product', 19, '2020-03-02 13:31:54', '2020-03-02 13:31:54'),
(55, 1, 'created', 'product', 20, '2020-03-02 13:33:31', '2020-03-02 13:33:31'),
(56, 1, 'created', 'product', 21, '2020-03-02 13:35:18', '2020-03-02 13:35:18'),
(57, 1, 'created', 'product', 22, '2020-03-02 13:36:15', '2020-03-02 13:36:15'),
(58, 1, 'created', 'product', 23, '2020-03-02 13:37:02', '2020-03-02 13:37:02'),
(59, 1, 'created', 'product', 24, '2020-03-02 13:39:34', '2020-03-02 13:39:34'),
(60, 1, 'created', 'product', 25, '2020-03-02 13:40:27', '2020-03-02 13:40:27'),
(61, 1, 'created', 'product', 26, '2020-03-02 13:40:54', '2020-03-02 13:40:54'),
(62, 1, 'created', 'product', 27, '2020-03-02 13:41:34', '2020-03-02 13:41:34'),
(63, 1, 'created', 'product', 28, '2020-03-02 13:42:12', '2020-03-02 13:42:12'),
(64, 1, 'created', 'product', 29, '2020-03-02 13:42:51', '2020-03-02 13:42:51'),
(65, 1, 'created', 'product', 1, '2020-03-02 13:45:10', '2020-03-02 13:45:10'),
(66, 1, 'created', 'product', 2, '2020-03-02 13:49:31', '2020-03-02 13:49:31'),
(67, 1, 'created', 'product', 3, '2020-03-02 13:50:35', '2020-03-02 13:50:35'),
(68, 1, 'created', 'product', 4, '2020-03-02 13:50:56', '2020-03-02 13:50:56'),
(69, 1, 'created', 'product', 5, '2020-03-02 13:52:58', '2020-03-02 13:52:58'),
(70, 1, 'created', 'product', 6, '2020-03-02 13:55:00', '2020-03-02 13:55:00'),
(71, 1, 'created', 'product', 7, '2020-03-02 13:56:22', '2020-03-02 13:56:22'),
(72, 1, 'created', 'product', 1, '2020-03-02 14:21:26', '2020-03-02 14:21:26'),
(73, 1, 'created', 'product', 2, '2020-03-02 14:22:22', '2020-03-02 14:22:22'),
(74, 1, 'created', 'product', 1, '2020-03-02 14:24:21', '2020-03-02 14:24:21'),
(75, 1, 'created', 'product', 2, '2020-03-02 14:27:19', '2020-03-02 14:27:19'),
(76, 1, 'created', 'product', 1, '2020-03-02 14:31:46', '2020-03-02 14:31:46'),
(77, 1, 'created', 'product', 1, '2020-03-02 14:42:49', '2020-03-02 14:42:49'),
(78, 1, 'updated', 'users', 6, '2020-03-04 16:25:28', '2020-03-04 16:25:28'),
(79, 1, 'created', 'product', 2, '2020-03-04 17:05:31', '2020-03-04 17:05:31'),
(80, 1, 'created', 'product', 3, '2020-03-05 19:07:55', '2020-03-05 19:07:55'),
(81, 1, 'updated', 'users', 1, '2020-03-05 23:31:25', '2020-03-05 23:31:25'),
(82, 1, 'created', 'divisions', 3, '2020-03-07 14:24:14', '2020-03-07 14:24:14'),
(83, 1, 'created', 'users', 232, '2020-03-07 14:34:26', '2020-03-07 14:34:26'),
(84, 1, 'updated', 'users', 232, '2020-03-07 14:39:52', '2020-03-07 14:39:52'),
(85, 1, 'updated', 'users', 232, '2020-03-07 14:42:41', '2020-03-07 14:42:41'),
(86, 1, 'updated', 'users', 232, '2020-03-07 15:32:48', '2020-03-07 15:32:48'),
(87, 1, 'created', 'users', 233, '2020-03-07 16:15:19', '2020-03-07 16:15:19'),
(88, 1, 'created', 'users', 234, '2020-03-07 16:18:06', '2020-03-07 16:18:06'),
(89, 1, 'updated', 'users', 234, '2020-03-07 16:37:21', '2020-03-07 16:37:21'),
(90, 1, 'updated', 'users', 234, '2020-03-07 16:38:04', '2020-03-07 16:38:04'),
(91, 1, 'created', 'notification', 14, '2020-03-07 16:47:46', '2020-03-07 16:47:46'),
(92, 1, 'updated', 'users', 1, '2020-03-07 17:00:41', '2020-03-07 17:00:41'),
(93, 1, 'deleted', 'product', 1, '2020-03-07 17:06:07', '2020-03-07 17:06:07'),
(94, 1, 'deleted', 'product', 2, '2020-03-07 17:06:11', '2020-03-07 17:06:11'),
(95, 1, 'deleted', 'product', 3, '2020-03-07 17:06:16', '2020-03-07 17:06:16'),
(96, 1, 'created', 'circulus', 1, '2020-03-07 17:33:58', '2020-03-07 17:33:58'),
(97, 1, 'created', 'pricelist', 1, '2020-03-07 17:41:28', '2020-03-07 17:41:28'),
(98, 1, 'created', 'product', 4, '2020-03-07 18:24:32', '2020-03-07 18:24:32'),
(99, 1, 'created', 'product', 5, '2020-03-07 18:39:59', '2020-03-07 18:39:59'),
(100, 1, 'created', 'product', 1, '2020-03-07 18:46:53', '2020-03-07 18:46:53'),
(101, 1, 'created', 'product', 2, '2020-03-07 18:49:07', '2020-03-07 18:49:07'),
(102, 1, 'created', 'pricelist', 2, '2020-03-07 19:16:18', '2020-03-07 19:16:18'),
(103, 1, 'created', 'circulus', 2, '2020-03-07 19:27:42', '2020-03-07 19:27:42'),
(104, 1, 'updated', 'product', 1, '2020-03-07 19:46:50', '2020-03-07 19:46:50'),
(105, 1, 'created', 'users', 235, '2020-03-09 18:36:13', '2020-03-09 18:36:13'),
(106, 1, 'updated', 'users', 235, '2020-03-09 18:37:41', '2020-03-09 18:37:41'),
(107, 1, 'updated', 'users', 235, '2020-03-09 18:38:10', '2020-03-09 18:38:10'),
(108, 1, 'updated', 'divisions', 3, '2020-03-09 18:43:42', '2020-03-09 18:43:42'),
(109, 1, 'created', 'product', 3, '2020-03-09 19:20:34', '2020-03-09 19:20:34'),
(110, 1, 'created', 'product', 4, '2020-03-09 19:23:34', '2020-03-09 19:23:34'),
(111, 1, 'created', 'product', 5, '2020-03-09 19:25:06', '2020-03-09 19:25:06'),
(112, 1, 'created', 'product', 6, '2020-03-09 19:28:02', '2020-03-09 19:28:02'),
(113, 1, 'created', 'divisions', 4, '2020-03-09 19:34:06', '2020-03-09 19:34:06'),
(114, 1, 'created', 'product', 7, '2020-03-09 19:53:08', '2020-03-09 19:53:08'),
(115, 1, 'created', 'product', 8, '2020-03-09 19:58:48', '2020-03-09 19:58:48'),
(116, 1, 'created', 'product', 9, '2020-03-09 20:05:45', '2020-03-09 20:05:45'),
(117, 1, 'created', 'product', 10, '2020-03-09 20:09:46', '2020-03-09 20:09:46'),
(118, 1, 'created', 'product', 11, '2020-03-09 20:16:32', '2020-03-09 20:16:32'),
(119, 1, 'created', 'product', 12, '2020-03-09 20:16:34', '2020-03-09 20:16:34'),
(120, 1, 'created', 'product', 13, '2020-03-09 20:24:13', '2020-03-09 20:24:13'),
(121, 1, 'created', 'circulus', 3, '2020-03-09 20:29:25', '2020-03-09 20:29:25'),
(122, 1, 'created', 'pricelist', 3, '2020-03-09 20:33:08', '2020-03-09 20:33:08'),
(123, 1, 'updated', 'users', 232, '2020-03-09 20:33:57', '2020-03-09 20:33:57'),
(124, 1, 'updated', 'users', 232, '2020-03-09 20:34:27', '2020-03-09 20:34:27'),
(125, 1, 'created', 'notification', 15, '2020-03-09 20:38:52', '2020-03-09 20:38:52'),
(126, 1, 'deleted', 'product', 3, '2020-03-09 20:44:59', '2020-03-09 20:44:59'),
(127, 1, 'deleted', 'product', 4, '2020-03-09 20:44:59', '2020-03-09 20:44:59'),
(128, 1, 'deleted', 'product', 5, '2020-03-09 20:44:59', '2020-03-09 20:44:59'),
(129, 1, 'deleted', 'product', 6, '2020-03-09 20:44:59', '2020-03-09 20:44:59'),
(130, 1, 'deleted', 'product', 7, '2020-03-09 20:44:59', '2020-03-09 20:44:59'),
(131, 1, 'deleted', 'product', 8, '2020-03-09 20:44:59', '2020-03-09 20:44:59'),
(132, 1, 'deleted', 'product', 10, '2020-03-09 20:44:59', '2020-03-09 20:44:59'),
(133, 1, 'deleted', 'product', 12, '2020-03-09 20:45:07', '2020-03-09 20:45:07'),
(134, 1, 'deleted', 'product', 1, '2020-03-09 20:45:38', '2020-03-09 20:45:38'),
(135, 1, 'deleted', 'product', 2, '2020-03-09 20:45:38', '2020-03-09 20:45:38'),
(136, 1, 'deleted', 'product', 9, '2020-03-09 20:45:38', '2020-03-09 20:45:38'),
(137, 1, 'deleted', 'product', 11, '2020-03-09 20:45:38', '2020-03-09 20:45:38'),
(138, 1, 'deleted', 'product', 13, '2020-03-09 20:45:38', '2020-03-09 20:45:38'),
(139, 1, 'created', 'product', 14, '2020-03-09 20:51:30', '2020-03-09 20:51:30'),
(140, 1, 'created', 'product', 15, '2020-03-09 20:59:00', '2020-03-09 20:59:00'),
(141, 1, 'deleted', 'users', 3, '2020-03-09 21:04:56', '2020-03-09 21:04:56'),
(142, 1, 'deleted', 'users', 235, '2020-03-09 21:05:22', '2020-03-09 21:05:22'),
(143, 1, 'deleted', 'users', 234, '2020-03-09 21:10:53', '2020-03-09 21:10:53'),
(144, 1, 'deleted', 'divisions', 3, '2020-03-09 21:51:41', '2020-03-09 21:51:41'),
(145, 1, 'updated', 'divisions', 1, '2020-03-10 12:04:25', '2020-03-10 12:04:25'),
(146, 1, 'updated', 'divisions', 1, '2020-03-10 12:04:35', '2020-03-10 12:04:35'),
(147, 1, 'created', 'notification', 16, '2020-03-10 12:12:19', '2020-03-10 12:12:19'),
(148, 1, 'created', 'notification', 17, '2020-03-10 12:13:12', '2020-03-10 12:13:12'),
(149, 1, 'created', 'notification', 18, '2020-03-10 12:14:23', '2020-03-10 12:14:23'),
(150, 1, 'created', 'notification', 19, '2020-03-10 12:21:29', '2020-03-10 12:21:29'),
(151, 1, 'created', 'notification', 20, '2020-03-10 12:21:43', '2020-03-10 12:21:43'),
(152, 1, 'created', 'product', 16, '2020-03-10 13:47:30', '2020-03-10 13:47:30'),
(153, 1, 'created', 'product', 17, '2020-03-10 14:54:46', '2020-03-10 14:54:46'),
(154, 1, 'created', 'notification', 21, '2020-03-10 15:32:58', '2020-03-10 15:32:58'),
(155, 1, 'created', 'notification', 22, '2020-03-10 15:35:07', '2020-03-10 15:35:07'),
(156, 1, 'created', 'notification', 23, '2020-03-10 15:37:51', '2020-03-10 15:37:51'),
(157, 1, 'created', 'notification', 24, '2020-03-10 15:40:59', '2020-03-10 15:40:59'),
(158, 1, 'created', 'notification', 25, '2020-03-10 15:41:35', '2020-03-10 15:41:35'),
(159, 1, 'created', 'notification', 26, '2020-03-10 15:42:18', '2020-03-10 15:42:18'),
(160, 1, 'deleted', 'users', 232, '2020-03-10 16:56:49', '2020-03-10 16:56:49'),
(161, 1, 'created', 'users', 236, '2020-03-10 16:57:58', '2020-03-10 16:57:58'),
(162, 1, 'deleted', 'product', 16, '2020-03-10 16:59:53', '2020-03-10 16:59:53'),
(163, 1, 'deleted', 'product', 17, '2020-03-10 16:59:56', '2020-03-10 16:59:56'),
(164, 1, 'deleted', 'product', 14, '2020-03-10 17:00:04', '2020-03-10 17:00:04'),
(165, 1, 'deleted', 'product', 15, '2020-03-10 17:00:08', '2020-03-10 17:00:08'),
(166, 1, 'created', 'product', 18, '2020-03-10 17:06:33', '2020-03-10 17:06:33'),
(167, 1, 'deleted', 'product', 18, '2020-03-10 17:08:40', '2020-03-10 17:08:40'),
(168, 1, 'created', 'product', 19, '2020-03-10 17:10:09', '2020-03-10 17:10:09'),
(169, 1, 'created', 'notification', 27, '2020-03-10 17:11:16', '2020-03-10 17:11:16'),
(170, 1, 'created', 'product', 20, '2020-03-10 17:19:35', '2020-03-10 17:19:35'),
(171, 1, 'deleted', 'product', 20, '2020-03-10 17:29:42', '2020-03-10 17:29:42'),
(172, 1, 'created', 'product', 21, '2020-03-10 17:30:35', '2020-03-10 17:30:35'),
(173, 1, 'deleted', 'product', 21, '2020-03-10 17:36:52', '2020-03-10 17:36:52'),
(174, 1, 'created', 'product', 22, '2020-03-10 17:37:47', '2020-03-10 17:37:47'),
(175, 1, 'deleted', 'product', 22, '2020-03-10 19:13:49', '2020-03-10 19:13:49'),
(176, 1, 'created', 'notification', 28, '2020-03-10 19:21:31', '2020-03-10 19:21:31'),
(177, 1, 'created', 'product', 23, '2020-03-10 19:31:50', '2020-03-10 19:31:50'),
(178, 1, 'deleted', 'users', 236, '2020-03-10 19:36:26', '2020-03-10 19:36:26'),
(179, 1, 'created', 'divisions', 1, '2020-03-10 19:37:01', '2020-03-10 19:37:01'),
(180, 1, 'created', 'divisions', 2, '2020-03-10 19:37:59', '2020-03-10 19:37:59'),
(181, 1, 'created', 'divisions', 3, '2020-03-10 19:38:34', '2020-03-10 19:38:34'),
(182, 1, 'created', 'pricelist', 1, '2020-03-10 19:39:19', '2020-03-10 19:39:19'),
(183, 1, 'created', 'pricelist', 2, '2020-03-10 19:39:37', '2020-03-10 19:39:37'),
(184, 1, 'created', 'pricelist', 3, '2020-03-10 19:40:03', '2020-03-10 19:40:03'),
(185, 1, 'created', 'circulus', 1, '2020-03-10 19:40:34', '2020-03-10 19:40:34'),
(186, 1, 'created', 'circulus', 2, '2020-03-10 19:40:52', '2020-03-10 19:40:52'),
(187, 1, 'created', 'circulus', 3, '2020-03-10 19:41:11', '2020-03-10 19:41:11'),
(188, 1, 'created', 'users', 237, '2020-03-10 19:42:23', '2020-03-10 19:42:23'),
(189, 1, 'created', 'product', 1, '2020-03-10 19:47:26', '2020-03-10 19:47:26'),
(190, 1, 'updated', 'divisions', 1, '2020-03-10 19:48:32', '2020-03-10 19:48:32'),
(191, 1, 'created', 'product', 2, '2020-03-10 20:03:05', '2020-03-10 20:03:05'),
(192, 1, 'updated', 'users', 1, '2020-03-11 13:41:42', '2020-03-11 13:41:42'),
(193, 1, 'created', 'product', 3, '2020-03-11 18:49:46', '2020-03-11 18:49:46'),
(194, 1, 'created', 'product', 4, '2020-03-11 18:56:33', '2020-03-11 18:56:33'),
(195, 1, 'updated', 'users', 1, '2020-03-17 12:02:18', '2020-03-17 12:02:18'),
(196, 1, 'created', 'category', 1, '2020-03-20 13:12:49', '2020-03-20 13:12:49'),
(197, 1, 'created', 'category', 2, '2020-03-20 13:52:25', '2020-03-20 13:52:25'),
(198, 1, 'created', 'product', 5, '2020-03-20 14:38:25', '2020-03-20 14:38:25'),
(199, 1, 'updated', 'product', 5, '2020-03-20 16:46:48', '2020-03-20 16:46:48'),
(200, 1, 'updated', 'product', 5, '2020-03-20 16:46:59', '2020-03-20 16:46:59'),
(201, 1, 'updated', 'product', 5, '2020-03-20 16:47:48', '2020-03-20 16:47:48'),
(202, 1, 'updated', 'product', 5, '2020-03-20 16:48:26', '2020-03-20 16:48:26'),
(203, 1, 'updated', 'product', 5, '2020-03-20 16:52:25', '2020-03-20 16:52:25'),
(204, 1, 'updated', 'product', 5, '2020-03-20 17:01:05', '2020-03-20 17:01:05'),
(205, 1, 'updated', 'product', 5, '2020-03-20 17:01:12', '2020-03-20 17:01:12'),
(206, 1, 'updated', 'product', 5, '2020-03-20 17:02:44', '2020-03-20 17:02:44'),
(207, 1, 'updated', 'product', 5, '2020-03-20 17:04:18', '2020-03-20 17:04:18'),
(208, 1, 'updated', 'product', 5, '2020-03-20 17:11:15', '2020-03-20 17:11:15'),
(209, 1, 'created', 'category', 3, '2020-03-21 18:49:18', '2020-03-21 18:49:18'),
(210, 1, 'created', 'category', 4, '2020-03-21 18:50:00', '2020-03-21 18:50:00'),
(211, 1, 'deleted', 'category', 2, '2020-03-21 18:50:05', '2020-03-21 18:50:05'),
(212, 1, 'deleted', 'category', 1, '2020-03-21 18:50:08', '2020-03-21 18:50:08'),
(213, 1, 'updated', 'category', 4, '2020-03-21 18:50:48', '2020-03-21 18:50:48'),
(214, 1, 'updated', 'product', 4, '2020-03-21 18:51:23', '2020-03-21 18:51:23'),
(215, 1, 'updated', 'product', 4, '2020-03-21 18:51:31', '2020-03-21 18:51:31'),
(216, 1, 'updated', 'product', 4, '2020-03-21 18:51:40', '2020-03-21 18:51:40'),
(217, 1, 'updated', 'product', 4, '2020-03-21 18:51:54', '2020-03-21 18:51:54'),
(218, 1, 'updated', 'product', 5, '2020-03-24 17:23:53', '2020-03-24 17:23:53'),
(219, 1, 'deleted', 'category', 3, '2020-03-26 21:10:14', '2020-03-26 21:10:14'),
(220, 1, 'deleted', 'category', 4, '2020-03-26 21:10:17', '2020-03-26 21:10:17'),
(221, 1, 'created', 'category', 5, '2020-03-26 21:10:23', '2020-03-26 21:10:23'),
(222, 1, 'created', 'category', 6, '2020-03-26 21:10:30', '2020-03-26 21:10:30'),
(223, 1, 'created', 'category', 7, '2020-03-26 21:10:39', '2020-03-26 21:10:39'),
(224, 1, 'created', 'category', 8, '2020-03-26 21:10:48', '2020-03-26 21:10:48'),
(225, 1, 'created', 'product', 6, '2020-03-26 21:17:15', '2020-03-26 21:17:15'),
(226, 1, 'created', 'category', 9, '2020-03-26 21:18:27', '2020-03-26 21:18:27'),
(227, 1, 'updated', 'product', 6, '2020-03-26 21:18:44', '2020-03-26 21:18:44'),
(228, 1, 'created', 'product', 7, '2020-03-26 21:24:17', '2020-03-26 21:24:17'),
(229, 1, 'created', 'category', 10, '2020-03-26 21:29:43', '2020-03-26 21:29:43'),
(230, 1, 'updated', 'product', 6, '2020-03-26 21:29:59', '2020-03-26 21:29:59'),
(231, 1, 'created', 'product', 8, '2020-03-27 15:40:42', '2020-03-27 15:40:42'),
(232, 1, 'created', 'product', 9, '2020-03-27 15:44:55', '2020-03-27 15:44:55'),
(233, 1, 'created', 'product', 10, '2020-03-27 15:45:36', '2020-03-27 15:45:36'),
(234, 1, 'created', 'product', 11, '2020-03-27 15:49:47', '2020-03-27 15:49:47'),
(235, 1, 'created', 'product', 12, '2020-03-27 15:50:32', '2020-03-27 15:50:32'),
(236, 1, 'created', 'product', 13, '2020-03-27 16:07:34', '2020-03-27 16:07:34'),
(237, 1, 'created', 'product', 14, '2020-03-27 16:08:31', '2020-03-27 16:08:31'),
(238, 1, 'created', 'product', 15, '2020-03-27 16:08:51', '2020-03-27 16:08:51'),
(239, 1, 'created', 'product', 16, '2020-03-27 16:09:41', '2020-03-27 16:09:41'),
(240, 1, 'created', 'product', 17, '2020-03-27 16:11:04', '2020-03-27 16:11:04'),
(241, 1, 'created', 'product', 18, '2020-03-27 16:12:19', '2020-03-27 16:12:19'),
(242, 1, 'created', 'product', 19, '2020-03-27 16:12:56', '2020-03-27 16:12:56'),
(243, 1, 'created', 'product', 20, '2020-03-27 16:13:30', '2020-03-27 16:13:30'),
(244, 1, 'created', 'product', 21, '2020-03-27 16:14:36', '2020-03-27 16:14:36'),
(245, 1, 'created', 'product', 22, '2020-03-27 16:15:04', '2020-03-27 16:15:04'),
(246, 1, 'created', 'product', 23, '2020-03-27 16:33:58', '2020-03-27 16:33:58'),
(247, 1, 'created', 'product', 24, '2020-03-27 16:34:34', '2020-03-27 16:34:34'),
(248, 1, 'created', 'product', 25, '2020-03-27 16:35:21', '2020-03-27 16:35:21'),
(249, 1, 'created', 'product', 26, '2020-03-27 16:36:03', '2020-03-27 16:36:03'),
(250, 1, 'created', 'product', 27, '2020-03-27 16:38:42', '2020-03-27 16:38:42'),
(251, 1, 'created', 'product', 28, '2020-03-27 17:04:38', '2020-03-27 17:04:38'),
(252, 1, 'created', 'product', 29, '2020-03-27 17:06:19', '2020-03-27 17:06:19'),
(253, 1, 'created', 'product', 30, '2020-03-27 17:09:31', '2020-03-27 17:09:31'),
(254, 1, 'created', 'product', 31, '2020-03-27 17:10:26', '2020-03-27 17:10:26'),
(255, 1, 'created', 'product', 32, '2020-03-27 17:11:32', '2020-03-27 17:11:32'),
(256, 1, 'created', 'product', 33, '2020-03-27 17:12:18', '2020-03-27 17:12:18'),
(257, 1, 'created', 'product', 34, '2020-03-27 17:12:49', '2020-03-27 17:12:49'),
(258, 1, 'created', 'product', 35, '2020-03-27 17:13:49', '2020-03-27 17:13:49'),
(259, 1, 'created', 'product', 36, '2020-03-27 17:14:46', '2020-03-27 17:14:46'),
(260, 1, 'created', 'product', 37, '2020-03-27 17:15:48', '2020-03-27 17:15:48'),
(261, 1, 'created', 'product', 38, '2020-03-27 17:17:10', '2020-03-27 17:17:10'),
(262, 1, 'created', 'product', 39, '2020-03-27 17:18:41', '2020-03-27 17:18:41'),
(263, 1, 'created', 'product', 40, '2020-03-27 17:19:21', '2020-03-27 17:19:21'),
(264, 1, 'created', 'product', 41, '2020-03-27 17:20:21', '2020-03-27 17:20:21'),
(265, 1, 'created', 'product', 42, '2020-03-27 17:21:16', '2020-03-27 17:21:16'),
(266, 1, 'created', 'product', 43, '2020-03-27 17:21:51', '2020-03-27 17:21:51'),
(267, 1, 'created', 'product', 44, '2020-03-27 17:22:42', '2020-03-27 17:22:42'),
(268, 1, 'created', 'product', 45, '2020-03-27 17:23:19', '2020-03-27 17:23:19'),
(269, 1, 'created', 'product', 46, '2020-03-27 17:25:45', '2020-03-27 17:25:45'),
(270, 1, 'created', 'product', 47, '2020-03-27 17:26:12', '2020-03-27 17:26:12'),
(271, 1, 'created', 'product', 48, '2020-03-27 17:30:03', '2020-03-27 17:30:03'),
(272, 1, 'created', 'product', 49, '2020-03-27 17:31:37', '2020-03-27 17:31:37'),
(273, 1, 'created', 'product', 50, '2020-03-27 17:37:25', '2020-03-27 17:37:25'),
(274, 1, 'created', 'product', 51, '2020-03-27 17:38:13', '2020-03-27 17:38:13'),
(275, 1, 'created', 'product', 52, '2020-03-27 17:40:08', '2020-03-27 17:40:08'),
(276, 1, 'created', 'product', 53, '2020-03-27 17:40:56', '2020-03-27 17:40:56'),
(277, 1, 'created', 'product', 54, '2020-03-27 17:42:38', '2020-03-27 17:42:38'),
(278, 1, 'created', 'product', 55, '2020-03-27 17:56:22', '2020-03-27 17:56:22'),
(279, 1, 'created', 'product', 56, '2020-03-27 17:58:16', '2020-03-27 17:58:16'),
(280, 1, 'created', 'product', 57, '2020-03-27 17:59:02', '2020-03-27 17:59:02'),
(281, 1, 'created', 'product', 58, '2020-03-27 17:59:47', '2020-03-27 17:59:47'),
(282, 1, 'created', 'product', 59, '2020-03-27 18:03:21', '2020-03-27 18:03:21'),
(283, 1, 'created', 'product', 60, '2020-03-27 18:04:55', '2020-03-27 18:04:55'),
(284, 1, 'created', 'product', 61, '2020-03-27 18:07:23', '2020-03-27 18:07:23'),
(285, 1, 'created', 'product', 62, '2020-03-27 18:07:58', '2020-03-27 18:07:58'),
(286, 1, 'created', 'product', 63, '2020-03-27 18:08:20', '2020-03-27 18:08:20'),
(287, 1, 'created', 'product', 1, '2020-03-27 18:30:28', '2020-03-27 18:30:28'),
(288, 1, 'updated', 'product', 1, '2020-03-27 18:37:23', '2020-03-27 18:37:23'),
(289, 1, 'updated', 'product', 1, '2020-03-27 18:38:22', '2020-03-27 18:38:22'),
(290, 1, 'created', 'product', 2, '2020-03-27 18:45:42', '2020-03-27 18:45:42'),
(291, 1, 'created', 'product', 3, '2020-03-27 18:53:31', '2020-03-27 18:53:31'),
(292, 1, 'updated', 'product', 3, '2020-03-27 18:55:56', '2020-03-27 18:55:56'),
(293, 1, 'created', 'product', 4, '2020-03-27 19:00:29', '2020-03-27 19:00:29'),
(294, 1, 'updated', 'product', 4, '2020-03-27 19:12:39', '2020-03-27 19:12:39'),
(295, 1, 'updated', 'product', 4, '2020-03-27 19:15:10', '2020-03-27 19:15:10'),
(296, 1, 'updated', 'product', 4, '2020-03-27 19:16:36', '2020-03-27 19:16:36'),
(297, 1, 'created', 'notification', 1, '2020-04-01 18:29:59', '2020-04-01 18:29:59'),
(298, 1, 'created', 'notification', 2, '2020-04-01 18:34:17', '2020-04-01 18:34:17'),
(299, 1, 'created', 'notification', 3, '2020-04-01 18:34:33', '2020-04-01 18:34:33'),
(300, 1, 'created', 'notification', 4, '2020-04-01 18:50:17', '2020-04-01 18:50:17'),
(301, 1, 'created', 'notification', 5, '2020-04-01 18:52:36', '2020-04-01 18:52:36'),
(302, 1, 'created', 'notification', 6, '2020-04-01 19:15:11', '2020-04-01 19:15:11'),
(303, 1, 'created', 'notification', 7, '2020-04-02 13:26:09', '2020-04-02 13:26:09'),
(304, 1, 'created', 'notification', 8, '2020-04-02 13:27:36', '2020-04-02 13:27:36'),
(305, 1, 'created', 'notification', 9, '2020-04-02 13:36:49', '2020-04-02 13:36:49'),
(306, 1, 'created', 'notification', 10, '2020-04-02 13:40:40', '2020-04-02 13:40:40'),
(307, 1, 'created', 'notification', 11, '2020-04-02 13:41:21', '2020-04-02 13:41:21'),
(308, 1, 'created', 'notification', 12, '2020-04-02 14:51:09', '2020-04-02 14:51:09'),
(309, 1, 'created', 'notification', 13, '2020-04-02 15:10:50', '2020-04-02 15:10:50'),
(310, 1, 'created', 'notification', 14, '2020-04-02 15:16:24', '2020-04-02 15:16:24'),
(311, 1, 'created', 'notification', 15, '2020-04-02 16:23:20', '2020-04-02 16:23:20'),
(312, 1, 'updated', 'users', 50, '2020-04-02 17:47:10', '2020-04-02 17:47:10'),
(313, 1, 'updated', 'users', 6, '2020-04-02 17:48:41', '2020-04-02 17:48:41'),
(314, 1, 'created', 'notification', 16, '2020-04-03 14:33:46', '2020-04-03 14:33:46'),
(315, 1, 'created', 'notification', 17, '2020-04-03 14:34:38', '2020-04-03 14:34:38'),
(316, 1, 'created', 'notification', 18, '2020-04-03 14:35:09', '2020-04-03 14:35:09'),
(317, 1, 'created', 'notification', 19, '2020-04-03 14:35:20', '2020-04-03 14:35:20'),
(318, 1, 'created', 'notification', 20, '2020-04-03 14:36:02', '2020-04-03 14:36:02'),
(319, 1, 'created', 'notification', 21, '2020-04-03 14:47:29', '2020-04-03 14:47:29'),
(320, 1, 'created', 'notification', 22, '2020-04-03 14:47:43', '2020-04-03 14:47:43'),
(321, 1, 'created', 'notification', 23, '2020-04-03 14:50:12', '2020-04-03 14:50:12'),
(322, 1, 'created', 'notification', 24, '2020-04-03 14:50:40', '2020-04-03 14:50:40'),
(323, 1, 'created', 'notification', 25, '2020-04-03 15:25:01', '2020-04-03 15:25:01'),
(324, 1, 'created', 'notification', 26, '2020-04-03 15:28:55', '2020-04-03 15:28:55'),
(325, 1, 'created', 'notification', 27, '2020-04-03 15:50:37', '2020-04-03 15:50:37'),
(326, 1, 'created', 'notification', 28, '2020-04-03 15:52:06', '2020-04-03 15:52:06'),
(327, 1, 'created', 'notification', 29, '2020-04-03 15:52:21', '2020-04-03 15:52:21'),
(328, 1, 'created', 'notification', 30, '2020-04-03 15:52:45', '2020-04-03 15:52:45'),
(329, 1, 'created', 'notification', 31, '2020-04-03 16:02:11', '2020-04-03 16:02:11'),
(330, 1, 'created', 'notification', 32, '2020-04-03 16:02:21', '2020-04-03 16:02:21'),
(331, 1, 'created', 'notification', 33, '2020-04-03 16:17:17', '2020-04-03 16:17:17'),
(332, 1, 'created', 'notification', 34, '2020-04-03 16:21:33', '2020-04-03 16:21:33'),
(333, 1, 'created', 'notification', 35, '2020-04-03 16:26:20', '2020-04-03 16:26:20'),
(334, 1, 'created', 'notification', 36, '2020-04-03 16:57:55', '2020-04-03 16:57:55'),
(335, 1, 'created', 'notification', 37, '2020-04-03 17:04:50', '2020-04-03 17:04:50'),
(336, 1, 'created', 'notification', 38, '2020-04-03 17:23:05', '2020-04-03 17:23:05'),
(337, 1, 'created', 'notification', 39, '2020-04-03 17:34:00', '2020-04-03 17:34:00'),
(338, 1, 'created', 'notification', 40, '2020-04-03 17:34:40', '2020-04-03 17:34:40'),
(339, 1, 'created', 'notification', 41, '2020-04-03 17:37:06', '2020-04-03 17:37:06'),
(340, 1, 'created', 'notification', 42, '2020-04-04 12:57:31', '2020-04-04 12:57:31'),
(341, 1, 'created', 'notification', 43, '2020-04-04 12:57:47', '2020-04-04 12:57:47'),
(342, 1, 'created', 'notification', 44, '2020-04-04 13:02:14', '2020-04-04 13:02:14'),
(343, 1, 'created', 'notification', 45, '2020-04-04 13:07:03', '2020-04-04 13:07:03'),
(344, 1, 'created', 'notification', 46, '2020-04-04 13:07:44', '2020-04-04 13:07:44'),
(345, 1, 'created', 'notification', 47, '2020-04-04 13:08:01', '2020-04-04 13:08:01'),
(346, 1, 'created', 'notification', 48, '2020-04-04 13:09:26', '2020-04-04 13:09:26'),
(347, 1, 'created', 'notification', 49, '2020-04-04 13:09:50', '2020-04-04 13:09:50'),
(348, 1, 'created', 'notification', 50, '2020-04-04 13:10:30', '2020-04-04 13:10:30'),
(349, 1, 'created', 'notification', 51, '2020-04-04 13:11:48', '2020-04-04 13:11:48'),
(350, 1, 'created', 'notification', 52, '2020-04-04 13:12:08', '2020-04-04 13:12:08'),
(351, 1, 'created', 'notification', 53, '2020-04-04 13:13:18', '2020-04-04 13:13:18'),
(352, 1, 'created', 'notification', 54, '2020-04-04 13:15:32', '2020-04-04 13:15:32'),
(353, 1, 'created', 'notification', 55, '2020-04-04 13:15:40', '2020-04-04 13:15:40'),
(354, 1, 'created', 'notification', 56, '2020-04-04 13:16:12', '2020-04-04 13:16:12'),
(355, 1, 'created', 'notification', 57, '2020-04-04 13:16:28', '2020-04-04 13:16:28'),
(356, 1, 'created', 'notification', 58, '2020-04-04 13:17:16', '2020-04-04 13:17:16'),
(357, 1, 'created', 'notification', 59, '2020-04-04 13:18:17', '2020-04-04 13:18:17'),
(358, 1, 'created', 'notification', 60, '2020-04-04 13:18:56', '2020-04-04 13:18:56'),
(359, 1, 'created', 'notification', 61, '2020-04-04 13:21:04', '2020-04-04 13:21:04'),
(360, 1, 'created', 'notification', 62, '2020-04-04 13:21:17', '2020-04-04 13:21:17'),
(361, 1, 'created', 'notification', 63, '2020-04-04 13:22:44', '2020-04-04 13:22:44'),
(362, 1, 'created', 'notification', 64, '2020-04-04 13:42:51', '2020-04-04 13:42:51'),
(363, 1, 'created', 'notification', 65, '2020-04-04 13:43:02', '2020-04-04 13:43:02'),
(364, 1, 'created', 'notification', 66, '2020-04-04 14:28:10', '2020-04-04 14:28:10'),
(365, 1, 'created', 'notification', 67, '2020-04-04 14:28:25', '2020-04-04 14:28:25'),
(366, 1, 'updated', 'product', 4, '2020-04-04 14:55:12', '2020-04-04 14:55:12'),
(367, 1, 'created', 'notification', 68, '2020-04-04 16:36:26', '2020-04-04 16:36:26'),
(368, 1, 'created', 'notification', 69, '2020-04-04 16:36:41', '2020-04-04 16:36:41'),
(369, 1, 'created', 'notification', 70, '2020-04-04 16:36:54', '2020-04-04 16:36:54'),
(370, 1, 'created', 'notification', 71, '2020-04-04 17:04:54', '2020-04-04 17:04:54'),
(371, 1, 'created', 'notification', 72, '2020-04-04 17:15:36', '2020-04-04 17:15:36'),
(372, 1, 'created', 'notification', 73, '2020-04-04 17:19:28', '2020-04-04 17:19:28'),
(373, 1, 'created', 'notification', 74, '2020-04-04 17:19:39', '2020-04-04 17:19:39'),
(374, 1, 'created', 'notification', 75, '2020-04-04 17:21:20', '2020-04-04 17:21:20'),
(375, 1, 'created', 'notification', 76, '2020-04-04 19:34:36', '2020-04-04 19:34:36'),
(376, 1, 'updated', 'product', 4, '2020-04-04 19:36:18', '2020-04-04 19:36:18'),
(377, 1, 'created', 'notification', 77, '2020-04-06 15:32:21', '2020-04-06 15:32:21'),
(378, 1, 'created', 'notification', 78, '2020-04-06 15:32:21', '2020-04-06 15:32:21'),
(379, 1, 'created', 'notification', 79, '2020-04-06 16:01:08', '2020-04-06 16:01:08'),
(380, 1, 'created', 'notification', 80, '2020-04-06 16:01:08', '2020-04-06 16:01:08'),
(381, 1, 'created', 'notification', 81, '2020-04-06 16:01:33', '2020-04-06 16:01:33'),
(382, 1, 'created', 'notification', 82, '2020-04-06 16:01:33', '2020-04-06 16:01:33'),
(383, 1, 'created', 'notification', 83, '2020-04-06 16:01:33', '2020-04-06 16:01:33'),
(384, 1, 'updated', 'product', 4, '2020-04-06 22:00:26', '2020-04-06 22:00:26'),
(385, 1, 'updated', 'product', 3, '2020-04-06 22:00:43', '2020-04-06 22:00:43'),
(386, 1, 'created', 'product', 5, '2020-04-06 22:08:01', '2020-04-06 22:08:01'),
(387, 1, 'created', 'product', 6, '2020-04-06 22:11:16', '2020-04-06 22:11:16'),
(388, 1, 'created', 'product', 7, '2020-04-06 22:18:49', '2020-04-06 22:18:49'),
(389, 1, 'created', 'product', 8, '2020-04-06 22:22:58', '2020-04-06 22:22:58'),
(390, 1, 'created', 'product', 9, '2020-04-06 22:27:26', '2020-04-06 22:27:26'),
(391, 1, 'created', 'product', 10, '2020-04-06 22:32:18', '2020-04-06 22:32:18'),
(392, 1, 'created', 'product', 11, '2020-04-06 22:36:37', '2020-04-06 22:36:37'),
(393, 1, 'created', 'product', 12, '2020-04-06 22:40:47', '2020-04-06 22:40:47'),
(394, 1, 'created', 'product', 13, '2020-04-06 22:44:40', '2020-04-06 22:44:40'),
(395, 1, 'created', 'product', 14, '2020-04-06 22:49:29', '2020-04-06 22:49:29'),
(396, 1, 'created', 'notification', 84, '2020-04-06 22:59:47', '2020-04-06 22:59:47'),
(397, 1, 'updated', 'users', 1, '2020-04-23 12:24:16', '2020-04-23 12:24:16'),
(398, 1, 'updated', 'users', 45, '2020-05-06 13:55:29', '2020-05-06 13:55:29'),
(399, 1, 'updated', 'users', 45, '2020-05-06 16:10:41', '2020-05-06 16:10:41'),
(400, 1, 'deleted', 'pricelist', 1, '2020-08-06 19:00:35', '2020-08-06 19:00:35'),
(401, 45, 'created', 'product', 15, '2020-08-17 14:44:53', '2020-08-17 14:44:53'),
(402, 1, 'created', 'category', 11, '2020-08-17 17:09:11', '2020-08-17 17:09:11'),
(403, 1, 'deleted', 'category', 11, '2020-08-17 17:10:00', '2020-08-17 17:10:00'),
(404, 1, 'created', 'product', 16, '2020-08-17 17:38:40', '2020-08-17 17:38:40'),
(405, 1, 'updated', 'product', 16, '2020-08-17 17:42:19', '2020-08-17 17:42:19'),
(406, 1, 'updated', 'product', 16, '2020-08-17 17:49:11', '2020-08-17 17:49:11'),
(407, 1, 'updated', 'product', 16, '2020-08-17 17:49:19', '2020-08-17 17:49:19'),
(408, 1, 'updated', 'product', 16, '2020-08-17 17:49:26', '2020-08-17 17:49:26'),
(409, 1, 'updated', 'product', 16, '2020-08-17 17:49:39', '2020-08-17 17:49:39'),
(410, 1, 'updated', 'users', 1, '2020-08-17 18:03:01', '2020-08-17 18:03:01'),
(411, 1, 'updated', 'users', 1, '2020-08-17 18:03:24', '2020-08-17 18:03:24'),
(412, 1, 'updated', 'product', 16, '2020-08-18 15:57:43', '2020-08-18 15:57:43'),
(413, 1, 'created', 'product', 17, '2020-08-18 16:03:38', '2020-08-18 16:03:38'),
(414, 1, 'updated', 'product', 17, '2020-08-18 16:06:30', '2020-08-18 16:06:30'),
(415, 1, 'updated', 'product', 17, '2020-08-18 16:07:40', '2020-08-18 16:07:40'),
(416, 1, 'updated', 'product', 17, '2020-08-18 16:08:49', '2020-08-18 16:08:49'),
(417, 1, 'created', 'product', 18, '2020-08-18 16:11:05', '2020-08-18 16:11:05'),
(418, 1, 'updated', 'product', 18, '2020-08-18 16:48:59', '2020-08-18 16:48:59'),
(419, 1, 'updated', 'product', 18, '2020-08-18 16:50:23', '2020-08-18 16:50:23'),
(420, 1, 'updated', 'product', 18, '2020-08-18 16:57:27', '2020-08-18 16:57:27'),
(421, 1, 'updated', 'product', 18, '2020-08-18 16:57:35', '2020-08-18 16:57:35'),
(422, 1, 'updated', 'product', 18, '2020-08-18 16:57:59', '2020-08-18 16:57:59'),
(423, 1, 'updated', 'product', 18, '2020-08-18 16:58:02', '2020-08-18 16:58:02'),
(424, 1, 'updated', 'product', 18, '2020-08-18 16:58:17', '2020-08-18 16:58:17'),
(425, 1, 'updated', 'product', 18, '2020-08-18 16:58:25', '2020-08-18 16:58:25'),
(426, 1, 'updated', 'product', 18, '2020-08-18 17:04:57', '2020-08-18 17:04:57'),
(427, 1, 'updated', 'product', 18, '2020-08-18 17:05:42', '2020-08-18 17:05:42'),
(428, 1, 'updated', 'product', 18, '2020-08-18 17:05:47', '2020-08-18 17:05:47'),
(429, 1, 'updated', 'product', 10, '2020-08-18 17:12:34', '2020-08-18 17:12:34'),
(430, 1, 'updated', 'product', 7, '2020-08-18 17:12:44', '2020-08-18 17:12:44'),
(431, 1, 'updated', 'product', 6, '2020-08-18 17:25:28', '2020-08-18 17:25:28'),
(432, 1, 'updated', 'product', 6, '2020-08-18 17:25:47', '2020-08-18 17:25:47'),
(433, 1, 'updated', 'product', 6, '2020-08-18 17:26:52', '2020-08-18 17:26:52'),
(434, 1, 'updated', 'product', 6, '2020-08-18 17:27:27', '2020-08-18 17:27:27'),
(435, 1, 'updated', 'product', 14, '2020-08-18 17:58:50', '2020-08-18 17:58:50'),
(436, 1, 'updated', 'users', 1, '2020-08-18 18:02:07', '2020-08-18 18:02:07'),
(437, 1, 'updated', 'product', 13, '2020-08-19 17:26:55', '2020-08-19 17:26:55'),
(438, 1, 'updated', 'product', 12, '2020-08-19 17:27:18', '2020-08-19 17:27:18'),
(439, 1, 'updated', 'product', 11, '2020-08-19 17:28:06', '2020-08-19 17:28:06'),
(440, 1, 'updated', 'product', 10, '2020-08-19 17:28:59', '2020-08-19 17:28:59'),
(441, 1, 'updated', 'product', 9, '2020-08-19 17:29:47', '2020-08-19 17:29:47'),
(442, 1, 'updated', 'product', 8, '2020-08-19 17:30:31', '2020-08-19 17:30:31'),
(443, 1, 'updated', 'product', 7, '2020-08-19 17:31:09', '2020-08-19 17:31:09'),
(444, 1, 'updated', 'product', 6, '2020-08-19 17:32:07', '2020-08-19 17:32:07'),
(445, 1, 'updated', 'product', 5, '2020-08-19 17:32:47', '2020-08-19 17:32:47'),
(446, 1, 'updated', 'product', 14, '2020-08-19 17:56:59', '2020-08-19 17:56:59'),
(447, 1, 'updated', 'product', 14, '2020-08-19 17:59:31', '2020-08-19 17:59:31'),
(448, 1, 'updated', 'users', 1, '2020-08-19 18:02:15', '2020-08-19 18:02:15'),
(449, 45, 'updated', 'users', 45, '2020-08-26 17:45:10', '2020-08-26 17:45:10'),
(450, 1, 'updated', 'product', 12, '2020-08-26 17:56:11', '2020-08-26 17:56:11'),
(451, 1, 'updated', 'product', 12, '2020-08-26 17:56:33', '2020-08-26 17:56:33'),
(452, 1, 'updated', 'product', 12, '2020-08-26 17:57:54', '2020-08-26 17:57:54'),
(453, 1, 'updated', 'users', 1, '2020-08-26 18:09:54', '2020-08-26 18:09:54'),
(454, 1, 'created', 'pricelist', 4, '2020-09-03 17:08:45', '2020-09-03 17:08:45'),
(455, 1, 'created', 'users', 232, '2020-09-15 02:02:08', '2020-09-15 02:02:08'),
(456, 1, 'created', 'users', 233, '2020-09-15 02:02:08', '2020-09-15 02:02:08'),
(457, 1, 'deleted', 'users', 233, '2020-09-15 02:09:17', '2020-09-15 02:09:17'),
(458, 1, 'deleted', 'users', 232, '2020-09-15 02:09:26', '2020-09-15 02:09:26'),
(459, 1, 'created', 'users', 235, '2020-09-15 02:09:52', '2020-09-15 02:09:52'),
(460, 1, 'created', 'users', 236, '2020-09-15 02:09:52', '2020-09-15 02:09:52'),
(461, 1, 'deleted', 'users', 236, '2020-09-15 02:13:32', '2020-09-15 02:13:32'),
(462, 1, 'deleted', 'users', 235, '2020-09-15 02:13:41', '2020-09-15 02:13:41'),
(463, 1, 'created', 'users', 237, '2020-09-15 02:13:51', '2020-09-15 02:13:51'),
(464, 1, 'created', 'users', 238, '2020-09-15 02:13:51', '2020-09-15 02:13:51'),
(465, 1, 'updated', 'users', 1, '2020-09-28 15:00:18', '2020-09-28 15:00:18'),
(466, 1, 'updated', 'product', 12, '2020-09-28 15:01:38', '2020-09-28 15:01:38'),
(467, 1, 'updated', 'product', 12, '2020-09-28 15:01:44', '2020-09-28 15:01:44'),
(468, 1, 'updated', 'product', 12, '2020-09-28 15:02:32', '2020-09-28 15:02:32'),
(469, 1, 'updated', 'product', 12, '2020-09-28 15:05:48', '2020-09-28 15:05:48'),
(470, 1, 'updated', 'users', 1, '2020-09-28 15:07:16', '2020-09-28 15:07:16'),
(471, 1, 'created', 'product', 19, '2020-09-28 15:20:15', '2020-09-28 15:20:15'),
(472, 1, 'created', 'product', 20, '2020-09-28 15:27:41', '2020-09-28 15:27:41'),
(473, 1, 'updated', 'product', 20, '2020-09-28 15:35:08', '2020-09-28 15:35:08'),
(474, 1, 'created', 'product', 21, '2020-09-28 15:51:38', '2020-09-28 15:51:38'),
(475, 1, 'updated', 'product', 20, '2020-09-28 16:04:12', '2020-09-28 16:04:12'),
(476, 1, 'updated', 'product', 20, '2020-09-28 16:09:50', '2020-09-28 16:09:50'),
(477, 1, 'updated', 'product', 20, '2020-09-28 16:15:17', '2020-09-28 16:15:17'),
(478, 1, 'updated', 'product', 20, '2020-09-28 16:17:39', '2020-09-28 16:17:39'),
(479, 1, 'updated', 'product', 6, '2020-09-28 16:29:14', '2020-09-28 16:29:14'),
(480, 1, 'updated', 'product', 20, '2020-09-28 16:37:01', '2020-09-28 16:37:01'),
(481, 1, 'updated', 'product', 21, '2020-09-28 16:38:49', '2020-09-28 16:38:49'),
(482, 1, 'updated', 'users', 1, '2020-09-28 18:03:07', '2020-09-28 18:03:07'),
(483, 1, 'updated', 'users', 1, '2020-10-03 16:48:14', '2020-10-03 16:48:14'),
(484, 1, 'updated', 'users', 1, '2020-10-05 15:24:38', '2020-10-05 15:24:38'),
(485, 1, 'updated', 'product', 14, '2020-10-06 14:03:19', '2020-10-06 14:03:19'),
(486, 1, 'updated', 'product', 21, '2020-10-06 14:39:49', '2020-10-06 14:39:49'),
(487, 1, 'updated', 'product', 20, '2020-10-06 14:43:21', '2020-10-06 14:43:21'),
(488, 1, 'updated', 'product', 20, '2020-10-06 14:47:20', '2020-10-06 14:47:20'),
(489, 1, 'updated', 'product', 10, '2020-10-06 14:51:48', '2020-10-06 14:51:48'),
(490, 1, 'updated', 'product', 10, '2020-10-06 14:53:35', '2020-10-06 14:53:35'),
(491, 1, 'created', 'product', 22, '2020-10-06 15:16:20', '2020-10-06 15:16:20'),
(492, 1, 'created', 'product', 23, '2020-10-06 15:39:19', '2020-10-06 15:39:19'),
(493, 1, 'created', 'product', 24, '2020-10-06 15:46:24', '2020-10-06 15:46:24'),
(494, 1, 'updated', 'product', 24, '2020-10-06 15:52:37', '2020-10-06 15:52:37'),
(495, 1, 'created', 'product', 25, '2020-10-06 16:00:54', '2020-10-06 16:00:54'),
(496, 1, 'updated', 'product', 18, '2020-10-06 16:06:03', '2020-10-06 16:06:03'),
(497, 1, 'updated', 'product', 21, '2020-10-06 16:06:33', '2020-10-06 16:06:33'),
(498, 1, 'updated', 'product', 4, '2020-10-06 16:07:08', '2020-10-06 16:07:08'),
(499, 1, 'updated', 'product', 3, '2020-10-06 16:07:24', '2020-10-06 16:07:24'),
(500, 1, 'created', 'product', 26, '2020-10-06 16:26:19', '2020-10-06 16:26:19'),
(501, 1, 'updated', 'product', 14, '2020-10-06 16:59:48', '2020-10-06 16:59:48'),
(502, 1, 'updated', 'product', 14, '2020-10-06 17:04:35', '2020-10-06 17:04:35'),
(503, 1, 'updated', 'product', 14, '2020-10-06 17:07:36', '2020-10-06 17:07:36'),
(504, 1, 'updated', 'product', 14, '2020-10-06 17:16:19', '2020-10-06 17:16:19'),
(505, 1, 'updated', 'product', 14, '2020-10-06 17:18:19', '2020-10-06 17:18:19'),
(506, 1, 'updated', 'product', 14, '2020-10-06 17:18:37', '2020-10-06 17:18:37'),
(507, 1, 'updated', 'product', 14, '2020-10-06 17:27:35', '2020-10-06 17:27:35'),
(508, 1, 'updated', 'product', 14, '2020-10-06 17:28:10', '2020-10-06 17:28:10'),
(509, 1, 'updated', 'product', 26, '2020-10-06 17:30:03', '2020-10-06 17:30:03'),
(510, 1, 'updated', 'product', 26, '2020-10-06 17:30:17', '2020-10-06 17:30:17'),
(511, 1, 'updated', 'product', 26, '2020-10-06 17:36:18', '2020-10-06 17:36:18'),
(512, 1, 'updated', 'users', 1, '2020-10-06 17:58:21', '2020-10-06 17:58:21'),
(513, 1, 'updated', 'users', 1, '2020-10-15 18:00:39', '2020-10-15 18:00:39'),
(514, 1, 'updated', 'users', 1, '2020-10-23 15:52:12', '2020-10-23 15:52:12'),
(515, 1, 'deleted', 'pricelist', 4, '2021-02-10 17:08:59', '2021-02-10 17:08:59'),
(516, 1, 'updated', 'users', 1, '2021-02-10 17:09:06', '2021-02-10 17:09:06'),
(517, 1, 'created', 'pricelist', 5, '2021-02-10 17:20:59', '2021-02-10 17:20:59'),
(518, 1, 'updated', 'divisions', 1, '2021-02-10 17:24:50', '2021-02-10 17:24:50'),
(519, 1, 'updated', 'divisions', 1, '2021-02-10 17:27:58', '2021-02-10 17:27:58'),
(520, 1, 'updated', 'divisions', 1, '2021-02-10 17:28:55', '2021-02-10 17:28:55'),
(521, 1, 'updated', 'divisions', 1, '2021-02-10 17:30:18', '2021-02-10 17:30:18'),
(522, 1, 'updated', 'divisions', 1, '2021-02-10 17:31:21', '2021-02-10 17:31:21'),
(523, 1, 'updated', 'product', 21, '2021-02-10 17:33:18', '2021-02-10 17:33:18'),
(524, 1, 'updated', 'users', 1, '2021-02-10 17:55:34', '2021-02-10 17:55:34'),
(525, 1, 'created', 'product', 27, '2021-03-01 14:53:00', '2021-03-01 14:53:00'),
(526, 1, 'updated', 'product', 27, '2021-03-01 15:01:32', '2021-03-01 15:01:32'),
(527, 1, 'updated', 'product', 27, '2021-03-01 15:02:11', '2021-03-01 15:02:11'),
(528, 1, 'updated', 'product', 27, '2021-03-01 15:09:55', '2021-03-01 15:09:55'),
(529, 1, 'updated', 'product', 27, '2021-03-01 15:10:34', '2021-03-01 15:10:34'),
(530, 1, 'updated', 'product', 27, '2021-03-01 15:12:28', '2021-03-01 15:12:28'),
(531, 1, 'updated', 'product', 27, '2021-03-01 15:12:52', '2021-03-01 15:12:52'),
(532, 1, 'created', 'product', 28, '2021-03-01 15:18:44', '2021-03-01 15:18:44'),
(533, 1, 'updated', 'product', 11, '2021-03-01 16:12:45', '2021-03-01 16:12:45'),
(534, 1, 'updated', 'product', 18, '2021-03-01 16:16:02', '2021-03-01 16:16:02'),
(535, 1, 'updated', 'product', 14, '2021-03-01 16:17:02', '2021-03-01 16:17:02'),
(536, 1, 'updated', 'product', 26, '2021-03-01 16:17:23', '2021-03-01 16:17:23'),
(537, 1, 'updated', 'product', 8, '2021-03-01 16:18:09', '2021-03-01 16:18:09'),
(538, 1, 'updated', 'product', 22, '2021-03-01 16:19:19', '2021-03-01 16:19:19'),
(539, 1, 'created', 'product', 29, '2021-03-01 16:27:56', '2021-03-01 16:27:56'),
(540, 1, 'created', 'product', 30, '2021-03-01 16:30:09', '2021-03-01 16:30:09'),
(541, 1, 'updated', 'product', 30, '2021-03-01 16:31:14', '2021-03-01 16:31:14'),
(542, 1, 'created', 'product', 31, '2021-03-01 16:34:33', '2021-03-01 16:34:33'),
(543, 1, 'created', 'product', 32, '2021-03-01 16:36:41', '2021-03-01 16:36:41'),
(544, 1, 'created', 'product', 33, '2021-03-01 16:39:15', '2021-03-01 16:39:15'),
(545, 1, 'created', 'product', 34, '2021-03-01 16:41:08', '2021-03-01 16:41:08'),
(546, 1, 'created', 'product', 35, '2021-03-01 16:43:17', '2021-03-01 16:43:17'),
(547, 1, 'created', 'product', 36, '2021-03-01 16:46:49', '2021-03-01 16:46:49'),
(548, 1, 'created', 'product', 37, '2021-03-01 16:48:29', '2021-03-01 16:48:29'),
(549, 1, 'created', 'product', 38, '2021-03-01 16:56:11', '2021-03-01 16:56:11'),
(550, 1, 'created', 'product', 39, '2021-03-01 17:04:34', '2021-03-01 17:04:34'),
(551, 1, 'created', 'product', 40, '2021-03-01 17:08:53', '2021-03-01 17:08:53'),
(552, 1, 'created', 'product', 41, '2021-03-01 17:15:41', '2021-03-01 17:15:41'),
(553, 1, 'created', 'product', 42, '2021-03-01 17:16:59', '2021-03-01 17:16:59'),
(554, 1, 'created', 'product', 43, '2021-03-01 17:19:07', '2021-03-01 17:19:07'),
(555, 1, 'updated', 'product', 4, '2021-03-01 17:44:51', '2021-03-01 17:44:51'),
(556, 1, 'updated', 'users', 1, '2021-03-01 18:33:30', '2021-03-01 18:33:30'),
(557, 1, 'updated', 'users', 7, '2021-03-03 11:30:44', '2021-03-03 11:30:44'),
(558, 1, 'updated', 'users', 7, '2021-03-03 11:30:53', '2021-03-03 11:30:53'),
(559, 1, 'updated', 'users', 7, '2021-03-03 11:31:32', '2021-03-03 11:31:32'),
(560, 1, 'updated', 'users', 7, '2021-03-03 11:31:51', '2021-03-03 11:31:51'),
(561, 1, 'updated', 'users', 7, '2021-03-03 11:33:31', '2021-03-03 11:33:31'),
(562, 1, 'updated', 'users', 138, '2021-03-03 11:39:41', '2021-03-03 11:39:41'),
(563, 1, 'updated', 'users', 138, '2021-03-03 11:39:57', '2021-03-03 11:39:57'),
(564, 1, 'updated', 'users', 138, '2021-03-03 11:40:12', '2021-03-03 11:40:12'),
(565, 1, 'updated', 'users', 138, '2021-03-03 11:40:23', '2021-03-03 11:40:23'),
(566, 1, 'updated', 'users', 138, '2021-03-03 11:40:40', '2021-03-03 11:40:40'),
(567, 1, 'updated', 'users', 138, '2021-03-03 11:40:53', '2021-03-03 11:40:53'),
(568, 1, 'updated', 'users', 138, '2021-03-03 11:41:12', '2021-03-03 11:41:12'),
(569, 1, 'updated', 'users', 138, '2021-03-03 11:41:57', '2021-03-03 11:41:57'),
(570, 1, 'updated', 'users', 7, '2021-03-03 11:42:17', '2021-03-03 11:42:17'),
(571, 1, 'updated', 'users', 7, '2021-03-03 11:42:29', '2021-03-03 11:42:29'),
(572, 1, 'updated', 'users', 7, '2021-03-03 11:42:39', '2021-03-03 11:42:39'),
(573, 1, 'updated', 'users', 7, '2021-03-03 11:42:56', '2021-03-03 11:42:56'),
(574, 1, 'updated', 'users', 138, '2021-03-03 11:43:04', '2021-03-03 11:43:04'),
(575, 1, 'updated', 'users', 51, '2021-03-03 11:44:16', '2021-03-03 11:44:16'),
(576, 1, 'created', 'users', 239, '2021-03-03 11:49:08', '2021-03-03 11:49:08'),
(577, 1, 'updated', 'users', 239, '2021-03-03 11:49:33', '2021-03-03 11:49:33'),
(578, 1, 'updated', 'users', 239, '2021-03-03 11:49:51', '2021-03-03 11:49:51'),
(579, 1, 'updated', 'users', 239, '2021-03-03 11:50:09', '2021-03-03 11:50:09'),
(580, 1, 'updated', 'users', 239, '2021-03-03 11:50:23', '2021-03-03 11:50:23'),
(581, 1, 'updated', 'users', 239, '2021-03-03 11:50:50', '2021-03-03 11:50:50'),
(582, 1, 'updated', 'users', 239, '2021-03-03 11:51:25', '2021-03-03 11:51:25'),
(583, 1, 'deleted', 'users', 239, '2021-03-03 11:51:41', '2021-03-03 11:51:41'),
(584, 1, 'created', 'users', 240, '2021-03-03 11:57:09', '2021-03-03 11:57:09'),
(585, 1, 'updated', 'users', 240, '2021-03-03 11:59:08', '2021-03-03 11:59:08'),
(586, 1, 'updated', 'users', 240, '2021-03-03 11:59:28', '2021-03-03 11:59:28'),
(587, 1, 'updated', 'users', 240, '2021-03-03 11:59:59', '2021-03-03 11:59:59'),
(588, 1, 'updated', 'users', 240, '2021-03-03 12:01:25', '2021-03-03 12:01:25'),
(589, 1, 'updated', 'users', 7, '2021-03-03 12:01:48', '2021-03-03 12:01:48'),
(590, 1, 'updated', 'users', 7, '2021-03-03 12:16:22', '2021-03-03 12:16:22'),
(591, 1, 'updated', 'users', 1, '2021-03-03 12:23:03', '2021-03-03 12:23:03'),
(592, 1, 'updated', 'users', 7, '2021-03-03 12:36:06', '2021-03-03 12:36:06'),
(593, 1, 'updated', 'users', 7, '2021-03-03 12:36:32', '2021-03-03 12:36:32'),
(594, 1, 'updated', 'users', 240, '2021-03-03 12:36:46', '2021-03-03 12:36:46'),
(595, 1, 'updated', 'users', 240, '2021-03-03 13:01:44', '2021-03-03 13:01:44'),
(596, 1, 'updated', 'users', 7, '2021-03-03 13:02:26', '2021-03-03 13:02:26'),
(597, 1, 'updated', 'users', 7, '2021-03-03 13:05:01', '2021-03-03 13:05:01'),
(598, 1, 'updated', 'users', 240, '2021-03-03 13:05:31', '2021-03-03 13:05:31'),
(599, 1, 'updated', 'users', 7, '2021-03-03 13:06:32', '2021-03-03 13:06:32'),
(600, 1, 'updated', 'users', 240, '2021-03-03 13:06:49', '2021-03-03 13:06:49'),
(601, 1, 'updated', 'users', 240, '2021-03-03 13:07:06', '2021-03-03 13:07:06'),
(602, 1, 'updated', 'users', 240, '2021-03-03 13:07:18', '2021-03-03 13:07:18'),
(603, 1, 'updated', 'users', 240, '2021-03-03 13:07:38', '2021-03-03 13:07:38'),
(604, 1, 'updated', 'users', 138, '2021-03-03 13:08:56', '2021-03-03 13:08:56'),
(605, 1, 'updated', 'users', 51, '2021-03-03 13:09:05', '2021-03-03 13:09:05'),
(606, 1, 'updated', 'users', 50, '2021-03-03 13:10:10', '2021-03-03 13:10:10'),
(607, 1, 'updated', 'users', 50, '2021-03-03 13:10:12', '2021-03-03 13:10:12'),
(608, 1, 'deleted', 'users', 237, '2021-03-03 13:11:33', '2021-03-03 13:11:33'),
(609, 1, 'updated', 'users', 6, '2021-03-03 13:11:41', '2021-03-03 13:11:41'),
(610, 1, 'updated', 'users', 50, '2021-03-03 13:12:39', '2021-03-03 13:12:39'),
(611, 1, 'updated', 'users', 6, '2021-03-03 13:12:48', '2021-03-03 13:12:48'),
(612, 1, 'created', 'users', 241, '2021-03-03 13:25:34', '2021-03-03 13:25:34'),
(613, 1, 'created', 'users', 242, '2021-03-03 13:37:41', '2021-03-03 13:37:41'),
(614, 1, 'deleted', 'users', 240, '2021-03-03 13:40:26', '2021-03-03 13:40:26'),
(615, 1, 'updated', 'users', 197, '2021-03-03 14:01:19', '2021-03-03 14:01:19'),
(616, 1, 'deleted', 'users', 242, '2021-03-03 14:38:29', '2021-03-03 14:38:29'),
(617, 1, 'updated', 'users', 6, '2021-03-03 14:42:51', '2021-03-03 14:42:51'),
(618, 1, 'updated', 'users', 6, '2021-03-03 14:43:25', '2021-03-03 14:43:25'),
(619, 1, 'updated', 'users', 196, '2021-03-03 14:47:26', '2021-03-03 14:47:26'),
(620, 1, 'updated', 'users', 50, '2021-03-03 14:53:31', '2021-03-03 14:53:31'),
(621, 1, 'updated', 'users', 6, '2021-03-03 14:54:03', '2021-03-03 14:54:03'),
(622, 1, 'updated', 'users', 6, '2021-03-03 14:54:58', '2021-03-03 14:54:58');
INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(623, 1, 'updated', 'users', 131, '2021-03-03 14:59:40', '2021-03-03 14:59:40'),
(624, 1, 'updated', 'users', 131, '2021-03-03 15:07:15', '2021-03-03 15:07:15'),
(625, 1, 'updated', 'users', 118, '2021-03-03 15:09:04', '2021-03-03 15:09:04'),
(626, 1, 'updated', 'users', 172, '2021-03-03 15:12:55', '2021-03-03 15:12:55'),
(627, 1, 'updated', 'users', 138, '2021-03-03 15:16:17', '2021-03-03 15:16:17'),
(628, 1, 'updated', 'users', 50, '2021-03-03 15:27:55', '2021-03-03 15:27:55'),
(629, 1, 'updated', 'users', 73, '2021-03-03 15:42:14', '2021-03-03 15:42:14'),
(630, 1, 'updated', 'users', 29, '2021-03-03 15:52:34', '2021-03-03 15:52:34'),
(631, 1, 'created', 'users', 243, '2021-03-03 16:08:39', '2021-03-03 16:08:39'),
(632, 1, 'updated', 'users', 51, '2021-03-03 16:15:15', '2021-03-03 16:15:15'),
(633, 1, 'updated', 'users', 241, '2021-03-03 16:20:07', '2021-03-03 16:20:07'),
(634, 1, 'updated', 'users', 8, '2021-03-03 17:19:22', '2021-03-03 17:19:22'),
(635, 1, 'updated', 'users', 170, '2021-03-03 17:22:31', '2021-03-03 17:22:31'),
(636, 1, 'updated', 'users', 143, '2021-03-03 17:24:14', '2021-03-03 17:24:14'),
(637, 1, 'updated', 'users', 52, '2021-03-03 17:25:47', '2021-03-03 17:25:47'),
(638, 1, 'updated', 'users', 109, '2021-03-03 17:27:25', '2021-03-03 17:27:25'),
(639, 1, 'updated', 'users', 109, '2021-03-03 17:27:53', '2021-03-03 17:27:53'),
(640, 1, 'updated', 'users', 171, '2021-03-03 17:29:11', '2021-03-03 17:29:11'),
(641, 1, 'updated', 'users', 173, '2021-03-03 17:30:50', '2021-03-03 17:30:50'),
(642, 1, 'updated', 'users', 53, '2021-03-03 17:31:59', '2021-03-03 17:31:59'),
(643, 1, 'updated', 'users', 110, '2021-03-03 17:33:28', '2021-03-03 17:33:28'),
(644, 1, 'updated', 'users', 214, '2021-03-03 17:34:26', '2021-03-03 17:34:26'),
(645, 1, 'updated', 'users', 193, '2021-03-03 17:35:25', '2021-03-03 17:35:25'),
(646, 1, 'updated', 'users', 9, '2021-03-03 17:36:27', '2021-03-03 17:36:27'),
(647, 1, 'updated', 'users', 54, '2021-03-03 17:37:47', '2021-03-03 17:37:47'),
(648, 1, 'updated', 'users', 111, '2021-03-03 17:39:01', '2021-03-03 17:39:01'),
(649, 1, 'updated', 'users', 112, '2021-03-03 17:40:35', '2021-03-03 17:40:35'),
(650, 1, 'updated', 'users', 10, '2021-03-03 17:42:07', '2021-03-03 17:42:07'),
(651, 1, 'updated', 'users', 55, '2021-03-03 17:46:47', '2021-03-03 17:46:47'),
(652, 1, 'updated', 'users', 99, '2021-03-03 17:49:34', '2021-03-03 17:49:34'),
(653, 1, 'updated', 'users', 174, '2021-03-03 17:51:24', '2021-03-03 17:51:24'),
(654, 1, 'updated', 'users', 194, '2021-03-03 17:53:13', '2021-03-03 17:53:13'),
(655, 1, 'updated', 'users', 56, '2021-03-03 17:54:20', '2021-03-03 17:54:20'),
(656, 1, 'updated', 'users', 113, '2021-03-03 17:55:24', '2021-03-03 17:55:24'),
(657, 1, 'updated', 'users', 42, '2021-03-03 17:56:24', '2021-03-03 17:56:24'),
(658, 1, 'updated', 'users', 195, '2021-03-03 17:57:54', '2021-03-03 17:57:54'),
(659, 1, 'updated', 'users', 161, '2021-03-03 17:59:31', '2021-03-03 17:59:31'),
(660, 1, 'updated', 'users', 57, '2021-03-03 18:00:31', '2021-03-03 18:00:31'),
(661, 1, 'updated', 'users', 196, '2021-03-03 18:01:58', '2021-03-03 18:01:58'),
(662, 1, 'updated', 'users', 58, '2021-03-03 18:03:05', '2021-03-03 18:03:05'),
(663, 1, 'updated', 'users', 11, '2021-03-03 18:04:06', '2021-03-03 18:04:06'),
(664, 1, 'updated', 'users', 144, '2021-03-03 18:07:35', '2021-03-03 18:07:35'),
(665, 1, 'updated', 'users', 100, '2021-03-03 18:09:00', '2021-03-03 18:09:00'),
(666, 1, 'updated', 'users', 162, '2021-03-03 18:12:28', '2021-03-03 18:12:28'),
(667, 1, 'updated', 'users', 215, '2021-03-03 18:14:12', '2021-03-03 18:14:12'),
(668, 1, 'updated', 'users', 59, '2021-03-03 18:23:35', '2021-03-03 18:23:35'),
(669, 1, 'updated', 'users', 7, '2021-03-03 18:24:14', '2021-03-03 18:24:14'),
(670, 1, 'updated', 'users', 12, '2021-03-03 18:26:18', '2021-03-03 18:26:18'),
(671, 1, 'updated', 'users', 114, '2021-03-03 18:27:38', '2021-03-03 18:27:38'),
(672, 1, 'updated', 'users', 13, '2021-03-03 18:28:48', '2021-03-03 18:28:48'),
(673, 1, 'updated', 'users', 101, '2021-03-03 18:29:48', '2021-03-03 18:29:48'),
(674, 1, 'updated', 'users', 1, '2021-03-03 18:31:03', '2021-03-03 18:31:03'),
(675, 1, 'updated', 'users', 1, '2021-03-04 10:52:08', '2021-03-04 10:52:08'),
(676, 1, 'updated', 'users', 216, '2021-03-05 16:23:39', '2021-03-05 16:23:39'),
(677, 1, 'updated', 'users', 115, '2021-03-05 16:24:44', '2021-03-05 16:24:44'),
(678, 1, 'updated', 'users', 139, '2021-03-05 16:26:28', '2021-03-05 16:26:28'),
(679, 1, 'updated', 'users', 60, '2021-03-05 16:28:09', '2021-03-05 16:28:09'),
(680, 1, 'updated', 'users', 61, '2021-03-05 16:32:35', '2021-03-05 16:32:35'),
(681, 1, 'updated', 'users', 14, '2021-03-05 16:35:08', '2021-03-05 16:35:08'),
(682, 1, 'updated', 'users', 217, '2021-03-05 16:36:41', '2021-03-05 16:36:41'),
(683, 1, 'updated', 'users', 62, '2021-03-05 16:38:14', '2021-03-05 16:38:14'),
(684, 1, 'updated', 'users', 63, '2021-03-05 16:42:00', '2021-03-05 16:42:00'),
(685, 1, 'updated', 'users', 15, '2021-03-05 16:43:05', '2021-03-05 16:43:05'),
(686, 1, 'updated', 'users', 16, '2021-03-05 16:44:26', '2021-03-05 16:44:26'),
(687, 1, 'updated', 'users', 17, '2021-03-05 16:47:26', '2021-03-05 16:47:26'),
(688, 1, 'updated', 'users', 64, '2021-03-05 16:49:04', '2021-03-05 16:49:04'),
(689, 1, 'updated', 'users', 228, '2021-03-05 16:49:59', '2021-03-05 16:49:59'),
(690, 1, 'updated', 'users', 43, '2021-03-05 16:55:38', '2021-03-05 16:55:38'),
(691, 1, 'updated', 'users', 65, '2021-03-05 17:07:09', '2021-03-05 17:07:09'),
(692, 1, 'updated', 'users', 66, '2021-03-05 17:09:02', '2021-03-05 17:09:02'),
(693, 1, 'updated', 'users', 129, '2021-03-05 17:10:28', '2021-03-05 17:10:28'),
(694, 1, 'updated', 'users', 150, '2021-03-05 17:11:37', '2021-03-05 17:11:37'),
(695, 1, 'updated', 'users', 18, '2021-03-05 17:12:26', '2021-03-05 17:12:26'),
(696, 1, 'updated', 'users', 186, '2021-03-05 17:13:10', '2021-03-05 17:13:10'),
(697, 1, 'updated', 'users', 67, '2021-03-05 17:14:19', '2021-03-05 17:14:19'),
(698, 1, 'updated', 'users', 140, '2021-03-05 17:15:53', '2021-03-05 17:15:53'),
(699, 1, 'updated', 'users', 68, '2021-03-05 17:19:50', '2021-03-05 17:19:50'),
(700, 1, 'updated', 'users', 19, '2021-03-05 17:20:37', '2021-03-05 17:20:37'),
(701, 1, 'updated', 'users', 20, '2021-03-05 17:21:39', '2021-03-05 17:21:39'),
(702, 1, 'updated', 'users', 21, '2021-03-05 17:22:47', '2021-03-05 17:22:47'),
(703, 1, 'updated', 'users', 141, '2021-03-05 17:23:45', '2021-03-05 17:23:45'),
(704, 1, 'updated', 'users', 69, '2021-03-05 17:24:44', '2021-03-05 17:24:44'),
(705, 1, 'updated', 'users', 70, '2021-03-05 17:25:39', '2021-03-05 17:25:39'),
(706, 1, 'updated', 'users', 145, '2021-03-05 17:26:47', '2021-03-05 17:26:47'),
(707, 1, 'updated', 'users', 198, '2021-03-05 17:27:35', '2021-03-05 17:27:35'),
(708, 1, 'updated', 'users', 22, '2021-03-05 17:28:20', '2021-03-05 17:28:20'),
(709, 1, 'updated', 'users', 44, '2021-03-05 17:29:18', '2021-03-05 17:29:18'),
(710, 1, 'updated', 'users', 71, '2021-03-05 17:31:06', '2021-03-05 17:31:06'),
(711, 1, 'updated', 'users', 199, '2021-03-05 17:32:11', '2021-03-05 17:32:11'),
(712, 1, 'updated', 'users', 200, '2021-03-05 17:37:06', '2021-03-05 17:37:06'),
(713, 1, 'updated', 'users', 151, '2021-03-05 17:42:16', '2021-03-05 17:42:16'),
(714, 1, 'updated', 'users', 175, '2021-03-05 17:43:59', '2021-03-05 17:43:59'),
(715, 1, 'updated', 'users', 132, '2021-03-05 17:54:12', '2021-03-05 17:54:12'),
(716, 1, 'updated', 'users', 133, '2021-03-05 17:55:08', '2021-03-05 17:55:08'),
(717, 1, 'updated', 'users', 102, '2021-03-05 17:56:23', '2021-03-05 17:56:23'),
(718, 1, 'updated', 'users', 116, '2021-03-05 17:57:02', '2021-03-05 17:57:02'),
(719, 1, 'updated', 'users', 134, '2021-03-05 17:57:59', '2021-03-05 17:57:59'),
(720, 1, 'updated', 'users', 142, '2021-03-05 17:58:50', '2021-03-05 17:58:50'),
(721, 1, 'updated', 'users', 72, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(722, 1, 'updated', 'users', 201, '2021-03-05 18:00:35', '2021-03-05 18:00:35'),
(723, 1, 'updated', 'users', 187, '2021-03-05 18:01:41', '2021-03-05 18:01:41'),
(724, 1, 'updated', 'users', 218, '2021-03-05 18:02:32', '2021-03-05 18:02:32'),
(725, 1, 'updated', 'users', 117, '2021-03-05 18:03:12', '2021-03-05 18:03:12'),
(726, 1, 'updated', 'users', 152, '2021-03-05 18:04:03', '2021-03-05 18:04:03'),
(727, 1, 'updated', 'users', 135, '2021-03-05 18:04:57', '2021-03-05 18:04:57'),
(728, 1, 'updated', 'users', 23, '2021-03-05 18:05:36', '2021-03-05 18:05:36'),
(729, 1, 'updated', 'users', 24, '2021-03-05 18:06:13', '2021-03-05 18:06:13'),
(730, 1, 'updated', 'users', 219, '2021-03-05 18:07:11', '2021-03-05 18:07:11'),
(731, 1, 'updated', 'users', 202, '2021-03-05 18:08:28', '2021-03-05 18:08:28'),
(732, 1, 'updated', 'users', 220, '2021-03-05 18:11:32', '2021-03-05 18:11:32'),
(733, 1, 'updated', 'users', 73, '2021-03-05 18:16:01', '2021-03-05 18:16:01'),
(734, 1, 'updated', 'users', 221, '2021-03-05 18:35:31', '2021-03-05 18:35:31'),
(735, 1, 'updated', 'users', 1, '2021-03-05 18:35:33', '2021-03-05 18:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_division_map`
--

CREATE TABLE `user_division_map` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_division_map`
--

INSERT INTO `user_division_map` (`id`, `user_id`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 237, 1, '2020-03-10 19:42:23', '2020-03-10 19:42:23'),
(2, 237, 2, '2020-03-10 19:42:23', '2020-03-10 19:42:23'),
(3, 237, 3, '2020-03-10 19:42:23', '2020-03-10 19:42:23'),
(11, 45, 1, '2020-05-06 16:10:41', '2020-05-06 16:10:41'),
(12, 45, 2, '2020-05-06 16:10:41', '2020-05-06 16:10:41'),
(13, 45, 3, '2020-05-06 16:10:41', '2020-05-06 16:10:41'),
(14, 237, 1, '2020-09-15 02:13:51', '2020-09-15 02:13:51'),
(15, 237, 2, '2020-09-15 02:13:51', '2020-09-15 02:13:51'),
(16, 238, 2, '2020-09-15 02:13:51', '2020-09-15 02:13:51'),
(17, 238, 3, '2020-09-15 02:13:51', '2020-09-15 02:13:51'),
(63, 239, 0, '2021-03-03 11:51:25', '2021-03-03 11:51:25'),
(64, 239, 1, '2021-03-03 11:51:25', '2021-03-03 11:51:25'),
(65, 239, 2, '2021-03-03 11:51:25', '2021-03-03 11:51:25'),
(91, 240, 1, '2021-03-03 13:07:38', '2021-03-03 13:07:38'),
(107, 242, 2, '2021-03-03 13:37:41', '2021-03-03 13:37:41'),
(108, 197, 2, '2021-03-03 14:01:19', '2021-03-03 14:01:19'),
(109, 197, 3, '2021-03-03 14:01:19', '2021-03-03 14:01:19'),
(117, 6, 2, '2021-03-03 14:54:58', '2021-03-03 14:54:58'),
(120, 131, 2, '2021-03-03 15:07:15', '2021-03-03 15:07:15'),
(121, 131, 3, '2021-03-03 15:07:15', '2021-03-03 15:07:15'),
(122, 118, 2, '2021-03-03 15:09:04', '2021-03-03 15:09:04'),
(123, 118, 3, '2021-03-03 15:09:04', '2021-03-03 15:09:04'),
(124, 172, 2, '2021-03-03 15:12:55', '2021-03-03 15:12:55'),
(125, 172, 3, '2021-03-03 15:12:55', '2021-03-03 15:12:55'),
(126, 138, 2, '2021-03-03 15:16:16', '2021-03-03 15:16:16'),
(127, 50, 3, '2021-03-03 15:27:55', '2021-03-03 15:27:55'),
(129, 29, 2, '2021-03-03 15:52:34', '2021-03-03 15:52:34'),
(130, 243, 1, '2021-03-03 16:08:39', '2021-03-03 16:08:39'),
(131, 51, 3, '2021-03-03 16:15:14', '2021-03-03 16:15:14'),
(132, 241, 1, '2021-03-03 16:20:07', '2021-03-03 16:20:07'),
(133, 8, 2, '2021-03-03 17:19:22', '2021-03-03 17:19:22'),
(134, 170, 2, '2021-03-03 17:22:30', '2021-03-03 17:22:30'),
(135, 170, 3, '2021-03-03 17:22:30', '2021-03-03 17:22:30'),
(136, 143, 2, '2021-03-03 17:24:14', '2021-03-03 17:24:14'),
(137, 143, 3, '2021-03-03 17:24:14', '2021-03-03 17:24:14'),
(138, 52, 3, '2021-03-03 17:25:47', '2021-03-03 17:25:47'),
(141, 109, 2, '2021-03-03 17:27:52', '2021-03-03 17:27:52'),
(142, 109, 3, '2021-03-03 17:27:52', '2021-03-03 17:27:52'),
(143, 171, 2, '2021-03-03 17:29:11', '2021-03-03 17:29:11'),
(144, 171, 3, '2021-03-03 17:29:11', '2021-03-03 17:29:11'),
(145, 173, 2, '2021-03-03 17:30:50', '2021-03-03 17:30:50'),
(146, 173, 3, '2021-03-03 17:30:50', '2021-03-03 17:30:50'),
(147, 53, 3, '2021-03-03 17:31:58', '2021-03-03 17:31:58'),
(148, 110, 2, '2021-03-03 17:33:28', '2021-03-03 17:33:28'),
(149, 110, 3, '2021-03-03 17:33:28', '2021-03-03 17:33:28'),
(150, 214, 2, '2021-03-03 17:34:26', '2021-03-03 17:34:26'),
(151, 214, 3, '2021-03-03 17:34:26', '2021-03-03 17:34:26'),
(152, 193, 2, '2021-03-03 17:35:25', '2021-03-03 17:35:25'),
(153, 193, 3, '2021-03-03 17:35:25', '2021-03-03 17:35:25'),
(154, 9, 2, '2021-03-03 17:36:27', '2021-03-03 17:36:27'),
(155, 54, 3, '2021-03-03 17:37:46', '2021-03-03 17:37:46'),
(156, 111, 2, '2021-03-03 17:39:01', '2021-03-03 17:39:01'),
(157, 111, 3, '2021-03-03 17:39:01', '2021-03-03 17:39:01'),
(158, 112, 2, '2021-03-03 17:40:35', '2021-03-03 17:40:35'),
(159, 112, 3, '2021-03-03 17:40:35', '2021-03-03 17:40:35'),
(160, 10, 2, '2021-03-03 17:42:07', '2021-03-03 17:42:07'),
(161, 55, 3, '2021-03-03 17:46:47', '2021-03-03 17:46:47'),
(162, 99, 3, '2021-03-03 17:49:34', '2021-03-03 17:49:34'),
(163, 174, 2, '2021-03-03 17:51:24', '2021-03-03 17:51:24'),
(164, 174, 3, '2021-03-03 17:51:24', '2021-03-03 17:51:24'),
(165, 194, 2, '2021-03-03 17:53:13', '2021-03-03 17:53:13'),
(166, 194, 3, '2021-03-03 17:53:13', '2021-03-03 17:53:13'),
(167, 56, 3, '2021-03-03 17:54:19', '2021-03-03 17:54:19'),
(168, 113, 2, '2021-03-03 17:55:24', '2021-03-03 17:55:24'),
(169, 113, 3, '2021-03-03 17:55:24', '2021-03-03 17:55:24'),
(170, 42, 2, '2021-03-03 17:56:24', '2021-03-03 17:56:24'),
(171, 195, 2, '2021-03-03 17:57:54', '2021-03-03 17:57:54'),
(172, 195, 3, '2021-03-03 17:57:54', '2021-03-03 17:57:54'),
(173, 161, 2, '2021-03-03 17:59:30', '2021-03-03 17:59:30'),
(174, 161, 3, '2021-03-03 17:59:30', '2021-03-03 17:59:30'),
(175, 57, 3, '2021-03-03 18:00:31', '2021-03-03 18:00:31'),
(176, 196, 2, '2021-03-03 18:01:58', '2021-03-03 18:01:58'),
(177, 196, 3, '2021-03-03 18:01:58', '2021-03-03 18:01:58'),
(178, 58, 3, '2021-03-03 18:03:05', '2021-03-03 18:03:05'),
(179, 11, 2, '2021-03-03 18:04:06', '2021-03-03 18:04:06'),
(180, 144, 2, '2021-03-03 18:07:35', '2021-03-03 18:07:35'),
(181, 144, 3, '2021-03-03 18:07:35', '2021-03-03 18:07:35'),
(182, 100, 3, '2021-03-03 18:09:00', '2021-03-03 18:09:00'),
(183, 162, 2, '2021-03-03 18:12:28', '2021-03-03 18:12:28'),
(184, 162, 3, '2021-03-03 18:12:28', '2021-03-03 18:12:28'),
(185, 215, 2, '2021-03-03 18:14:12', '2021-03-03 18:14:12'),
(186, 215, 3, '2021-03-03 18:14:12', '2021-03-03 18:14:12'),
(187, 59, 3, '2021-03-03 18:23:35', '2021-03-03 18:23:35'),
(188, 7, 2, '2021-03-03 18:24:14', '2021-03-03 18:24:14'),
(189, 12, 2, '2021-03-03 18:26:18', '2021-03-03 18:26:18'),
(190, 114, 2, '2021-03-03 18:27:38', '2021-03-03 18:27:38'),
(191, 114, 3, '2021-03-03 18:27:38', '2021-03-03 18:27:38'),
(192, 13, 2, '2021-03-03 18:28:48', '2021-03-03 18:28:48'),
(193, 101, 3, '2021-03-03 18:29:47', '2021-03-03 18:29:47'),
(194, 216, 3, '2021-03-05 16:23:38', '2021-03-05 16:23:38'),
(195, 115, 2, '2021-03-05 16:24:44', '2021-03-05 16:24:44'),
(196, 115, 3, '2021-03-05 16:24:44', '2021-03-05 16:24:44'),
(197, 139, 2, '2021-03-05 16:26:28', '2021-03-05 16:26:28'),
(198, 139, 3, '2021-03-05 16:26:28', '2021-03-05 16:26:28'),
(199, 60, 3, '2021-03-05 16:28:09', '2021-03-05 16:28:09'),
(200, 61, 3, '2021-03-05 16:32:35', '2021-03-05 16:32:35'),
(201, 14, 2, '2021-03-05 16:35:08', '2021-03-05 16:35:08'),
(202, 217, 2, '2021-03-05 16:36:41', '2021-03-05 16:36:41'),
(203, 217, 3, '2021-03-05 16:36:41', '2021-03-05 16:36:41'),
(204, 62, 3, '2021-03-05 16:38:14', '2021-03-05 16:38:14'),
(205, 63, 3, '2021-03-05 16:42:00', '2021-03-05 16:42:00'),
(206, 15, 2, '2021-03-05 16:43:05', '2021-03-05 16:43:05'),
(207, 16, 2, '2021-03-05 16:44:26', '2021-03-05 16:44:26'),
(208, 17, 2, '2021-03-05 16:47:26', '2021-03-05 16:47:26'),
(209, 64, 3, '2021-03-05 16:49:04', '2021-03-05 16:49:04'),
(210, 228, 2, '2021-03-05 16:49:59', '2021-03-05 16:49:59'),
(211, 228, 3, '2021-03-05 16:49:59', '2021-03-05 16:49:59'),
(212, 43, 2, '2021-03-05 16:55:38', '2021-03-05 16:55:38'),
(213, 65, 3, '2021-03-05 17:07:09', '2021-03-05 17:07:09'),
(214, 66, 3, '2021-03-05 17:09:01', '2021-03-05 17:09:01'),
(215, 129, 2, '2021-03-05 17:10:27', '2021-03-05 17:10:27'),
(216, 129, 3, '2021-03-05 17:10:27', '2021-03-05 17:10:27'),
(217, 150, 2, '2021-03-05 17:11:37', '2021-03-05 17:11:37'),
(218, 150, 3, '2021-03-05 17:11:37', '2021-03-05 17:11:37'),
(219, 18, 2, '2021-03-05 17:12:26', '2021-03-05 17:12:26'),
(220, 186, 2, '2021-03-05 17:13:10', '2021-03-05 17:13:10'),
(221, 186, 3, '2021-03-05 17:13:10', '2021-03-05 17:13:10'),
(222, 67, 3, '2021-03-05 17:14:19', '2021-03-05 17:14:19'),
(223, 140, 2, '2021-03-05 17:15:53', '2021-03-05 17:15:53'),
(224, 140, 3, '2021-03-05 17:15:53', '2021-03-05 17:15:53'),
(225, 68, 3, '2021-03-05 17:19:50', '2021-03-05 17:19:50'),
(226, 19, 2, '2021-03-05 17:20:37', '2021-03-05 17:20:37'),
(227, 20, 2, '2021-03-05 17:21:39', '2021-03-05 17:21:39'),
(228, 21, 2, '2021-03-05 17:22:47', '2021-03-05 17:22:47'),
(229, 141, 2, '2021-03-05 17:23:45', '2021-03-05 17:23:45'),
(230, 141, 3, '2021-03-05 17:23:45', '2021-03-05 17:23:45'),
(231, 69, 3, '2021-03-05 17:24:43', '2021-03-05 17:24:43'),
(232, 70, 3, '2021-03-05 17:25:39', '2021-03-05 17:25:39'),
(233, 145, 2, '2021-03-05 17:26:47', '2021-03-05 17:26:47'),
(234, 145, 3, '2021-03-05 17:26:47', '2021-03-05 17:26:47'),
(235, 198, 2, '2021-03-05 17:27:35', '2021-03-05 17:27:35'),
(236, 198, 3, '2021-03-05 17:27:35', '2021-03-05 17:27:35'),
(237, 22, 2, '2021-03-05 17:28:20', '2021-03-05 17:28:20'),
(238, 44, 2, '2021-03-05 17:29:17', '2021-03-05 17:29:17'),
(239, 71, 3, '2021-03-05 17:31:06', '2021-03-05 17:31:06'),
(240, 199, 2, '2021-03-05 17:32:11', '2021-03-05 17:32:11'),
(241, 199, 3, '2021-03-05 17:32:11', '2021-03-05 17:32:11'),
(242, 200, 2, '2021-03-05 17:37:06', '2021-03-05 17:37:06'),
(243, 200, 3, '2021-03-05 17:37:06', '2021-03-05 17:37:06'),
(244, 151, 2, '2021-03-05 17:42:16', '2021-03-05 17:42:16'),
(245, 151, 3, '2021-03-05 17:42:16', '2021-03-05 17:42:16'),
(246, 175, 2, '2021-03-05 17:43:59', '2021-03-05 17:43:59'),
(247, 175, 3, '2021-03-05 17:43:59', '2021-03-05 17:43:59'),
(248, 132, 2, '2021-03-05 17:54:12', '2021-03-05 17:54:12'),
(249, 132, 3, '2021-03-05 17:54:12', '2021-03-05 17:54:12'),
(250, 133, 2, '2021-03-05 17:55:08', '2021-03-05 17:55:08'),
(251, 133, 3, '2021-03-05 17:55:08', '2021-03-05 17:55:08'),
(252, 102, 3, '2021-03-05 17:56:23', '2021-03-05 17:56:23'),
(253, 116, 2, '2021-03-05 17:57:02', '2021-03-05 17:57:02'),
(254, 116, 3, '2021-03-05 17:57:02', '2021-03-05 17:57:02'),
(255, 134, 2, '2021-03-05 17:57:59', '2021-03-05 17:57:59'),
(256, 134, 3, '2021-03-05 17:57:59', '2021-03-05 17:57:59'),
(257, 142, 2, '2021-03-05 17:58:50', '2021-03-05 17:58:50'),
(258, 142, 3, '2021-03-05 17:58:50', '2021-03-05 17:58:50'),
(259, 72, 3, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(260, 201, 2, '2021-03-05 18:00:35', '2021-03-05 18:00:35'),
(261, 201, 3, '2021-03-05 18:00:35', '2021-03-05 18:00:35'),
(262, 187, 2, '2021-03-05 18:01:41', '2021-03-05 18:01:41'),
(263, 187, 3, '2021-03-05 18:01:41', '2021-03-05 18:01:41'),
(264, 218, 2, '2021-03-05 18:02:32', '2021-03-05 18:02:32'),
(265, 218, 3, '2021-03-05 18:02:32', '2021-03-05 18:02:32'),
(266, 117, 2, '2021-03-05 18:03:12', '2021-03-05 18:03:12'),
(267, 117, 3, '2021-03-05 18:03:12', '2021-03-05 18:03:12'),
(268, 152, 2, '2021-03-05 18:04:03', '2021-03-05 18:04:03'),
(269, 152, 3, '2021-03-05 18:04:03', '2021-03-05 18:04:03'),
(270, 135, 2, '2021-03-05 18:04:57', '2021-03-05 18:04:57'),
(271, 135, 3, '2021-03-05 18:04:57', '2021-03-05 18:04:57'),
(272, 23, 2, '2021-03-05 18:05:36', '2021-03-05 18:05:36'),
(273, 24, 2, '2021-03-05 18:06:13', '2021-03-05 18:06:13'),
(274, 219, 2, '2021-03-05 18:07:11', '2021-03-05 18:07:11'),
(275, 219, 3, '2021-03-05 18:07:11', '2021-03-05 18:07:11'),
(276, 202, 2, '2021-03-05 18:08:28', '2021-03-05 18:08:28'),
(277, 202, 3, '2021-03-05 18:08:28', '2021-03-05 18:08:28'),
(278, 220, 2, '2021-03-05 18:11:32', '2021-03-05 18:11:32'),
(279, 220, 3, '2021-03-05 18:11:32', '2021-03-05 18:11:32'),
(280, 73, 3, '2021-03-05 18:16:01', '2021-03-05 18:16:01'),
(281, 221, 1, '2021-03-05 18:35:31', '2021-03-05 18:35:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circulus`
--
ALTER TABLE `circulus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeslist`
--
ALTER TABLE `employeeslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productCategoryMap`
--
ALTER TABLE `productCategoryMap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmapattachment`
--
ALTER TABLE `productmapattachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmapdivision`
--
ALTER TABLE `productmapdivision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_division_map`
--
ALTER TABLE `user_division_map`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `circulus`
--
ALTER TABLE `circulus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employeeslist`
--
ALTER TABLE `employeeslist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `productCategoryMap`
--
ALTER TABLE `productCategoryMap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `productmapattachment`
--
ALTER TABLE `productmapattachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `productmapdivision`
--
ALTER TABLE `productmapdivision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT for table `user_division_map`
--
ALTER TABLE `user_division_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
