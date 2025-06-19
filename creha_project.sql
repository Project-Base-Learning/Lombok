-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2025 at 10:55 AM
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
-- Database: `creha_project`
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
(5, 0, NULL, 'Apasih itu Area Creator?', 'apasih-itu-area-creator', NULL, '<p><strong>Area Creator,</strong> merupakan acara yang terinspirasi oleh pasar doujinshi, yang dipengaruhi oleh budaya pop Jepang. Acara ini mendukung dan berfungsi sebagai platform bagi para creator muda kami untuk melestarikan dan memasarkan karya asli mereka.</p><p>Dengan pasar yang terus berkembang, kami bertujuan untuk menyediakan ruang bagi creator yaitu Cosplayer, Penggemar Pembuat Komik, Gamer, Animator, Ilustrator, Seniman, dan berbagai cakupan kreatif lainnya dari Budaya Pop.</p><p>Konsep kami tidak terbatas pada budaya pop Jepang saja; kami juga memberikan kesempatan bagi budaya pop lain untuk bergabung dengan kami, untuk memamerkan karya mereka dan menikmati acara tersebut</p><p><img src=\"/storage/images/0b90fa6a-6355-4943-8842-877ef001aa96.jpg\" alt=\"Area Creator\" width=\"1333\" height=\"750\"></p><h2><strong>Apa Itu Cre:HA Project?</strong></h2><h3><strong>Cre:HA Project</strong> adalah komunitas kreatif yang memiliki visi untuk:</h3><p>Menyediakan wadah untuk creator di Indonesia, khususnya di Bali, untuk merealisasikan dan memperkenalkan karya mereka kepada masyarakat luas.</p><h3><strong>Misi Cre:HA Project</strong>:</h3><ol start=\"1\"><li><p>Menggali potensi para creator di Bali dan meningkatkan peluang mereka untuk hidup dari karya kreatif mereka.</p></li><li><p>Memperkenalkan para creator kepada khalayak yang lebih luas dan mendidik masyarakat tentang pentingnya orisinalitas karya.</p></li><li><p>Menciptakan ruang untuk diskusi, kolaborasi, dan kompetisi yang sehat guna mengembangkan karya-karya berkualitas yang nanti dapat diakui secara internasional.</p></li></ol><p><img src=\"/storage/images/bc279a8c-60b1-42b6-a3af-448a682a9944.jpg\" width=\"1333\" height=\"750\"></p><h2>Apa Saja yang Bisa Ditemukan di Area Creator?</h2><p>Area Creator bukan sekadar tempat pameran atau stan jualan. Ini adalah <strong>ruang terbuka kreatif</strong> yang menyediakan banyak pengalaman menarik, seperti:</p><ul><li><p><strong>Circle Booth</strong>: Area market tempat para creator dapat menjual karya kreatif mereka kepada pengunjung!</p></li><li><p><strong>Community Spot</strong>: Area yang menyenangkan dan ramah bagi para penggemar budaya pop untuk berbagi hobi dan minat mereka!</p></li><li><p><strong>Sharing &amp; Workshop</strong>: Area pengunjung dapat bertemu dengan bintang tamu dengan sharing session membahas berbagai topik terkait dengan ekonomi kreatif</p></li><li><p><strong>Performance Area</strong>: tempat di mana pengunjung bisa menyaksikan kompetisi cosplay, pertunjukan, dan acara Meet &amp; Greet!</p></li></ul><p><img src=\"/storage/images/1c9d2e22-24bc-46fd-a227-50ec91de9647.jpg\" width=\"1333\" height=\"750\"></p><h2>Lomba-Lomba Seru di Area Creator</h2><p>Area Creator akan secara rutin mengadakan berbagai <strong>kompetisi kreatif</strong> yang terbuka untuk umum dan komunitas. Beberapa di antaranya:</p><ul><li><p><strong>Lomba Cosplay</strong> seperti <em>Coswalk</em> dan <em>Coscom</em> (Cosplay Competition) dengan berbagai tema dan kategori.</p></li><li><p><strong>Lomba Fan Art &amp; Komik</strong>: Tantangan menggambar dan bercerita visual untuk para ilustrator dan komikus lokal.</p></li><li><p><strong>Lomba Animasi Pendek</strong>: Menyasar pelajar, mahasiswa, maupun profesional yang ingin menunjukkan skill animasinya.</p></li><li><p><strong>Lomba Komunitas</strong>: Dari turnamen Beyblade, kompetisi TCG (<em>Trading Card Game</em>), hingga pameran dan mini kompetisi Warhammer dan tabletop lainnya.</p></li></ul><h2>Ikuti Informasi Terbaru dari Area Creator!</h2><p>Untuk update acara, pendaftaran lomba, kolaborasi, atau ingin jadi bagian dari kreator dan komunitas kami, langsung ikuti akun resmi Area Creator di:</p><ul><li><p>📸 Instagram: <a href=\"https://www.instagram.com/crehaproject?igsh=ODJscHhldGR5bG9z\">@crehaproject</a></p></li><li><p>📘 Facebook: <a href=\"https://www.facebook.com/share/19Mj5dHqXV/\">Cre:Ha Project</a></p></li><li><p>🎵 TikTok: <a href=\"https://www.tiktok.com/@crehaproject?_t=ZS-8whtedKjVjj&amp;_r=1\">@crehaproject</a></p></li></ul><p>Ayo jadi bagian dari gerakan kreatif pop culture Bali! <strong>Area Creator</strong> bukan hanya tempat, tapi <em>komunitas energi baru</em> untuk generasi kreatif masa kini.</p>', 0, 1, NULL, '{\"meta_title\":\"Area Creator\",\"meta_desc\":\" Area Creator adalah inisiatif Cre:HA Project untuk mendukung ekonomi kreatif pop culture di Bali. Temukan booth kreator, komunitas, workshop, hingga lomba cosplay, fan art, animasi, dan masih banyak lagi!\"}', 1, 1, '2025-05-27 23:09:33', '2025-05-27 15:08:49', '2025-05-29 13:01:30', NULL),
(6, 0, NULL, 'Area Creator I : Event Setelah Covid Pecah Banget!', 'area-creator-i-event-setelah-covid-pecah-banget', NULL, '<p><strong>Area Creator</strong> resmi menggelar event perdananya dengan meriah di <strong>Lippo Mall Kuta</strong>, bekerja sama dengan <strong>Cre:HA Project</strong>. Acara ini menjadi momentum yang ditunggu-tunggu oleh komunitas kreatif dan pecinta budaya pop di Bali, terutama setelah vakumnya berbagai event besar akibat pandemi.</p><p><img src=\"/storage/images/2a064fd3-dba0-4b21-9744-afdf30723767.jpg\" alt=\"Panggung ARC I\" width=\"1333\" height=\"750\"></p><h2>Panggung Energi Kreatif yang Membara</h2><p>Event ini menampilkan <strong>20 booth circle dan booth komunitas</strong> yang memamerkan karya orisinal para kreator lokal. Mulai dari ilustrasi, merchandise, hingga berbagai komunitas hobi hadir untuk menyambut antusiasme pengunjung yang membludak.</p><p>Tidak hanya itu, panggung Area Creator juga dimeriahkan oleh pertunjukan <strong>Cosplay Dance Cover</strong>, penampilan <strong>DJ dan band lokal</strong>, hingga <strong>musik akustik</strong> yang membangun suasana penuh semangat sepanjang hari. Talenta lokal Bali benar-benar menunjukkan taringnya!</p><p><img src=\"/storage/images/10b9bef3-d86d-461c-8707-fbe932f71ad2.jpg\" alt=\"Coslay ARC I\" width=\"1333\" height=\"750\"></p><h2>Kompetisi Cosplay Seru dengan Juri Spesial</h2><p>Salah satu sorotan utama adalah <strong>Kompetisi Cosplay dan Coswalk</strong> yang menarik banyak peserta dengan kostum-kostum keren dan penuh kreativitas. Yang membuatnya istimewa, <strong>Takashin Reisa</strong>, cosplayer ternama, hadir sebagai <strong>juri spesial</strong>. Ia memberikan <strong>feedback yang detail dan membangun</strong>, memotivasi banyak cosplayer untuk terus mengembangkan skill mereka ke level lebih tinggi.</p><p><img src=\"/storage/images/0ef863bb-d844-413c-8da0-2897d0c2ca49.jpg\" width=\"1333\" height=\"750\"></p><p><img src=\"/storage/images/700ad033-bce7-45b2-9b5b-11a0ff6588ed.jpg\" width=\"1333\" height=\"750\"></p><h2>Event yang Dinanti Setelah Pandemi</h2><p>Bagi banyak orang, ini adalah <strong>event pop culture pertama yang mereka hadiri kembali setelah pandemi</strong>, dan atmosfernya benar-benar pecah! Pengunjung terlihat antusias menikmati setiap sesi acara, saling berbagi energi positif, serta menyambut kembali nuansa event offline yang sudah lama dirindukan.</p>', 0, 1, NULL, '{\"meta_title\":\"Area Creator I \",\"meta_desc\":\" Event perdana Area Creator di Lippo Mall Kuta menghadirkan 20 booth kreator & komunitas, cosplay competition, dance cover, DJ, dan band lokal. Energi pop culture Bali kembali pecah pasca-pandemi!\"}', 1, 1, '2025-06-08 19:36:42', '2025-05-27 15:24:51', '2025-06-08 11:36:42', NULL),
(7, 0, NULL, 'Area Creator II : Ledakan Kreativitas Komunitas Pop Culture Bali di Gedung Bhumiku', 'area-creator-ii-ledakan-kreativitas-komunitas-pop-culture-bali-di-gedung-bhumiku', NULL, '<p>Setelah sukses dengan gelaran pertamanya, <strong>Cre:HA Project</strong> kembali menghadirkan <strong>Area Creator II (ARC II)</strong> di tahun 2023, kali ini bertempat di <strong>Gedung Bhumiku, Denpasar</strong>. Acara ini menjadi panggung ekspresi kreator lokal Bali sekaligus wadah penghubung antar komunitas pop culture yang semakin tumbuh dan berkembang.</p><h2>Ajang Unjuk Gigi Para Kreator</h2><p>Area Creator II benar-benar menjadi <strong>platform penuh energi bagi para kreator</strong> untuk menunjukkan kemampuan terbaik mereka. Berbagai kompetisi digelar dengan antusiasme tinggi, termasuk:</p><ul><li><p><strong>Lomba Cosplay &amp; Coswalk</strong></p></li><li><p><strong>Lomba Komik Instagram</strong></p></li><li><p><strong>Lomba Fotografi Cosplay</strong></p></li><li><p><strong>Turnamen TCG (Trading Card Game)</strong> termasuk <em>Yu-Gi-Oh!</em></p></li></ul><p><img src=\"/storage/images/8f3fcfc4-1ff7-4a35-ad69-acbeda0f6191.jpg\" width=\"6000\" height=\"3368\"></p><h2>Sweta Kartika &amp; Naomi Hasegawa Hadir Sebagai Guest Star</h2><p>Kehadiran dua tamu spesial turut menyemarakkan ARC II :</p><ul><li><p><strong>Sweta Kartika</strong>, ilustrator dan pencerita terkenal Indonesia, menjadi <strong>juri Lomba Komik</strong>, sekaligus <strong>berbagi kisah inspiratif</strong> tentang perjalanan kreatifnya dalam sesi talkshow.</p></li><li><p><strong>Naomi Hasegawa</strong>, cosplayer yang sudah dikenal luas, memberikan <strong>penilaian mendalam</strong> dan <strong>feedback langsung kepada peserta cosplay</strong>, serta berbagi pengalaman dalam sesi sharing komunitas.</p></li></ul><p><img src=\"/storage/images/18ff64a9-bfa5-4e44-9207-e849cf566436.jpg\" alt=\"Pasar Doujinshi ARC II\" width=\"6000\" height=\"3368\"></p><h2>Pasar Doujinshi, 30 Booth, &amp; 1000 Pengunjung</h2><p>Tahun ini, <strong>Pasar Doujinshi hadir lebih dinamis</strong> dengan total <strong>30 booth</strong> dari circle dan komunitas lokal. Ada pertumbuhan signifikan dalam jumlah kreator yang turut serta, menunjukkan gairah kreatif yang semakin hidup pasca pandemi. Acara ini berhasil <strong>menarik lebih dari 1000 pengunjung</strong>, bukti bahwa pop culture Bali punya energi luar biasa.</p><p><img src=\"/storage/images/0219656b-dcbe-4a5f-93b7-50e054267ddb.jpg\" width=\"5223\" height=\"2932\"></p><h2>Kegiatan Seru Sepanjang Acara</h2><p>Tak hanya kompetisi dan booth, ARC II juga menghadirkan banyak aktivitas yang membangun pengalaman menyeluruh:</p><ul><li><p><strong>Kuis &quot;Si Paling Wibu&quot;</strong> – tantangan pengetahuan anime yang menghibur.</p></li><li><p><strong>Arcventure Quest</strong> – misi dan tantangan interaktif yang mengajak pengunjung berkeliling dan berinteraksi.</p></li><li><p><strong>Talkshow komunitas &amp; circle lokal</strong> – berbagi cerita dan pengalaman.</p></li><li><p><strong>Cosplay Dance Cover &amp; DJ Performance</strong> – panggung kreatif untuk para performer muda.</p></li></ul><h3>Komunitas Unik, Semangat Kolaboratif</h3><p>ARC II juga menghadirkan berbagai komunitas dengan minat yang unik, seperti:</p><ul><li><p><strong>Komunitas TCG</strong> (Yu-Gi-Oh!)</p></li><li><p><strong>One Ok Rock Bali Fanbase</strong></p></li><li><p><strong>Penggemar Visual Novel</strong></p></li><li><p><strong>Cygames Community</strong></p></li></ul><p>Area Creator II tak hanya menjadi event, tapi juga <strong>ruang aman dan suportif</strong> untuk semua pelaku dan penikmat pop culture berkumpul dan tumbuh bersama.</p>', 0, 1, NULL, '{\"meta_title\":\"Area Creator II\",\"meta_desc\":\"Area Creator II hadir di Gedung Bhumiku, Denpasar dengan 30 booth, lomba cosplay, komik, fotografi, hingga turnamen TCG. Dimeriahkan Sweta Kartika & Naomi Hasegawa sebagai guest star!\"}', 1, 1, '2025-06-08 19:37:49', '2025-05-27 15:25:16', '2025-06-08 11:37:49', NULL),
(8, 0, NULL, 'Area Creator III: Creator Market dan Komunitas Pop Culture di DNA Denpasar', 'area-creator-iii-creator-market-dan-komunitas-pop-culture-di-dna-denpasar', NULL, '<p><strong>Area Creator III</strong> kembali digelar dengan skala yang lebih besar dan kolaborasi yang kuat, menghadirkan lebih dari 45 booth, 70+ peserta kompetisi cosplay, dan mencatat lebih dari 1700 pengunjung! Bekerja sama dengan Bkraf Denpasar, Dharma Negara Alaya (DNA), Comic Frontier, dan Denpasar Youth Fest, event ini menjadi bukti nyata bahwa Denpasar memiliki ekosistem kreatif yang dinamis dan terus berkembang.</p><h2>Kolaborasi, Kompetisi, dan Komunitas dalam Satu Area</h2><p>Berlokasi di seluruh area DNA Denpasar, Area Creator III menampilkan pertumbuhan signifikan dalam jumlah kreator booth, mulai dari fandom anime, game, hingga K-pop. Para pengunjung disambut oleh berbagai kompetisi seru, termasuk Lomba Cosplay dan Coswalk, Lomba Fan Art, Lomba Fotografi Komunitas, Kontes dari komunitas Beyblade, TCG, dan lainnya</p><p>Komunitas baru pun bermunculan dan semakin aktif, mulai dari TCG Pokémon, Itasha Bali, Komunitas Tokusatsu, Computer &amp; Retro Tech, hingga Sasaran Tembak (Target Shooting). Semuanya menyatu dalam semangat kolaborasi dan kreativitas.</p><p><img src=\"/storage/images/05ebee9b-195a-4e1e-9034-2678cb3e0c1d.jpg\" alt=\"ARC III Creator Market\" width=\"1333\" height=\"750\"></p><h2>ARC III WORKSHOP &amp; TALKSHOW: Ilmu &amp; Inspirasi untuk Para Kreator</h2><p>Dengan dukungan dari <strong>Bkraf Denpasar</strong>, kami menghadirkan sesi <strong>Workshop dan Talkshow eksklusif</strong> bersama para profesional industri kreatif. Inilah para guest speaker luar biasa yang berbagi ilmu secara mendalam:</p><p><img src=\"/storage/images/13e9c817-7c09-4199-ab88-cf46fb73b53d.jpg\" alt=\"Devita Krisanti\" width=\"1000\" height=\"1469\"></p><h2>Devita Krisanti</h2><p><em>(Content Creator &amp; Comic Artist)</em><br>Ilustrator sukses di Webtoon dan media sosial, Devita membagikan strategi membangun <strong>personal branding dan konten</strong> di media sosial untuk meningkatkan <strong>engagement dan penjualan</strong> karya kreatif.</p><p><img src=\"/storage/images/cc9874be-a335-42b3-948e-c438b742add8.jpg\" alt=\"IceTea\" width=\"1000\" height=\"1469\"></p><h2>Ice Tea</h2><p><em>(Professional Cosplayer)</em><br>Dalam sesi workshop makeup cosplay, Ice Tea menunjukkan bagaimana karakter bisa dihidupkan lewat <strong>teknik riasan yang presisi</strong>, disertai studi kasus dan tips detail untuk menyesuaikan makeup dengan karakteristik tokoh.</p><p><img src=\"/storage/images/90400dda-64ed-4e57-9998-b019a4b56fdc.jpg\" alt=\"Faris\" width=\"1000\" height=\"1469\"></p><h2>Hasani Faris</h2><p><em>(Costume Maker &amp; Eco Designer)</em><br>Faris mengangkat isu lingkungan lewat karya cosplay dari <strong>limbah plastik daur ulang</strong>. Dalam sesinya, ia menjelaskan bagaimana <strong>sampah sehari-hari bisa diubah menjadi mahakarya cosplay</strong> yang ramah lingkungan dan tetap memukau.</p><h2><br>DNA: Rumah Baru Para Kreator Bali</h2><p>Dengan memanfaatkan <strong>seluruh area Dharma Negara Alaya</strong>, Area Creator III memberi ruang yang luas dan layak bagi para kreator untuk berkembang. Setiap sudut DNA menjadi tempat di mana komunitas, karya, dan kreativitas saling terhubung.</p><p>Tidak hanya sebagai event, <strong>Area Creator III menjadi fondasi kuat untuk regenerasi dan pertumbuhan komunitas kreatif Bali</strong> — dari hobi, seni visual, teknologi, hingga budaya pop yang terus hidup di tengah masyarakat.</p>', 0, 1, NULL, '{\"meta_title\":\"Area Creator III\",\"meta_desc\":\"Area Creator III hadir di Dharma Negara Alaya Denpasar, menghadirkan 45+ booth, 1700 pengunjung, dan 70+ cosplayer. Dimeriahkan oleh Devita Krisanti, Ice Tea, dan Faris dalam workshop kreatif & talkshow inspiratif.\"}', 1, 1, '2025-06-08 19:38:24', '2025-06-06 14:54:12', '2025-06-08 11:38:24', NULL),
(9, 0, NULL, 'Area Creator IV: Meriahkan Dunia Cosplay & Animasi Bali dengan ICGP dan Kolaborasi Nasional', 'area-creator-iv-meriahkan-dunia-cosplay-animasi-bali-dengan-icgp-dan-kolaborasi-nasional', NULL, '<p>Area Creator IV hadir dengan skala yang lebih besar dan kegiatan yang lebih kaya, menghadirkan 50+ booth, 1400 pengunjung, serta 75+ peserta kompetisi cosplay. Diselenggarakan oleh Cre:Ha Project dan didukung oleh Bkraf Denpasar, edisi kali ini sukses membawa Indonesia Cosplay Grand Prix (ICGP) 2025 ke Bali untuk pertama kalinya — memperkuat posisi Bali sebagai pusat budaya pop yang terus tumbuh dan berkelas nasional.</p><h2>Lomba Cosplay Kelas Internasional  ICGP Hadir di Bali!</h2><p>Salah satu highlight terbesar ARC IV adalah kehadiran <strong>Indonesia Cosplay Grand Prix (ICGP) 2025 Bali Qualifier</strong>. Kompetisi bergengsi ini menjadi wadah bagi cosplayer lokal untuk tampil di panggung dengan standar internasional. Tahun ini, <strong>empat tim berkompetisi</strong>, termasuk <strong>tiga dari Bali dan satu dari Yogyakarta</strong>, menunjukkan dedikasi dan kualitas tinggi dalam penampilan mereka.</p><p><img src=\"/storage/images/d3f97ba3-abbb-4932-b3a5-145edd196a43.jpg\" alt=\"Echow and Zai Naru\" width=\"1333\" height=\"750\"></p><h2>Guest Star: Echow &amp; Zai Naru</h2><p>Dua nama besar dalam dunia cosplay, <strong>Echow</strong> dan <strong>Zai Naru</strong>, turut memeriahkan acara sebagai <strong>juri sekaligus pembicara inspiratif</strong>. Mereka adalah perwakilan resmi Indonesia di <strong>World Cosplay Summit 2013 di Jepang</strong>, dan hingga kini aktif di kompetisi nasional dan internasional.</p><p>Sesi <strong>Meet &amp; Greet</strong> mereka penuh dengan cerita inspiratif, pengalaman selama lebih dari <strong>15 tahun di industri cosplay</strong>, serta wawasan tentang perkembangan cosplay global.</p><p><img src=\"/storage/images/7d0a303e-68a7-4881-bdfb-248ed75ca8f7.jpg\" alt=\"Workshop\" width=\"1333\" height=\"750\"></p><h2>Education &amp; Experience: Membuka Wawasan Dunia Animasi</h2><p>Dengan dukungan dari <strong>Socks Studio</strong> dan <strong>Dalang Motion</strong>, ARC IV menghadirkan sesi edukatif yang mengulas secara langsung potensi industri <strong>animasi di Indonesia</strong>. Sesi ini memberikan:</p><ul><li><p>Insight mendalam tentang karier di dunia animasi</p></li><li><p>Proses kreatif produksi animasi lokal</p></li><li><p>Pengalaman langsung dari para pelaku industri</p></li></ul><p>Program ini menjadi pembuka jalan menuju <strong>kompetisi animasi pelajar</strong> yang akan hadir di <strong>ARC V</strong>, memperkuat regenerasi kreator muda Bali.</p><p><img src=\"/storage/images/656abda6-ec49-463e-a4f3-0871c7bd92f8.jpg\" alt=\"Community\" width=\"1333\" height=\"750\"></p><h2>Circle &amp; Community Experience: Interaktif, Seru, dan Beragam!</h2><p>ARC IV tidak hanya soal booth jualan—namun sebuah <strong>pengalaman interaktif</strong>:</p><ul><li><p>50+ Booth Circle &amp; Komunitas, dari ilustrator hingga penjual merch unik</p></li><li><p>Fandom dari anime, game, komik, hingga IP original</p></li><li><p>Lomba &amp; Turnamen dari komunitas seperti TCG, Beyblade, dan lainnya</p></li><li><p>Interaksi langsung dengan para kreator &amp; pengunjung</p></li><li><p>Merchandise eksklusif yang hanya bisa didapatkan di event ini</p></li></ul><p>Pengunjung diajak menyelami semangat komunitas lewat konten yang <strong>edukatif, inspiratif, dan tentunya menyenangkan.</strong></p>', 0, 1, NULL, '{\"meta_title\":\"Area Creator IV\",\"meta_desc\":\"Area Creator IV hadirkan ICGP 2025 Bali, 50+ booth, 1400 pengunjung, dan sesi inspiratif bersama Echow & Naru. Eksplorasi cosplay, komunitas, dan industri animasi di satu event pop culture terbesar di Bali!\"}', 1, 1, '2025-06-08 19:39:26', '2025-06-06 15:17:01', '2025-06-09 23:55:58', '2025-06-09 23:55:58'),
(10, 0, NULL, 'ARC IV: Pemenang ICGP Bali, Mewakili Bali ke Ajang Lomba Nasional Cosplay ICGP', 'arc-iv-pemenang-icgp-bali-mewakili-bali-ke-ajang-lomba-nasional-cosplay-icgp', NULL, '<p><strong>Area Creator V</strong> kembali jadi panggung seleksi cosplay terbesar di Bali lewat <strong>ICGP Bali 2025</strong>, yang tidak hanya meriah, tapi juga membuka jalan bagi <strong>cosplayer lokal menuju ajang nasional dan internasional</strong>. Dari berbagai peserta hebat, <strong>Tim Aghni</strong> tampil sebagai <strong>Juara ICGP Bali</strong> dan siap melangkah ke babak nasional di Surabaya. Tujuannya? <strong>Mewakili Indonesia ke World Cosplay Summit di Nagoya, Jepang!</strong></p><h2>Para Pemenang ICGP Bali 2025</h2><p><img src=\"/storage/images/ac3fd51e-a07d-4c50-a818-93f2ca1d8a32.jpg\" alt=\"ICGP CHAMPION\" width=\"1080\" height=\"1350\"></p><p>🥇 <strong>Juara 1 - Tim Aghni</strong><br>Cosplayer: <a href=\"https://instagram.com/ponie_cosplay\" target=\"_new\" rel=\"noopener\">@ponie_cosplay</a> &amp; <a href=\"https://instagram.com/10_ryuu\" target=\"_new\" rel=\"noopener\">@10_ryuu</a><br>Membawakan penampilan luar biasa dari <strong>Monster Hunter</strong>, Tim Aghni mencuri perhatian juri dan penonton dengan kualitas kostum, koreografi, dan efek yang spektakuler. Mereka kini bersiap untuk bertanding di <strong>ICGP Nasional</strong> di ajang <strong>IndoAnimeCon, Surabaya</strong>, April mendatang.<br><strong>Mari kita doakan agar mereka bisa membawa nama Bali dan Indonesia ke panggung dunia!</strong> ✨</p><p><img src=\"/storage/images/2182fd5e-bf59-4d51-a337-e785b35a8dbf.jpg\" alt=\"ICGP BEST COSTUME\" width=\"1080\" height=\"1350\"></p><p>🎖 <strong>Best Costume - Tim Nakama Dewata</strong><br>Cosplayer: <a href=\"https://instagram.com/gs.coss\" target=\"_new\" rel=\"noopener\">@gs.coss</a> &amp; <a href=\"https://instagram.com/kuroarth\" target=\"_new\" rel=\"noopener\">@kuroarth</a><br>Mereka menampilkan craftmanship luar biasa yang detail dan otentik.</p><p><img src=\"/storage/images/c9a80024-9325-44e4-ace7-f468f227108b.jpg\" alt=\"ARC IV BEST PERFORMANCE\" width=\"1080\" height=\"1350\"></p><p>🎭 <strong>Best Performance - Tim Kami Onsen</strong><br>Cosplayer: <a href=\"https://instagram.com/faris_magokoro\" target=\"_new\" rel=\"noopener\">@faris_magokoro</a> &amp; <a href=\"https://instagram.com/maaaaarin88\" target=\"_new\" rel=\"noopener\">@maaaaarin88</a><br>Berhasil mencuri perhatian lewat storytelling panggung yang kuat dan ekspresi memikat.</p><p>💡 Tak lupa juga apresiasi besar untuk <strong>Tim We Are The D</strong> dari Yogyakarta, yaitu <a href=\"https://instagram.com/billy.jordy\" target=\"_new\" rel=\"noopener\">@billy.jordy</a> &amp; <a href=\"https://instagram.com/sandy_oktama\" target=\"_new\" rel=\"noopener\">@sandy_oktama</a>, yang tampil total di panggung Bali.</p><h2>Juri Tingkat Internasional, Kak Echow &amp; Zai Naru</h2><p>ICGP Bali 2025 menghadirkan juri cosplay dengan rekam jejak luar biasa:</p><ul><li><p><strong>Echow</strong> <a href=\"https://instagram.com/echow.cosplay\" target=\"_new\" rel=\"noopener\">@echow.cosplay</a></p></li><li><p><strong>Zai Naru</strong> <a href=\"https://instagram.com/zai.naru.cosplay\" target=\"_new\" rel=\"noopener\">@zai.naru.cosplay</a></p></li></ul><p>Keduanya adalah <strong>wakil Indonesia di World Cosplay Summit 2013</strong> di Jepang, dan telah <strong>menang di berbagai kompetisi nasional dan internasional</strong>. Pengalaman mereka sebagai <strong>juri profesional</strong> di dalam maupun luar negeri menjadi fondasi kuat dalam proses penjurian yang adil, teknis, dan mendidik.</p><p>Selain itu, mereka juga mengadakan sesi <strong>meet &amp; greet</strong> yang penuh insight, membagikan perjalanan cosplay mereka selama lebih dari satu dekade, serta memberikan motivasi kepada generasi cosplayer Bali selanjutnya.</p>', 0, 1, NULL, '{\"meta_title\":\"ARC IV ICGP BALI\",\"meta_desc\":\"Tim Aghni juara ICGP Bali 2025 siap wakili Bali ke nasional, menuju World Cosplay Summit Jepang! Simak detail pemenang dan highlight juri internasional Echow & Naru di Area Creator V.\"}', 1, 1, '2025-06-12 00:21:20', '2025-06-06 15:28:56', '2025-06-11 16:21:20', NULL),
(11, 0, NULL, 'Area Creator IV: ICGP dan Workshop Animasi', 'area-creator-iv-icgp-dan-workshop-animasi', NULL, '<p><strong>Area Creator IV</strong> hadir dengan skala yang lebih besar dan kegiatan yang lebih kaya, menghadirkan <strong>50+ booth</strong>, <strong>1400 pengunjung</strong>, serta <strong>75+ peserta kompetisi cosplay</strong>. Diselenggarakan oleh Cre:Ha Project dan didukung oleh <strong>Bkraf Denpasar</strong>, edisi kali ini sukses membawa <strong>Indonesia Cosplay Grand Prix (ICGP) 2025 ke Bali</strong> untuk pertama kalinya — memperkuat posisi Bali sebagai pusat budaya pop yang terus tumbuh dan berkelas nasional.</p><p><img src=\"/storage/images/6065a34b-f8bf-4b53-ab85-485a8aba0f62.jpg\" alt=\"Zainaru&amp;Echow\" title=\"Zainaru &amp; Echow\" width=\"1333\" height=\"750\"></p><p><img src=\"/storage/images/72e500a0-9816-4fba-8761-737897a94473.jpg\" alt=\"Meetandgreet\" title=\"Meet &amp; Greet Zainaru &amp; Echow\" width=\"1333\" height=\"750\"></p><h2>Cosplay Kelas Internasional ICGP Hadir di Bali!</h2><p>Salah satu highlight terbesar ARC IV adalah kehadiran <strong>Indonesia Cosplay Grand Prix (ICGP) 2025 Bali Qualifier</strong>. Kompetisi bergengsi ini menjadi wadah bagi cosplayer lokal untuk tampil di panggung dengan standar internasional. Tahun ini, <strong>empat tim berkompetisi</strong>, termasuk <strong>tiga dari Bali dan satu dari Yogyakarta</strong>, menunjukkan dedikasi dan kualitas tinggi dalam penampilan mereka.</p><p>Dua nama besar dalam dunia cosplay, <strong>Echow</strong> dan <strong>Zai Naru</strong>, turut memeriahkan acara sebagai <strong>juri sekaligus pembicara inspiratif</strong>. Mereka adalah perwakilan resmi Indonesia di <strong>World Cosplay Summit 2013 di Jepang</strong>, dan hingga kini aktif di kompetisi nasional dan internasional.</p><p>Sesi <strong>Meet &amp; Greet</strong> mereka penuh dengan cerita inspiratif, pengalaman selama lebih dari <strong>15 tahun di industri cosplay</strong>, serta wawasan tentang perkembangan cosplay global.</p><p><img src=\"/storage/images/fe97c6a3-bee8-4919-ae3a-a23e80ac0134.jpg\" alt=\"Workshop Animasi ARC IV\" width=\"1333\" height=\"750\"></p><h2>Edukasi Dan Membuka Wawasan Mengenai Dunia Animasi</h2><p>Dengan dukungan dari <strong>Socks Studio</strong> dan <strong>Dalang Motion</strong>, ARC IV menghadirkan sesi edukatif yang mengulas secara langsung potensi industri <strong>animasi di Indonesia</strong>. Sesi ini memberikan:</p><ul><li><p>Insight mendalam tentang karier di dunia animasi</p></li><li><p>Proses kreatif produksi animasi lokal</p></li><li><p>Pengalaman langsung dari para pelaku industri</p></li></ul><p>Program ini menjadi pembuka jalan menuju <strong>kompetisi animasi pelajar</strong> yang akan hadir di <strong>ARC V</strong>, memperkuat regenerasi kreator muda Bali.</p><p><img src=\"/storage/images/cb8f465c-a7a2-405e-9707-3daaab878a00.jpg\" alt=\"Community ARC IV\" title=\"Community ARC IV\" width=\"1333\" height=\"750\"></p><h2>Circle &amp; Community Experience Yang Interaktif, Seru, dan Beragam!</h2><p>ARC IV tidak hanya soal booth jualan—namun sebuah <strong>pengalaman interaktif</strong>:</p><ul><li><p>50+ Booth Circle &amp; Komunitas, dari ilustrator hingga penjual merch unik</p></li><li><p>Fandom dari anime, game, komik, hingga IP original</p></li><li><p>Lomba &amp; Turnamen dari komunitas seperti TCG, Beyblade, dan lainnya</p></li><li><p>Interaksi langsung dengan para kreator &amp; pengunjung</p></li><li><p>Merchandise eksklusif yang hanya bisa didapatkan di event ini</p></li></ul><p>Pengunjung diajak menyelami semangat komunitas lewat konten yang <strong>edukatif, inspiratif, dan tentunya menyenangkan.</strong></p>', 0, 1, NULL, '{\"meta_title\":\"Area Creator IV\",\"meta_desc\":\"Area Creator IV hadirkan ICGP 2025 Bali, 50+ booth, 1400 pengunjung, dan sesi inspiratif bersama Echow & Naru. Eksplorasi cosplay, komunitas, dan industri animasi di satu event pop culture terbesar di Bali!\"}', 1, 1, '2025-06-12 00:21:19', '2025-06-11 16:21:01', '2025-06-11 16:21:19', NULL),
(12, 0, NULL, 'Syarat Dan Ketentuan Booth Corporate ARC V', 'syarat-dan-ketentuan-booth-corporate-arc-v', NULL, '<h2><strong>Spesifikasi Booth Corporate</strong></h2><p>Booth <strong>Corporate</strong> di <strong>Area Creator oleh Cre:HA Project</strong> merupakan pilihan eksklusif bagi perusahaan atau brand yang ingin mendapatkan visibilitas lebih besar dalam event ini. Dengan fasilitas premium dan ruang yang lebih luas, booth ini memungkinkan brand untuk menghadirkan pengalaman yang lebih profesional dan interaktif kepada pengunjung.</p><h3><strong>📌 Fasilitas Booth Corporate:</strong></h3><p>✔ <strong>Ukuran booth:</strong> 4 x 3 meter</p><p>✔ <strong>Fasilitas listrik</strong> untuk kebutuhan perangkat promosi</p><p>✔ <strong>2 meja &amp; 4 kursi</strong> untuk kenyamanan interaksi dengan pengunjung</p><p>✔ <strong>Partisi pemisah</strong> antar booth untuk ruang yang lebih eksklusif</p><p>✔ <strong>1 LED Monitor 27”</strong> untuk presentasi digital dan promosi</p><h3><strong>✨ Fleksibilitas Dekorasi Booth</strong></h3><p>Booth Corporate dapat melakukan <strong>dekorasi tambahan</strong> sesuai branding perusahaan <strong>tanpa merusak properti booth dan venue</strong>. Vendor diperbolehkan untuk memasang elemen promosi seperti banner, display produk, atau media digital interaktif, dengan tetap menjaga ketertiban dan keamanan area event.</p><hr><h2><strong>💰 Harga Booth Corporate</strong></h2><p>🏷 <strong>1 Hari:</strong> Rp 6.000.000</p><p>🏷 <strong>2 Hari:</strong> Rp 10.000.000</p><p><strong>Catatan:</strong></p><p>✔ Harga termasuk seluruh fasilitas booth dan akses eksklusif ke event.</p><p>✔ Biaya tambahan dapat berlaku untuk kebutuhan listrik tambahan, penambahan space atau dekorasi yang memerlukan instalasi khusus.</p><hr><h2><strong>🚀 Booth Corporate?</strong></h2><p>✅ <strong>Brand Exposure</strong> – Kesempatan untuk berinteraksi langsung dengan komunitas kreatif dan pengunjung event.</p><p>✅ <strong>Fasilitas Premium</strong> – Ruang exclusive untuk mendukung promosi.</p><p>✅ <strong>Fleksibel &amp; Customizable</strong> – Booth dapat dihias sesuai kebutuhan tanpa merusak properti venue.</p><p>Jangan lewatkan kesempatan untuk menjadi bagian dari <strong>Area Creator oleh Cre:HA Project</strong>!</p><p>📩 <strong>Segera daftar dan amankan boothmu sekarang!</strong> 🚀</p>', 0, 2, NULL, '{\"meta_title\":\"Booth Corporate\",\"meta_desc\":\"Booth Corporate di Area Creator oleh Cre:HA Project hadir dengan fasilitas premium, ruang 4x3m, LED monitor, dan dekorasi fleksibel\\u2014ideal untuk brand yang ingin tampil eksklusif dan interaktif di event kreatif ini.\"}', 1, 1, NULL, '2025-06-13 16:37:45', '2025-06-14 15:56:03', NULL),
(13, 0, NULL, 'Syarat Dan Ketentuan Booth F&B ARC V', 'syarat-dan-ketentuan-booth-fb-arc-v', NULL, '<h2>Pendaftaran Booth F&amp;B</h2><p>Di Buka Pada 16 Maret 2025</p><h3>Link Pendaftaran</h3><p><a href=\"https://forms.gle/i489jfFj5FSMr3fAA\" target=\"_blank\" data-as-button=\"false\"><strong>📃 From Pendaftaran Booth F&amp;B</strong></a></p><h2><strong>1. Apa Itu Booth Food &amp; Beverage?</strong></h2><p>Booth <strong>Food &amp; Beverage (F&amp;B)</strong> di <strong>Area Creator oleh Cre:HA Project</strong> adalah kesempatan bagi pelaku usaha makanan dan minuman untuk berpartisipasi dalam event kreatif ini.</p><hr><h2><strong>2. Spesifikasi Booth Food &amp; Beverage</strong></h2><p>✔ <strong>Fasilitas yang didapat:</strong> 1 meja ukuran 180 x 60 cm, 2 kursi, listrik, 1 Tenda 2x3m dan 2 Free Pass</p><p>✔ <strong>Harga</strong> 800.000 untuk satu hari, dan 1.500.000 untuk 2 hari. F&amp;B Wajib 2 hari</p><p>✔ Tidak diperbolehkan membawa meja dan kursi tambahan. Silahkan menambahkan add ons berupa meja, kursi dan listrik jika di perlukan pada form pendaftaran, extra charge berlaku dengan harga sebagai berikut:</p><ul><li><p>✔ Tambahan Kursi 1: 50K</p></li><li><p>✔ Tambahan Kursi 2: 100K</p></li><li><p>✔ Meja 1 + 2 kursi: 300K</p></li><li><p>✔ Listrik: 300K</p></li></ul><p><span style=\"color: #d60f0f;\">Jika membawa Meja dan Kursi dari luar akan di kenakan biaya tambahan sebesar harga add ons</span></p><p>✔ <span style=\"color: #d60f0f;\"><strong>Syarat dan Ketentuan Tambahan:</strong> Makanan yang di jual harus sesuai dengan yang di list dalam form Jika menu yang di daftarkan tidak sesuai dengan yang di list dalam form, maka panitia berhak memberikan denda 100K.</span></p><p>✔ <strong>F&amp;B di kurasi agar makanan dan minuman memiliki banyak varian</strong></p><hr><h2><strong>3. Aturan &amp; Kriteria Produk yang Diperbolehkan</strong></h2><p>Untuk memastikan keamanan dan kualitas produk yang dijual, berikut adalah regulasi penting bagi booth F&amp;B:</p><p>✅ <strong>Produk yang Diterima:</strong></p><ul><li><p>✔ Makanan berat, snack, dessert, pastry, dan makanan ringan.</p></li></ul><ul><li><p>✔ Minuman kemasan atau fresh drink tanpa bahan beralkohol.</p></li><li><p>✔ Menu yang telah disetujui dalam pendaftaran harus sesuai dengan yang dijual saat event berlangsung.</p></li></ul><p>🚫 <strong>Produk yang Tidak Diperbolehkan:</strong></p><ul><li><p>🚫<strong>Menu yang berbeda dari yang diajukan saat pendaftaran.</strong></p></li><li><p>🚫Produk yang mudah basi atau tidak memenuhi standar kebersihan.</p></li><li><p>🚫Minuman beralkohol atau bahan yang dilarang dalam regulasi makanan dan minuman.</p></li><li><p>🚫Makanan yang menghasilkan asap berlebihan atau bau berlebihan yang dapat mengganggu area booth lain.</p></li></ul><hr><h2><strong>4. Proses Pendaftaran Booth F&amp;B</strong></h2><p>Untuk menjadi bagian dari booth F&amp;B di Area Creator, ikuti langkah-langkah berikut:</p><p>1️⃣ <strong>Mengisi Formulir Pendaftaran</strong></p><ul><li><p>- Isi data lengkap mengenai brand, jenis makanan/minuman</p></li><li><p>- Wajib menyertakan daftar menu yang akan dijual.</p></li></ul><p>2️⃣ <strong>Seleksi &amp; Verifikasi Menu</strong></p><ul><li><p>- Panitia akan meninjau produk yang diajukan.</p></li><li><p>- Jika menu disetujui, akan mendapatkan konfirmasi resmi.</p></li></ul><p>3️⃣ <strong>Pembayaran &amp; Konfirmasi Booth</strong></p><ul><li><p>- Setelah lolos seleksi, pihak booth harus melakukan pembayaran sesuai ketentuan.</p></li></ul><p>5️⃣ <strong>Komunikasi Lebih Lanjut</strong></p><ul><li><p>- Setelah pembayaran dikonfirmasi, Perwakilan booth akan di undang masuk ke dalam group Booth F&amp;B untuk komunikasi lebih lanjut.</p></li><li><p><strong>- Menu yang sudah disetujui tidak boleh diubah saat event berlangsung.</strong></p></li><li><p>- Pastikan makanan dan minuman sudah siap sebelum acara dimulai.</p></li></ul><hr><h2>Daftar Sekarang!!</h2><p><a href=\"https://forms.gle/iLiSCWbWn5zJAEFu6\" target=\"_blank\" data-as-button=\"false\"><strong>📃 From Pendaftaran Booth F&amp;B</strong></a></p>', 0, 2, NULL, '{\"meta_title\":\"booth F&B Bali\",\"meta_desc\":\"Daftar Booth F&B di Area Creator 2025 mulai 16 Maret! Sediakan makanan dan minuman unik di event pop culture Bali. Booth lengkap dengan tenda, meja, kursi, dan listrik\\u2014tempat terbatas!\"}', 1, 1, NULL, '2025-06-13 16:49:57', '2025-06-14 15:56:05', NULL),
(14, 0, NULL, 'Syarat Dan Ketentuan Booth Community ARC V', 'syarat-dan-ketentuan-booth-community-arc-v', NULL, '<h2>Pendaftaran Booth Community</h2><p>Di Buka Pada 16 Maret 2025</p><h3>Link Pendaftaran</h3><p><a href=\"https://forms.gle/PDWWcqjHLYAkZudQ9\" target=\"_blank\" data-as-button=\"false\"><strong>📃From Pendaftaran Booth Community</strong></a></p><h2>1. Apa Itu Booth Community?</h2><p><strong>Community</strong> adalah kelompok yang terdaftar untuk menampilkan, memamerkan, dan atau melaksanakan tournament mereka di acara <strong>Area Creator oleh Cre:HA Project</strong>.</p><p>Sebagai inti dari acara kreatif ini, Community memiliki kesempatan untuk berinteraksi langsung dengan pengunjung, membangun komunitas, dan mendukung industri kreatif melalui karya yang mereka buat.</p><hr><h2><strong>2. Spesifikasi Booth Community</strong></h2><p>Di Area Creator kami memiliki spesifikasi booth Community sebagai berikut:</p><p>•<strong> Sarana yang didapat:</strong> 1 meja ukuran 180x60 cm, 2 kursi, Tanpa listrik, dan 2 Free Pass untuk 2 hari event.</p><p>•<strong> Harga booth di</strong> 500K untuk 2 hari</p><p>• Tidak diperbolehkan membawa meja dan kursi tambahan. Silahkan menambahkan meja, kursi dan listrik jika di perlukan pada form pendaftaran, extra charge berlaku dengan harga sebagai berikut:</p><ul><li><p>• Tambahan Kursi 1: 50K</p></li><li><p>• Tambahan Kursi 2: 100K</p></li><li><p>• Booth (Meja 1 + 2 kursi): 300K</p></li><li><p>• Listrik: 300K</p></li></ul><hr><h2><strong>3. Kegiatan Di Booth Community</strong></h2><h3><strong>✅ Kegiatan yang Diperbolehkan</strong></h3><p>✅ Showcase kegiatan komunitas dan mengajak pengunjung untuk terlibat langsung dengan aktifitas yang sudah di sediakan</p><p>✅ Mengadakan tournament dengan sekala kecil yang masih bisa di tampung dalam area yang di berikan oleh panitia</p><p>✅ Menjual barang official yang memang di peruntukan untuk kegiatan komunitas</p><h3><strong>✅ Kerjasama Exclusive Dalam Denpasar Community Championship</strong></h3><p>Denpasar Community Championship adalah inisiatif Cre:HA Project untuk mengajak komunitas dalam membuat tournament dengan sekala masa yang lebih besar. <strong>Komunitas wajib memberikan pengajuan tertulis dalam form pendaftaran berupa detail serta skema tournament dan potensi tournament yang akan dilaksanakan.</strong></p><p>Komunitas dapat mendapatkan fasilitas berikut jika lolos dalam kurasi:</p><p>• Ruang khusus untuk mengadakan tournament</p><p>• Fasilitas ticket exclusive untuk yang ikut dalam tournament</p><p>• Pengumuman juara dan sertifikat langsung di panggung</p><p>• Dan fasilitas lainnya jika memungkinkan</p><hr><h2><strong>4. Produk yang Dilarang</strong></h2><p>🚫 Produk-produk berikut tidak diperbolehkan untuk diadakan booth Community:</p><p>❌ Menjual Barang non resmi, bootleg atau barang bajakan (contoh: mencetak ilustrasi resmi dari anime/manga pada merchandise tanpa izin).</p><p>❌ Penggunaan logo resmi IP lain yang bukan milik Komunitas.</p><p>❌ Menjual barang dengan jumlah yang mass atau banyak</p><p>❌ Barang yang melanggar hukum Indonesia.</p><p>Pastikan produk yang dijual sudah sesuai dengan regulasi agar tidak terkena diskualifikasi.</p><hr><h2><strong>5. Cara Mendaftar sebagai</strong> Community <strong>di Area Creator</strong></h2><p>Untuk bergabung sebagai community, berikut adalah langkah-langkah yang harus dilakukan:</p><p>1️⃣ <strong>Mengisi Formulir Pendaftaran</strong> Isi semua informasi yang dibutuhkan, termasuk detail tentang Community dan sample kegiatan yang akan dijual. Community wajib mengunggah <strong>sampel kegiatan dalam format .JPG atau .PNG dengan ukuran maksimal 1 mb</strong>.</p><p>2️⃣ <strong>Seleksi Oleh Panitia</strong></p><p>• Setelah mendaftar, panitia akan menyeleksi Community berdasarkan kriteria tertentu.</p><p>4️⃣ <strong>Pembayaran Booth</strong></p><p>• Jika lolos seleksi, peserta akan menerima konfirmasi pembayaran sesuai dengan harga booth yang di pilih dan tambahan yang di request.</p><p>5️⃣ <strong>Komunikasi Lebih Lanjut</strong></p><p>• Setelah pembayaran dikonfirmasi, Perwakilan Community akan di undang masuk ke dalam group Booth Community untuk komunikasi lebih lanjut.</p><hr><h2>Daftar Sekarang!!</h2><p><a href=\"https://forms.gle/iLiSCWbWn5zJAEFu6\" target=\"_blank\" data-as-button=\"false\"><strong>📃From Pendaftaran Booth Community</strong></a></p>', 0, 2, NULL, '{\"meta_title\":\"Pendaftaran Booth Community Area Creator\",\"meta_desc\":\"Daftarkan komunitasmu di Area Creator oleh Cre:HA Project dan dapatkan booth eksklusif untuk showcase, turnamen, dan promosi kegiatan komunitas. Mulai dari Rp500.000 untuk dua hari penuh keseruan! Pendaftaran dibuka mulai 16 Maret 2025. Cek detail dan daftar sekarang!\"}', 1, 1, NULL, '2025-06-13 17:02:31', '2025-06-14 15:56:07', NULL),
(15, 0, NULL, 'Syarat Dan Ketentuan Booth Circle ARC V', 'syarat-dan-ketentuan-booth-circle-arc-v', NULL, '<h2>Pendaftaran Booth Circle</h2><p>Di Buka Pada 16 Maret 2025</p><h3>Link Pendaftaran</h3><p><a href=\"https://forms.gle/733xTroLqhwgbPzd7\" target=\"_blank\" data-as-button=\"false\"><strong>📃 From Pendaftaran Booth Circle</strong></a></p><h2><strong>1. Apa Itu Booth Circle?</strong></h2><p><strong>Circle</strong> adalah kelompok atau individu yang terdaftar untuk menampilkan, memamerkan, dan menjual karya kreatif mereka di acara <strong>Area Creator oleh Cre:HA Project</strong>. Circle bisa berbentuk individu atau kelompok yang memiliki karya orisinal maupun fan-art terkait anime, manga, game, dan pop culture lainnya.</p><p>Sebagai inti dari acara kreatif ini, Circle memiliki kesempatan untuk berinteraksi langsung dengan pengunjung, membangun komunitas, dan mendukung industri kreatif melalui karya yang mereka buat.</p><hr><h2><strong>2. Spesifikasi Booth Circle</strong></h2><p>Di Area Creator kami memiliki spesifikasi booth circle sebagai berikut:</p><p> • <strong>Sarana yang didapat:</strong> 1 meja ukuran 180x60 cm, 2 kursi, Tanpa listrik, dan 2 Free Pass untuk 2 hari event.</p><p> • <strong>Harga booth di</strong> 300K untuk 1 hari dan 500K untuk 2 hari. Memilih 2 hari akan di prioritaskan.</p><p> • Tidak diperbolehkan membawa meja dan kursi tambahan. Silahkan menambahkan meja dan kursi pada form pendaftaran, extra charge berlaku sebagai berikut</p><ul><li><p>• Tambahan Kursi 1: 50K</p></li><li><p>• Tambahan Kursi 2: 100K</p></li><li><p>• Listrik: 300K</p></li></ul><hr><h2><strong>3. Produk yang Bisa Dijual di Booth Circle</strong></h2><p>Circle diperbolehkan untuk menjual berbagai jenis karya kreatif, baik dalam bentuk fisik maupun digital. Berikut adalah kategori produk yang diperbolehkan:</p><h3><strong>✅ Konten yang Diperbolehkan</strong></h3><p><strong>🔸 Konten Orisinal</strong></p><ul><li><p>• Karya yang benar-benar dibuat oleh anggota Circle, termasuk ide, material, dan aset IP asli mereka.</p></li></ul><p><strong>🔸 Konten Fandom</strong></p><ul><li><p>• Produk yang terinspirasi atau diadaptasi dari IP lain seperti anime, manga, game, dan budaya pop lainnya.</p></li></ul><p><strong>📌 Jenis Produk yang Bisa Dijual:</strong></p><p>✅ <strong>Merchandise</strong></p><ul><li><p>• Acrylic standee, pakaian, poster, sticker, tumbler, dan lainnya</p></li></ul><p>✅ <strong>Buku Cetak</strong></p><ul><li><p>• Komik, Majalah, Artbook, Photobook, Novel</p></li></ul><p>✅ <strong>Permainan</strong></p><ul><li><p>• Video Game, Board Game</p></li></ul><p>✅ <strong>Konten Audio</strong></p><ul><li><p>• Musik, ASMR</p></li></ul><hr><h2><strong>4. Produk yang Dilarang</strong></h2><p>🚫 <strong>Produk-produk berikut tidak diperbolehkan untuk dijual di booth Circle:</strong></p><p>❌ <strong>Bootleg atau barang bajakan</strong> (contoh: mencetak ilustrasi resmi dari anime/manga pada merchandise tanpa izin).</p><p>❌ <strong>Penggunaan logo resmi IP lain</strong> yang bukan milik Circle.</p><p>❌ <strong>Produk dari AI-generated content.</strong></p><p>❌ <strong>Produk terkait NFT/Web3/Blockchain.</strong></p><p>❌ <strong>Barang produksi massal dari IP lain</strong> seperti figur, idol photos, atau mainan resmi.</p><p>❌ <strong>Barang yang melanggar hukum Indonesia.</strong></p><p>Pastikan produk yang dijual sudah sesuai dengan regulasi agar tidak terkena diskualifikasi.</p><hr><h2><strong>5. Cara Mendaftar sebagai Circle di Area Creator</strong></h2><p>Untuk bergabung sebagai peserta Circle, berikut adalah langkah-langkah yang harus dilakukan:</p><p>1️⃣ <strong>Mengisi Formulir Pendaftaran</strong> Isi semua informasi yang dibutuhkan, termasuk detail tentang Circle dan sample produk yang akan dijual. Circle wajib mengunggah <strong>sampel karya dalam format .JPG atau .PNG dengan ukuran maksimal 1 mb</strong>.</p><p> • Sampel yang harus dikirim bisa berupa:</p><ul><li><p>• Katalog Produk</p></li><li><p>• Ilustrasi</p></li><li><p>• Cover Komik/Novel</p></li><li><p>• Gambar produk fisik</p></li><li><p>• Album Musik</p></li><li><p>• Portfolio lainnya</p></li></ul><p>2️⃣ <strong>Seleksi Oleh Panitia</strong></p><ul><li><p>• Setelah mendaftar, panitia akan menyeleksi Circle berdasarkan kriteria tertentu.</p></li></ul><p>4️⃣ <strong>Pembayaran Booth</strong></p><ul><li><p>• Jika lolos seleksi, peserta akan menerima konfirmasi pembayaran sesuai dengan harga booth yang di pilih dan tambahan yang di request.</p></li></ul><p>5️⃣ <strong>Komunikasi Lebih Lanjut</strong></p><ul><li><p>• Setelah pembayaran dikonfirmasi, Perwakilan Circle akan di undang masuk ke dalam group Booth Circle untuk komunikasi lebih lanjut.</p></li></ul><hr><h2>Daftar Sekarang!!</h2><p><a href=\"https://forms.gle/733xTroLqhwgbPzd7\" target=\"_blank\" data-as-button=\"false\"><strong>📃 From Pendaftaran Booth Circle</strong></a></p>', 0, 2, NULL, '{\"meta_title\":\"Pendaftaran Booth Circle Area Creator 2025\",\"meta_desc\":\"Daftarkan karyamu di Booth Circle Area Creator oleh Cre:HA Project! Buka mulai 16 Maret 2025, booth khusus untuk kreator individu maupun kelompok dengan karya orisinal atau fan-art. Harga mulai dari Rp300.000. Terbatas dan dikurasi \\u2014 daftar sekarang!\"}', 1, 1, NULL, '2025-06-13 17:13:16', '2025-06-14 15:56:08', NULL),
(16, 0, NULL, 'Lomba Anime Song Area Creator V', 'lomba-anime-song-area-creator-v', NULL, '<h2>I. PENDAFTARAN LOMBA ANIME SONG</h2><p>Biaya Pendaftaran lomba Anime Song adalah <strong>Rp.30.000 / 1 Orang,</strong> sudah termasuk tiket event saat perlombaan (<strong>Pembayaran pendaftaran Lomba Anime Song dilakukan setelah peserta lomba sudah dinyatakan lolos seleksi</strong>).</p><p>Peserta wajib mendaftarkan diri terlebih dahulu melalui formulir pendaftaran pada Google Form berikut paling lambat 1 Juni 2025:</p><p><a href=\"https://forms.gle/ThzXmyHzS5WYjUow8\"><strong>📃From Pendaftaran Lomba Anime Song</strong></a></p><p>Setelah lolos, peserta akan diundang ke grup WhatsApp untuk mengetahui segala informasi terkait lomba.</p><p>Batas waktu pengumpulan Backsound paling lambat pada tanggal 7 Juni 2025 . Jika tidak mengumpulkan sampai batas waktu yang ditentukan akan di diskualifikasi.</p><p>Google Form pengumpulan backsound:</p><p><a href=\"https://forms.gle/ops67sC5c8UbMgRW8\"><strong>📃 From Pengumpulan Backsound Anime Song</strong></a></p><h2>II. KATEGORI</h2><p><strong>Lomba Anime Song dibuka untuk umum.</strong></p><h2>III. SYARAT DAN KETENTUAN PESERTA LOMBA ANIME SONG</h2><p>1. Peserta membuat 1 Video perkenalan biodata diri.</p><p>2. Peserta membuat 1 Video bernyanyi (Reff Only) dengan durasi Maksimal 2 Menit.</p><p>3. Video perkenalan dan Video bernyanyi paling lambat dikirimkan 1 Juni</p><p><a href=\"https://forms.gle/vLZDt2xG9vzNgP5fA\">📃 From Pengumpulan Biodata dan Reff Anime Song</a></p><p>1. Lagu yang peserta bawakan yaitu 1 lagu pilihan dari list lagu yang disediakan panitia dan juga 1 lagu bebas dari anime yang dipilih peserta (<em>Setiap peserta membawa total 2 lagu</em>). Lagu Pilihan panitia:</p><ul><li><p>• Supercell - My Dearest</p></li><li><p>• Lisa - Crossing Field</p></li><li><p>• Vaundy - Hadaka no Yuusha</p></li><li><p>• Sumika - Fiction</p></li><li><p>• Atarayo - Boku Wa</p></li><li><p>• Eve - Kaikai Kitan</p></li><li><p>• Official Hige Dandism - Cry Baby</p></li><li><p>• Ryokuoushoku Shakai - Be a flower</p></li><li><p>• LiSA - Gurenge</p></li><li><p>• Sayuri - Tower of Flower</p></li><li><p>• SID - Rain</p></li><li><p>• Konomi Suzuki - Days of Dash</p></li></ul><h2>IV. PROSES SELEKSI DAN PENILAIAN LOMBA</h2><p>1. Para peserta akan di seleksi tahap pertama dengan menilai video bernyayi yang di kirimkan ke panitia saat melakukan pendaftaran</p><p>2. Setelah lolos seleksi peserta lomba diwajibkan untuk membayar pendaftaran Lomba Anime Song sebesar <strong>Rp.30.000 / 1 Orang</strong> dan sudah termasuk tiket event saat perlombaan.</p><p>3. Selanjutnya, para peserta akan di invite ke group lomba dan selanjutnya akan tampil untuk lomba dalam event Area Creator di Ruang Taksu Gedung Dharma Negara Alaya, di mana waktu akan di update kembali oleh panitia dalam group peserta lomba.</p><p>4. Indikator penilaian oleh juri:</p><ul><li><p>• Teknik vokal (40%)</p></li><li><p>• Kesesuaian nada suara (30%)</p></li><li><p>⁠• Kesesuaian lirik / artikulasi (15%)</p></li><li><p>⁠• Penampilan / performance (15%)</p></li></ul><h2>V. HADIAH LOMBA</h2><p><strong>Hadiah lomba Anime Song terbagi menjadi 3 pemenang :</strong></p><p><strong>Juara 1</strong> : Sertifikat dan uang tunai Rp. 1.000.000</p><p><strong>Juara 2</strong> : Sertifikat dan uang tunai Rp. 700.000</p><p><strong>Juara 3</strong> : Sertifikat dan uang tunai Rp. 500.000</p><p>Pemenang lomba Anime Song akan diumumkan pada acara ARC V. Seluruh peserta diwajibkan hadir dan registrasi ulang di event ARC V di <strong>Dharma Negara Alaya tanggal 21 dan 22 Juni 2025.</strong> Untuk penyerahan hadiah lomba, jadwal lomba dan pengumuman spesifik akan di infokan pada group WhatsApp.</p>', 0, 2, NULL, '{\"meta_title\":\"Pendaftaran Lomba Anime Song\",\"meta_desc\":\"Daftarkan dirimu di Lomba Anime Song ARC V dan tunjukkan suara terbaikmu! Biaya hanya Rp30.000 termasuk tiket event. Pendaftaran dibuka hingga 1 Juni 2025. Hadiah total jutaan rupiah untuk 3 pemenang!\"}', 1, 1, NULL, '2025-06-13 17:33:51', '2025-06-14 15:56:09', NULL);
INSERT INTO `articles` (`id`, `views`, `cover_id`, `title`, `slug`, `preview_content`, `content`, `private`, `category_id`, `fields`, `metadata`, `created_by`, `updated_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 0, NULL, 'Lomba Animasi 2 Dimensi Area Creator V', 'lomba-animasi-2-dimensi-area-creator-v', NULL, '<h3><strong>Lomba Animasi 2 Dimensi - Syarat dan Peraturan</strong></h3><h3><strong>I. Umum</strong></h3><p><strong>1. Nama Lomba</strong>: Lomba Animasi 2 Dimensi dengan tema “Fun Art”</p><p><strong>2. Peserta:</strong> Khusus siswa SMA/SMK/Sederajat yang berdomisili di Bali</p><p><strong>3. Penyelenggara</strong>: Dalang Motion &amp; Cre:HA Project</p><p><strong>4. Waktu dan Tempat</strong>:</p><ul><li><p>• <strong>Tanggal Penayangan dan Penjurian</strong> : 21 Juni 2025 ruang audiovisiual</p></li><li><p>• <strong>Tanggal Awarding</strong> : 22 Juni 2025 ruang Taksu</p></li><li><p>• <strong>Tempat Penayangan &amp; Awarding</strong>: Dharma Negara Alaya</p></li><li><p>• <strong>Pendaftaran di buka</strong> 7 Maret 2025</p></li></ul><h3><strong>II. Peserta</strong></h3><p>1. Lomba ini terbuka untuk siswa SMA/SMK/Sederajat se-Bali.</p><p>2. Peserta dapat berpartisipasi secara individu atau tim (<strong>maksimal 5 orang per tim</strong>).</p><p>3. Peserta wajib memiliki kartu pelajar atau surat keterangan dari sekolah yang masih aktif.</p><h3><strong>III. Kategori Lomba</strong></h3><p><strong>1. Animasi 2 Dimensi</strong>:</p><ul><li><p>• Peserta diharapkan membuat animasi <strong>2D</strong> dengan tema yang telah ditentukan oleh panitia.</p></li></ul><p>2. Durasi animasi:</p><ul><li><p>• Total Animasi berdurasi <strong>5 menit</strong> diluar Credit scene</p></li></ul><p>3. Gaya animasi:</p><ul><li><p>• Animasi 2 dimensi bebas menggunakan style (Anime/Cartoon) apapun.</p></li><li><p>• Animasi harus memiliki elemen visual 2D dan tidak boleh mengandung animasi 3D.</p></li></ul><h3><strong>IV. Tema Lomba</strong></h3><p>1. Tema lomba adalah <strong>Fun Art</strong>.Tema ini dapat berfokus pada topik sosial, budaya, atau teknologi.</p><p>2. Peserta diwajibkan mengikuti tema yang telah ditentukan dan dapat menambahkan kreativitas mereka dalam interpretasi tema.</p><h3><strong>V. Persyaratan Karya</strong></h3><p>1. Karya yang diajukan harus merupakan karya asli dan belum pernah dipublikasikan atau diikutsertakan dalam lomba lain.</p><p>2. Ketentuan Visual dan Latar Lingkungan/Latar Belakang</p><ul><li><p>• Visual: Karakter harus memiliki struktur anatomi yang jelas dan tidak hanya terdiri dari bentuk dasar seperti kubus atau lingkaran. Selain itu, ekspresi wajah, pakaian, dan warna harus diperhatikan dengan baik (bukan animasi stickman).</p></li><li><p>• Lingkungan/Latar Belakang: Setiap adegan dilengkapi dengan latar belakang yang sesuai dan mendukung keseluruhan visual animasi.</p></li></ul><p>3. Format file video:</p><ul><li><p>• MP4 H.264 Video codec</p></li><li><p>• AAC-LC audio codec</p></li><li><p>• Resolusi: 1080p FHD <strong>16:9</strong></p></li><li><p>• Frame rate : 24, 29.97, 30, 60 fps</p></li><li><p>• Bitrate: Bitrate minimal 8000 Kbps (Bit per channel bisa disesuaikan dengan kebutuhan kualiti video).</p></li></ul><p>4. Karya Final harus disertai dengan dokumentasi berupa:</p><ul><li><p>• Mengirimkan PNG Storyboard dalam bentuk ZIP/RAR.</p></li><li><p>• List perangkat lunak yang digunakan dalam pembuatan animasi.</p></li><li><p>• Footage foto/video tim dalam proses pengerjaan animasi.</p></li></ul><p>5. Setiap peserta hanya boleh mengirimkan satu karya animasi.</p><h3><strong>VI. Pengiriman Karya</strong></h3><p><strong>Phase 1 Pengiriman Konsep Animasi Berupa Karakter Concept dan Sinopsis Cerita</strong></p><p><em>Panitia akan melakukan review apakah konsep ada potensi bermasalah untuk kebutuhan penayangan seperti unsur sara, NSFW, Pornografi).</em> File dikirim dengan format dan ketentuan berikut:</p><ul><li><p>• Nama file:</p><ul><li><p>• Karakter Concept : NamaTim_Karakter Concept</p></li><li><p>•Sinopsis Cerita ****: NamaTim_Sinopsis Cerita</p></li></ul></li><li><p>• Deadline pengiriman konsep: <strong>8 APRIL 2025, 23.00 WITA</strong></p></li><li><p>• <strong>From Pengumpulan Konsep: <a href=\"https://forms.gle/8fVt6dPaSFc4Twys8**\">https://forms.gle/8fVt6dPaSFc4Twys8</a></strong></p></li></ul><p><strong>Phase 2 Pengiriman File Final</strong></p><ul><li><p>• Nama file: <strong>NamaTim_Nama File.mp4</strong></p></li><li><p>• Deadline pengiriman karya: <strong>7 JUNI 2025, 23.00 WITA</strong></p></li><li><p>• Form pengiriman file final: <a href=\"https://forms.gle/rLzX4hEQgqKnEUxF6**\"><strong>https://forms.gle/rLzX4hEQgqKnEUxF6</strong></a></p></li></ul><h3><strong>VII. Penilaian</strong></h3><p><strong>Karya peserta akan dinilai berdasarkan kriteria berikut:</strong></p><table><tbody><tr><th rowspan=\"1\" colspan=\"1\"><p><strong>NO</strong></p></th><th rowspan=\"1\" colspan=\"1\"><p><strong>KRITERIA</strong></p></th><th rowspan=\"1\" colspan=\"1\"><p><strong>KETERANGAN</strong></p></th><th rowspan=\"1\" colspan=\"1\"><p><strong>POIN</strong></p></th></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>1.</p></td><td rowspan=\"1\" colspan=\"1\"><p>Kreativitas</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: justify; ;\"><small>Keunikan ide dan penyampaian tema.</small></p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>2.</p></td><td rowspan=\"1\" colspan=\"1\"><p>Teknik Animasi</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: justify; ;\"><small>Kualitas animasi, fluiditas gerakan, dan penggunaan prinsip dasar animasi.</small></p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">30</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>3.</p></td><td rowspan=\"1\" colspan=\"1\"><p>Kesesuaian Tema</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: justify; ;\"><small>Apakah karya berhasil menggambarkan tema lomba</small></p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">15</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>4.</p></td><td rowspan=\"1\" colspan=\"1\"><p>Estetika dan Visual</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: justify; ;\"><small>Desain karakter, background, dan keseluruhan visual animasi.</small></p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">15</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>5.</p></td><td rowspan=\"1\" colspan=\"1\"><p>Pesan atau Cerita</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: justify; ;\"><small>Kejelasan cerita yang disampaikan dalam animasi.</small></p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr></tbody></table><p><strong>Dewan Juri</strong></p><p><img src=\"/storage/images/05fdee6d-149d-48ae-92a9-8677ce7bf5a8.jpg\" width=\"1333\" height=\"750\"></p><h3><strong>VIII. Hadiah Dengan Total 25 juta !!</strong></h3><p>1. Juara 1: Uang Tunai Rp. 12.000.000, dan Sertifikat.</p><p>2. Juara 2: Uang Tunai Rp. 8.000.000, dan Sertifikat.</p><p>3. Juara 3: Uang Tunai Rp. 5.000.000, dan Sertifikat.</p><h3><strong>IX. Ketentuan Tambahan</strong></h3><p>1. Peserta wajib hadi dalam event di tanggal 21 &amp; 22 Juni 2025 untuk hadir dalam sesi bedah karya dan juga penyerahan hadiah.</p><p>2. Karya yang dikirimkan menjadi hak milik panitia dan dapat digunakan untuk keperluan promosi atau publikasi.</p><p>3. Panitia berhak mendiskualifikasi peserta yang melanggar ketentuan atau mengirimkan karya yang tidak sesuai dengan tema atau plagiasi.</p><p>4. Keputusan juri bersifat final dan tidak dapat diganggu gugat.</p><h3><strong>X. Pertanyaan dan Bantuan</strong></h3><p>Pertanyaan dan Bantuan terkait lomba bisa di tanyakan di group peserta lomba. Link group akan di dapatkan setelah mendaftar sebagai peserta.</p><h3><strong>XI Catatan Q&amp;A - TM</strong></h3><p><strong>1. Apakah voice actor (VA) dari luar tim diperbolehkan?</strong> <em>Diperbolehkan, dengan catatan masih dalam lingkup satu sekolah.</em></p><p><strong>2. Apakah penggunaan real footage diperbolehkan untuk tracing?<em>Diperbolehkan asal milik pribadi atau free footage.</em></strong></p><p><strong>3. Bagaimana dengan penggunaan free asset, background music, dan sejenisnya?</strong> <em>Diusahakan untuk tidak menggunakan free asset. Untuk musik dan sound effect (SFX), usahakan menggunakan yang bebas royalti, dan lebih baik lagi jika memproduksi sendiri.</em></p><p><strong>4. Apakah boleh menggunakan aset 3D untuk background?</strong> <em>Boleh, tetapi harus dikembangkan menggunakan teknik tracing sesuai kebutuhan cerita.</em></p><p><strong>5. Apakah mixing audio dinilai?</strong> Mixing dinilai sebagai bagian dari kriteria kesesuaian dengan tema.</p><p><strong>6. Apakah boleh menggunakan beberapa bagian motion graphic?</strong> Boleh, karena motion graphic juga termasuk dalam ranah animasi 2D.</p><p><strong>7. Apakah teknik parallax diperbolehkan?</strong> Boleh, karena parallax termasuk dalam teknik animasi 2 dimensi.</p><p><strong>8. Apakah senior yang sudah kuliah boleh membantu?</strong> Tidak diperbolehkan dalam konteks produksi karya.</p><p><strong>9. Apakah rotoscope diperbolehkan?</strong> Diperbolehkan, karena termasuk teknik animasi 2 dimensi.</p><p><strong>10. Apakah VA tidak boleh dari luar sekolah?</strong> Betul, voice artist tidak diperkenankan berasal dari luar sekolah.</p><p><strong>11. Apakah ada standar aplikasi yang harus digunakan dalam pembuatan animasi 2D?</strong> Tidak ada standar khusus. Penggunaan aplikasi dibebaskan.</p><p><strong>12. Apa saja yang dikumpulkan saat penyetoran karya?</strong> <a href=\"https://www.notion.so/crehaproject/Lomba-Animasi-2-Dimensi-1a259b97630780819776dd83d0597644?pvs=4#1ae59b97630780d18858d5546cd0077e\">https://www.notion.so/crehaproject/Lomba-Animasi-2-Dimensi-1a259b97630780819776dd83d0597644?pvs=4#1ae59b97630780d18858d5546cd0077e</a></p><p><strong>13. Bagaimana menentukan karya yang fair (adil) dan tanpa bantuan profesional?</strong> Akan dilakukan bedah karya pada tanggal 21 Juni, dan keaslian karya akan terlihat dari cara peserta menjawab pertanyaan dewan juri.</p><p><strong>14. Pengumpulan konsep menggunakan format apa?</strong> Format sudah tercantum dalam persyaratan lomba.</p><p><strong>15. Sampai sejauh mana pembina sekolah boleh membantu?</strong> Pembina tidak diperkenankan terlibat dalam aspek produksi karya.</p>', 0, 2, NULL, '{\"meta_title\":\"Lomba Animasi 2D\",\"meta_desc\":\"Ikuti Lomba Animasi 2 Dimensi se-Bali untuk siswa SMA\\/SMK bertema \\u201cFun Art\\u201d! Daftar mulai 7 Maret 2025. Tayang & penjurian di Dharma Negara Alaya, dengan total hadiah Rp25.000.000. Lihat syarat dan cara ikutnya sekarang!\"}', 1, 1, NULL, '2025-06-13 17:52:42', '2025-06-14 15:56:11', NULL),
(18, 0, NULL, 'Lomba Cosplay Competition Area Creator V', 'lomba-cosplay-competition-area-creator-v', NULL, '<h2>I. Pendaftaran Lomba Cosplay Competition</h2><p>Peserta wajib mendaftarkan diri terlebih dahulu melalui formulir pendaftaran pada Google Form berikut:</p><p><a href=\"https://forms.gle/583Nwqvz5JHkHDbK7\"><strong>📃 From Pendaftaran Lomba Cosplay Competition</strong></a></p><p>Setelah terdaftar, peserta akan diundang ke grup WhatsApp untuk mengetahui segala informasi terkait lomba.</p><p>Biaya Pendaftaran <strong>Rp.50.000 / individual maupun group sudah termasuk tiket ARC V</strong> (Maksimal anggota group 4 orang dan tidak termasuk blackman).</p><h2>II. Kategori</h2><p><strong>Lomba Cosplay Competition dibuka untuk umum.</strong></p><h2>III. Pengumpulan Visual dan Audio Backsound</h2><p>Batas waktu pengumpulan Visual dan Audio paling lambat pada tanggal 7 Juni 2025 . Jika tidak mengumpulkan sampai batas waktu yang ditentukan akan di diskualifikasi.</p><p>Google Form pengumpulan visual dan audio:</p><p><a href=\"https://forms.gle/esw1VSuiQBNcjUVj8\"><strong>📃 From Pengumpulan Visual dan Audio Backsound Cosplay Competition</strong></a></p><h2>IV. Peraturan dan Syarat Lomba Cosplay Competition.</h2><p>1. Peserta diperbolehkan perorangan atau group yaang terdiri dari minimal 2 orang dan maksimal 4 orang, diluar blackman.</p><p>2. Character cosplay yang diperformkan harus menampilkan cosplay yang jelas dan mudah dipahami seperti dari Anime, Game, Manga, Vocaloid, Tokusatsu, dan lain-lain. Bukan OC (<em>Original Character</em>).</p><p>3. Peserta tidak diperbolehkan menggunakan senjata tajam, senjata api, menggunakan perlengkapan yang bisa menimbulkan percikan api seperti kembang api, dan lain-lain.</p><p>4. Peserta lomba bergaya dan menampilkan cosplay diatas panggung dengan durasi maksimal 2 menit 30 detik untuk solo maupun group. Jika melebihi durasi yang ditentukan akan ada pengurangan poin.</p><p>5. Format audio diwajibkan berformat MP3 dan video berformat MP4.</p><p>6. Visual berukuran 2560x720p atau 36:9</p><p>7. Peserta wajib mengumpulkan Audio dan Video yang akan digunakan untuk perform sebelum batas waktu yang ditentukan panitia. Jika peserta tidak mengumpulkan Audio dan Video yang akan digunakan untuk perform sampai batas waktu yang ditentukan maka akan di diskualifikasi.</p><p>8. Peserta dilarang menggunakan properti yang bisa membuat kotor atau susah dibersihkan seperti Conventi, Potong-potongan kertas, dan lain-lain.</p><p>9. Peserta harus mendaftar ulang atau registrasi ulang kembali di acara hingga waktu yang ditentukan oleh panitia.</p><p>10. Foto dalam lomba Cosplay Competition milik panitia Cre:Ha Project.</p><p>11. Penilaian dan keputusan juri adalah mutlak tidak bisa diganggu gugat.</p><h2>V. KRITERIA PENILAIAN LOMBA</h2><p>Penilaian akan dilakukan oleh Juri Lomba Cosplay Competition yang akan diundang oleh tim Cre:HA Project. Penilaian dilakukan berdasarkan beberapa parameter, yaitu :</p><table><tbody><tr><th rowspan=\"1\" colspan=\"1\"><p>No.</p></th><th rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p style=\"text-align: center; ;\">Parameter Penilaian</p></th><th rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">Poin</p></th></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>1</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Detail Costume</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>2</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Performance</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>3</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Penghayatan</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>4</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Penguasaan Panggung</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>5</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Kreatifitas Cosplayer</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>6</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Total Poin</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">100</p></td></tr></tbody></table><h2>VI. HADIAH LOMBA</h2><p><strong>Hadiah lomba Cosplay Competition terbagi menjadi 3 pemenang :</strong></p><p>Juara 1 : Sertifikat dan uang tunai Rp. 1.500.000</p><p>Juara 2 : Sertifikat dan uang tunai Rp. 1.000.000</p><p>Juara 3 : Sertifikat dan uang tunai Rp. 500.000</p><p>Pemenang lomba Cosplay Competition akan diumumkan pada acara ARC V. Seluruh peserta diwajibkan hadir dan registrasi ulang di event ARC V di <strong>Dharma Negara Alaya tanggal 21 &amp; 22 Juni 2025.</strong> Untuk detail jadwal akan di infokan pada group WhatsApp.</p>', 0, 2, NULL, '{\"meta_title\":\"Lomba Cosplay Competition\",\"meta_desc\":\"Tunjukkan performa terbaikmu di Lomba Cosplay Competition terbuka untuk umum! Daftar sekarang seharga Rp50.000 (termasuk tiket masuk event ARC V). Total hadiah Rp3.000.000. Deadline pengumpulan audio visual: 7 Juni 2025. Cek syarat dan aturan lengkapnya!\"}', 1, 1, NULL, '2025-06-13 18:01:59', '2025-06-14 15:56:12', NULL),
(19, 0, NULL, 'Lomba Coswalk Area Creator V', 'lomba-coswalk-area-creator-v', NULL, '<h2>I. Pendaftaran Lomba Coswalk</h2><p><strong>Pendaftaran online sampai 7 Juni 2025</strong> (<em>Atau sampai quota yang di tentukan sudah penuh</em>)</p><p>Peserta wajib mendaftrakan diri terlebih dahulu melalui formulir pendaftaran pada Google Form berikut: <a href=\"https://forms.gle/wisMVRhhR5aCZyDX8\"><strong>📃From Pendaftaran Lomba Coswalk</strong></a></p><p>Setelah terdaftar, peserta akan diundang ke grup WhatsApp untuk mengetahui segala informasi terkait lomba.</p><p>Biaya Pendaftaran lomba Coswalk adalah <strong>Rp.10.000 / 1 orang</strong> dan <strong>belum termasuk tiket ARC V.</strong></p><h2>II. Kategori</h2><p><strong>Lomba Coswalk dibuka untuk umum.</strong></p><h2>III. Peraturan dan Syarat Lomba Coswalk</h2><p>1. Peserta coswalk tidak boleh menggunakan properti bahaya seperti senjata asli (<em>Bahan dari besi</em>), senjata tajam, dan senjata api.</p><p>2. Peserta Coswalk berjumlah maksimal 1 orang dan harus menampilkan cosplay yang jelas dan mudah dipahami seperti dari Anime, Game, Manga, Tokusatsu, Comic, dan lain-lain, bukan dari OC (<em>Original Character</em>), dan untuk crossdress diperbolehkan.</p><p>3. Peserta yang sudah melakukan pendaftaran online lomba coswalk diharuskan melakukan registrasi ulang saat acara pada waktu yang ditentukan oleh panitia.</p><p>4. BGM (<em>Background Music</em>) pada saat coswalk akan disediakan oleh panitia.</p><p>5. Peserta lomba bergaya dan menampilkan cosplay diatas panggung dengan durasi maximal 30 detik, jika melebihi durasi yang ditentukan maka akan dipanggil peserta selanjutnya.</p><p>6. Peserta yang dipanggil namanya sebanyak 3x jika tidak muncul akan dipindah pada nomor urut terakhir dan apabila masih tidak muncul juga saat dipanggil kembali maka dianggap tidak berpartisipasi dan uang pendaftaraan lomba tidak dapat di kembalikan.</p><p>7. Peserta tidak diperbolehkan menggunakan properti yang bisa menyebabkan panggung kotor seperti Conventi,Potong-potongan kertas, dan lain-lain.</p><p>8. Jangan melakukan adegan yang bisa membahayakan juri, penonton, dan diri sendiri seperti melempar properti atau melombat dari atas panggung.</p><p>9. Costume cosplay yang ditampilkan tidak mengandung Sara, Yuri, Pornografi, dan sebagainya.</p><p>10. Foto dalam lomba Coswalk milik panitia Cre:Ha Project.</p><p>11. Penilaian dan keputusan juri adalah mutlak dan tidak bisa diganggu gugat.</p><h2>IV. KRITERIA PENILAIAN LOMBA</h2><p>Penilaian akan dilakukan oleh Juri Lomba Coswalk yang akan diundang oleh tim Cre:HA Project. Penilaian dilakukan berdasarkan beberapa parameter, yaitu :</p><table><tbody><tr><th rowspan=\"1\" colspan=\"1\"><p>No.</p></th><th rowspan=\"1\" colspan=\"1\"><p>Parameter Penilaian</p></th><th rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">Poin</p></th></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>1</p></td><td rowspan=\"1\" colspan=\"1\"><p>Detail Costume</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">50</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>2</p></td><td rowspan=\"1\" colspan=\"1\"><p>Performance</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">50</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>3</p></td><td rowspan=\"1\" colspan=\"1\"><p>Total Poin</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">100</p></td></tr></tbody></table><h2>V. HADIAH LOMBA</h2><p><strong>Hadiah lomba Coswalk terbagi menjadi 3 pemenang :</strong></p><p><strong>Best Costume</strong> : Sertifikat dan uang tunai Rp. 500.000</p><p><strong>Judge Favorite</strong> : Sertifikat dan uang tunai Rp. 300.000</p><p>Best Performance : Sertifikat dan uang tunai Rp. 200.000</p><p>Pemenang lomba Coswalk akan diumumkan pada acara ARC V. Seluruh peserta diwajibkan hadir dan registrasi ulang di event ARC V di <strong>Dharma Negara Alaya tanggal 21 dan 22 Juni 2025</strong> untuk penyerahan hadiah lomba, jadwal lomba dan pengumuman spesifik akan di infokan pada group WhatsApp.</p>', 0, 2, NULL, '{\"meta_title\":\"Lomba Coswalk ARC V Bali\",\"meta_desc\":\"Daftar Lomba Coswalk hanya Rp10.000 dan menangkan hadiah total Rp1.000.000! Terbuka untuk umum dengan kategori solo cosplay. Deadline pendaftaran: 7 Juni 2025 atau hingga kuota penuh. Tampil maksimal di event ARC V dan rebut gelar Best Costume!\"}', 1, 1, NULL, '2025-06-13 18:08:00', '2025-06-14 15:56:13', NULL),
(20, 0, NULL, 'Lomba Fan Art Digital Ki Ai Nirnur X Kureha Area Creator V', 'lomba-fan-art-digital-ki-ai-nirnur-x-kureha-area-creator-v', NULL, '<h2>I. PENDAFTARAN LOMBA FAN ART</h2><p>Peserta wajib mendaftrakan diri terlebih dahulu melalui formulir pendaftaran beserta ketentuan administrasi yang diunggah melalui Google Form berikut :</p><p><a href=\"https://forms.gle/C9xpr4KvTegJHVLk8\"><strong>📃 Form Pendaftaran Lomba Fan Art</strong></a></p><p>Setelah terdaftar, peserta akan diundang ke grup WhatsApp untuk mengetahui segala informasi terkait lomba.</p><p>Jika karya yang dihasilkan sudah selesai dan sudah diupload ke Instagram, peserta wajib mengumpulkan karya pada form berikut:</p><p><a href=\"https://forms.gle/g5am8BQLwokU4oKZ7\"><strong>🖼 Form Pengumpulan Karya Fan Art</strong></a></p><h2>II. KATEGORI</h2><p><strong>Lomba Fan Art dibuka untuk umum</strong></p><h2>III. SYARAT DAN KETENTUAN PESERTA LOMBA FAN ART</h2><p>1. Lomba dibuka khusus domisili Bali.</p><p>2. Lomba berbasis online dan bersifat individu.</p><p>3. Karya harus orisinil dan tidak boleh menjiplak karya orang lain.</p><p>4. Karya dibuat 100% buatan sendiri tanpa sentuhan Artificial Intelegent (<em>AI</em>).</p><p>5. Karya belum pernah dipublikasikan atau diikutsertakan dalam perlombaan lain.</p><p>6. Peserta akan meng-upload karyanya di Instagramnya masing-masing, dan men-tag Instagram <a href=\"https://www.instagram.com/crehaproject/\">@crehaproject</a>, sertakan juga hashtag #KiAiNirnur #ARC5 #ARCV #crehaproject #LombaFanArtARC</p><p>7. Lomba Fan Art <strong>tidak dipungut biaya pendaftaran</strong>.</p><p>8. Pendaftaran lomba Fan Art tidak dipungut biaya.</p><h2>IV. PROSEDUR LOMBA FAN ART</h2><p>1. Tema dari lomba Fan Art pada ARC V adalah konsep <strong>“Ki Ai Nirnur”</strong></p><p>2. Didalam karya Fan Art peserta diwajibkan untuk menyertakan Karakter karya <strong>Marmar Herayukti</strong> yaitu “<strong>Ki Ai Nirnur“</strong> dan <strong>maskot Cre:HA Project</strong> yaitu “<strong>Kureha</strong>” dalam karya.</p><p>3. Karya harus dibuat dalam bentuk gambar digital.</p><p>4. Gambar berukuran canvas 2160px x 2700px Portrait (4:5) dengan resolusi 300px.</p><p>5. Desain karakter yang dibuat <strong>TIDAK</strong> mengandung unsur <strong>SARA</strong> (Suku, Agama, Ras, dan Antargolongan), tidak memuat pornografi, adegan kekerasan, serta tidak bertentangan dengan ketentuan perundang- undangan yang berlaku di Indonesia.</p><p>6. Karya pemenang lomba Fan Art yang terkumpul akan menjadi hak milik panitia sepenuhnya.</p><p>7. Penjurian akan dilakukan untuk mencari 3 karya terbaik, yaitu juara 1, 2, dan 3.</p><p>8. Keputusan juri bersifat mutlak dan tidak dapat diganggu gugat.</p><p>9. Untuk memastikan karya tidak dibuat dengan Artificial Intelegent (AI), peserta wajib upload hasil karya beserta bukti proses pembuatan dalam format kolase dengan ketentuan sebagai berikut : <strong>Slide 1</strong> : Menyertakan final hasil karya Fan Art. <strong>Slide 2 - 6</strong> : Menyertakan bukti tidak menggunakan Artificial Intelegent (<em>AI</em>) dengan menampilkan progress dalam pembuatan karya Fan Art. <strong>Screenshot Progress :</strong></p><ul><li><p>• Rought sketch</p></li><li><p>• Clean sketch</p></li><li><p>• Lineart</p></li><li><p>• Base color</p></li><li><p>• Rendering (<em>Shading dan highlight</em>)</p></li><li><p>Atau <strong>peserta dapat membuat satu video yang mencangkup semua progress yang dicantumkan dalam Screenshot Progress.</strong></p></li></ul><p>10. Peserta mengunggah hasil karya Fan Art nya di Instagram pribadi dengan syarat Instagram peserta <strong>tidak diperkenankan untuk di private</strong>, agar memudahkan tim juri untuk menilai, dan peserta juga wajib mengunggah karya sebelum batas waktu yang telah ditentukan dengan caption menyertakan identitas berikut: <em>“Nama Peserta Lomba_Judul Karya” Contoh : ”Pramana Adhiguna_Kureha in ARC”</em></p><p>11. Caption dapat di berikan narasi tambahan terkait karya yang di buat</p><p>12. Peserta juga mengunggah hasil karya ke dalam form berikut:</p><p><a href=\"https://forms.gle/g5am8BQLwokU4oKZ7\"><strong>🖼️ Form Pengumpulan Karya Fan Art</strong></a></p><p><strong>13. Batas akhir peserta dapat meng-upload karyanya adalah pada tanggal</strong> 7 Juni 2025, jam 23.00 WITA.</p><h2>V. KRITERIA PENILAIAN LOMBA</h2><p>Penilaian akan dilakukan oleh Guest Judge yang akan diundang oleh tim Cre:HA Project. Penilaian dilakukan berdasarkan beberapa parameter, yaitu :</p><table><tbody><tr><th rowspan=\"1\" colspan=\"1\"><p>No.</p></th><th rowspan=\"1\" colspan=\"1\"><p>Parameter Penilaian</p></th><th rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">Poin</p></th></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>1</p></td><td rowspan=\"1\" colspan=\"1\"><p>Makna dan Penceritaan</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">35</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>2</p></td><td rowspan=\"1\" colspan=\"1\"><p>Teknis Visualisasi</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">45</p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>3</p></td><td rowspan=\"1\" colspan=\"1\"><p>Kreativitas ( Dalam mengolah unsur tema )</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">20</p></td></tr></tbody></table><p>Dengan mengikutsertakan karya dalam lomba Fan Art maka setiap peserta menyetujui bahwa:</p><ul><li><p>• Karya yang diikutsertakan dalam perlombaan tidak akan dikembalikan.</p></li><li><p>• Panitia berhak memamerkan atau mempublikasikan karya yang diikutsertakan.</p></li><li><p>• Panitia mempunyai hak milik atas karya yang diikutsertakan.</p></li><li><p>• Keputusan dewan juri tidak dapat diganggu gugat.</p></li></ul><h2>VI. HADIAH LOMBA</h2><p><strong>Hadiah lomba Fan Art terbagi menjadi 3 pemenang :</strong></p><p><strong>Marmar Choice</strong> : Sertifikat dan uang tunai Rp. 500.000</p><p><strong>Excellent Choice</strong> : Sertifikat dan uang tunai Rp. 300.000</p><p><strong>Great</strong> <strong>Choice</strong> : Sertifikat dan uang tunai Rp. 200.000</p><p>Kategori juara <strong>Marmar Choice</strong> akan langsung di nilai oleh <strong>Marmar Herayukti</strong> berdasarkan ketajaman karya yang tervisual dan terkonsep dalam art. Untuk <strong>Excellent Choice</strong> dan <strong>Great</strong> <strong>Choice</strong> akan di nilai berdasarkan indikator penilaian oleh Art Director Cre:HA Project yaitu <strong>Gung Bollo</strong>.</p><p>Pemenang lomba Fan Art akan diumumkan pada acara ARC V. Seluruh peserta diwajibkan hadir dan registrasi kehadiran ulang di event ARC V di <strong>Dharma Negara Alaya tanggal 21 atau 22 Juni 2025</strong> untuk penyerahan hadiah lomba, detail jadwal akan di infokan pada group WhatsApp.</p><h2><strong>VII. KARAKTER KI AI NIRNUR DAN KUREHA ( SEBAGAI REFERENSI )</strong></h2><h3><strong>KI AI NIRNUR</strong></h3><p><img src=\"/storage/images/28e49c4d-a702-4407-a0a1-dbc8c9de24a0.jpg\" width=\"1333\" height=\"750\"></p><p><a href=\"https://www.notion.so/crehaproject/Lomba-Fan-Art-Digital-Ki-Ai-Nirnur-X-Kureha-Area-Creator-V-c4adac26a6c04b0fafdc30784b7e3f35?source=copy_link#1da59b97630780d695b3fa4c8d077a75\"><strong>https://www.instagram.com/p/DH7sY4IPuZE/?img_index=2</strong></a></p><p><img src=\"/storage/images/1e7463ab-9fff-498a-9b3a-a10a2645e250.jpg\" width=\"1333\" height=\"750\"></p><p><a href=\"https://www.instagram.com/p/DIBINmNPS9n/?img_index=1\"><strong>https://www.instagram.com/p/DIBINmNPS9n/?img_index=1</strong></a></p><p><a href=\"https://www.nowbali.co.id/paksi-ireng-a-balinese-artists-philosophy-on-nature-disaster-and-human-perspective/?fbclid=PAZXh0bgNhZW0CMTEAAaeKpkxsZf_RvYNAEVjAIJHQPEe46CQ884W8tuQNij9d6ykhmuRL4ddiDRfeYg_aem_neCpebHYng03VSo3fbsKog\"><strong>Paksi Ireng : A Balinese Artist’s Philosophy on Nature, Disaster and Human Perspective - NOW! Bali</strong></a></p><h3>KUREHA</h3><p><img src=\"/storage/images/f6df181a-5a05-4968-8559-8d2a86a1c01f.jpg\" width=\"1024\" height=\"1536\"></p><p><img src=\"/storage/images/c20a592d-46b8-412e-b191-1f88036da870.jpg\" width=\"1024\" height=\"1536\"></p><p><img src=\"/storage/images/0cc04458-8193-420a-8210-99d52c46cd94.jpg\" width=\"1024\" height=\"2026\"></p><p><img src=\"/storage/images/5fc98bc8-0d4c-4915-86c6-e86e2bba37af.jpg\" width=\"1024\" height=\"2026\"></p>', 0, 2, NULL, '{\"meta_title\":\"Lomba Fan Art ARC V\",\"meta_desc\":\"Ikuti Lomba Fan Art ARC V bertema Ki Ai Nirnur dan maskot Kureha! Khusus untuk domisili Bali, tanpa biaya pendaftaran. Upload karyamu di Instagram & menangkan hadiah hingga Rp500.000! Batas akhir pengumpulan: 7 Juni 2025.\"}', 1, 1, NULL, '2025-06-13 18:24:02', '2025-06-14 15:56:14', NULL),
(21, 0, NULL, 'Floor Maps & Katalog ARC V', 'floor-maps-katalog-arc-v', NULL, '<p>Selamat datang di <strong>Area Creator V</strong>! Ingin tahu posisi booth favoritmu atau cari katalog produk dari circle &amp; komunitas keren di ARC V? Tenang, semua ada di sini!</p><p>Cek foto floor map di sini:</p><p><img src=\"/storage/images/ee56f82f-15e5-4c05-9e4f-64cf4b5be348.png\" width=\"1333\" height=\"750\"></p><h2><strong>Circle Booth</strong></h2><table class=\"w-fit min-w-(--thread-content-width)\"><tbody><tr><th rowspan=\"1\" colspan=\"1\"><p>No Booth</p></th><th rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Nama Booth</p></th><th rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">Katalog</p></th></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>01</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Fruitpaw Basket</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrVzT-B1oV/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>02</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Kedai Kitsh</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrVa31Bk-T/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>03</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>SNS Sari&#039;s Ruang</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrVLFnhOFY/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>04</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Maidenmade</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrU-uqBJuZ/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>05</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Kyorochet</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrUMfgBz3y/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>06</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Bonbunny.ID</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrT2QaBVgy/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>07</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Korban Gacja</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrTd5fBrjr/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>08</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Durami Design</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrTKyLhXDN/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>09</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Cak Bane Draws</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrSofZBNoT/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>10</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Bigmadamee</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKrSMJ0hvtK/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>11</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Canard Stuffs</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKq-UoJBnIi/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>12</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Teethgoods</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKq9pxBBzYe/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>13</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Hikaswari Studios</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKq9ZgThzaK/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>14</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Gambreng</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKq86DyhLyq/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>15</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Artelicious Circle</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKq8qb_h3wY/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>16</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Uwu Fanmerch</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKq8T8dhElw/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>17</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Two Gents Crafts</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKq8BjpBAIv/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>18</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Wrinmara</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKpSTkiBimb/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>19</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Miyayantt</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKpAgRhBuI6/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>20</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Mari Tempel</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKpAM1wBYTo/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>21</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Yasata Anime Apparel</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo_-lIhV4G/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>22</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Trio Macan</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo_oQDhOob/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>23</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>OIIA Circle</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo_IOrBoqx/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>24</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Funpon</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo-4uOhiDx/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>25</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Citerell</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo-X1JBt4E/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>26</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Huskies</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo981lhoTx/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>27</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Merch Hustler</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo9nNaB0Cb/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>28</p></td><td rowspan=\"1\" colspan=\"1\" data-colwidth=\"341\"><p>Kucingkecil</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKo9G6hBGun/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr></tbody></table><p><img src=\"/storage/images/a8364bf6-71b3-4633-84de-f1dbf41d8a14.png\" width=\"1333\" height=\"750\"></p><h2>Booth Community</h2><table class=\"w-fit min-w-(--thread-content-width)\"><tbody><tr><th rowspan=\"1\" colspan=\"1\"><p>No Booth</p></th><th rowspan=\"1\" colspan=\"1\"><p>Nama Booth</p></th><th rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">Katalog</p></th></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>A</p></td><td rowspan=\"1\" colspan=\"1\"><p>Bali Warhammer Community</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjcqXFBHmU/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>B</p></td><td rowspan=\"1\" colspan=\"1\"><p>Beyforce Dewata</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjcMOOhP4D/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>C1</p></td><td rowspan=\"1\" colspan=\"1\"><p>Inbis BDI Denpasar</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjbSOIBSU9/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>C2</p></td><td rowspan=\"1\" colspan=\"1\"><p>Unity Craft</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjbBbMhW_E/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>C3</p></td><td rowspan=\"1\" colspan=\"1\"><p>The Kotoba</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjaigEhoVe/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>C4</p></td><td rowspan=\"1\" colspan=\"1\"><p>Cardfighter Bali</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjaM-vhPcC/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>C4</p></td><td rowspan=\"1\" colspan=\"1\"><p>Gundam Card Game Dewata</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjZ7q8B3em/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>D</p></td><td rowspan=\"1\" colspan=\"1\"><p>Pokemon Dewata TCG</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjXw3PBSmR/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>E</p></td><td rowspan=\"1\" colspan=\"1\"><p>Baca Komik Lokal</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKjWsZRhljj/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>CM</p></td><td rowspan=\"1\" colspan=\"1\"><p>Private Fortress Group</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKhgVsJB8C1/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>GD2</p></td><td rowspan=\"1\" colspan=\"1\"><p>Pixemo Studio</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKheudmB9Ea/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>GD1</p></td><td rowspan=\"1\" colspan=\"1\"><p>Palm Game Studio</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKheZXvBxHQ/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr></tbody></table><p><img src=\"/storage/images/d8388cf0-a0a5-4c8c-a442-539468fdfa23.png\" width=\"1333\" height=\"750\"></p><h2>Booth F&amp;B</h2><table class=\"w-fit min-w-(--thread-content-width)\"><tbody><tr><th rowspan=\"1\" colspan=\"1\"><p>No Booth</p></th><th rowspan=\"1\" colspan=\"1\"><p>Nama Booth</p></th><th rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\">Katalog</p></th></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>01</p></td><td rowspan=\"1\" colspan=\"1\"><p>Mai Ngeteh Bali</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcYL1dBtch/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>02</p></td><td rowspan=\"1\" colspan=\"1\"><p>Sate Babi BukMang x Nachtisch</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcXlfWhSD_/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>03</p></td><td rowspan=\"1\" colspan=\"1\"><p>Mango.co Bali</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcXWxthlFH/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>04</p></td><td rowspan=\"1\" colspan=\"1\"><p>Es Kepo</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcXDsoB9bP/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>05</p></td><td rowspan=\"1\" colspan=\"1\"><p>Pemuda Bingung</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcW6f9hasV/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>06</p></td><td rowspan=\"1\" colspan=\"1\"><p>Sari Rujak</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcWkCXBLyv/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>07</p></td><td rowspan=\"1\" colspan=\"1\"><p>Kare Don</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcVSOFh0u0/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>08</p></td><td rowspan=\"1\" colspan=\"1\"><p>Jus Joon</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcU-o1h0CR/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>09</p></td><td rowspan=\"1\" colspan=\"1\"><p>Sushi Rasa Lokal</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcUzbEhSGL/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>10</p></td><td rowspan=\"1\" colspan=\"1\"><p>Mixue</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcUdvzhKqM/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>11</p></td><td rowspan=\"1\" colspan=\"1\"><p>Lucky Croottime</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcUTfYB-xw/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>12</p></td><td rowspan=\"1\" colspan=\"1\"><p>Otaku Social House</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcT_fhhsel/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>13</p></td><td rowspan=\"1\" colspan=\"1\"><p>Sweetea Coffee</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcT1cxhlQt/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr><tr><td rowspan=\"1\" colspan=\"1\"><p>14</p></td><td rowspan=\"1\" colspan=\"1\"><p>Chang Noi</p></td><td rowspan=\"1\" colspan=\"1\"><p style=\"text-align: end; ;\"><a href=\"https://www.instagram.com/creha_catalogue/p/DKcTn7rBcja/\" target=\"_new\" rel=\"noopener\">Link</a></p></td></tr></tbody></table><p>Jangan lupa <strong>save &amp; share</strong> halaman ini ke temanmu! Follow <a href=\"https://www.instagram.com/creha_catalogue/\" target=\"_new\" rel=\"noopener\">@creha_catalogue</a> agar tidak ketinggalan info katalog terbaru dari setiap booth.</p>', 0, 2, NULL, '{\"meta_title\":\"Katalog Booth ARC V\",\"meta_desc\":\"Lihat daftar lengkap booth Circle, Community, dan F&B di ARC V! Temukan katalog produk, karya kreatif, dan makanan favorit kamu. Dipersembahkan oleh @creha_catalogue.\"}', 1, 1, '2025-06-14 23:25:19', '2025-06-14 15:24:11', '2025-06-14 15:53:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags`
--

CREATE TABLE `articles_tags` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_tags`
--

INSERT INTO `articles_tags` (`article_id`, `tag_id`) VALUES
(5, 4),
(6, 3),
(7, 2),
(8, 5),
(10, 7),
(10, 6),
(9, 6),
(11, 6),
(12, 8),
(13, 9),
(14, 10),
(15, 11),
(16, 12),
(17, 13),
(18, 14),
(18, 15),
(19, 17),
(19, 16),
(20, 18),
(20, 19),
(21, 20),
(21, 21);

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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1750328210),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1750328210;', 1750328210),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1750323378),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1750323378;', 1750323378),
('general-settings', 'a:0:{}', 2065373429),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36', 'i:1;', 1750325431),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36:timer', 'i:1750325431;', 1750325431),
('livewire-rate-limiter:62dcdddd2131784090e8a5916c260a90678e71b3', 'i:1;', 1750091443),
('livewire-rate-limiter:62dcdddd2131784090e8a5916c260a90678e71b3:timer', 'i:1750091443;', 1750091443),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:156:{i:0;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:12:\"view_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:1;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:16:\"view_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:2;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:14:\"create_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:3;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:14:\"update_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:4;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:15:\"restore_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:5;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:19:\"restore_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:6;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:17:\"replicate_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:7;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:15:\"reorder_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:8;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:14:\"delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:9;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:18:\"delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:10;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:20:\"force_delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:11;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:24:\"force_delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:12;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:13:\"view_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:13;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:17:\"view_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:14;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:15:\"create_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:15;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:15:\"update_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:16;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:16:\"restore_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:17;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:20:\"restore_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:18;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:18:\"replicate_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:19;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:16:\"reorder_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:20;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:15:\"delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:21;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:19:\"delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:22;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:21:\"force_delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:23;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:25:\"force_delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:24;a:3:{s:1:\"a\";i:153;s:1:\"b\";s:10:\"view_cover\";s:1:\"c\";s:3:\"web\";}i:25;a:3:{s:1:\"a\";i:154;s:1:\"b\";s:14:\"view_any_cover\";s:1:\"c\";s:3:\"web\";}i:26;a:3:{s:1:\"a\";i:155;s:1:\"b\";s:12:\"create_cover\";s:1:\"c\";s:3:\"web\";}i:27;a:3:{s:1:\"a\";i:156;s:1:\"b\";s:12:\"update_cover\";s:1:\"c\";s:3:\"web\";}i:28;a:3:{s:1:\"a\";i:157;s:1:\"b\";s:13:\"restore_cover\";s:1:\"c\";s:3:\"web\";}i:29;a:3:{s:1:\"a\";i:158;s:1:\"b\";s:17:\"restore_any_cover\";s:1:\"c\";s:3:\"web\";}i:30;a:3:{s:1:\"a\";i:159;s:1:\"b\";s:15:\"replicate_cover\";s:1:\"c\";s:3:\"web\";}i:31;a:3:{s:1:\"a\";i:160;s:1:\"b\";s:13:\"reorder_cover\";s:1:\"c\";s:3:\"web\";}i:32;a:3:{s:1:\"a\";i:161;s:1:\"b\";s:12:\"delete_cover\";s:1:\"c\";s:3:\"web\";}i:33;a:3:{s:1:\"a\";i:162;s:1:\"b\";s:16:\"delete_any_cover\";s:1:\"c\";s:3:\"web\";}i:34;a:3:{s:1:\"a\";i:163;s:1:\"b\";s:18:\"force_delete_cover\";s:1:\"c\";s:3:\"web\";}i:35;a:3:{s:1:\"a\";i:164;s:1:\"b\";s:22:\"force_delete_any_cover\";s:1:\"c\";s:3:\"web\";}i:36;a:4:{s:1:\"a\";i:165;s:1:\"b\";s:10:\"view_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:37;a:4:{s:1:\"a\";i:166;s:1:\"b\";s:14:\"view_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:38;a:4:{s:1:\"a\";i:167;s:1:\"b\";s:12:\"create_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:39;a:4:{s:1:\"a\";i:168;s:1:\"b\";s:12:\"update_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:40;a:4:{s:1:\"a\";i:169;s:1:\"b\";s:13:\"restore_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:41;a:4:{s:1:\"a\";i:170;s:1:\"b\";s:17:\"restore_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:42;a:4:{s:1:\"a\";i:171;s:1:\"b\";s:15:\"replicate_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:43;a:4:{s:1:\"a\";i:172;s:1:\"b\";s:13:\"reorder_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:44;a:4:{s:1:\"a\";i:173;s:1:\"b\";s:12:\"delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:45;a:4:{s:1:\"a\";i:174;s:1:\"b\";s:16:\"delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:46;a:4:{s:1:\"a\";i:175;s:1:\"b\";s:18:\"force_delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:47;a:4:{s:1:\"a\";i:176;s:1:\"b\";s:22:\"force_delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:48;a:4:{s:1:\"a\";i:177;s:1:\"b\";s:9:\"view_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:178;s:1:\"b\";s:13:\"view_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:179;s:1:\"b\";s:11:\"create_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:180;s:1:\"b\";s:11:\"update_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:181;s:1:\"b\";s:12:\"restore_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:182;s:1:\"b\";s:16:\"restore_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:183;s:1:\"b\";s:14:\"replicate_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:184;s:1:\"b\";s:12:\"reorder_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:185;s:1:\"b\";s:11:\"delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:186;s:1:\"b\";s:15:\"delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:187;s:1:\"b\";s:17:\"force_delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:188;s:1:\"b\";s:21:\"force_delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:3:{s:1:\"a\";i:189;s:1:\"b\";s:12:\"view_pattern\";s:1:\"c\";s:3:\"web\";}i:61;a:3:{s:1:\"a\";i:190;s:1:\"b\";s:16:\"view_any_pattern\";s:1:\"c\";s:3:\"web\";}i:62;a:3:{s:1:\"a\";i:191;s:1:\"b\";s:14:\"create_pattern\";s:1:\"c\";s:3:\"web\";}i:63;a:3:{s:1:\"a\";i:192;s:1:\"b\";s:14:\"update_pattern\";s:1:\"c\";s:3:\"web\";}i:64;a:3:{s:1:\"a\";i:193;s:1:\"b\";s:15:\"restore_pattern\";s:1:\"c\";s:3:\"web\";}i:65;a:3:{s:1:\"a\";i:194;s:1:\"b\";s:19:\"restore_any_pattern\";s:1:\"c\";s:3:\"web\";}i:66;a:3:{s:1:\"a\";i:195;s:1:\"b\";s:17:\"replicate_pattern\";s:1:\"c\";s:3:\"web\";}i:67;a:3:{s:1:\"a\";i:196;s:1:\"b\";s:15:\"reorder_pattern\";s:1:\"c\";s:3:\"web\";}i:68;a:3:{s:1:\"a\";i:197;s:1:\"b\";s:14:\"delete_pattern\";s:1:\"c\";s:3:\"web\";}i:69;a:3:{s:1:\"a\";i:198;s:1:\"b\";s:18:\"delete_any_pattern\";s:1:\"c\";s:3:\"web\";}i:70;a:3:{s:1:\"a\";i:199;s:1:\"b\";s:20:\"force_delete_pattern\";s:1:\"c\";s:3:\"web\";}i:71;a:3:{s:1:\"a\";i:200;s:1:\"b\";s:24:\"force_delete_any_pattern\";s:1:\"c\";s:3:\"web\";}i:72;a:4:{s:1:\"a\";i:201;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:73;a:4:{s:1:\"a\";i:202;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:74;a:4:{s:1:\"a\";i:203;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:75;a:4:{s:1:\"a\";i:204;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:76;a:4:{s:1:\"a\";i:205;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:77;a:4:{s:1:\"a\";i:206;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:78;a:4:{s:1:\"a\";i:207;s:1:\"b\";s:12:\"view_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:79;a:4:{s:1:\"a\";i:208;s:1:\"b\";s:16:\"view_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:80;a:4:{s:1:\"a\";i:209;s:1:\"b\";s:14:\"create_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:81;a:4:{s:1:\"a\";i:210;s:1:\"b\";s:14:\"update_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:82;a:4:{s:1:\"a\";i:211;s:1:\"b\";s:15:\"restore_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:83;a:4:{s:1:\"a\";i:212;s:1:\"b\";s:19:\"restore_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:84;a:4:{s:1:\"a\";i:213;s:1:\"b\";s:17:\"replicate_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:85;a:4:{s:1:\"a\";i:214;s:1:\"b\";s:15:\"reorder_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:86;a:4:{s:1:\"a\";i:215;s:1:\"b\";s:14:\"delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:87;a:4:{s:1:\"a\";i:216;s:1:\"b\";s:18:\"delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:88;a:4:{s:1:\"a\";i:217;s:1:\"b\";s:20:\"force_delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:89;a:4:{s:1:\"a\";i:218;s:1:\"b\";s:24:\"force_delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:90;a:4:{s:1:\"a\";i:219;s:1:\"b\";s:22:\"view_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:91;a:4:{s:1:\"a\";i:220;s:1:\"b\";s:26:\"view_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:92;a:4:{s:1:\"a\";i:221;s:1:\"b\";s:24:\"create_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:93;a:4:{s:1:\"a\";i:222;s:1:\"b\";s:24:\"update_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:94;a:4:{s:1:\"a\";i:223;s:1:\"b\";s:25:\"restore_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:95;a:4:{s:1:\"a\";i:224;s:1:\"b\";s:29:\"restore_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:96;a:4:{s:1:\"a\";i:225;s:1:\"b\";s:27:\"replicate_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:97;a:4:{s:1:\"a\";i:226;s:1:\"b\";s:25:\"reorder_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:98;a:4:{s:1:\"a\";i:227;s:1:\"b\";s:24:\"delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:99;a:4:{s:1:\"a\";i:228;s:1:\"b\";s:28:\"delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:100;a:4:{s:1:\"a\";i:229;s:1:\"b\";s:30:\"force_delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:101;a:4:{s:1:\"a\";i:230;s:1:\"b\";s:34:\"force_delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:102;a:4:{s:1:\"a\";i:231;s:1:\"b\";s:8:\"view_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:103;a:4:{s:1:\"a\";i:232;s:1:\"b\";s:12:\"view_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:104;a:4:{s:1:\"a\";i:233;s:1:\"b\";s:10:\"create_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:105;a:4:{s:1:\"a\";i:234;s:1:\"b\";s:10:\"update_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:106;a:4:{s:1:\"a\";i:235;s:1:\"b\";s:11:\"restore_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:107;a:4:{s:1:\"a\";i:236;s:1:\"b\";s:15:\"restore_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:108;a:4:{s:1:\"a\";i:237;s:1:\"b\";s:13:\"replicate_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:109;a:4:{s:1:\"a\";i:238;s:1:\"b\";s:11:\"reorder_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:110;a:4:{s:1:\"a\";i:239;s:1:\"b\";s:10:\"delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:111;a:4:{s:1:\"a\";i:240;s:1:\"b\";s:14:\"delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:112;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:16:\"force_delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:113;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:20:\"force_delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:7;}}i:114;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:115;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:116;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:117;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:118;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:119;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:120;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:121;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:122;a:4:{s:1:\"a\";i:251;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:123;a:4:{s:1:\"a\";i:252;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:124;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:125;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:126;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:24:\"page_GeneralSettingsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:3:{s:1:\"a\";i:256;s:1:\"b\";s:12:\"page_ViewEnv\";s:1:\"c\";s:3:\"web\";}i:128;a:3:{s:1:\"a\";i:257;s:1:\"b\";s:21:\"widget_OptimizeButton\";s:1:\"c\";s:3:\"web\";}i:129;a:4:{s:1:\"a\";i:258;s:1:\"b\";s:18:\"page_EnvEditorPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:24:\"page_GoogleAnalyticsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:131;a:4:{s:1:\"a\";i:260;s:1:\"b\";s:12:\"view_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:261;s:1:\"b\";s:16:\"view_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:262;s:1:\"b\";s:14:\"create_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:263;s:1:\"b\";s:14:\"update_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:264;s:1:\"b\";s:15:\"restore_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:265;s:1:\"b\";s:19:\"restore_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:266;s:1:\"b\";s:17:\"replicate_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:267;s:1:\"b\";s:15:\"reorder_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:268;s:1:\"b\";s:14:\"delete_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:269;s:1:\"b\";s:18:\"delete_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:270;s:1:\"b\";s:20:\"force_delete_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:271;s:1:\"b\";s:24:\"force_delete_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:272;s:1:\"b\";s:18:\"view_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:273;s:1:\"b\";s:22:\"view_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:274;s:1:\"b\";s:20:\"create_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:275;s:1:\"b\";s:20:\"update_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:276;s:1:\"b\";s:21:\"restore_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:277;s:1:\"b\";s:25:\"restore_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:278;s:1:\"b\";s:23:\"replicate_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:279;s:1:\"b\";s:21:\"reorder_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:280;s:1:\"b\";s:20:\"delete_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";i:281;s:1:\"b\";s:24:\"delete_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";i:282;s:1:\"b\";s:26:\"force_delete_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:154;a:4:{s:1:\"a\";i:283;s:1:\"b\";s:30:\"force_delete_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:155;a:4:{s:1:\"a\";i:284;s:1:\"b\";s:18:\"page_DashboardPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:7;i:3;i:8;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"Superadmin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"Developer\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:4:\"User\";s:1:\"c\";s:3:\"web\";}}}', 1750411812);

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
(2, 'Event', 'event', 0, 1, 'event', 'event', '[]', '2025-06-16 17:24:41', '2025-06-19 08:29:44');

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

--
-- Dumping data for table `chatbot_messages`
--

INSERT INTO `chatbot_messages` (`id`, `session_id`, `sender`, `message`, `created_at`, `updated_at`) VALUES
(38, 16, 'user', '1+1', '2025-06-13 09:16:45', '2025-06-13 09:16:45'),
(39, 16, 'bot', '2\n', '2025-06-13 09:16:48', '2025-06-13 09:16:48'),
(40, 16, 'user', '2+2', '2025-06-13 09:16:57', '2025-06-13 09:16:57'),
(41, 16, 'bot', '4\n', '2025-06-13 09:16:58', '2025-06-13 09:16:58'),
(42, 16, 'user', '3+3', '2025-06-13 09:17:05', '2025-06-13 09:17:05'),
(43, 16, 'bot', '6\n', '2025-06-13 09:17:07', '2025-06-13 09:17:07'),
(44, 16, 'user', '4+4', '2025-06-13 09:17:15', '2025-06-13 09:17:15'),
(45, 16, 'bot', '8\n', '2025-06-13 09:17:17', '2025-06-13 09:17:17'),
(46, 16, 'user', 'Penjumlahan yang kedua tadi berapa hasilnya?', '2025-06-13 09:17:59', '2025-06-13 09:17:59'),
(47, 16, 'bot', 'Hasil penjumlahan yang kedua (2+2) adalah 4.\n', '2025-06-13 09:18:01', '2025-06-13 09:18:01'),
(48, 16, 'user', '6*6?', '2025-06-16 18:58:04', '2025-06-16 18:58:04'),
(49, 16, 'bot', '36\n', '2025-06-16 18:58:11', '2025-06-16 18:58:11'),
(50, 17, 'bot', 'Oke, saya akan membuat artikel, ringkasan, meta title, dan meta description berdasarkan data yang Anda berikan. Karena Anda tidak memberikan label gambar, teks dalam gambar, topik terkait gambar, dan prompt tambahan, saya akan membuatnya secara umum berdasarkan judul artikel.\n\n[Artikel]\n\n**Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor**\n\nTradisi Lebaran Topat, yang dirayakan seminggu setelah Idul Fitri, menjadi berkah tersendiri bagi warga Punia, Kota Mataram. Momen ini dimanfaatkan oleh banyak warga untuk menjajakan ketupat dan opor, hidangan khas yang selalu hadir dalam perayaan Lebaran Topat.\n\nDi sepanjang jalanan Punia, terlihat deretan lapak-lapak sederhana yang menjajakan ketupat yang baru matang, mengepulkan aroma pandan yang menggugah selera. Opor ayam dan daging sapi pun tak kalah menggoda, dengan kuah santan kental berwarna kuning keemasan.\n\n\"Alhamdulillah, setiap tahun Lebaran Topat selalu ramai. Banyak yang mencari ketupat dan opor untuk merayakan bersama keluarga,\" ujar Ibu Siti, salah seorang pedagang ketupat di Punia. \"Penjualan biasanya meningkat drastis dibanding hari biasa. Ini rezeki Lebaran Topat,\" tambahnya.\n\nLebaran Topat sendiri merupakan tradisi unik yang berasal dari Lombok, Nusa Tenggara Barat. Perayaan ini merupakan wujud syukur atas keberhasilan menjalankan ibadah puasa Ramadan sebulan penuh. Ketupat, yang terbuat dari beras yang dibungkus dengan anyaman janur kuning, menjadi simbol kesempurnaan dan keberkahan.\n\nSelain menjual ketupat dan opor, banyak warga Punia yang juga menjajakan berbagai jenis kue tradisional dan minuman segar. Suasana meriah dan penuh kekeluargaan sangat terasa di sepanjang jalanan Punia.\n\nTradisi Lebaran Topat tidak hanya menjadi momen untuk bersantap hidangan lezat, tetapi juga menjadi ajang silaturahmi dan mempererat tali persaudaraan antar warga. Keberadaan para pedagang ketupat dan opor di Punia menjadi bagian tak terpisahkan dari kemeriahan perayaan Lebaran Topat di Kota Mataram. Mereka berkontribusi dalam melestarikan tradisi dan menghidupkan perekonomian lokal.\n\n[Ringkasan]\n\nLebaran Topat: Warga Punia jualan ketupat & opor.\n\n[Meta Title]\n\nLebaran Topat: Warga Punia Raup Berkah Jualan Ketupat\n\n[Meta Description]\n\nLebaran Topat di Mataram, warga Punia manfaatkan berjualan ketupat dan opor. Tradisi yang membawa berkah ekonomi lokal.\n', '2025-06-17 20:12:41', '2025-06-17 20:12:41'),
(51, 17, 'bot', 'Oke, ini dia draft artikel, ringkasan, meta title, dan meta description yang saya buat berdasarkan data yang Anda berikan:\n\n[Artikel]\n\n**Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor**\n\nTradisi Lebaran Topat, yang dirayakan seminggu setelah Idul Fitri, menjadi berkah tersendiri bagi warga Kelurahan Punia, Kota Mataram. Momentum ini dimanfaatkan secara optimal oleh masyarakat setempat untuk menjajakan ketupat dan opor ayam, dua hidangan ikonik yang tak terpisahkan dari perayaan Lebaran Topat. Aroma gurih ketupat dan rempah opor ayam menguar di sepanjang jalanan Punia, mengundang selera siapapun yang melintas.\n\nPara pedagang dadakan ini mulai beraktivitas sejak pagi buta, mempersiapkan dagangan mereka dengan penuh semangat. Ketupat yang pulen dan opor ayam yang kaya rasa menjadi andalan utama. Tak jarang, resep opor ayam yang diturunkan dari generasi ke generasi menjadi daya tarik tersendiri bagi para pembeli.\n\n\"Setiap Lebaran Topat, saya selalu berjualan ketupat dan opor. Ini sudah menjadi tradisi keluarga,\" ujar Ibu Aminah, salah seorang pedagang ketupat di Punia. \"Alhamdulillah, setiap tahun selalu ramai pembeli. Rezeki Lebaran Topat memang berkah,\" tambahnya dengan senyum sumringah.\n\nLebaran Topat bukan hanya soal hidangan lezat, tetapi juga menjadi ajang silaturahmi dan mempererat tali persaudaraan. Masyarakat berbondong-bondong mengunjungi sanak saudara dan tetangga, membawa ketupat dan opor sebagai simbol kebersamaan. Suasana hangat dan penuh kekeluargaan terasa begitu kental di setiap sudut Kelurahan Punia.\n\nPemerintah Kota Mataram pun turut mendukung tradisi Lebaran Topat ini dengan mengadakan berbagai kegiatan budaya dan hiburan. Hal ini semakin memeriahkan suasana dan menarik wisatawan dari berbagai daerah untuk datang dan merasakan langsung kemeriahan Lebaran Topat di Kota Mataram. Dengan perpaduan antara tradisi kuliner, silaturahmi, dan dukungan pemerintah, Lebaran Topat di Punia, Kota Mataram, menjadi sebuah perayaan yang tak terlupakan.\n\n[Ringkasan]\n\nLebaran Topat berkah bagi penjual ketupat opor di Mataram.\n\n[Meta Title]\n\nLebaran Topat: Warga Mataram Jualan Ketupat Opor Raup Untung!\n\n[Meta Description]\n\nLebaran Topat di Mataram, warga Punia manfaatkan momen jual ketupat dan opor. Tradisi yang membawa berkah ekonomi dan silaturahmi.\n', '2025-06-17 20:19:24', '2025-06-17 20:19:24'),
(52, 17, 'bot', 'Oke, saya akan membuat artikel, ringkasan, meta title, dan meta description berdasarkan data yang Anda berikan. Karena Anda tidak memberikan label, teks dalam gambar, topik terkait gambar, dan prompt tambahan, saya akan membuatnya berdasarkan judul artikel saja.\n\n[Artikel]\n\n**Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor**\n\nTradisi Lebaran Topat, yang dirayakan seminggu setelah Idul Fitri, menjadi berkah tersendiri bagi warga Kelurahan Punia, Kota Mataram. Momen ini dimanfaatkan untuk menjajakan ketupat dan opor ayam, hidangan khas yang selalu dicari saat Lebaran Topat. Suasana di sekitar Punia pun mendadak ramai dengan lapak-lapak dadakan yang menjajakan kelezatan kuliner tradisional ini.\n\nDari pagi hingga sore hari, aroma harum ketupat yang direbus dan kuah opor yang menggugah selera menyeruak di udara. Para pembeli berdatangan dari berbagai penjuru kota untuk menikmati hidangan khas ini bersama keluarga dan kerabat. Lebaran Topat memang menjadi ajang silaturahmi dan berbagi kebahagiaan, dan kehadiran ketupat opor menjadi pelengkap yang tak terpisahkan.\n\n\"Alhamdulillah, setiap Lebaran Topat selalu jualan ketupat dan opor. Lumayan buat menambah penghasilan,\" ujar Ibu Aminah, salah seorang penjual ketupat opor di Punia. Ia mengaku, permintaan ketupat opor selalu meningkat menjelang dan saat Lebaran Topat. \"Banyak yang pesan untuk acara keluarga atau sekadar dinikmati bersama tetangga.\"\n\nTidak hanya Ibu Aminah, banyak warga Punia lainnya yang turut memanfaatkan momen ini untuk berjualan. Ada yang menjual ketupat saja, ada yang menjual opor, dan ada pula yang menawarkan paket lengkap ketupat dan opor. Harga yang ditawarkan pun bervariasi, tergantung ukuran dan kualitas bahan yang digunakan.\n\nKehadiran para penjual ketupat dan opor ini tidak hanya memberikan keuntungan ekonomi bagi warga Punia, tetapi juga turut melestarikan tradisi kuliner Lebaran Topat. Dengan menikmati hidangan khas ini, masyarakat tidak hanya merasakan kelezatan rasanya, tetapi juga ikut menghidupkan kembali tradisi yang telah diwariskan secara turun temurun.\n\nLebaran Topat di Punia, Kota Mataram, bukan hanya tentang perayaan keagamaan, tetapi juga tentang semangat gotong royong, kreativitas, dan kecintaan terhadap tradisi lokal. Semoga tradisi ini terus lestari dan menjadi daya tarik tersendiri bagi Kota Mataram.\n\n[Ringkasan]\n\nWarga Punia jual ketupat opor saat Lebaran Topat.\n\n[Meta Title]\n\nLebaran Topat: Warga Mataram Jualan Ketupat Opor\n\n[Meta Description]\n\nWarga Punia, Mataram, manfaatkan Lebaran Topat untuk berjualan ketupat dan opor. Tradisi kuliner yang meningkatkan ekonomi lokal.\n', '2025-06-18 00:04:22', '2025-06-18 00:04:22'),
(53, 17, 'bot', 'Oke, berdasarkan data yang diberikan, berikut adalah artikel yang saya buat:\n\n[Artikel]\n\n**Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor**\n\nTradisi Lebaran Topat, atau Lebaran Ketupat, yang dirayakan seminggu setelah Hari Raya Idul Fitri, menjadi berkah tersendiri bagi warga Kelurahan Punia, Kota Mataram. Momentum ini dimanfaatkan untuk mendulang rezeki dengan berjualan ketupat dan opor ayam, hidangan khas yang selalu hadir dalam perayaan Lebaran Topat.\n\nSejak pagi hari, aroma khas ketupat yang direbus memenuhi udara di sekitar Punia. Puluhan lapak dadakan berjejer di sepanjang jalan, menawarkan berbagai ukuran ketupat, mulai dari yang kecil hingga jumbo. Opor ayam, dengan kuah santan yang kaya rempah, juga menjadi primadona yang banyak dicari pembeli.\n\n\"Alhamdulillah, setiap tahun saat Lebaran Topat, jualan ketupat dan opor ini selalu ramai. Lumayan untuk menambah penghasilan keluarga,\" ujar Ibu Aminah, salah seorang pedagang ketupat di Punia. Ia mengaku sudah berjualan ketupat saat Lebaran Topat selama lebih dari 10 tahun.\n\nPara pembeli pun datang dari berbagai penjuru Kota Mataram dan sekitarnya. Mereka sengaja datang ke Punia untuk membeli ketupat dan opor yang terkenal enak dan murah. \"Rasanya beda dengan ketupat yang dijual di tempat lain. Di sini lebih otentik dan harganya juga terjangkau,\" kata Bapak Budi, seorang pembeli dari Cakranegara.\n\nLebaran Topat bukan hanya sekadar tradisi makan ketupat dan opor. Lebih dari itu, momen ini menjadi ajang silaturahmi antar keluarga dan kerabat. Setelah melaksanakan salat sunah Topat di masjid atau musala, masyarakat biasanya saling berkunjung untuk menikmati hidangan ketupat dan opor bersama.\n\nPemerintah Kota Mataram juga mendukung penuh tradisi Lebaran Topat ini. Berbagai kegiatan budaya digelar untuk memeriahkan perayaan tersebut, seperti pawai budaya, lomba masak ketupat, dan pertunjukan seni tradisional.\n\nDengan adanya dukungan dari pemerintah dan antusiasme masyarakat, Lebaran Topat di Kota Mataram semakin meriah dari tahun ke tahun. Tradisi ini diharapkan dapat terus dilestarikan sebagai bagian dari kekayaan budaya Indonesia.\n\n[Rinkasan]\n\nLebaran Topat, berkah bagi pedagang Punia\n\n[Meta Title]\n\nLebaran Topat: Warga Mataram Berjualan Ketupat & Opor!\n\n[Meta Description]\n\nLebaran Topat di Mataram: Warga Punia manfaatkan berjualan ketupat & opor. Tradisi, silaturahmi, dan berkah ekonomi!\n', '2025-06-18 00:23:48', '2025-06-18 00:23:48'),
(54, 17, 'bot', 'Oke, siap! Berdasarkan data yang diberikan, berikut adalah artikel beserta metadata SEO yang diminta:\n\n[Artikel]\n\n**Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor**\n\nTradisi Lebaran Topat, atau Lebaran Ketupat, menjadi berkah tersendiri bagi warga Kelurahan Punia, Kota Mataram. Sehari setelah Hari Raya Idul Fitri, kawasan ini dipenuhi oleh pedagang dadakan yang menjajakan ketupat dan opor ayam, makanan khas yang menjadi simbol perayaan Lebaran Topat.\n\nPantauan di lokasi menunjukkan, puluhan warga Punia memadati sepanjang jalan utama kelurahan, menggelar lapak sederhana dengan berbagai ukuran. Tumpukan ketupat yang baru matang, aroma opor ayam yang menggugah selera, serta berbagai lauk pauk pendamping lainnya, menjadi daya tarik utama bagi para pembeli.\n\n\"Alhamdulillah, setiap tahun saat Lebaran Topat, saya selalu berjualan ketupat dan opor di sini,\" ujar Ibu Aminah, salah seorang pedagang. \"Ini sudah menjadi tradisi turun temurun di keluarga kami. Hasilnya lumayan untuk menambah pendapatan keluarga.\"\n\nLebaran Topat sendiri merupakan tradisi perayaan yang dilakukan oleh masyarakat Muslim di Lombok, Nusa Tenggara Barat, seminggu setelah Hari Raya Idul Fitri. Perayaan ini ditandai dengan membuat dan menyantap ketupat, makanan yang terbuat dari beras yang dimasukkan ke dalam anyaman janur kelapa.\n\nSelain menjadi momen untuk bersilaturahmi dan berbagi kebahagiaan, Lebaran Topat juga menjadi ajang untuk melestarikan tradisi kuliner khas Lombok. Tak heran, setiap tahunnya, perayaan ini selalu meriah dan dipadati oleh warga, baik dari dalam maupun luar Kota Mataram.\n\nPara pedagang pun memanfaatkan momen ini untuk meraup rezeki. Harga ketupat dan opor ayam bervariasi, tergantung ukuran dan bahan yang digunakan. Namun, secara umum, harga masih terjangkau oleh masyarakat.\n\n\"Kami berharap, tradisi Lebaran Topat ini akan terus dilestarikan dan menjadi daya tarik wisata bagi Kota Mataram,\" harap Bapak Hasan, salah seorang tokoh masyarakat setempat. \"Dengan begitu, selain melestarikan budaya, juga dapat meningkatkan perekonomian masyarakat.\"\n\n[Ringkasan]\nWarga Punia Mataram jual ketupat saat Lebaran Topat.\n\n[Meta Title]\nLebaran Topat: Warga Punia Mataram Raup Rezeki Jualan Ketupat\n\n[Meta Description]\nLebaran Topat di Mataram dimanfaatkan warga Punia untuk berjualan ketupat dan opor ayam. Momen raih rezeki dan lestarikan tradisi.\n', '2025-06-18 00:24:32', '2025-06-18 00:24:32'),
(55, 18, 'user', 'Berikan saya saran judul dari perjalanan wisata di lombok', '2025-06-18 00:33:40', '2025-06-18 00:33:40'),
(56, 18, 'bot', 'Tentu, ini beberapa saran judul perjalanan wisata di Lombok, dikategorikan berdasarkan tema dan gaya:\n\nJudul Umum & Menarik:\n\n*   Lombok: Pesona yang Tersembunyi\n*   Lombok Calling: Petualangan di Pulau Seribu Masjid\n*   Eksplorasi Lombok: Surga Tersembunyi Indonesia\n*   Lombok: Lebih dari Sekadar Gili\n*   Lombok Diaries: Catatan Perjalanan Tak Terlupakan\n\nJudul yang Menekankan Keindahan Alam:\n\n*   Lombok: Emerald Island Getaway\n*   Menyapa Mentari di Pantai Lombok\n*   Lombok: Keajaiban Alam yang Memukau\n*   Dari Rinjani ke Laut: Keindahan Lombok yang Abadi\n*   Lombok: Simfoni Alam yang Mempesona\n\nJudul yang Lebih Spesifik (Jika Anda punya fokus tertentu):\n\n*   Lombok: Surga Para Peselancar (Jika fokus pada surfing)\n*   Rinjani Calling: Pendakian yang Menguji Adrenalin (Jika fokus pada pendakian Rinjani)\n*   Lombok\'s Culinary Journey: Menggugah Selera di Pulau Lombok (Jika fokus pada kuliner)\n*   Lombok\'s Underwater Wonders: Diving and Snorkeling Paradise (Jika fokus pada diving/snorkeling)\n*   Mengenal Budaya Sasak: Perjalanan Spiritual di Lombok (Jika fokus pada budaya)\n\nJudul yang Kreatif & Unik:\n\n*   Lombok: Bukan Sekadar Mimpi\n*   Lombok: Tempat di Mana Jantung Berdegup Lebih Kencang\n*   Lombok: Untold Story\n*   Lombok: Get Lost and Found\n*   Lombok: A Piece of Paradise\n\nTips Tambahan:\n\n*   Pertimbangkan target audiens Anda: Apakah ini untuk blog pribadi, media sosial, atau tujuan komersial?\n*   Gunakan kata kunci yang relevan: Jika Anda ingin orang menemukan perjalanan Anda secara online, gunakan kata kunci seperti \"Lombok\", \"wisata Lombok\", \"liburan Lombok\", dll.\n*   Jadikan judulnya singkat dan mudah diingat.\n*   Sesuaikan dengan isi perjalanan Anda: Pastikan judulnya mencerminkan apa yang akan Anda bagikan.\n\nSemoga ini membantu!', '2025-06-18 00:33:45', '2025-06-18 00:33:45');

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

--
-- Dumping data for table `chatbot_sessions`
--

INSERT INTO `chatbot_sessions` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 'Penjumlahan Sederhana: 1+1', 2, '2025-06-13 09:16:45', '2025-06-13 09:16:45'),
(17, 'Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor', 2, '2025-06-17 20:12:41', '2025-06-17 20:12:41'),
(18, 'Wisata Lombok: Judul Singkat', 3, '2025-06-18 00:33:40', '2025-06-18 00:33:40');

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
  `google_analytics` json DEFAULT NULL,
  `user_features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `site_description`, `site_logo`, `site_favicon`, `site_url`, `site_dashboard_url`, `location`, `contacts`, `theme`, `email_settings`, `social_network`, `navigation`, `features`, `google_analytics`, `user_features`, `created_at`, `updated_at`) VALUES
