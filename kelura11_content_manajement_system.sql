-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2025 at 10:53 AM
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
-- Database: `kelura11_content_manajement_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cover_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_content` text COLLATE utf8mb4_unicode_ci,
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

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `views`, `cover_id`, `title`, `slug`, `preview_content`, `content`, `private`, `category_id`, `fields`, `metadata`, `created_by`, `updated_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 8, 'Berjalan-jalan ke \"Kampung Lontong\" Punia di Mataram', 'berjalan-jalan-ke-kampung-lontong-punia-di-mataram', NULL, '<p style=\"text-align: justify; ;\">Salah satu kawasan di Kota Mataram, tepatnya di lingkungan Karang Kateng dan Karang Kelayu, Kelurahan Punia, dikenal luas sebagai kampung lontong. Sebutan ini muncul karena mayoritas warganya memiliki keahlian membuat lontong dan menjadikannya sebagai mata pencaharian utama.</p><p style=\"text-align: justify; ;\">Setiap harinya, warga seperti Nur Istiarah memproduksi puluhan kilogram lontong. Ia mencampur beras kualitas premium dan medium dengan garam agar memiliki rasa, lalu membungkusnya dalam daun pisang yang telah dibersihkan. Lontong khas Lombok ini berbentuk kerucut dengan ujung runcing, berbeda dengan lontong di daerah lain. Setelah dibungkus, lontong direbus selama delapan jam semalam dan dijual ke pasar-pasar tradisional di pagi hari. Harganya bervariasi antara Rp 500 hingga Rp 1.250, tergantung ukuran.</p><p style=\"text-align: justify; ;\">Keahlian membuat lontong diwariskan secara turun-temurun. Istiarah, misalnya, belajar dari ibunya dan kini mengajarkannya kepada anaknya. Tradisi ini juga dilestarikan oleh warga lain seperti Rumini yang telah membuat lontong sejak 1982. Dari sekitar 400 kepala keluarga di Karang Kateng, sekitar 100 di antaranya adalah perajin lontong aktif.</p><p style=\"text-align: justify; ;\">Menjelang bulan Ramadhan dan Lebaran, aktivitas pembuatan lontong semakin meningkat. Banyak warga yang biasanya tidak berjualan ikut memproduksi lontong untuk memenuhi permintaan. Bahkan, proses perebusan sering dilakukan di pinggir jalan utama. Meski hanya berjualan musiman, kebanyakan dari mereka sudah terbiasa dengan proses pembuatan lontong karena lingkungan yang mendukung dan penuh praktik sehari-hari.</p><p style=\"text-align: justify; ;\">Pemerintah kelurahan kini mulai mendata para perajin lontong dan bekerja sama dengan instansi terkait untuk meningkatkan kualitas UMKM ini, terutama dari sisi kemasan, higienitas, serta pemanfaatan media sosial sebagai sarana promosi dan pemasaran.</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 3, '2025-05-09 14:45:52', '2025-05-08 22:40:50', '2025-06-30 09:40:24', NULL),
(2, 0, 11, 'Tupat, Lontong dan Kue Bantal yang Tak Tergantikan', 'tupat-lontong-dan-kue-bantal-yang-tak-tergantikan', NULL, '<p style=\"text-align: justify; ;\">Janur yang dianyam tangan dan daun pisang yang dibentuk kerucut, lalu diisi beras dan direbus hingga matang, bukan sekadar simbol makanan, melainkan mencerminkan proses kehidupan dan harmoni manusia dengan alam. Di Pulau Lombok, pisang dan kelapa bukan hanya tanaman biasa—keduanya menjadi bagian tak terpisahkan dari kehidupan masyarakat secara turun-temurun. Hampir setiap lahan pertanian di sana ditumbuhi kedua jenis tanaman ini, yang tak hanya menopang ekonomi warga, tetapi juga menyumbang nilai estetika dalam keseharian.</p><p style=\"text-align: justify; ;\">Bagi sebagian warga, janur dan daun pisang adalah berkah dalam hidup. Bahan-bahan alami ini menjadi bagian dari rutinitas harian, khususnya bagi para perajin dan pedagang tupat serta lontong. Aktivitas mereka dimulai dari membersihkan bahan, merangkai, mengisi beras, hingga merebusnya selama berjam-jam. Proses yang berlangsung semalaman itu kemudian berbuah hasil yang dijual ke pasar sejak dini hari.</p><p style=\"text-align: justify; ;\">Pemandangan matahari terbit di balik pohon kelapa menjadi gambaran keseharian yang penuh makna. Tidak heran jika tanaman pisang dan kelapa menginspirasi masyarakat Lombok selama berabad-abad. Di Kelurahan Punia, yang meliputi wilayah seperti Punia Saba, Karang Keteng, dan Karang Kelayu, janur dan daun pisang telah menjadi bagian dari identitas budaya lokal dalam pembuatan makanan tradisional.</p><p style=\"text-align: justify; ;\">Setiap hari, warga Punia memproduksi ribuan lontong dan ketupat yang dikirim ke berbagai penjuru Kota Mataram. Permintaan akan produk ini meningkat drastis saat hari raya, terutama untuk sajian seperti opor ayam yang selalu ditemani lontong atau ketupat. Di momen-momen tersebut, jalanan di kawasan seperti Airlangga dan Abdul Kadir Munsyi dipenuhi pedagang dadakan yang biasanya bekerja di balik layar, kini turun langsung berjualan.</p><p style=\"text-align: justify; ;\">Kelurahan Punia yang padat penduduk pun menjadi kawasan kuliner aktif, terutama saat perayaan besar seperti Idul Fitri, Lebaran Topat, Idul Adha, dan Maulid Nabi. Namun, meski menjadi sentra penghasil lontong dan ketupat, kehidupan para perajin ini belum banyak mengalami peningkatan. Keuntungan dari hasil jualan sehari-hari umumnya hanya cukup untuk kebutuhan pokok, bahkan saat produksi mencapai 15–30 kilogram beras per hari.</p><p style=\"text-align: justify; ;\">Bertahan dalam tekanan biaya hidup yang meningkat, para perajin mencoba berbagai cara untuk menambah penghasilan, termasuk membuka lapak sendiri atau menambah variasi produk seperti kue bantal. Walaupun pasar makanan tradisional ini cukup menjanjikan, terutama dengan banyaknya pedagang bakso yang juga membutuhkan lontong, para perajin tetap membutuhkan dukungan lebih besar.</p><p style=\"text-align: justify; ;\">Dalam sehari, satu keluarga perajin bisa membuat ratusan lontong dengan waktu kerja lebih dari delapan jam. Namun, harga jual yang rendah dan harga bahan baku yang terus naik membuat penghasilan mereka sangat terbatas. Ketekunan dan semangat para perajin ini patut diapresiasi, terlebih karena mereka turut melestarikan tradisi kuliner daerah dengan mewariskan keterampilan ini ke generasi berikutnya.</p><p style=\"text-align: justify; ;\">Kawasan ini menjadi benteng terakhir pelestari kuliner lokal yang khas. Jika tidak dijaga, akan hilang pula identitas rasa dari Kota Mataram. Untuk itu, peran pemerintah sangat penting, bukan hanya memberikan pelatihan dan perhatian terhadap kebersihan produk, tetapi juga membantu memperkaya varian produk, menciptakan sistem pemasaran yang lebih luas, serta menjadikan produk lokal ini bagian dari konsumsi resmi dalam acara-acara pemerintahan.</p><p style=\"text-align: justify; ;\">Kepastian pesanan, misalnya untuk kue bantal dan makanan tradisional lain dalam setiap agenda resmi, bisa menjadi harapan baru bagi para perajin. Sebab, lontong, ketupat, dan kue bantal bukan hanya sekadar makanan—mereka telah menjadi bagian dari sejarah dan budaya Kota Mataram yang selayaknya dilestarikan bersama oleh seluruh lapisan masyarakat dan pemerintah.</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 3, '2025-05-10 00:27:00', '2025-05-09 08:17:52', '2025-06-30 09:41:00', NULL),
(3, 0, 10, 'Cerita Pedagang Ketupat Menjelang Lebaran Topat di Lombok', 'cerita-pedagang-ketupat-menjelang-lebaran-topat-di-lombok', NULL, '<p>Di Pulau Lombok, ada tradisi unik dalam merayakan Idul Fitri yang dikenal dengan sebutan <strong>Lebaran Topat</strong> atau <strong>Lebaran Ketupat</strong>. Tidak seperti perayaan pada 1 Syawal, Lebaran ini digelar seminggu setelah Idul Fitri, yang pada tahun 2023 jatuh pada hari Sabtu, 29 April.</p><p>Sebagaimana namanya, ketupat menjadi pusat dari perayaan ini. Menjelang hari-H, suasana menjadi semarak dengan hadirnya para pedagang ketupat yang menjajakan dagangannya di berbagai sudut kota, terutama di kawasan Mataram. Mereka yang paling aktif berdagang umumnya berasal dari Kelurahan Punia. Di sepanjang Jalan Airlangga dan Majapahit, para pedagang tampak menggelar lapak sederhana di atas trotoar, biasanya hanya berupa meja kecil yang dilengkapi tenda payung.</p><p>Di lapak-lapak ini, ketupat digantung rapi di atas panci besar berisi lauk seperti opor dan urap. Para pedagang menyiapkan ratusan ketupat yang dibuat dari belasan kilogram beras. Harganya terjangkau, yakni sekitar Rp 3.000 per biji atau Rp 15.000 untuk satu ikat berisi lima biji.</p><p>Salah satu pedagang, Maesarah yang berusia 55 tahun, mulai berjualan sejak Jumat, sehari sebelum Lebaran Topat. Ia berencana terus berjualan hingga malam, dan jika ada sisa, dilanjutkan hingga keesokan harinya. Menurutnya, suasana pada tahun itu terasa lebih sepi dibandingkan sebelumnya. Hal ini diduga karena banyak warga yang memilih mudik ke kampung halaman usai pandemi mereda, berbeda dari tahun-tahun sebelumnya saat mobilitas masyarakat masih terbatas.</p><p>Sementara itu, pedagang lain bernama Srianah (53 tahun), menyebut bahwa aktivitas menjual ketupat dan lontong bukan hanya saat lebaran saja, tapi telah menjadi mata pencaharian utamanya. Di luar momen Lebaran Topat, ia dan pedagang lainnya biasa berdagang di berbagai pasar tradisional di Kota Mataram.</p><p>Perayaan Lebaran Topat sendiri dimulai dengan <strong>ziarah ke makam keramat</strong>, dilanjutkan dengan makan ketupat bersama keluarga dan tetangga. Usai santapan, masyarakat biasanya mengisi hari libur ini dengan <strong>rekreasi ke berbagai pantai</strong>, menjadikan tradisi ini sebagai momen yang bukan hanya religius tetapi juga sosial dan kultural.</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 3, '2025-05-10 00:27:03', '2025-05-09 08:20:49', '2025-06-30 09:42:47', NULL),
(4, 0, 9, 'Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor', 'lebaran-topat-dimanfaatkan-warga-punia-kota-mataram-berjualan-ketupat-dan-opor', NULL, '<p>Lebaran Topat: Tradisi dan Keteguhan Warga Punia di Tengah Hujan dan Keterbatasan</p><p></p><p>Menjelang Lebaran Topat atau Lebaran Ketupat, suasana di Kelurahan Punia, Kota Mataram, tampak berbeda. Sehari sebelum perayaan yang jatuh pada 29 April 2023, warga beramai-ramai membuka lapak dagangan di sepanjang Jalan Airlangga, khususnya di sekitar Taman Budaya Nusa Tenggara Barat. Lapak-lapak sederhana berjejer di sisi kiri dan kanan jalan, memperlihatkan semangat warga yang tak pernah padam.</p><p></p><p>Salah satu pedagang, Sriyanah, merupakan sosok yang rutin berjualan setiap tahunnya. Dalam satu hari, ia mampu mengolah 25 hingga 50 kilogram beras menjadi ketupat. &quot;Tergantung banyaknya pembeli, kadang 25 kilogram, kadang lebih,&quot; tuturnya.</p><p></p><p>Lapaknya terdiri dari meja kayu sederhana dan satu payung besar. Di situ, ia menggantung berbagai ukuran ketupat, mulai dari kecil hingga besar. Tak hanya ketupat, ia juga menjajakan aneka jenis lontong—baik lontong panjang maupun lontong kecil. Melengkapi semuanya, tersedia pula lauk pauk khas Lebaran seperti opor ayam, opor telur, dan sayur nangka.</p><p></p><p>Harga jualnya pun terjangkau. Satu ikat ketupat atau lontong kecil yang berisi lima buah dibanderol Rp 15.000, sedangkan untuk opor dan urap-urap, harganya disesuaikan dengan porsi yang diinginkan pembeli. Bagi mereka yang memilih makan di tempat, seporsi ketupat opor lengkap dengan ayam atau telur dibanderol mulai dari Rp 10.000 hingga Rp 15.000.</p><p></p><p>Perayaan ini hanya berlangsung dua hari, yaitu sehari sebelum dan saat Lebaran Topat. Namun meskipun singkat, usaha ini menjadi penting bagi warga seperti Sriyanah. Ia akan menutup lapaknya hanya ketika semua ketupat telah habis terjual.</p><p></p><p>Menariknya, pada Jumat sore itu, hujan deras mengguyur Kota Mataram sekitar pukul 16.00 WITA. Meski demikian, para pedagang tetap bertahan. Sriyanah, bersama pedagang lainnya, melindungi ketupat dagangannya dengan plastik. Sementara itu, pembeli tetap berdatangan, bahkan dengan memakai mantel mereka rela menerobos hujan demi seporsi ketupat opor hangat.</p><p></p><p>Beberapa di antaranya memilih menyantap langsung di tempat. Di balik kesederhanaan usaha ini, terdapat perjuangan dan semangat yang luar biasa. Sriyanah mengaku modal usahanya berasal dari pinjaman bank keliling sebesar Rp 1 juta, yang harus ia cicil Rp 20.000 per hari selama dua bulan.</p><p></p><p>Tradisi Lebaran Topat bukan hanya soal ketupat atau opor, tetapi juga tentang daya juang, solidaritas, dan warisan budaya yang tetap hidup dari generasi ke generasi di Kota Mataram.</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 3, '2025-05-10 00:27:06', '2025-05-09 08:25:17', '2025-06-30 09:43:13', NULL);

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
-- Table structure for table `breezy_sessions`
--

CREATE TABLE `breezy_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `panel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1750321537),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1750321537;', 1750321537),
('77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:4;', 1751280011),
('77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1751280011;', 1751280011),
('general-settings', 'a:0:{}', 2065373429),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36', 'i:1;', 1751280281),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36:timer', 'i:1751280281;', 1751280281),
('livewire-rate-limiter:62dcdddd2131784090e8a5916c260a90678e71b3', 'i:1;', 1750091443),
('livewire-rate-limiter:62dcdddd2131784090e8a5916c260a90678e71b3:timer', 'i:1750091443;', 1750091443),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:156:{i:0;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:12:\"view_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:1;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:16:\"view_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:2;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:14:\"create_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:3;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:14:\"update_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:4;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:15:\"restore_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:5;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:19:\"restore_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:6;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:17:\"replicate_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:7;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:15:\"reorder_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:8;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:14:\"delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:9;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:18:\"delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:10;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:20:\"force_delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:11;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:24:\"force_delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:12;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:13:\"view_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:13;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:17:\"view_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:14;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:15:\"create_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:15;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:15:\"update_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:16;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:16:\"restore_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:17;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:20:\"restore_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:18;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:18:\"replicate_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:19;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:16:\"reorder_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:20;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:15:\"delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:21;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:19:\"delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:22;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:21:\"force_delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:23;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:25:\"force_delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:24;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:10:\"view_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:25;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:14:\"view_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:26;a:4:{s:1:\"a\";i:155;s:1:\"b\";s:12:\"create_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:27;a:4:{s:1:\"a\";i:156;s:1:\"b\";s:12:\"update_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:28;a:4:{s:1:\"a\";i:157;s:1:\"b\";s:13:\"restore_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:29;a:4:{s:1:\"a\";i:158;s:1:\"b\";s:17:\"restore_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:30;a:4:{s:1:\"a\";i:159;s:1:\"b\";s:15:\"replicate_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:31;a:4:{s:1:\"a\";i:160;s:1:\"b\";s:13:\"reorder_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:32;a:4:{s:1:\"a\";i:161;s:1:\"b\";s:12:\"delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:33;a:4:{s:1:\"a\";i:162;s:1:\"b\";s:16:\"delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:34;a:4:{s:1:\"a\";i:163;s:1:\"b\";s:18:\"force_delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:35;a:4:{s:1:\"a\";i:164;s:1:\"b\";s:22:\"force_delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:36;a:4:{s:1:\"a\";i:165;s:1:\"b\";s:10:\"view_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:37;a:4:{s:1:\"a\";i:166;s:1:\"b\";s:14:\"view_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:38;a:4:{s:1:\"a\";i:167;s:1:\"b\";s:12:\"create_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:39;a:4:{s:1:\"a\";i:168;s:1:\"b\";s:12:\"update_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:40;a:4:{s:1:\"a\";i:169;s:1:\"b\";s:13:\"restore_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:41;a:4:{s:1:\"a\";i:170;s:1:\"b\";s:17:\"restore_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:42;a:4:{s:1:\"a\";i:171;s:1:\"b\";s:15:\"replicate_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:43;a:4:{s:1:\"a\";i:172;s:1:\"b\";s:13:\"reorder_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:44;a:4:{s:1:\"a\";i:173;s:1:\"b\";s:12:\"delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:45;a:4:{s:1:\"a\";i:174;s:1:\"b\";s:16:\"delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:46;a:4:{s:1:\"a\";i:175;s:1:\"b\";s:18:\"force_delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:47;a:4:{s:1:\"a\";i:176;s:1:\"b\";s:22:\"force_delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:48;a:4:{s:1:\"a\";i:177;s:1:\"b\";s:9:\"view_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:178;s:1:\"b\";s:13:\"view_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:179;s:1:\"b\";s:11:\"create_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:180;s:1:\"b\";s:11:\"update_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:181;s:1:\"b\";s:12:\"restore_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:182;s:1:\"b\";s:16:\"restore_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:183;s:1:\"b\";s:14:\"replicate_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:184;s:1:\"b\";s:12:\"reorder_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:185;s:1:\"b\";s:11:\"delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:186;s:1:\"b\";s:15:\"delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:187;s:1:\"b\";s:17:\"force_delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:188;s:1:\"b\";s:21:\"force_delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:3:{s:1:\"a\";i:189;s:1:\"b\";s:12:\"view_pattern\";s:1:\"c\";s:3:\"web\";}i:61;a:3:{s:1:\"a\";i:190;s:1:\"b\";s:16:\"view_any_pattern\";s:1:\"c\";s:3:\"web\";}i:62;a:3:{s:1:\"a\";i:191;s:1:\"b\";s:14:\"create_pattern\";s:1:\"c\";s:3:\"web\";}i:63;a:3:{s:1:\"a\";i:192;s:1:\"b\";s:14:\"update_pattern\";s:1:\"c\";s:3:\"web\";}i:64;a:3:{s:1:\"a\";i:193;s:1:\"b\";s:15:\"restore_pattern\";s:1:\"c\";s:3:\"web\";}i:65;a:3:{s:1:\"a\";i:194;s:1:\"b\";s:19:\"restore_any_pattern\";s:1:\"c\";s:3:\"web\";}i:66;a:3:{s:1:\"a\";i:195;s:1:\"b\";s:17:\"replicate_pattern\";s:1:\"c\";s:3:\"web\";}i:67;a:3:{s:1:\"a\";i:196;s:1:\"b\";s:15:\"reorder_pattern\";s:1:\"c\";s:3:\"web\";}i:68;a:3:{s:1:\"a\";i:197;s:1:\"b\";s:14:\"delete_pattern\";s:1:\"c\";s:3:\"web\";}i:69;a:3:{s:1:\"a\";i:198;s:1:\"b\";s:18:\"delete_any_pattern\";s:1:\"c\";s:3:\"web\";}i:70;a:3:{s:1:\"a\";i:199;s:1:\"b\";s:20:\"force_delete_pattern\";s:1:\"c\";s:3:\"web\";}i:71;a:3:{s:1:\"a\";i:200;s:1:\"b\";s:24:\"force_delete_any_pattern\";s:1:\"c\";s:3:\"web\";}i:72;a:4:{s:1:\"a\";i:201;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:73;a:4:{s:1:\"a\";i:202;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:74;a:4:{s:1:\"a\";i:203;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:75;a:4:{s:1:\"a\";i:204;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:76;a:4:{s:1:\"a\";i:205;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:77;a:4:{s:1:\"a\";i:206;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:78;a:4:{s:1:\"a\";i:207;s:1:\"b\";s:12:\"view_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:79;a:4:{s:1:\"a\";i:208;s:1:\"b\";s:16:\"view_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:80;a:4:{s:1:\"a\";i:209;s:1:\"b\";s:14:\"create_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:81;a:4:{s:1:\"a\";i:210;s:1:\"b\";s:14:\"update_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:82;a:4:{s:1:\"a\";i:211;s:1:\"b\";s:15:\"restore_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:83;a:4:{s:1:\"a\";i:212;s:1:\"b\";s:19:\"restore_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:84;a:4:{s:1:\"a\";i:213;s:1:\"b\";s:17:\"replicate_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:85;a:4:{s:1:\"a\";i:214;s:1:\"b\";s:15:\"reorder_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:86;a:4:{s:1:\"a\";i:215;s:1:\"b\";s:14:\"delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:87;a:4:{s:1:\"a\";i:216;s:1:\"b\";s:18:\"delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:88;a:4:{s:1:\"a\";i:217;s:1:\"b\";s:20:\"force_delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:89;a:4:{s:1:\"a\";i:218;s:1:\"b\";s:24:\"force_delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:90;a:4:{s:1:\"a\";i:219;s:1:\"b\";s:22:\"view_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:91;a:4:{s:1:\"a\";i:220;s:1:\"b\";s:26:\"view_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:92;a:4:{s:1:\"a\";i:221;s:1:\"b\";s:24:\"create_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:93;a:4:{s:1:\"a\";i:222;s:1:\"b\";s:24:\"update_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:94;a:4:{s:1:\"a\";i:223;s:1:\"b\";s:25:\"restore_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:95;a:4:{s:1:\"a\";i:224;s:1:\"b\";s:29:\"restore_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:96;a:4:{s:1:\"a\";i:225;s:1:\"b\";s:27:\"replicate_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:97;a:4:{s:1:\"a\";i:226;s:1:\"b\";s:25:\"reorder_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:98;a:4:{s:1:\"a\";i:227;s:1:\"b\";s:24:\"delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:99;a:4:{s:1:\"a\";i:228;s:1:\"b\";s:28:\"delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:100;a:4:{s:1:\"a\";i:229;s:1:\"b\";s:30:\"force_delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:101;a:4:{s:1:\"a\";i:230;s:1:\"b\";s:34:\"force_delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:102;a:4:{s:1:\"a\";i:231;s:1:\"b\";s:8:\"view_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:103;a:4:{s:1:\"a\";i:232;s:1:\"b\";s:12:\"view_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:104;a:4:{s:1:\"a\";i:233;s:1:\"b\";s:10:\"create_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:105;a:4:{s:1:\"a\";i:234;s:1:\"b\";s:10:\"update_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:106;a:4:{s:1:\"a\";i:235;s:1:\"b\";s:11:\"restore_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:107;a:4:{s:1:\"a\";i:236;s:1:\"b\";s:15:\"restore_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:108;a:4:{s:1:\"a\";i:237;s:1:\"b\";s:13:\"replicate_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:109;a:4:{s:1:\"a\";i:238;s:1:\"b\";s:11:\"reorder_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:110;a:4:{s:1:\"a\";i:239;s:1:\"b\";s:10:\"delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:111;a:4:{s:1:\"a\";i:240;s:1:\"b\";s:14:\"delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:112;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:16:\"force_delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:113;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:20:\"force_delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:114;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:115;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:116;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:117;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:118;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:119;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:120;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:121;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:122;a:4:{s:1:\"a\";i:251;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:123;a:4:{s:1:\"a\";i:252;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:124;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:125;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:126;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:24:\"page_GeneralSettingsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:3:{s:1:\"a\";i:256;s:1:\"b\";s:12:\"page_ViewEnv\";s:1:\"c\";s:3:\"web\";}i:128;a:3:{s:1:\"a\";i:257;s:1:\"b\";s:21:\"widget_OptimizeButton\";s:1:\"c\";s:3:\"web\";}i:129;a:4:{s:1:\"a\";i:258;s:1:\"b\";s:18:\"page_EnvEditorPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:24:\"page_GoogleAnalyticsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:131;a:4:{s:1:\"a\";i:260;s:1:\"b\";s:12:\"view_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:261;s:1:\"b\";s:16:\"view_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:262;s:1:\"b\";s:14:\"create_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:263;s:1:\"b\";s:14:\"update_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:264;s:1:\"b\";s:15:\"restore_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:265;s:1:\"b\";s:19:\"restore_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:266;s:1:\"b\";s:17:\"replicate_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:267;s:1:\"b\";s:15:\"reorder_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:268;s:1:\"b\";s:14:\"delete_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:269;s:1:\"b\";s:18:\"delete_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:270;s:1:\"b\";s:20:\"force_delete_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:271;s:1:\"b\";s:24:\"force_delete_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:272;s:1:\"b\";s:18:\"view_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:273;s:1:\"b\";s:22:\"view_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:274;s:1:\"b\";s:20:\"create_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:275;s:1:\"b\";s:20:\"update_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:276;s:1:\"b\";s:21:\"restore_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:277;s:1:\"b\";s:25:\"restore_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:278;s:1:\"b\";s:23:\"replicate_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:279;s:1:\"b\";s:21:\"reorder_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:280;s:1:\"b\";s:20:\"delete_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";i:281;s:1:\"b\";s:24:\"delete_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";i:282;s:1:\"b\";s:26:\"force_delete_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:154;a:4:{s:1:\"a\";i:283;s:1:\"b\";s:30:\"force_delete_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:155;a:4:{s:1:\"a\";i:284;s:1:\"b\";s:18:\"page_DashboardPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:7;i:3;i:8;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"Superadmin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"Developer\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:4:\"User\";s:1:\"c\";s:3:\"web\";}}}', 1751308223);

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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `card_layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `default`, `searchable`, `card_layout`, `detail_page`, `fields`, `created_at`, `updated_at`) VALUES
(1, 'Artikel', 'artikel', 1, 1, 'artikel', 'artikel', '[]', NULL, '2025-06-16 17:29:19'),
(2, 'Event', 'event', 0, 0, 'event', 'event', '[]', '2025-06-16 17:24:41', '2025-06-16 17:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_messages`
--

CREATE TABLE `chatbot_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender` enum('user','bot') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_sessions`
--

CREATE TABLE `chatbot_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_dashboard_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` json DEFAULT NULL,
  `contacts` json DEFAULT NULL,
  `theme` json DEFAULT NULL,
  `email_settings` json DEFAULT NULL,
  `social_network` json DEFAULT NULL,
  `navigation` json DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `ai` json DEFAULT NULL,
  `google_analytics` json DEFAULT NULL,
  `user_features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `site_description`, `site_logo`, `site_favicon`, `site_url`, `site_dashboard_url`, `location`, `contacts`, `theme`, `email_settings`, `social_network`, `navigation`, `features`, `ai`, `google_analytics`, `user_features`, `created_at`, `updated_at`) VALUES
