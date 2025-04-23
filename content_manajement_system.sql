-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2025 at 03:09 PM
-- Server version: 5.7.33
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `content_manajement_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles_cover`
--

CREATE TABLE `articles_cover` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `cover_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags`
--

CREATE TABLE `articles_tags` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_sponsors`
--

CREATE TABLE `article_sponsors` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `sponsor_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1745349238),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1745349238;', 1745349238),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36', 'i:1;', 1745419107),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36:timer', 'i:1745419107;', 1745419107),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:116:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"view_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"create_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"update_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"restore_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"restore_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:17:\"replicate_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:15:\"reorder_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:14:\"delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:20:\"force_delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:24:\"force_delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"view_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"view_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"create_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"update_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"restore_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:20:\"restore_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:18:\"replicate_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"reorder_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:15:\"delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:19:\"delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:21:\"force_delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:25:\"force_delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:19:\"view_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:23:\"view_any_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:21:\"create_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:21:\"update_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:22:\"restore_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:26:\"restore_any_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:24:\"replicate_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:22:\"reorder_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:21:\"delete_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:25:\"delete_any_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:27:\"force_delete_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:31:\"force_delete_any_media::partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:29:\"view_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:33:\"view_any_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:31:\"create_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:31:\"update_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:32:\"restore_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:36:\"restore_any_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:34:\"replicate_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:32:\"reorder_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:31:\"delete_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:35:\"delete_any_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:37:\"force_delete_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:41:\"force_delete_any_media::partner::position\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:9:\"view_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:13:\"view_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:11:\"create_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:11:\"update_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:12:\"restore_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:16:\"restore_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:14:\"replicate_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:12:\"reorder_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:11:\"delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:15:\"delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:17:\"force_delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:21:\"force_delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:12:\"view_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:16:\"view_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:14:\"create_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:14:\"update_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:15:\"restore_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:19:\"restore_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:17:\"replicate_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:15:\"reorder_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:14:\"delete_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:18:\"delete_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:20:\"force_delete_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:24:\"force_delete_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:37:\"page_FilamentGoogleAnalyticsDashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:24:\"page_GeneralSettingsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:12:\"page_ViewEnv\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:22:\"widget_PageViewsWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:21:\"widget_VisitorsWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:30:\"widget_ActiveUsersOneDayWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:32:\"widget_ActiveUsersSevenDayWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:38:\"widget_ActiveUsersTwentyEightDayWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:21:\"widget_SessionsWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:29:\"widget_SessionsDurationWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:30:\"widget_SessionsByCountryWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:29:\"widget_SessionsByDeviceWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:29:\"widget_MostVisitedPagesWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:29:\"widget_TopReferrersListWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:10:\"view_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:14:\"view_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:12:\"create_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:12:\"update_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:13:\"restore_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:17:\"restore_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:15:\"replicate_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:13:\"reorder_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:12:\"delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:16:\"delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:18:\"force_delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:22:\"force_delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"Developer\";s:1:\"c\";s:3:\"web\";}}}', 1745478388);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `fields` json DEFAULT NULL,
  `layout_detail_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `default`, `fields`, `layout_detail_path`) VALUES
(1, 'Test', 1, '[{\"name\": \"te\", \"rows\": null, \"type\": \"password\", \"field\": \"text\", \"label\": null, \"rules\": null, \"format\": null, \"options\": [], \"seconds\": false, \"required\": false, \"column_span\": 1, \"placeholder\": null}, {\"name\": \"st\", \"rows\": null, \"type\": null, \"field\": \"boolean\", \"label\": null, \"rules\": null, \"format\": null, \"options\": [], \"seconds\": false, \"required\": false, \"column_span\": 1, \"placeholder\": null}, {\"name\": \"test\", \"rows\": null, \"type\": null, \"field\": \"datetime\", \"label\": null, \"rules\": null, \"format\": null, \"options\": [], \"seconds\": false, \"required\": false, \"column_span\": 1, \"placeholder\": null}, {\"name\": \"tes\", \"rows\": \"10\", \"type\": null, \"field\": \"textarea\", \"label\": null, \"rules\": null, \"format\": null, \"options\": [], \"seconds\": false, \"required\": false, \"column_span\": \"2\", \"placeholder\": null}]', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `covers`
--

CREATE TABLE `covers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_description` text COLLATE utf8mb4_unicode_ci,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `user_features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `google_analytics_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `email_from_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_network` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `more_configs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `site_description`, `site_logo`, `site_favicon`, `support_email`, `support_phone`, `theme_color`, `features`, `user_features`, `google_analytics_tag`, `email_settings`, `email_from_address`, `email_from_name`, `social_network`, `more_configs`, `created_at`, `updated_at`) VALUES
(1, 'Content Manajement System', NULL, 'assets/site_logo.png', 'assets/site_favicon.ico', 'crehadigital@gmail.com', '+628516358779', NULL, '{\"sponsors\":true,\"analytics\":false}', NULL, 'G-0WPCQWGGLH', '{\"default_email_provider\":\"smtp\",\"smtp_host\":null,\"smtp_port\":null,\"smtp_encryption\":null,\"smtp_timeout\":null,\"smtp_username\":null,\"smtp_password\":null,\"mailgun_domain\":null,\"mailgun_secret\":null,\"mailgun_endpoint\":null,\"postmark_token\":null,\"amazon_ses_key\":null,\"amazon_ses_secret\":null,\"amazon_ses_region\":null}', NULL, NULL, '{\"tiktok\":null,\"youtube\":null,\"facebook\":null,\"linkedin\":null,\"whatsapp\":null,\"instagram\":null,\"pinterest\":null,\"x_twitter\":null}', '{\"footer\": \"1\", \"navigation\": \"2\"}', NULL, '2025-04-21 05:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `directory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'media',
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `size` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `exif` text COLLATE utf8mb4_unicode_ci,
  `curations` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `disk`, `directory`, `visibility`, `name`, `path`, `width`, `height`, `size`, `type`, `ext`, `alt`, `title`, `description`, `caption`, `exif`, `curations`, `created_at`, `updated_at`, `tenant_id`) VALUES
