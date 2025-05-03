-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2025 at 03:17 AM
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
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36', 'i:1;', 1746240617),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36:timer', 'i:1746240617;', 1746240617),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:131:{i:0;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:12:\"view_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:1;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:16:\"view_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:2;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:14:\"create_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:3;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:14:\"update_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:4;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:15:\"restore_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:5;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:19:\"restore_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:6;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:17:\"replicate_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:7;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:15:\"reorder_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:8;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:14:\"delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:9;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:18:\"delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:10;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:20:\"force_delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:11;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:24:\"force_delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:12;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:13:\"view_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:13;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:17:\"view_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:14;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:15:\"create_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:15;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:15:\"update_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:16;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:16:\"restore_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:17;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:20:\"restore_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:18;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:18:\"replicate_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:19;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:16:\"reorder_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:20;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:15:\"delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:21;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:19:\"delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:22;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:21:\"force_delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:23;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:25:\"force_delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:24;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:10:\"view_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:25;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:14:\"view_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:26;a:4:{s:1:\"a\";i:155;s:1:\"b\";s:12:\"create_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:27;a:4:{s:1:\"a\";i:156;s:1:\"b\";s:12:\"update_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:28;a:4:{s:1:\"a\";i:157;s:1:\"b\";s:13:\"restore_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:29;a:4:{s:1:\"a\";i:158;s:1:\"b\";s:17:\"restore_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:30;a:4:{s:1:\"a\";i:159;s:1:\"b\";s:15:\"replicate_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:31;a:4:{s:1:\"a\";i:160;s:1:\"b\";s:13:\"reorder_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:32;a:4:{s:1:\"a\";i:161;s:1:\"b\";s:12:\"delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:33;a:4:{s:1:\"a\";i:162;s:1:\"b\";s:16:\"delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:34;a:4:{s:1:\"a\";i:163;s:1:\"b\";s:18:\"force_delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:35;a:4:{s:1:\"a\";i:164;s:1:\"b\";s:22:\"force_delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:36;a:4:{s:1:\"a\";i:165;s:1:\"b\";s:10:\"view_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:37;a:4:{s:1:\"a\";i:166;s:1:\"b\";s:14:\"view_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:38;a:4:{s:1:\"a\";i:167;s:1:\"b\";s:12:\"create_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:39;a:4:{s:1:\"a\";i:168;s:1:\"b\";s:12:\"update_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:40;a:4:{s:1:\"a\";i:169;s:1:\"b\";s:13:\"restore_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:41;a:4:{s:1:\"a\";i:170;s:1:\"b\";s:17:\"restore_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:42;a:4:{s:1:\"a\";i:171;s:1:\"b\";s:15:\"replicate_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:43;a:4:{s:1:\"a\";i:172;s:1:\"b\";s:13:\"reorder_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:44;a:4:{s:1:\"a\";i:173;s:1:\"b\";s:12:\"delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:45;a:4:{s:1:\"a\";i:174;s:1:\"b\";s:16:\"delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:46;a:4:{s:1:\"a\";i:175;s:1:\"b\";s:18:\"force_delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:47;a:4:{s:1:\"a\";i:176;s:1:\"b\";s:22:\"force_delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:48;a:4:{s:1:\"a\";i:177;s:1:\"b\";s:9:\"view_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:49;a:4:{s:1:\"a\";i:178;s:1:\"b\";s:13:\"view_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:50;a:4:{s:1:\"a\";i:179;s:1:\"b\";s:11:\"create_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:51;a:4:{s:1:\"a\";i:180;s:1:\"b\";s:11:\"update_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:52;a:4:{s:1:\"a\";i:181;s:1:\"b\";s:12:\"restore_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:53;a:4:{s:1:\"a\";i:182;s:1:\"b\";s:16:\"restore_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:54;a:4:{s:1:\"a\";i:183;s:1:\"b\";s:14:\"replicate_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:55;a:4:{s:1:\"a\";i:184;s:1:\"b\";s:12:\"reorder_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:56;a:4:{s:1:\"a\";i:185;s:1:\"b\";s:11:\"delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:57;a:4:{s:1:\"a\";i:186;s:1:\"b\";s:15:\"delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:58;a:4:{s:1:\"a\";i:187;s:1:\"b\";s:17:\"force_delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:59;a:4:{s:1:\"a\";i:188;s:1:\"b\";s:21:\"force_delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:60;a:4:{s:1:\"a\";i:189;s:1:\"b\";s:12:\"view_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:61;a:4:{s:1:\"a\";i:190;s:1:\"b\";s:16:\"view_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:62;a:4:{s:1:\"a\";i:191;s:1:\"b\";s:14:\"create_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:63;a:4:{s:1:\"a\";i:192;s:1:\"b\";s:14:\"update_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:64;a:4:{s:1:\"a\";i:193;s:1:\"b\";s:15:\"restore_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:65;a:4:{s:1:\"a\";i:194;s:1:\"b\";s:19:\"restore_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:66;a:4:{s:1:\"a\";i:195;s:1:\"b\";s:17:\"replicate_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:67;a:4:{s:1:\"a\";i:196;s:1:\"b\";s:15:\"reorder_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:68;a:4:{s:1:\"a\";i:197;s:1:\"b\";s:14:\"delete_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:69;a:4:{s:1:\"a\";i:198;s:1:\"b\";s:18:\"delete_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:70;a:4:{s:1:\"a\";i:199;s:1:\"b\";s:20:\"force_delete_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:71;a:4:{s:1:\"a\";i:200;s:1:\"b\";s:24:\"force_delete_any_pattern\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:72;a:4:{s:1:\"a\";i:201;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:73;a:4:{s:1:\"a\";i:202;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:74;a:4:{s:1:\"a\";i:203;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:75;a:4:{s:1:\"a\";i:204;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:76;a:4:{s:1:\"a\";i:205;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:77;a:4:{s:1:\"a\";i:206;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:78;a:4:{s:1:\"a\";i:207;s:1:\"b\";s:12:\"view_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:79;a:4:{s:1:\"a\";i:208;s:1:\"b\";s:16:\"view_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:80;a:4:{s:1:\"a\";i:209;s:1:\"b\";s:14:\"create_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:81;a:4:{s:1:\"a\";i:210;s:1:\"b\";s:14:\"update_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:82;a:4:{s:1:\"a\";i:211;s:1:\"b\";s:15:\"restore_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:83;a:4:{s:1:\"a\";i:212;s:1:\"b\";s:19:\"restore_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:84;a:4:{s:1:\"a\";i:213;s:1:\"b\";s:17:\"replicate_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:85;a:4:{s:1:\"a\";i:214;s:1:\"b\";s:15:\"reorder_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:86;a:4:{s:1:\"a\";i:215;s:1:\"b\";s:14:\"delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:87;a:4:{s:1:\"a\";i:216;s:1:\"b\";s:18:\"delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:88;a:4:{s:1:\"a\";i:217;s:1:\"b\";s:20:\"force_delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:89;a:4:{s:1:\"a\";i:218;s:1:\"b\";s:24:\"force_delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:90;a:4:{s:1:\"a\";i:219;s:1:\"b\";s:22:\"view_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:91;a:4:{s:1:\"a\";i:220;s:1:\"b\";s:26:\"view_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:92;a:4:{s:1:\"a\";i:221;s:1:\"b\";s:24:\"create_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:93;a:4:{s:1:\"a\";i:222;s:1:\"b\";s:24:\"update_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:94;a:4:{s:1:\"a\";i:223;s:1:\"b\";s:25:\"restore_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:95;a:4:{s:1:\"a\";i:224;s:1:\"b\";s:29:\"restore_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:96;a:4:{s:1:\"a\";i:225;s:1:\"b\";s:27:\"replicate_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:97;a:4:{s:1:\"a\";i:226;s:1:\"b\";s:25:\"reorder_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:98;a:4:{s:1:\"a\";i:227;s:1:\"b\";s:24:\"delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:99;a:4:{s:1:\"a\";i:228;s:1:\"b\";s:28:\"delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:100;a:4:{s:1:\"a\";i:229;s:1:\"b\";s:30:\"force_delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:101;a:4:{s:1:\"a\";i:230;s:1:\"b\";s:34:\"force_delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:6;}}i:102;a:4:{s:1:\"a\";i:231;s:1:\"b\";s:8:\"view_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:103;a:4:{s:1:\"a\";i:232;s:1:\"b\";s:12:\"view_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:104;a:4:{s:1:\"a\";i:233;s:1:\"b\";s:10:\"create_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:105;a:4:{s:1:\"a\";i:234;s:1:\"b\";s:10:\"update_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:106;a:4:{s:1:\"a\";i:235;s:1:\"b\";s:11:\"restore_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:107;a:4:{s:1:\"a\";i:236;s:1:\"b\";s:15:\"restore_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:108;a:4:{s:1:\"a\";i:237;s:1:\"b\";s:13:\"replicate_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:109;a:4:{s:1:\"a\";i:238;s:1:\"b\";s:11:\"reorder_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:110;a:4:{s:1:\"a\";i:239;s:1:\"b\";s:10:\"delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:111;a:4:{s:1:\"a\";i:240;s:1:\"b\";s:14:\"delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:112;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:16:\"force_delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:113;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:20:\"force_delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:114;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:115;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:116;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:117;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:118;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:119;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:120;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:121;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:122;a:4:{s:1:\"a\";i:251;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:123;a:4:{s:1:\"a\";i:252;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:124;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:125;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:126;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:24:\"page_GeneralSettingsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:127;a:3:{s:1:\"a\";i:256;s:1:\"b\";s:12:\"page_ViewEnv\";s:1:\"c\";s:3:\"web\";}i:128;a:4:{s:1:\"a\";i:257;s:1:\"b\";s:21:\"widget_OptimizeButton\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:129;a:4:{s:1:\"a\";i:258;s:1:\"b\";s:18:\"page_EnvEditorPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:130;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:24:\"page_GoogleAnalyticsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"Developer\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}}}', 1746289510);

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
  `contacts` json DEFAULT NULL,
  `location` json DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `user_features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `google_analytics` json DEFAULT NULL,
  `chatbot_settings` json DEFAULT NULL,
  `theme` json DEFAULT NULL,
  `email_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `social_network` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `more_configs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `site_description`, `site_logo`, `site_favicon`, `contacts`, `location`, `features`, `user_features`, `google_analytics`, `chatbot_settings`, `theme`, `email_settings`, `social_network`, `more_configs`, `created_at`, `updated_at`) VALUES
(1, 'Content Manajement Syste', NULL, 'assets/site_logo.png', 'assets/site_favicon.ico', '{\"email\": null, \"phone\": null, \"whatsapp\": null}', '{\"address\": \"Kantor\", \"coordinate\": {\"lat\": -8.695344881691632, \"lng\": 115.21278619766235}}', '{\"sponsors\":true,\"analytics\":false}', '{\"chatbot\":false}', '{\"google_analytics_tag\": null, \"service-account-credentials\": null}', '{\"xai\": {\"url\": null, \"api_key\": null}, \"groq\": {\"url\": null, \"api_key\": null}, \"model\": null, \"gemini\": {\"url\": null, \"api_key\": null}, \"ollama\": {\"url\": null}, \"openai\": {\"url\": null, \"api_key\": null, \"project\": null, \"organization\": null}, \"prompt\": null, \"mistral\": {\"url\": null, \"api_key\": null}, \"deepseek\": {\"url\": null, \"api_key\": null}, \"provider\": \"groq\", \"voyageai\": {\"url\": null, \"api_key\": null}, \"anthropic\": {\"api_key\": null, \"version\": null, \"anthropic_beta\": null, \"default_thinking_budget\": null}}', '{\"primary\": {\"50\": \"253, 245, 245\", \"100\": \"250, 234, 234\", \"200\": \"243, 204, 204\", \"300\": \"236, 173, 173\", \"400\": \"221, 111, 111\", \"500\": \"207, 49, 49\", \"600\": \"186, 44, 44\", \"700\": \"155, 37, 37\", \"800\": \"124, 29, 29\", \"900\": \"101, 24, 24\", \"950\": \"62, 15, 15\"}, \"tertiary\": null, \"secondary\": null}', '{\"default_email_provider\":\"smtp\",\"smtp_host\":\"sandbox.smtp.mailtrap.io\",\"smtp_port\":\"2525\",\"smtp_encryption\":\"tls\",\"smtp_timeout\":null,\"smtp_username\":\"08c61c0b0a50c8\",\"smtp_password\":\"f9c7ce4781c953\",\"mailgun_domain\":null,\"mailgun_secret\":null,\"mailgun_endpoint\":null,\"postmark_token\":null,\"amazon_ses_key\":null,\"amazon_ses_secret\":null,\"amazon_ses_region\":null,\"email_from_name\":\"ExRyze\",\"email_from_address\":\"exryze4@gmail.com\",\"mail_to\":null}', '{\"tiktok\":null,\"youtube\":null,\"facebook\":null,\"linkedin\":null,\"whatsapp\":null,\"instagram\":null,\"pinterest\":null,\"x_twitter\":null}', '{\"footer\": \"1\", \"navigation\": \"2\"}', NULL, '2025-05-03 02:00:35');

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
(22, '2025_04_23_132527_rename_column_articles_others_to_fields', 4),
(23, '2025_04_25_155216_add_location_field_in_general_setting', 5),
(24, '2025_04_25_165517_add_contact_field_in_general_setting', 6),
(25, '2025_04_26_030400_update_google_analytics_settings', 7),
(26, '2025_05_01_214356_delete_email_address_field', 8),
(27, '2025_05_02_131109_create_theme_field', 9),
(28, '2025_05_03_000742_create_chatbot_field', 10);

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
(129, 'view_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(130, 'view_any_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(131, 'create_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(132, 'update_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(133, 'restore_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(134, 'restore_any_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(135, 'replicate_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(136, 'reorder_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(137, 'delete_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(138, 'delete_any_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(139, 'force_delete_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(140, 'force_delete_any_article', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(141, 'view_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(142, 'view_any_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(143, 'create_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(144, 'update_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(145, 'restore_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(146, 'restore_any_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(147, 'replicate_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(148, 'reorder_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(149, 'delete_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(150, 'delete_any_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(151, 'force_delete_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(152, 'force_delete_any_category', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(153, 'view_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(154, 'view_any_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(155, 'create_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(156, 'update_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(157, 'restore_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(158, 'restore_any_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(159, 'replicate_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(160, 'reorder_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(161, 'delete_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(162, 'delete_any_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(163, 'force_delete_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(164, 'force_delete_any_cover', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(165, 'view_media', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(166, 'view_any_media', 'web', '2025-04-25 09:11:42', '2025-04-25 09:11:42'),
(167, 'create_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(168, 'update_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(169, 'restore_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(170, 'restore_any_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(171, 'replicate_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(172, 'reorder_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(173, 'delete_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(174, 'delete_any_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(175, 'force_delete_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(176, 'force_delete_any_media', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(177, 'view_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(178, 'view_any_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(179, 'create_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(180, 'update_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(181, 'restore_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(182, 'restore_any_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(183, 'replicate_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(184, 'reorder_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(185, 'delete_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(186, 'delete_any_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(187, 'force_delete_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(188, 'force_delete_any_page', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(189, 'view_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(190, 'view_any_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(191, 'create_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(192, 'update_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(193, 'restore_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(194, 'restore_any_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(195, 'replicate_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(196, 'reorder_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(197, 'delete_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(198, 'delete_any_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(199, 'force_delete_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(200, 'force_delete_any_pattern', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(201, 'view_role', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(202, 'view_any_role', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(203, 'create_role', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(204, 'update_role', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(205, 'delete_role', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(206, 'delete_any_role', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(207, 'view_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(208, 'view_any_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(209, 'create_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(210, 'update_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(211, 'restore_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(212, 'restore_any_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(213, 'replicate_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(214, 'reorder_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(215, 'delete_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(216, 'delete_any_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(217, 'force_delete_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(218, 'force_delete_any_sponsor', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(219, 'view_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(220, 'view_any_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(221, 'create_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(222, 'update_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(223, 'restore_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(224, 'restore_any_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(225, 'replicate_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(226, 'reorder_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(227, 'delete_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(228, 'delete_any_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(229, 'force_delete_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(230, 'force_delete_any_sponsor::category', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(231, 'view_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(232, 'view_any_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(233, 'create_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(234, 'update_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(235, 'restore_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(236, 'restore_any_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(237, 'replicate_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(238, 'reorder_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(239, 'delete_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(240, 'delete_any_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(241, 'force_delete_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(242, 'force_delete_any_tag', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(243, 'view_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(244, 'view_any_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(245, 'create_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(246, 'update_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(247, 'restore_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(248, 'restore_any_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(249, 'replicate_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(250, 'reorder_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(251, 'delete_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(252, 'delete_any_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(253, 'force_delete_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(254, 'force_delete_any_user', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(255, 'page_GeneralSettingsPage', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(256, 'page_ViewEnv', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(257, 'widget_OptimizeButton', 'web', '2025-04-25 09:11:43', '2025-04-25 09:11:43'),
(258, 'page_EnvEditorPage', 'web', '2025-04-25 20:11:12', '2025-04-25 20:11:12'),
(259, 'page_GoogleAnalyticsPage', 'web', '2025-04-25 20:11:12', '2025-04-25 20:11:12');

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
(1, 'Developer', 'web', '2025-03-27 10:56:00', '2025-03-27 10:56:00'),
(2, 'Admin', 'web', '2025-04-25 09:13:06', '2025-04-25 09:13:06'),
(5, 'panel_user', 'web', '2025-04-25 18:22:34', '2025-04-25 18:22:34'),
(6, 'super_admin', 'web', '2025-04-25 20:11:31', '2025-04-25 20:11:31');

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
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(257, 1),
(258, 1),
(259, 1),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(219, 2),
(220, 2),
(221, 2),
(222, 2),
(223, 2),
(224, 2),
(225, 2),
(226, 2),
(227, 2),
(228, 2),
(229, 2),
(230, 2),
(129, 6),
(130, 6),
(131, 6),
(132, 6),
(133, 6),
(134, 6),
(135, 6),
(136, 6),
(137, 6),
(138, 6),
(139, 6),
(140, 6),
(141, 6),
(142, 6),
(143, 6),
(144, 6),
(145, 6),
(146, 6),
(147, 6),
(148, 6),
(149, 6),
(150, 6),
(151, 6),
(152, 6),
(153, 6),
(154, 6),
(155, 6),
(156, 6),
(157, 6),
(158, 6),
(159, 6),
(160, 6),
(161, 6),
(162, 6),
(163, 6),
(164, 6),
(165, 6),
(166, 6),
(167, 6),
(168, 6),
(169, 6),
(170, 6),
(171, 6),
(172, 6),
(173, 6),
(174, 6),
(175, 6),
(176, 6),
(177, 6),
(178, 6),
(179, 6),
(180, 6),
(181, 6),
(182, 6),
(183, 6),
(184, 6),
(185, 6),
(186, 6),
(187, 6),
(188, 6),
(189, 6),
(190, 6),
(191, 6),
(192, 6),
(193, 6),
(194, 6),
(195, 6),
(196, 6),
(197, 6),
(198, 6),
(199, 6),
(200, 6),
(201, 6),
(202, 6),
(203, 6),
(204, 6),
(205, 6),
(206, 6),
(207, 6),
(208, 6),
(209, 6),
(210, 6),
(211, 6),
(212, 6),
(213, 6),
(214, 6),
(215, 6),
(216, 6),
(217, 6),
(218, 6),
(219, 6),
(220, 6),
(221, 6),
(222, 6),
(223, 6),
(224, 6),
(225, 6),
(226, 6),
(227, 6),
(228, 6),
(229, 6),
(230, 6),
(231, 6),
(232, 6),
(233, 6),
(234, 6),
(235, 6),
(236, 6),
(237, 6),
(238, 6),
(239, 6),
(240, 6),
(241, 6),
(242, 6),
(243, 6),
(244, 6),
(245, 6),
(246, 6),
(247, 6),
(248, 6),
(249, 6),
(250, 6),
(251, 6),
(252, 6),
(253, 6),
(254, 6),
(255, 6),
(257, 6),
(258, 6),
(259, 6);

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
('WTimDLEMYiFXLELiVvQlx280btMO8MLljq3qKhrV', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNU83bHB1dHF3dHNFcEJGYkIwYXR5alk0SlRtbDgyc2dCYllvNWpoQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vZ2VuZXJhbC1zZXR0aW5ncyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQ1bGl5dVhKMkIyM1FJUGE5MmtkSkx1MWh2NHAydXh4QUV6MC5Wdi9MSEVBMWJmMnBtTkF5VyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1746241248);

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
(1, 'Superadmin', '$2y$12$5liyuXJ2B23QIPa92kdJLu1hv4p2uxxAEz0.Vv/LHEA1bf2pmNAyW', 'superadmin@gmail.com', NULL, '2025-03-27 10:39:06', 'EAAY4KozdbTROg8YuaEHL2NN97uPSJyUhKffBRJfBIYHRH77QdnLM1x2dnR7', '2025-03-27 10:39:06', '2025-03-27 10:39:06', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