(1, 'Kelurahan Punia', NULL, NULL, NULL, NULL, 'dashboard', '{\"url\": null, \"address\": \"Kantor desa\", \"coordinate\": {\"lat\": -8.59665817025909, \"lng\": 116.09978199005128}}', '{\"email\": null, \"phone\": null, \"whatsapp\": null}', '{\"primary\": {\"50\": \"242, 246, 253\", \"100\": \"230, 238, 250\", \"200\": \"191, 212, 243\", \"300\": \"153, 186, 236\", \"400\": \"77, 134, 221\", \"500\": \"0, 82, 207\", \"600\": \"0, 74, 186\", \"700\": \"0, 62, 155\", \"800\": \"0, 49, 124\", \"900\": \"0, 40, 101\", \"950\": \"0, 25, 62\"}, \"tertiary\": null, \"secondary\": {\"50\": \"242, 251, 251\", \"100\": \"230, 247, 247\", \"200\": \"191, 235, 235\", \"300\": \"153, 223, 223\", \"400\": \"77, 199, 200\", \"500\": \"0, 175, 176\", \"600\": \"0, 158, 158\", \"700\": \"0, 131, 132\", \"800\": \"0, 105, 106\", \"900\": \"0, 86, 86\", \"950\": \"0, 53, 53\"}}', '{\"mail_to\": null, \"smtp_host\": null, \"smtp_port\": null, \"smtp_timeout\": null, \"smtp_password\": null, \"smtp_username\": null, \"amazon_ses_key\": null, \"mailgun_domain\": null, \"mailgun_secret\": null, \"postmark_token\": null, \"email_from_name\": null, \"smtp_encryption\": \"tls\", \"mailgun_endpoint\": null, \"amazon_ses_region\": null, \"amazon_ses_secret\": null, \"email_from_address\": null, \"default_email_provider\": null}', '{\"tiktok\": {\"url\": null, \"label\": null}, \"twitter\": {\"url\": null, \"label\": null}, \"youtube\": {\"url\": null, \"label\": null}, \"facebook\": {\"url\": null, \"label\": null}, \"linkedin\": {\"url\": null, \"label\": null}, \"whatsapp\": {\"url\": null, \"label\": null}, \"instagram\": {\"url\": null, \"label\": null}, \"pinterest\": {\"url\": null, \"label\": null}}', '{\"home\": \"1\", \"footer\": \"1\", \"header\": \"2\", \"search\": \"8\", \"nav_items\": [{\"link\": null, \"page\": \"10\", \"type\": \"page\"}, {\"link\": null, \"page\": \"9\", \"type\": \"page\"}]}', '{\"sponsors\":true,\"analytics\":false,\"google_analytics\":false,\"ai\":true}', '{\"url\": \"https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=\", \"api_key\": \"AIzaSyBXLRxPIn7NTaXJUq7bhC2X7nq1aX883aM\", \"provider\": \"Gemini\"}', '{\"google_analytics_tag\": null, \"service-account-credentials\": null}', '{\"chatbot\":false}', NULL, '2025-06-30 09:50:14');

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
(8, 'public', 'media', 'public', '4db28e06-2e75-46ad-be45-d7b954bd5117', 'media/4db28e06-2e75-46ad-be45-d7b954bd5117.jpg', 1200, 800, 137424, 'image/jpeg', 'jpg', NULL, '65eff2291c9be', NULL, NULL, '{\"FileName\":\"hSwuYPNIGDEHunChWOWNJftWJtA4En-metaNjVlZmYyMjkxYzliZS5qcGc=-.jpg\",\"FileDateTime\":1751279951,\"FileSize\":137424,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"1200\\\" height=\\\"800\\\"\",\"Height\":800,\"Width\":1200,\"IsColor\":1}}', NULL, '2025-06-30 09:40:04', '2025-06-30 09:40:04', NULL),
(9, 'public', 'media', 'public', '2a73ee89-0420-4ce5-aefc-ce6dc9403021', 'media/2a73ee89-0420-4ce5-aefc-ce6dc9403021.jpg', 700, 393, 64243, 'image/jpeg', 'jpg', NULL, 'Sriyanah-potong-ketupat', NULL, NULL, '{\"FileName\":\"fDHP9qA6QhoIfY7nPkcbljsb4fDq63-metaU3JpeWFuYWgtcG90b25nLWtldHVwYXQuanBn-.jpg\",\"FileDateTime\":1751279996,\"FileSize\":64243,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"COMMENT\",\"COMPUTED\":{\"html\":\"width=\\\"700\\\" height=\\\"393\\\"\",\"Height\":393,\"Width\":700,\"IsColor\":1},\"COMMENT\":[\"CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), default quality\\n\"]}', NULL, '2025-06-30 09:40:04', '2025-06-30 09:40:04', NULL),
(10, 'public', 'media', 'public', '1128e2fa-6dfe-464c-a6af-3b4a6cae3a9f', 'media/1128e2fa-6dfe-464c-a6af-3b4a6cae3a9f.jpg', 720, 540, 98222, 'image/jpeg', 'jpg', NULL, '1200354_720', NULL, NULL, '{\"FileName\":\"ZW1diPLfipyUIdZBVcq6J9jsnpqvDg-metaMTIwMDM1NF83MjAuanBn-.jpg\",\"FileDateTime\":1751279996,\"FileSize\":98222,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"COMMENT\",\"COMPUTED\":{\"html\":\"width=\\\"720\\\" height=\\\"540\\\"\",\"Height\":540,\"Width\":720,\"IsColor\":1},\"COMMENT\":[\"CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), default quality\\n\"]}', NULL, '2025-06-30 09:40:04', '2025-06-30 09:40:04', NULL),
(11, 'public', 'media', 'public', '4ecb73b7-ce9b-4fb2-bcf3-9a6286e13e64', 'media/4ecb73b7-ce9b-4fb2-bcf3-9a6286e13e64.jpg', 640, 288, 69193, 'image/jpeg', 'jpg', NULL, 'Tupat-dan-bantal', NULL, NULL, '{\"FileName\":\"pHRZXQUoweug8qjDr5Q8KAKqXTRsoy-metaVHVwYXQtZGFuLWJhbnRhbC5qcGc=-.jpg\",\"FileDateTime\":1751280000,\"FileSize\":69193,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0\",\"COMPUTED\":{\"html\":\"width=\\\"640\\\" height=\\\"288\\\"\",\"Height\":288,\"Width\":640,\"IsColor\":1,\"ByteOrderMotorola\":1},\"Orientation\":1}', NULL, '2025-06-30 09:40:04', '2025-06-30 09:40:04', NULL);

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
(6, '2025_03_27_000002_create_media_table', 1),
(7, '2025_03_27_000003_add_tenant_aware_column_to_media_table', 1),
(8, '2025_03_27_100001_create_categories_table', 1),
(9, '2025_03_27_100002_create_articles_table', 1),
(10, '2025_03_27_100003_create_tags_table', 1),
(11, '2025_03_27_100004_create_sections_table', 1),
(12, '2025_03_27_100005_create_pages_table', 1),
(13, '2025_03_27_101001_create_sponsors_table', 1),
(14, '2025_06_12_165835_chatbot_session', 1),
(43, '2025_06_16_154626_create_breezy_sessions_table', 2);

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
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 3),
(8, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', 'home', 1, 1, '2025-03-28 00:00:02', '2025-04-12 09:31:48', NULL),
(8, 'Search', 'search', 1, 1, '2025-05-09 09:37:20', '2025-05-09 09:37:20', NULL),
(9, 'Contact', 'contact', 1, 1, '2025-05-09 09:37:44', '2025-06-16 17:42:04', NULL),
(10, 'Artikel', 'artikel', 1, 1, '2025-05-10 03:46:52', '2025-05-10 03:46:52', NULL),
(11, 'Event', 'event', 1, 1, '2025-06-16 17:38:57', '2025-06-16 17:38:57', NULL),
(12, 'About us', 'about-us', 1, 1, '2025-06-17 11:23:52', '2025-06-17 11:23:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_sections`
--

CREATE TABLE `page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `section_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_sections`
--

INSERT INTO `page_sections` (`id`, `page_id`, `sort_order`, `section_id`) VALUES
(27, 1, 1, 3),
(28, 1, 2, 20),
(29, 9, 1, 21),
(30, 10, 2, 23),
(31, 10, 1, 24),
(32, 1, 3, 22),
(36, 11, 2, 26),
(37, 11, 1, 27),
(38, 12, 1, 28),
(39, 12, 2, 29),
(40, 12, 3, 30),
(41, 12, 4, 31),
(42, 12, 5, 22),
(43, 12, 6, 33);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('superadmin@gmail.com', '$2y$12$fTR.Nk8szJqT2lB9arMoL.FTXljRIxnTlhMW0hrbQmBeV8sqiOHmK', '2025-06-16 15:29:44');

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
(129, 'view_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(130, 'view_any_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(131, 'create_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(132, 'update_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(133, 'restore_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(134, 'restore_any_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(135, 'replicate_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(136, 'reorder_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(137, 'delete_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(138, 'delete_any_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(139, 'force_delete_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(140, 'force_delete_any_article', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(141, 'view_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(142, 'view_any_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(143, 'create_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(144, 'update_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(145, 'restore_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(146, 'restore_any_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(147, 'replicate_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(148, 'reorder_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(149, 'delete_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(150, 'delete_any_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(151, 'force_delete_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(152, 'force_delete_any_category', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(153, 'view_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(154, 'view_any_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(155, 'create_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(156, 'update_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(157, 'restore_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(158, 'restore_any_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(159, 'replicate_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(160, 'reorder_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(161, 'delete_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(162, 'delete_any_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(163, 'force_delete_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(164, 'force_delete_any_cover', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(165, 'view_media', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(166, 'view_any_media', 'web', '2025-04-25 01:11:42', '2025-04-25 01:11:42'),
(167, 'create_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(168, 'update_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(169, 'restore_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(170, 'restore_any_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(171, 'replicate_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(172, 'reorder_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(173, 'delete_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(174, 'delete_any_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(175, 'force_delete_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(176, 'force_delete_any_media', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(177, 'view_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(178, 'view_any_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(179, 'create_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(180, 'update_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(181, 'restore_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(182, 'restore_any_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(183, 'replicate_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(184, 'reorder_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(185, 'delete_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(186, 'delete_any_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(187, 'force_delete_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(188, 'force_delete_any_page', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(189, 'view_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(190, 'view_any_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(191, 'create_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(192, 'update_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(193, 'restore_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(194, 'restore_any_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(195, 'replicate_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(196, 'reorder_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(197, 'delete_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(198, 'delete_any_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(199, 'force_delete_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(200, 'force_delete_any_pattern', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(201, 'view_role', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(202, 'view_any_role', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(203, 'create_role', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(204, 'update_role', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(205, 'delete_role', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(206, 'delete_any_role', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(207, 'view_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(208, 'view_any_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(209, 'create_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(210, 'update_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(211, 'restore_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(212, 'restore_any_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(213, 'replicate_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(214, 'reorder_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(215, 'delete_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(216, 'delete_any_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(217, 'force_delete_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(218, 'force_delete_any_sponsor', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(219, 'view_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(220, 'view_any_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(221, 'create_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(222, 'update_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(223, 'restore_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(224, 'restore_any_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(225, 'replicate_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(226, 'reorder_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(227, 'delete_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(228, 'delete_any_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(229, 'force_delete_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(230, 'force_delete_any_sponsor::category', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(231, 'view_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(232, 'view_any_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(233, 'create_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(234, 'update_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(235, 'restore_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(236, 'restore_any_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(237, 'replicate_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(238, 'reorder_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(239, 'delete_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(240, 'delete_any_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(241, 'force_delete_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(242, 'force_delete_any_tag', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(243, 'view_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(244, 'view_any_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(245, 'create_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(246, 'update_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(247, 'restore_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(248, 'restore_any_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(249, 'replicate_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(250, 'reorder_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(251, 'delete_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(252, 'delete_any_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(253, 'force_delete_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(254, 'force_delete_any_user', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(255, 'page_GeneralSettingsPage', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(256, 'page_ViewEnv', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(257, 'widget_OptimizeButton', 'web', '2025-04-25 01:11:43', '2025-04-25 01:11:43'),
(258, 'page_EnvEditorPage', 'web', '2025-04-25 12:11:12', '2025-04-25 12:11:12'),
(259, 'page_GoogleAnalyticsPage', 'web', '2025-04-25 12:11:12', '2025-04-25 12:11:12'),
(260, 'view_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(261, 'view_any_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(262, 'create_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(263, 'update_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(264, 'restore_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(265, 'restore_any_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(266, 'replicate_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(267, 'reorder_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(268, 'delete_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(269, 'delete_any_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(270, 'force_delete_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(271, 'force_delete_any_section', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(272, 'view_section::type', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(273, 'view_any_section::type', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(274, 'create_section::type', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(275, 'update_section::type', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(276, 'restore_section::type', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(277, 'restore_any_section::type', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(278, 'replicate_section::type', 'web', '2025-05-03 04:17:50', '2025-05-03 04:17:50'),
(279, 'reorder_section::type', 'web', '2025-05-03 04:17:51', '2025-05-03 04:17:51'),
(280, 'delete_section::type', 'web', '2025-05-03 04:17:51', '2025-05-03 04:17:51'),
(281, 'delete_any_section::type', 'web', '2025-05-03 04:17:51', '2025-05-03 04:17:51'),
(282, 'force_delete_section::type', 'web', '2025-05-03 04:17:51', '2025-05-03 04:17:51'),
(283, 'force_delete_any_section::type', 'web', '2025-05-03 04:17:51', '2025-05-03 04:17:51'),
(284, 'page_DashboardPage', 'web', '2025-05-03 04:17:51', '2025-05-03 04:17:51');

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
(7, 'Superadmin', 'web', '2025-05-03 04:34:13', '2025-05-03 04:34:13'),
(8, 'User', 'web', '2025-05-03 04:34:56', '2025-05-03 04:34:56');

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
(255, 1),
(258, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
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
(231, 2),
(232, 2),
(233, 2),
(234, 2),
(235, 2),
(236, 2),
(237, 2),
(238, 2),
(239, 2),
(240, 2),
(241, 2),
(242, 2),
(284, 2),
(129, 7),
(130, 7),
(131, 7),
(132, 7),
(133, 7),
(134, 7),
(135, 7),
(136, 7),
(137, 7),
(138, 7),
(139, 7),
(140, 7),
(141, 7),
(142, 7),
(143, 7),
(144, 7),
(145, 7),
(146, 7),
(147, 7),
(148, 7),
(149, 7),
(150, 7),
(151, 7),
(152, 7),
(165, 7),
(166, 7),
(167, 7),
(168, 7),
(169, 7),
(170, 7),
(171, 7),
(172, 7),
(173, 7),
(174, 7),
(175, 7),
(176, 7),
(201, 7),
(202, 7),
(203, 7),
(204, 7),
(205, 7),
(206, 7),
(207, 7),
(208, 7),
(209, 7),
(210, 7),
(211, 7),
(212, 7),
(213, 7),
(214, 7),
(215, 7),
(216, 7),
(217, 7),
(218, 7),
(219, 7),
(220, 7),
(221, 7),
(222, 7),
(223, 7),
(224, 7),
(225, 7),
(226, 7),
(227, 7),
(228, 7),
(229, 7),
(230, 7),
(231, 7),
(232, 7),
(233, 7),
(234, 7),
(235, 7),
(236, 7),
(237, 7),
(238, 7),
(239, 7),
(240, 7),
(241, 7),
(242, 7),
(243, 7),
(244, 7),
(245, 7),
(246, 7),
(247, 7),
(248, 7),
(249, 7),
(250, 7),
(251, 7),
(252, 7),
(253, 7),
(254, 7),
(259, 7),
(284, 7),
(284, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_dataset` tinyint(1) NOT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `layout_path`, `has_dataset`, `type_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Footer', 'footers/footer', 0, 1, NULL, NULL, '2025-01-01 19:04:47', '2025-02-28 06:45:41', NULL),
(2, 'Navigation', 'navigations/navigation', 0, 2, NULL, NULL, '2025-02-28 05:11:02', '2025-05-09 01:41:43', NULL),
(3, 'Hero - Carousel', 'heroes/carousel', 0, 3, NULL, NULL, '2025-02-28 06:10:35', '2025-05-09 01:42:19', NULL),
(20, 'Load - Latest Article', 'loads/paginate_4_columns', 1, 8, NULL, NULL, '2025-05-09 06:10:41', '2025-05-10 00:41:59', NULL),
(21, 'Contact Mail', 'others/contact_mail', 0, 5, NULL, 1, '2025-05-09 10:29:22', '2025-06-17 11:52:25', NULL),
(22, 'Sponsors', 'others/sponsors', 0, 5, NULL, 1, '2025-05-10 03:43:03', '2025-06-17 11:52:37', NULL),
(23, 'Load - Paginate Article', 'loads/paginate_4_columns', 1, 8, NULL, NULL, '2025-05-10 03:45:48', '2025-05-10 03:45:48', NULL),
(24, 'Load - Highlights Article', 'loads/highlights', 1, 8, NULL, 1, '2025-05-10 14:34:10', '2025-06-16 18:05:18', NULL),
(25, 'Location', 'others/location', 0, 5, 1, 1, '2025-06-16 15:37:23', '2025-06-17 11:52:48', NULL),
(26, 'Load - Latest Event', 'loads/paginate_4_columns', 1, 8, 1, 1, '2025-06-16 17:32:15', '2025-06-16 17:34:10', NULL),
(27, 'Load - Upcoming Event', 'loads/upcoming', 1, 8, 1, 1, '2025-06-16 18:05:05', '2025-06-16 18:05:05', NULL),
(28, 'Title & Image', 'heroes/title_and_image', 0, 3, 1, 1, '2025-06-17 11:23:22', '2025-06-17 11:38:05', NULL),
(29, 'Banner - Image v.1', 'others/banners/image_v1', 0, 5, 1, 1, '2025-06-17 11:27:48', '2025-06-17 11:52:05', NULL),
(30, 'Vision & Mision', 'others/vision_and_mision', 0, 5, 1, 1, '2025-06-17 11:37:43', '2025-06-17 11:37:43', NULL),
(31, 'Custom - ARC', 'others/customs/arc', 0, 5, 1, 1, '2025-06-17 11:45:14', '2025-06-17 11:45:14', NULL),
(32, 'Banner - Statistics', 'others/banners/statistics', 0, 5, 1, 1, '2025-06-17 11:51:52', '2025-06-17 11:51:52', NULL),
(33, 'Custom - Members', 'others/customs/members', 0, 5, 1, 1, '2025-06-17 11:53:23', '2025-06-17 11:53:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section_loads`
--

CREATE TABLE `section_loads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `variable_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` bigint(20) UNSIGNED NOT NULL,
  `order_col` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published_at',
  `order_sort` enum('asc','desc') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'asc',
  `paginate` enum('default','simple') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_loads`
--

INSERT INTO `section_loads` (`id`, `section_id`, `variable_name`, `dataset_id`, `order_col`, `order_sort`, `paginate`, `limit`) VALUES
(10, 20, 'latest_article', 1, 'published_at', 'desc', NULL, 4),
(11, 23, 'paginate_article', 1, 'published_at', 'desc', 'default', 16),
(12, 24, 'highlights_article', 1, 'published_at', 'desc', NULL, 4),
(13, 26, 'latest_event', 2, 'published_at', 'desc', NULL, 4),
(14, 27, 'upcoming_event', 2, 'published_at', 'desc', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `section_types`
--

CREATE TABLE `section_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_types`
--

INSERT INTO `section_types` (`id`, `type`) VALUES
(4, 'Banner'),
(1, 'Footer'),
(2, 'Header'),
(3, 'Hero'),
(8, 'Load'),
(5, 'Other');

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
('go8LXeZfn9Zsquqi4Bromk9QFouaUAVdDB9YYHnp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYXNsY3ZpbDY1OENHUUdLUVBUYkZabktBbnFuS1k4NEJUMWZ6b2Q0eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDVsaXl1WEoyQjIzUUlQYTkya2RKTHUxaHY0cDJ1eHhBRXowLlZ2L0xIRUExYmYycG1OQXlXIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1751280631);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
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
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
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
(1, 'Developer', '$2y$12$5liyuXJ2B23QIPa92kdJLu1hv4p2uxxAEz0.Vv/LHEA1bf2pmNAyW', 'developer@gmail.com', NULL, '2025-03-27 10:39:06', 'bLsn1PrwAvJQ3qtBdEApQrpXNwvYCfqMy4gxLl5TA9RYOiEfEMLFTwGZ4Z68', '2025-03-27 10:39:06', '2025-06-19 04:24:12', NULL),
(2, 'Admin', '$2y$12$u/gq39yaf.RdM3ONDEO9eOi/wuvzhh7MU9FwIjRAG.rb6mpoTP.0y', 'admin@gmail.com', NULL, NULL, NULL, '2025-06-18 00:29:41', '2025-06-18 00:29:41', NULL),
(3, 'Superadmin', '$2y$12$lN.Hw6WoM1X6EGnNRE2JyuV.dojihfCw8RNCCHmEp6/7g3U8kjBaS', 'superadmin@gmail.com', NULL, '2025-06-19 05:43:00', NULL, '2025-06-19 04:24:44', '2025-06-19 04:24:44', NULL),
(4, 'User', '$2y$12$y5oEc5hxiu44VeB31IW6AuLhb113BaGPHYE.azjiCEO7PZktQ129.', 'user@gmail.com', NULL, NULL, NULL, '2025-06-19 04:25:03', '2025-06-19 04:25:03', NULL);

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
  ADD KEY `articles_category_id_foreign` (`category_id`),
  ADD KEY `articles_cover_id_foreign` (`cover_id`);

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
-- Indexes for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breezy_sessions_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatbot_messages_session_id_foreign` (`session_id`);

--
-- Indexes for table `chatbot_sessions`
--
ALTER TABLE `chatbot_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatbot_sessions_user_id_foreign` (`user_id`);

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
  ADD KEY `page_sections_pattern_id_foreign` (`section_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_title_unique` (`title`),
  ADD KEY `sections_type_id_foreign` (`type_id`),
  ADD KEY `sections_updated_by_foreign` (`updated_by`),
  ADD KEY `sections_created_by_foreign` (`created_by`);

--
-- Indexes for table `section_loads`
--
ALTER TABLE `section_loads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pattern_loads_name_variable_unique` (`variable_name`),
  ADD KEY `pattern_loads_pattern_id_foreign` (`section_id`),
  ADD KEY `pattern_loads_dataset_id_foreign` (`dataset_id`);

--
-- Indexes for table `section_types`
--
ALTER TABLE `section_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pattern_types_type_unique` (`type`);

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
  ADD KEY `sponsors_category_id_foreign` (`category_id`),
  ADD KEY `sponsors_updated_by_foreign` (`updated_by`),
  ADD KEY `sponsors_created_by_foreign` (`created_by`),
  ADD KEY `sponsors_image_id_foreign` (`image_id`);

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
  ADD KEY `tags_updated_by_foreign` (`updated_by`),
  ADD KEY `tags_created_by_foreign` (`created_by`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `chatbot_sessions`
--
ALTER TABLE `chatbot_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `section_loads`
--
ALTER TABLE `section_loads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `section_types`
--
ALTER TABLE `section_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sponsor_categories`
--
ALTER TABLE `sponsor_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_cover_id_foreign` FOREIGN KEY (`cover_id`) REFERENCES `media` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
-- Constraints for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  ADD CONSTRAINT `chatbot_messages_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `chatbot_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatbot_sessions`
--
ALTER TABLE `chatbot_sessions`
  ADD CONSTRAINT `chatbot_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `page_sections_pattern_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `patterns_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `section_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `section_loads`
--
ALTER TABLE `section_loads`
  ADD CONSTRAINT `pattern_loads_dataset_id_foreign` FOREIGN KEY (`dataset_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pattern_loads_pattern_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `media_partners_position_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `sponsor_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsors_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `media` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tags_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