(1, 'public', 'images', 'public', '9870bc70-a751-46c0-97fd-b2b0611f0fd9', 'images/9870bc70-a751-46c0-97fd-b2b0611f0fd9.png', 4000, 2012, 480527, 'image/png', 'png', NULL, 'site_logo', NULL, NULL, NULL, NULL, '2025-04-22 18:08:25', '2025-04-22 18:08:25', NULL);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_27_000000_create_permission_tables', 1),
(5, '2025_03_27_000001_create_general-settings_table', 1),
(6, '2025_03_27_000002_add_logo_favicon_columns_to_general_settings_table', 1),
(7, '2025_03_27_100001_create_tag_table', 1),
(9, '2025_03_27_100003_create_articles_table', 1),
(10, '2025_03_27_100004_create_categories_table', 1),
(11, '2025_03_27_100005_create_covers_table', 1),
(12, '2025_03_27_100006_create_sponsors_table', 1),
(15, '2025_03_27_100101_create_patterns_table', 1),
(16, '2025_03_27_100102_create_pages_table', 1),
(17, '2025_04_22_143452_create_media_table', 2),
(18, '2025_04_22_143453_add_tenant_aware_column_to_media_table', 2),
(20, '2025_04_22_163559_switch_categories_and_tags', 3),
(21, '2025_04_22_185244_update_categories', 4),
(22, '2025_04_23_132527_rename_column_articles_others_to_fields', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `sort_order`, `created_by`, `updated_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', 'home', 1, 1, 1, '2025-04-12 09:31:48', '2025-03-28 00:00:02', '2025-04-12 09:31:48', NULL),
(2, 'Articles', 'articles', 2, 1, 1, '2025-03-28 00:00:26', '2025-03-28 00:00:02', '2025-04-18 17:11:35', NULL),
(3, 'Events', 'events', 3, 1, 1, '2025-03-28 00:00:26', '2025-03-28 00:00:02', '2025-03-28 00:00:26', NULL),
(4, 'Contact', 'contact', 5, 1, 1, '2025-03-28 00:00:26', '2025-03-28 00:00:02', '2025-03-28 00:00:26', NULL),
(6, 'About us', 'about-us', 4, 1, 1, '2025-03-28 00:00:26', '2025-03-28 00:00:02', '2025-03-28 00:00:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_sections`
--

CREATE TABLE `page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `pattern_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_sections`
--

INSERT INTO `page_sections` (`id`, `page_id`, `sort_order`, `pattern_id`) VALUES
(5, 6, 1, 9),
(6, 6, 2, 8),
(7, 6, 3, 10),
(8, 6, 4, 11),
(10, 6, 6, 12),
(11, 4, 1, 13),
(14, 2, 1, 16),
(15, 2, 2, 17),
(16, 3, 1, 18),
(17, 3, 2, 19),
(19, 1, 1, 3),
(20, 1, 2, 14),
(21, 1, 3, 4),
(22, 1, 4, 5),
(23, 1, 5, 15),
(24, 1, 6, 6),
(25, 6, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patterns`
--

CREATE TABLE `patterns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_dataset` tinyint(1) NOT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patterns`
--

INSERT INTO `patterns` (`id`, `title`, `layout_path`, `has_dataset`, `type_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Footer', 'footers/footer', 0, 1, 1, '2025-01-01 19:04:47', '2025-02-28 06:45:41', NULL),
(2, 'Navigation', 'navigations/default', 0, 2, 1, '2025-02-28 05:11:02', '2025-02-28 05:11:02', NULL),
(3, 'Carousel', 'heroes/carousel', 0, 3, 1, '2025-02-28 06:10:35', '2025-02-28 06:10:55', NULL),
(4, 'Statistics', 'banners/statistics', 0, 4, 1, '2025-02-28 06:15:48', '2025-02-28 06:15:48', NULL),
(5, 'Location', 'banners/location', 0, 4, 1, '2025-02-28 06:16:12', '2025-02-28 06:16:12', NULL),
(6, 'Sponsors', 'others/sponsors', 0, 5, 1, '2025-02-28 06:17:43', '2025-04-12 13:13:59', NULL),
(7, 'Footer v.2', 'footers/footerv2', 0, 1, 1, '2025-02-28 06:46:08', '2025-02-28 06:46:08', NULL),
(8, 'Banner Image v.1', 'banners/imagev1', 0, 4, 1, '2025-02-28 06:46:56', '2025-02-28 06:46:56', NULL),
(9, 'Hero About', 'heroes/about', 0, 3, 1, '2025-02-28 06:50:34', '2025-02-28 07:14:32', NULL),
(10, 'Vision & Mision', 'others/visi_misi', 0, 5, 1, '2025-02-28 06:56:34', '2025-02-28 06:56:34', NULL),
(11, 'ARC', 'others/arc', 0, 5, 1, '2025-02-28 06:56:57', '2025-02-28 06:56:57', NULL),
(12, 'Members', 'others/members', 0, 5, 1, '2025-02-28 06:57:31', '2025-02-28 06:57:31', NULL),
(13, 'Contact', 'others/contact', 0, 5, 1, '2025-02-28 07:16:09', '2025-02-28 07:16:09', NULL),
(14, 'Article Latest', 'articles/latest', 1, 6, 1, '2025-03-02 20:59:05', '2025-04-18 17:13:15', NULL),
(15, 'Event Latest', 'events/latest', 1, 7, 1, '2025-03-02 23:31:31', '2025-03-02 23:31:31', NULL),
(16, 'Article Highlight', 'articles/highlight', 1, 6, 1, '2025-03-02 23:59:17', '2025-04-18 17:13:29', NULL),
(17, 'Article Pagination', 'articles/pagination', 1, 6, 1, '2025-03-03 00:06:47', '2025-04-18 17:14:03', NULL),
(18, 'Event Upcoming', 'events/upcoming', 1, 7, 1, '2025-03-03 00:15:07', '2025-03-03 00:15:59', NULL),
(19, 'Event Pagination', 'events/pagination', 1, 7, 1, '2025-03-03 00:17:37', '2025-03-03 00:17:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pattern_loads`
--

CREATE TABLE `pattern_loads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pattern_id` bigint(20) UNSIGNED NOT NULL,
  `name_variable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` bigint(20) UNSIGNED NOT NULL,
  `order_col` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published_at',
  `order_sort` enum('asc','desc') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'asc',
  `paginate` enum('default','simple') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pattern_loads`
--

INSERT INTO `pattern_loads` (`id`, `pattern_id`, `name_variable`, `dataset_id`, `order_col`, `order_sort`, `paginate`, `limit`) VALUES
(4, 14, 'postlatest', 1, 'published_at', 'asc', NULL, 4),
(5, 15, 'eventlatest', 2, 'published_at', 'asc', NULL, 4),
(6, 16, 'posthighlight', 1, 'published_at', 'asc', NULL, 4),
(7, 17, 'postpagination', 1, 'published_at', 'asc', 'default', 16),
(8, 18, 'eventupcoming', 2, 'published_at', 'asc', NULL, 4),
(9, 19, 'eventpagination', 2, 'published_at', 'asc', 'default', 16);

-- --------------------------------------------------------

--
-- Table structure for table `pattern_types`
--

CREATE TABLE `pattern_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pattern_types`
--

INSERT INTO `pattern_types` (`id`, `type`) VALUES
(6, 'Article'),
(4, 'Banner'),
(7, 'Event'),
(1, 'Footer'),
(3, 'Hero'),
(2, 'Navigation'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(2, 'view_any_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(3, 'create_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(4, 'update_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(5, 'restore_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(6, 'restore_any_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(7, 'replicate_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(8, 'reorder_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(9, 'delete_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(10, 'delete_any_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(11, 'force_delete_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(12, 'force_delete_any_article', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(13, 'view_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(14, 'view_any_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(15, 'create_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(16, 'update_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(17, 'restore_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(18, 'restore_any_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(19, 'replicate_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(20, 'reorder_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(21, 'delete_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(22, 'delete_any_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(23, 'force_delete_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(24, 'force_delete_any_category', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(25, 'view_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(26, 'view_any_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(27, 'create_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(28, 'update_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(29, 'restore_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(30, 'restore_any_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(31, 'replicate_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(32, 'reorder_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(33, 'delete_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(34, 'delete_any_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(35, 'force_delete_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(36, 'force_delete_any_media::partner', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(37, 'view_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(38, 'view_any_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(39, 'create_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(40, 'update_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(41, 'restore_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(42, 'restore_any_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(43, 'replicate_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(44, 'reorder_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(45, 'delete_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(46, 'delete_any_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(47, 'force_delete_media::partner::position', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(48, 'force_delete_any_media::partner::position', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(61, 'view_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(62, 'view_any_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(63, 'create_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(64, 'update_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(65, 'restore_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(66, 'restore_any_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(67, 'replicate_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(68, 'reorder_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(69, 'delete_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(70, 'delete_any_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(71, 'force_delete_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(72, 'force_delete_any_page', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(73, 'view_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(74, 'view_any_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(75, 'create_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(76, 'update_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(77, 'restore_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(78, 'restore_any_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(79, 'replicate_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(80, 'reorder_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(81, 'delete_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(82, 'delete_any_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(83, 'force_delete_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(84, 'force_delete_any_pattern', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(85, 'view_role', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(86, 'view_any_role', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(87, 'create_role', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(88, 'update_role', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(89, 'delete_role', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(90, 'delete_any_role', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(91, 'view_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(92, 'view_any_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(93, 'create_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(94, 'update_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(95, 'restore_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(96, 'restore_any_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(97, 'replicate_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(98, 'reorder_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(99, 'delete_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(100, 'delete_any_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(101, 'force_delete_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(102, 'force_delete_any_user', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(103, 'page_FilamentGoogleAnalyticsDashboard', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(104, 'page_GeneralSettingsPage', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(105, 'page_ViewEnv', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(106, 'widget_PageViewsWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(107, 'widget_VisitorsWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(108, 'widget_ActiveUsersOneDayWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(109, 'widget_ActiveUsersSevenDayWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(110, 'widget_ActiveUsersTwentyEightDayWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(111, 'widget_SessionsWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(112, 'widget_SessionsDurationWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(113, 'widget_SessionsByCountryWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(114, 'widget_SessionsByDeviceWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(115, 'widget_MostVisitedPagesWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(116, 'widget_TopReferrersListWidget', 'web', '2025-03-27 10:56:01', '2025-03-27 10:56:01'),
(117, 'view_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(118, 'view_any_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(119, 'create_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(120, 'update_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(121, 'restore_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(122, 'restore_any_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(123, 'replicate_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(124, 'reorder_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(125, 'delete_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(126, 'delete_any_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(127, 'force_delete_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42'),
(128, 'force_delete_any_cover', 'web', '2025-04-12 01:41:42', '2025-04-12 01:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('g5s8NjhXvTuPdKlO19FexpqmleXj12qRtiRNB6D0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQ01aYVFkWGNBWnlsRkt3ckhNckZWbnZBV3pGRnVFNGVicjR6MWZEaSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYXJ0aWNsZXMvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDVsaXl1WEoyQjIzUUlQYTkya2RKTHUxaHY0cDJ1eHhBRXowLlZ2L0xIRUExYmYycG1OQXlXIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1745420885);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `lazy` tinyint(1) NOT NULL DEFAULT '1',
  `featured` int(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_categories`
--

CREATE TABLE `sponsor_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `profile_image`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Superadmin', '$2y$12$5liyuXJ2B23QIPa92kdJLu1hv4p2uxxAEz0.Vv/LHEA1bf2pmNAyW', 'superadmin@gmail.com', NULL, '2025-03-27 10:39:06', '7vP2a2fMdRyxKZ6T1YbjRxrwInRnVodr1V48Ug4lZ0FYgoeKvUlfOUUP1jPZ', '2025-03-27 10:39:06', '2025-03-27 10:39:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_title_unique` (`title`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`),
  ADD KEY `articles_created_by_foreign` (`created_by`),
  ADD KEY `articles_updated_by_foreign` (`updated_by`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `articles_cover`
--
ALTER TABLE `articles_cover`
  ADD KEY `articles_cover_article_id_foreign` (`article_id`),
  ADD KEY `articles_cover_cover_id_foreign` (`cover_id`);

--
-- Indexes for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD KEY `articles_categories_article_id_foreign` (`article_id`),
  ADD KEY `articles_categories_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `article_sponsors`
--
ALTER TABLE `article_sponsors`
  ADD KEY `article_sponsors_article_id_foreign` (`article_id`),
  ADD KEY `article_sponsors_sponsor_id_foreign` (`sponsor_id`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_created_by_foreign` (`created_by`),
  ADD KEY `pages_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `page_sections`
--
ALTER TABLE `page_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_sections_page_id_foreign` (`page_id`),
  ADD KEY `page_sections_pattern_id_foreign` (`pattern_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patterns`
--
ALTER TABLE `patterns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patterns_title_unique` (`title`),
  ADD KEY `patterns_type_id_foreign` (`type_id`),
  ADD KEY `patterns_user_id_foreign` (`user_id`);

--
-- Indexes for table `pattern_loads`
--
ALTER TABLE `pattern_loads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pattern_loads_name_variable_unique` (`name_variable`),
  ADD KEY `pattern_loads_pattern_id_foreign` (`pattern_id`),
  ADD KEY `pattern_loads_dataset_id_foreign` (`dataset_id`);

--
-- Indexes for table `pattern_types`
--
ALTER TABLE `pattern_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pattern_types_type_unique` (`type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sponsors_title_unique` (`title`),
  ADD KEY `sponsors_category_id_foreign` (`category_id`),
  ADD KEY `sponsors_user_id_foreign` (`user_id`);

--
-- Indexes for table `sponsor_categories`
--
ALTER TABLE `sponsor_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sponsor_categories_category_name_unique` (`category_name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`tag_name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `covers`
--
ALTER TABLE `covers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `patterns`
--
ALTER TABLE `patterns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pattern_loads`
--
ALTER TABLE `pattern_loads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pattern_types`
--
ALTER TABLE `pattern_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponsor_categories`
--
ALTER TABLE `sponsor_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `articles_cover`
--
ALTER TABLE `articles_cover`
  ADD CONSTRAINT `articles_cover_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_cover_cover_id_foreign` FOREIGN KEY (`cover_id`) REFERENCES `covers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `articles_categories_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_categories_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `article_sponsors`
--
ALTER TABLE `article_sponsors`
  ADD CONSTRAINT `articles_media_partners_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_media_partners_media_partner_id_foreign` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `page_sections`
--
ALTER TABLE `page_sections`
  ADD CONSTRAINT `page_sections_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `page_sections_pattern_id_foreign` FOREIGN KEY (`pattern_id`) REFERENCES `patterns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patterns`
--
ALTER TABLE `patterns`
  ADD CONSTRAINT `patterns_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `pattern_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `patterns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pattern_loads`
--
ALTER TABLE `pattern_loads`
  ADD CONSTRAINT `pattern_loads_dataset_id_foreign` FOREIGN KEY (`dataset_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pattern_loads_pattern_id_foreign` FOREIGN KEY (`pattern_id`) REFERENCES `patterns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `media_partners_position_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `sponsor_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `media_partners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