(1, 'Cre:Ha Project', NULL, 'assets/site_logo.png', 'assets/site_favicon.ico', NULL, 'creha', '{\"url\": \"https://maps.app.goo.gl/zw2ozxA194H6THNE6\", \"address\": \"Dharma Negara Alaya (DNA Art & Creative Hub Denpasar)\", \"coordinate\": {\"lat\": -8.636967558137668, \"lng\": 115.21220684051517}}', '{\"email\": \"crehadigital@gmail.com\", \"phone\": \"+628516358779\", \"whatsapp\": null}', '{\"primary\": {\"50\": \"246, 242, 243\", \"100\": \"236, 230, 230\", \"200\": \"209, 191, 193\", \"300\": \"181, 153, 156\", \"400\": \"125, 77, 82\", \"500\": \"69, 0, 8\", \"600\": \"62, 0, 7\", \"700\": \"52, 0, 6\", \"800\": \"41, 0, 5\", \"900\": \"34, 0, 4\", \"950\": \"21, 0, 2\"}, \"tertiary\": {\"50\": \"248, 247, 242\", \"100\": \"241, 240, 230\", \"200\": \"221, 216, 191\", \"300\": \"200, 193, 153\", \"400\": \"158, 147, 77\", \"500\": \"117, 100, 0\", \"600\": \"105, 90, 0\", \"700\": \"88, 75, 0\", \"800\": \"70, 60, 0\", \"900\": \"57, 49, 0\", \"950\": \"35, 30, 0\"}, \"secondary\": {\"50\": \"254, 244, 247\", \"100\": \"254, 233, 238\", \"200\": \"252, 199, 213\", \"300\": \"250, 166, 187\", \"400\": \"247, 99, 136\", \"500\": \"243, 32, 85\", \"600\": \"219, 29, 77\", \"700\": \"182, 24, 64\", \"800\": \"146, 19, 51\", \"900\": \"119, 16, 42\", \"950\": \"73, 10, 26\"}}', '{\"mail_to\": null, \"smtp_host\": \"sandbox.smtp.mailtrap.io\", \"smtp_port\": \"2525\", \"smtp_timeout\": null, \"smtp_password\": \"f9c7ce4781c953\", \"smtp_username\": \"08c61c0b0a50c8\", \"amazon_ses_key\": null, \"mailgun_domain\": null, \"mailgun_secret\": null, \"postmark_token\": null, \"email_from_name\": \"Cre:HA Project\", \"smtp_encryption\": \"tls\", \"mailgun_endpoint\": null, \"amazon_ses_region\": null, \"amazon_ses_secret\": null, \"email_from_address\": \"crehadigital@gmail.com\", \"default_email_provider\": \"smtp\"}', '{\"tiktok\": {\"url\": null, \"label\": null}, \"twitter\": {\"url\": null, \"label\": null}, \"youtube\": {\"url\": null, \"label\": null}, \"facebook\": {\"url\": null, \"label\": null}, \"linkedin\": {\"url\": null, \"label\": null}, \"whatsapp\": {\"url\": null, \"label\": null}, \"instagram\": {\"url\": null, \"label\": null}, \"pinterest\": {\"url\": null, \"label\": null}}', '{\"home\": \"1\", \"footer\": \"1\", \"header\": \"2\", \"search\": \"8\", \"nav_items\": [{\"link\": null, \"page\": \"10\", \"type\": \"page\"}, {\"link\": null, \"page\": \"11\", \"type\": \"page\"}, {\"link\": null, \"page\": \"9\", \"type\": \"page\"}, {\"link\": null, \"page\": \"12\", \"type\": \"page\"}, {\"link\": {\"url\": \"https://kureha.crehaproject.com/\", \"label\": \"Kureha Shop\"}, \"page\": null, \"type\": \"link\"}]}', '{\"sponsors\":true,\"analytics\":false}', '{\"google_analytics_tag\": null, \"service-account-credentials\": null}', '{\"chatbot\":false}', NULL, '2025-06-19 08:16:34');

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
(8, 'public', 'media', 'public', '8e8688d5-72cb-4ec8-b2f1-a32e6e57a81c', 'media/8e8688d5-72cb-4ec8-b2f1-a32e6e57a81c.webp', 640, 360, 13196, 'image/webp', 'webp', NULL, '01JW5MKEQYK9W9EMMMMTFH97W6', NULL, NULL, NULL, NULL, '2025-06-19 09:15:53', '2025-06-19 09:15:53', NULL);

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
(30, '2025_05_03_103806_rename_pattern_to_section', 11),
(31, '2025_05_03_142441_general_settings_navigation_field', 12),
(32, '2025_05_09_004254_add_dashboard_url_field', 13),
(34, '2025_05_09_090030_add_slug_field_in_categories', 14),
(35, '2025_05_09_142301_change_name_field_of_section_load_table', 15),
(36, '2025_05_09_162824_update_fields_of_categories', 16),
(37, '2025_05_20_170652_creator_editor_in_section_tag_and_sponsor', 17),
(38, '2025_05_20_173905_add_cover_field', 18),
(39, '2025_05_20_193859_edit_sponsors', 19),
(40, '2025_06_12_165835_chatbot_session', 20),
(41, '2025_06_15_174543_update_article', 21),
(42, '2025_06_16_164830_deunique_title_in_sponsor', 22);

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
(7, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
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
(1, 'Home', 'home', 2, 2, '2025-03-28 00:00:02', '2025-04-12 09:31:48', NULL),
(8, 'Search', 'search', 2, 2, '2025-05-09 09:37:20', '2025-05-09 09:37:20', NULL),
(9, 'Contact', 'contact', 2, 2, '2025-05-09 09:37:44', '2025-06-16 17:42:04', NULL),
(10, 'Artikel', 'artikel', 2, 2, '2025-05-10 03:46:52', '2025-05-10 03:46:52', NULL),
(11, 'Event', 'event', 2, 2, '2025-06-16 17:38:57', '2025-06-16 17:38:57', NULL),
(12, 'About us', 'about-us', 2, 2, '2025-06-17 11:23:52', '2025-06-17 11:23:52', NULL);

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
(28, 1, 5, 20),
(29, 9, 1, 21),
(30, 10, 2, 23),
(31, 10, 1, 24),
(32, 1, 6, 22),
(34, 1, 2, 26),
(35, 1, 4, 25),
(36, 11, 2, 26),
(37, 11, 1, 27),
(38, 12, 1, 28),
(39, 12, 2, 29),
(40, 12, 3, 30),
(41, 12, 4, 31),
(42, 12, 5, 22),
(43, 12, 6, 33),
(44, 1, 3, 32);

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
(21, 'Contact Mail', 'others/contact_mail', 0, 5, NULL, 2, '2025-05-09 10:29:22', '2025-06-17 11:52:25', NULL),
(22, 'Sponsors', 'others/sponsors', 0, 5, NULL, 2, '2025-05-10 03:43:03', '2025-06-17 11:52:37', NULL),
(23, 'Load - Paginate Article', 'loads/paginate_4_columns', 1, 8, NULL, NULL, '2025-05-10 03:45:48', '2025-05-10 03:45:48', NULL),
(24, 'Load - Highlights Article', 'loads/highlights', 1, 8, NULL, 2, '2025-05-10 14:34:10', '2025-06-16 18:05:18', NULL),
(25, 'Location', 'others/location', 0, 5, 2, 2, '2025-06-16 15:37:23', '2025-06-17 11:52:48', NULL),
(26, 'Load - Latest Event', 'loads/paginate_4_columns', 1, 8, 2, 2, '2025-06-16 17:32:15', '2025-06-16 17:34:10', NULL),
(27, 'Load - Upcoming Event', 'loads/upcoming', 1, 8, 2, 2, '2025-06-16 18:05:05', '2025-06-16 18:05:05', NULL),
(28, 'Title & Image', 'heroes/title_and_image', 0, 3, 2, 2, '2025-06-17 11:23:22', '2025-06-17 11:38:05', NULL),
(29, 'Banner - Image v.1', 'others/banners/image_v1', 0, 5, 2, 2, '2025-06-17 11:27:48', '2025-06-17 11:52:05', NULL),
(30, 'Vision & Mision', 'others/vision_and_mision', 0, 5, 2, 2, '2025-06-17 11:37:43', '2025-06-17 11:37:43', NULL),
(31, 'Custom - ARC', 'others/customs/arc', 0, 5, 2, 2, '2025-06-17 11:45:14', '2025-06-17 11:45:14', NULL),
(32, 'Banner - Statistics', 'others/banners/statistics', 0, 5, 2, 2, '2025-06-17 11:51:52', '2025-06-17 11:51:52', NULL),
(33, 'Custom - Members', 'others/customs/members', 0, 5, 2, 2, '2025-06-17 11:53:23', '2025-06-17 11:53:23', NULL);

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
('ymvI2FpPyRuTJVWdwD0ZDwkk2cuQGCyzGMBZQmvN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibVRrTUZzeFQwMW9tOXNOQjhVVnlTWURFUHpzV1luMnNQUEFCUjBQVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGxOLkh3NldvTTFYNkVHbk5SRTJKeXVWLmRvamloZkN3OFJOQ0NIbUVwNi83ZzNVOGtqQmFTIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1750330339);

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

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `title`, `image_id`, `category_id`, `featured`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Kazeyama', NULL, 2, 1, 1, NULL, '2025-03-03 10:18:44', '2025-05-27 14:46:00', '2025-05-27 14:46:00'),
(3, 'Kysekai Id', NULL, 2, 1, 1, NULL, '2025-03-03 10:19:13', '2025-03-03 10:19:13', NULL),
(4, 'Your Nime', NULL, 2, 1, 1, NULL, '2025-03-03 10:20:00', '2025-03-17 02:23:42', NULL),
(5, 'Yoruu Nime', NULL, 2, 1, 1, NULL, '2025-03-03 10:20:33', '2025-03-03 10:20:33', NULL),
(6, 'Media Formasi', NULL, 2, 1, 1, NULL, '2025-03-03 10:21:00', '2025-03-17 02:26:05', NULL),
(7, 'Recomnime', NULL, 2, 1, 1, NULL, '2025-03-03 10:21:25', '2025-05-21 00:20:37', NULL),
(8, 'Event Cosplay Bali', NULL, 2, 1, 1, NULL, '2025-03-03 10:21:53', '2025-03-03 10:21:53', NULL),
(9, 'AnimeDistrict', NULL, 2, 1, 1, NULL, '2025-03-03 10:22:20', '2025-03-12 06:31:09', NULL),
(10, 'Wibufest', NULL, 2, 1, 1, NULL, '2025-03-03 10:22:41', '2025-03-03 10:22:41', NULL),
(11, 'Anime Indo fyi', NULL, 2, 1, 1, NULL, '2025-03-03 10:23:20', '2025-03-03 10:23:20', NULL),
(12, 'Anito Mochi', NULL, 2, 1, 1, NULL, '2025-03-03 10:23:52', '2025-05-21 00:10:49', NULL),
(13, 'Area Anime', NULL, 2, 1, 1, NULL, '2025-03-03 10:24:15', '2025-05-21 00:10:34', NULL),
(14, 'Asakusa Nime', NULL, 2, 1, 1, NULL, '2025-03-03 10:24:37', '2025-03-17 02:35:17', NULL),
(15, 'Azora', NULL, 2, 1, 1, NULL, '2025-03-03 10:24:57', '2025-03-03 10:24:57', NULL),
(16, 'Idolcos Id', NULL, 2, 1, 1, NULL, '2025-03-03 10:25:19', '2025-03-17 02:35:42', NULL),
(17, 'Smither Family', NULL, 2, 1, 1, NULL, '2025-03-03 10:25:50', '2025-03-03 10:25:50', NULL),
(18, 'Miyunime', NULL, 2, 1, 1, NULL, '2025-03-03 10:26:11', '2025-05-21 00:10:18', NULL),
(19, 'Anime Station', NULL, 2, 1, 1, NULL, '2025-03-03 10:26:33', '2025-03-17 02:36:04', NULL),
(20, 'Dokter Anime', NULL, 2, 1, 1, NULL, '2025-03-03 10:26:58', '2025-03-17 02:42:51', NULL),
(21, 'Daighi Unre Familia', NULL, 2, 1, 1, NULL, '2025-03-03 10:27:44', '2025-03-03 10:27:44', NULL),
(22, 'Kabar Undiksha', NULL, 2, 1, 1, NULL, '2025-03-03 10:28:09', '2025-03-03 10:28:09', NULL),
(23, 'Media Have Fun', NULL, 2, 1, 1, NULL, '2025-03-03 10:28:38', '2025-05-21 00:09:26', NULL),
(24, 'Update Anime', NULL, 2, 1, 1, NULL, '2025-03-03 10:29:11', '2025-03-17 02:39:16', NULL),
(25, 'Raizen', NULL, 2, 1, 1, NULL, '2025-03-03 10:29:35', '2025-03-17 02:39:42', NULL),
(26, 'Kumpul', NULL, 2, 1, 1, NULL, '2025-03-03 10:30:03', '2025-03-03 10:30:03', NULL),
(27, 'MN', NULL, 2, 1, 1, NULL, '2025-03-03 10:30:21', '2025-05-21 00:09:05', NULL),
(28, 'Nawala Karsa', NULL, 2, 1, 1, NULL, '2025-03-03 10:30:44', '2025-03-17 02:42:28', NULL),
(29, 'Otaku Anime Indonesia', NULL, 2, 1, 1, NULL, '2025-03-03 10:31:14', '2025-03-17 02:40:24', NULL),
(30, 'Radarbali.id', NULL, 2, 1, 1, NULL, '2025-03-03 10:31:36', '2025-05-21 00:08:50', NULL),
(31, 'Upstation Media', NULL, 2, 1, 1, NULL, '2025-03-03 10:31:56', '2025-03-17 02:40:47', NULL),
(32, 'The Hero', NULL, 2, 1, 1, NULL, '2025-03-03 10:32:23', '2025-03-03 10:32:23', NULL),
(33, 'Time Media Id', NULL, 2, 1, 1, NULL, '2025-03-03 10:32:43', '2025-03-17 02:41:50', NULL),
(34, 'Utopia Project', NULL, 2, 0, 1, NULL, '2025-03-03 10:33:12', '2025-05-27 14:43:54', NULL),
(35, 'Karma', NULL, 2, 0, 1, NULL, '2025-03-03 10:44:37', '2025-05-27 14:43:45', NULL),
(36, 'Genshinkuro', NULL, 2, 1, 1, NULL, '2025-03-03 10:44:57', '2025-05-21 00:08:21', NULL),
(37, 'Ritme', NULL, 2, 1, 1, NULL, '2025-03-03 10:45:20', '2025-03-17 02:44:25', NULL),
(38, 'Denpasar Kota', NULL, 2, 1, 1, NULL, '2025-03-17 02:46:10', '2025-03-17 02:48:05', NULL),
(39, 'Jawapos TV', NULL, 2, 1, 1, NULL, '2025-03-17 02:47:27', '2025-03-17 02:48:10', NULL),
(40, 'Kaori Nusantara', NULL, 2, 1, 1, NULL, '2025-03-17 02:47:52', '2025-03-17 02:48:15', NULL),
(41, 'Comifuro1', NULL, 1, 0, 1, NULL, '2025-05-21 01:40:13', '2025-05-21 01:41:58', '2025-05-21 01:41:58'),
(42, 'Comifuro', NULL, 1, 1, 1, NULL, '2025-05-21 01:42:19', '2025-05-26 05:29:38', NULL),
(43, 'Bkraf', NULL, 1, 1, 1, NULL, '2025-05-26 05:30:12', '2025-05-26 05:30:12', NULL),
(44, 'Dalang Motion', NULL, 1, 1, 1, NULL, '2025-05-26 05:30:45', '2025-05-26 05:30:45', NULL),
(45, 'Dharma Negara Alaya', 8, 1, 1, 1, 1, '2025-05-26 05:31:10', '2025-06-19 09:16:01', NULL),
(46, 'Dyouth Fest', NULL, 1, 1, 1, NULL, '2025-05-26 05:31:32', '2025-05-26 05:31:32', NULL),
(47, 'Indonesia Anime Con', NULL, 1, 1, 1, NULL, '2025-05-26 05:31:59', '2025-05-27 12:23:12', '2025-05-27 12:23:12'),
(48, 'Kyou Hobby Shop', NULL, 1, 1, 1, NULL, '2025-05-26 05:32:28', '2025-05-26 05:32:28', NULL),
(49, 'Mang Kakul', NULL, 1, 1, 1, NULL, '2025-05-26 05:32:53', '2025-05-26 05:32:53', NULL),
(50, 'Muse Indonesia', NULL, 1, 1, 1, NULL, '2025-05-26 05:33:18', '2025-05-26 05:33:18', NULL),
(51, 'Sock Studio', NULL, 1, 1, 1, NULL, '2025-05-26 05:33:45', '2025-05-26 05:33:45', NULL),
(52, 'WCS Japan', NULL, 1, 1, 1, NULL, '2025-05-26 05:34:04', '2025-05-27 12:23:42', '2025-05-27 12:23:42'),
(53, 'WCS Indonesia', NULL, 1, 1, 1, NULL, '2025-05-26 05:34:28', '2025-05-26 05:34:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_categories`
--

CREATE TABLE `sponsor_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsor_categories`
--

INSERT INTO `sponsor_categories` (`id`, `category_name`, `sort_order`) VALUES
(1, 'Main Partners & Support', 1),
(2, 'Media Partner', 2);

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

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `slug`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anime', 'anime', 1, NULL, '2025-04-08 19:36:44', '2025-04-08 19:36:44', NULL),
(2, 'Area Creator II', 'area-creator-ii', 1, NULL, '2025-05-27 14:24:34', '2025-05-27 14:24:34', NULL),
(3, 'Area Creator I', 'area-creator-i', 1, NULL, '2025-05-27 14:24:49', '2025-05-27 14:24:49', NULL),
(4, 'Area Creator', 'area-creator', 1, NULL, '2025-05-27 14:59:22', '2025-05-27 14:59:22', NULL),
(5, 'Area Creator III', 'area-creator-iii', 1, NULL, '2025-06-06 14:53:54', '2025-06-06 14:53:54', NULL),
(6, 'Area Creator IV', 'area-creator-iv', 1, NULL, '2025-06-06 15:16:16', '2025-06-06 15:16:16', NULL),
(7, 'ICGP', 'icgp', 1, NULL, '2025-06-06 15:28:10', '2025-06-06 15:28:10', NULL),
(8, 'Booth Corporate', 'booth-corporate', 1, NULL, '2025-06-13 16:33:57', '2025-06-13 16:33:57', NULL),
(9, 'Booth F&B', 'booth-fb', 1, NULL, '2025-06-13 16:44:14', '2025-06-13 16:44:14', NULL),
(10, 'Booth Community', 'booth-community', 1, NULL, '2025-06-13 17:02:23', '2025-06-13 17:02:23', NULL),
(11, 'Booth Circle', 'booth-circle', 1, NULL, '2025-06-13 17:13:11', '2025-06-13 17:13:11', NULL),
(12, 'Lomba Anime Song', 'lomba-anime-song', 1, NULL, '2025-06-13 17:22:19', '2025-06-13 17:22:19', NULL),
(13, 'Lomba Animasi', 'lomba-animasi', 1, NULL, '2025-06-13 17:52:36', '2025-06-13 17:52:36', NULL),
(14, 'Lomba Cosplay Competition', 'lomba-cosplay-competition', 1, NULL, '2025-06-13 18:01:20', '2025-06-13 18:01:20', NULL),
(15, 'Coscom', 'coscom', 1, NULL, '2025-06-13 18:01:26', '2025-06-13 18:01:26', NULL),
(16, 'Coswalk ', 'coswalk', 1, NULL, '2025-06-13 18:05:16', '2025-06-13 18:05:16', NULL),
(17, 'Lomba Coswalk', 'lomba-coswalk', 1, NULL, '2025-06-13 18:05:25', '2025-06-13 18:05:25', NULL),
(18, 'Lomba Fan Art Digital', 'lomba-fan-art-digital', 1, NULL, '2025-06-13 18:23:45', '2025-06-13 18:23:45', NULL),
(19, 'Fan Art', 'fan-art', 1, NULL, '2025-06-13 18:23:50', '2025-06-13 18:23:50', NULL),
(20, 'Katalog Booth', 'katalog-booth', 1, NULL, '2025-06-14 15:22:59', '2025-06-14 15:22:59', NULL),
(21, 'Area Creator V', 'area-creator-v', 1, NULL, '2025-06-14 15:23:31', '2025-06-14 15:23:31', NULL);

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
(1, 'Superadmin', '$2y$12$lN.Hw6WoM1X6EGnNRE2JyuV.dojihfCw8RNCCHmEp6/7g3U8kjBaS', 'superadmin@gmail.com', NULL, '2025-06-19 05:43:00', NULL, '2025-06-19 04:24:44', '2025-06-19 04:24:44', NULL),
(2, 'Developer', '$2y$12$5liyuXJ2B23QIPa92kdJLu1hv4p2uxxAEz0.Vv/LHEA1bf2pmNAyW', 'developer@gmail.com', NULL, '2025-03-27 10:39:06', 'DZ0ab9idZ3dR97FUsWkVdSl7sWOMneboiJhyFbB0zoPPqvExHW0dhqh8rsk5', '2025-03-27 10:39:06', '2025-06-19 04:24:12', NULL),
(3, 'Admin', '$2y$12$u/gq39yaf.RdM3ONDEO9eOi/wuvzhh7MU9FwIjRAG.rb6mpoTP.0y', 'admin@gmail.com', NULL, NULL, NULL, '2025-06-18 00:29:41', '2025-06-18 00:29:41', NULL),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `chatbot_sessions`
--
ALTER TABLE `chatbot_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sponsor_categories`
--
ALTER TABLE `sponsor_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
