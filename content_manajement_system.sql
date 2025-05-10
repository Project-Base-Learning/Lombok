-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2025 at 04:50 PM
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

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `content`, `private`, `category_id`, `fields`, `metadata`, `created_by`, `updated_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Berjalan-jalan ke \"Kampung Lontong\" Punia di Mataram', 'berjalan-jalan-ke-kampung-lontong-punia-di-mataram', '<p style=\"text-align: justify; ;\">MATARAM, <a href=\"http://KOMPAS.com\">KOMPAS.com</a> -Sebuah Kampung di Kelurahan Punia, Kota Mataram, Nusa Tenggara Barat (NTB) dikenal dengan julukan kampung lontong. Sebutan itu muncul karena banyak warga yang berdomisili di kampung tersebut berprofesi sebagai perajin lontong. Baca juga: Mandi Balimau Kasai di Sungai Kampar, Tradisi Bersihkan Diri Jelang Ramadhan Kampung lontong terletak di Kelurahan Punia, Kota Mataram, tepatnya di lingkungan Karang Kateng dan Karang Kelayu. Saat <a href=\"http://Kompas.com\">Kompas.com</a> berkunjung pada Selasa (12/3/2024) sore, sejumlah warga di sepanjang gang Lingkungan Punia Karang Kateng tampak sibuk. Beberapa di antara mereka sedang mengisi beras ke dalam daun pisang. Sedangkan yang lainnya mengelap daun pisang yang akan dijadikan sebagai pembungkus.</p><p style=\"text-align: center; ;\"><img src=\"http://127.0.0.1:8000/storage/images/bc7c2f78-4890-465a-8740-cb35aa0e309c.jpeg\" title=\"65eff5139b2f9\" width=\"750\" height=\"500\"></p><p style=\"text-align: justify; ;\">Nur Istiarah (42), warga lingkungan Karang Keteng Punia yang sehari-hari membuat lontong, baru saja selesai mengelap ratusan lembar daun pisang. Beberapa kantong beras dituang ke dalam satu ember besar. Istiarah mencampurnya dengan garam lalu mengaduknya sampai tercampur rata. &quot;Biar ada rasanya, biar tidak hambar,&quot; kata Istiarah sambil mengaduk beras.   Baca juga: Jadi DPO OPM, Lenis Kogoya: Saya Tidak Pernah Takut 30 kg beras sehari Setiap hari Istiarah membuat 25-30 kilogram beras untuk dijadikan lontong. Beras yang digunakan merupakan campuran antara beras kualitas premium dan beras medium. Setelah beras siap, Istiarah duduk di teras rumahnya dan mulai mengisi lontong. Dengan terampil, tangan Istiarah lalu membentuk daun pisang menyerupai kerucut, mengisinya dengan beras, dan menyematkan dengan lidi. Baca juga: Daftar Tanggal Merah dan Cuti Bersama Mei 2025, Siap-siap Libur Panjang Awal Pekan Nanti Berbeda dengan lontong di daerah lain, lontong khas Lombok rata-rata berbentuk seperti kerucut dengan ujung lancip. Lontong-lontong berbentuk kerucut ini lalu ditata di dalam panci berukuran besar dan direbus selama delapan jam. &quot;Ada ukuran besar, tanggung sama ukuran kecil,&quot;  kata Istiarah.</p><p style=\"text-align: center; ;\"><img src=\"http://127.0.0.1:8000/storage/images/b5dacb1b-fa8d-4baa-99d2-675e074ee97a.jpg\" title=\"65eff226e5b93\" width=\"750\" height=\"500\"></p><p style=\"text-align: justify; ;\">Proses perebusan lontong biasanya dimulai malam hari sekitar pukul 20.00 Wita hingga pagi hari pukul 04.00 Wita. Baca juga: Toko Mama Khas Banjar Tutup, Pemilik: Mental Kami Hancur, Kami Trauma Setiap pagi usai shalat Subuh, lontong yang baru matang ditata di dalam bakul dan diangkut ke pasar-pasar tradisional di seputaran kota Mataram untuk dijual. Harga satu buah lontong beragam, mulai dari Rp 500 hingga Rp 1.250 per bijinya, tergantung dari besar kecil lontong. Lontong buatan Istiarah ini tahan selama satu hari karena menggunakan bahan alami dan tanpa pengawet. Baca juga: Tradisi Unik Merayakan Ramadhan Negara Muslim di Dunia Turun temurun Istiarah mengatakan ketrampilan membuat lontong diturunkan dari ibunya yang dulunya juga seorang perjain lontong. Ia merupakan generasi ketiga pembuat lontong di keluarganya. Kini ketrampilan membuat lontong dia ajarkan ke anaknya yang masih duduk di bangku sekolah menengah pertama, sebagai bekal keterampilan. Baca juga: Mobil Listrik Bekas Taksi BYD e6 Dijual Rp 30 Juta, Layak Dibeli? &quot;Saya terapkan, saya ajarkan dia, supaya dia bisa,&quot; ujar Istiarah. Para pengrajin lontong yang ada di kelurahan Punia, rata-rata mewarisi keterampilan membuat lontong secara turun-temurun dari orang tua mereka. Rumini (64) misalnya, warga Lingkungan Karang Kelayu Punia  mengaku sudah membuat lontong sejak tahun 1982. Baca juga: Menengok Tradisi Sedekah Bumi dan Gunungan Tempe untuk Sambut Ramadhan di Sidoarjo</p><p style=\"text-align: center; ;\"><img src=\"http://127.0.0.1:8000/storage/images/bcf57cb8-318a-4b22-b9de-6ab2624e454d.jpg\" title=\"65eff22b4120e\" width=\"750\" height=\"500\"></p><p style=\"text-align: justify; ;\">Awalnya Rumini belajar membuat lontong dari ibu dan kakaknya. Sampai sekarang, Rumini masih menjadi perajin lontong dan kerap menerima pesanan. Lurah Kelurahan Punia, Lalu Suyudi Atmanegara mengatakan, keberadaan perajin lontong di kelurahan Punia sudah ada dari generasi ke generasi. Suyudi menyebutkan, dari 400 KK yang ada di Lingkungan Karang Kateng sekitar 100 KK merupakan perajin lontong. Baca juga: Rektor UGM hingga Pembimbing Skripsi Jokowi Digugat ke PN Sleman, Terkait Ijazah &quot;Lingkungan Karang Kateng dan Karang Kelayu bisa dikategorikan kampung lontong. Karena mereka saling menularkan ilmunya,&quot; kata Suyudi. Julukan kampung lontong sendiri sebenarnya berasal dari warga luar kampung, karena melihat banyaknya penjual dan perajin lontong berasal dari Punia maka kampung tersebut dijuluki kampung lontong. Ramadhan dan berkah perajin lontong</p><p style=\"text-align: center; ;\"><img src=\"http://127.0.0.1:8000/storage/images/f90afa32-2b7a-4eca-b04e-9ec835834f48.jpeg\" title=\"65eff6e37d6a2\" width=\"750\" height=\"500\"></p><p style=\"text-align: justify; ;\">Baca juga: Gaspol Hari Ini: Mahfud MD Angkat Bicara Persoalan Gibran dan Dugaan Ijazah Palsu Jokowi Selama Ramadhan, setiap sore banyak warga Punia yang menjual takjil dan makanan untuk berbuka puasa. Selain lontong, para pedagang juga menyediakan beraneka macam sayur dan lauk pauk. Seperti plecing kangkung, ebatan, opor hingga aneka sate dengan bumbu pedas khas Lombok. Puncaknya pada H-1 Lebaran hingga Lebaran ketupat, banyak warga Punia menggelar dagangan di pinggir-pinggir jalan. Dengan menggunakan meja-meja kecil, puluhan pedagang dadakan ini menjual aneka masakan khas lebaran seperti ketupat, lontong, sayur opor, jaje tujak, hingga jajan bantal khas Lombok. Baca juga: 8 Tradisi Daerah di Indonesia untuk Sambut Ramadhan   Omzet penjualan lontong dan ketupat pun ikut melonjak saat Lebaran. Jika hari biasa perajin lontong rata-rata membuat 25 kilogram beras untuk dijual di pasar, pada hari raya pembuatan lontong bisa mencapai 30-35 kilogram. Selain perajin lontong yang memang setiap hari berjualan, menjelang Lebaran banyak warga Punia yang tadinya tidak berjualan lontong ikut membuat lontong. Sejumlah warga bahkan membuat lontong dan merebusnya di pinggir jalan utama kampung Punia. Baca juga: Panasonic Akan PHK 10.000 Karyawan, Siapkan Biaya Restrukturisasi Rp 14 Triliun Suyudi mengatakan, meski hanya berjualan saat hari raya, bukan berarti penjual musiman ini tidak memiliki keahlian dalam membuat lontong dan ketupat. &quot;Yang mendadak ini bukan tidak punya skill karena lingkungan mereka secara tidak langsung sudah mengajarkan cara rebus, cara masukkan beras dalam daun, cara memanaskan api, dan berapa lama dia direbus. Jadi yang bukan pembuat (pengrajin) lontong, karena sehari-hari lihat cara membuat lontong pasti tahu,&quot; kata Suyudi. Suyudi menambahkan, saat ini pihak kelurahan Punia telah melakukan pendataan terhadap perajin lontong yang ada di kelurahan Punia. Pihaknya juga menggandeng OPD terkait untuk membina UMKM lontong dari segi kemasan dan segi higienis. Selain itu, pihak Kelurahan juga mendorong warga memanfaatkan media sosial untuk pemasaran lontong.</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 1, '2025-05-09 14:45:52', '2025-05-09 06:40:50', '2025-05-09 16:14:13', NULL),
(2, 'Tupat, Lontong dan Kue Bantal yang Tak Tergantikan', 'tupat-lontong-dan-kue-bantal-yang-tak-tergantikan', '<p>Janur yang disulam dengan tangan atau daun pisang yang dibentuk mengerucut kemudian dituangi beras dan direbus, jika ditarik kebelakang tidak saja simbol sebuah proses kehidupan antar manusia melainkan juga keharmonisan dengan alam.</p><p>Jutaan manusia di Pulau Lombok secara turun temurun memiliki hubungan erat dengan kedua tanaman itu yakni pisang dan kelapa. Nyaris tak ada lahan pertanian tanpa keduanya yang tidak saja memberi penghidupan melainkan juga mewarnai nilai estetik alam semesta.</p><p>Bagi sebagian warga, janur dan daun pisang merupakan nikmat hidup sebagai sarana memulai hari dan mengatur waktu, terutama di kalangan perajin sekaligus pengusaha tupat lontong.</p><p>Para perajin ini dalam kesehariannya harus memulai dengan membersihkan dan pisang dan janur, merangkainya, mengisinya dengan butiran beras, memasaknya dalam waktu belasan jam. Malam hari membuatnya, subuh hari membawanya ke pasar hingga ludes terjual.</p><p>Bagi sebagian warga, matahari yang terbit atau terbenam di sela sela pohon kelapa yang menjulang memberi nilai estetik yang tiada taranya. Tidaklah keliru jika kedua tanaman ini menjadi sumber inspirasi banyak orang dan telah berlangsung puluhan bahkan ratusam tahun lamanya.</p><p>Di Kelurahan Punia Kota Mataram, pada hampir seluruh kampung seperti Punia Saba, Karang Keteng dan Karang Kelayu, janur dan daun pisang menjadi bagian penting kehidupan masyarakat dalam membuat penganan khas itu. Tidak hanya di hari raya, pun pada hari hari biasa.</p><p>Setiap hari ratusan warga Punia menyuplai ribuan tupat dan lontong ke seantero Kota Mataram. Tingkat konsumsi yang cukup tinggi akan membludak di hari raya ketika menu menu khas seperti opor seakan mewajibkan kehadiran saudara kembarnya ini.</p><p>Pada momentum hari raya, lapak lapak memenuhi pinggir jalan Airlangga dan Abdul Kadir Munsyi. Mereka yang semula bekerja dibalik layar turun langsung menjajakan dagangannya untuk melayani pembeli</p><p>Karena itu, kelurahan yang padat penduduk ini menjadi hidup sebagai kawasan kuliner yang cukup ramai setiap hari serta semakin padat pada hari hari tertentu seperti Idul Fitri, Lebaran Topat, Idul Adha, dan Maulid Nabi.</p><p>Kendati menjadi salah satu sentra penghasil tupat lontong, kehidupan para pewaris makanan tradisional ini belumlah beranjak naik. Pemasaran produk yang rutin setiap hari, hasilnya hanya cukup untuk memenuhi standar kebutuhan dasar walau mereka harus menghabiskan bahan baku berupa beras 15-30 kg</p><p>Menghabiskan waktu berjam-jam di depan tungku untuk menghasilkan kualitas baik ratusan tupat lontong, satu keluarga perajin kadang hanya tercukupi kebutuhan pokoknya. Ketika menghadapi biaya kesehatan dan biaya pendidikan, di sanalah masalah kerap muncul.</p><p>Berbagai cara dilakukan para perajin untuk bertahan di tengah arus perubahan dan naiknya harga-harga, salah satunya membuka lapak lapak secara mandiri untuk menaikkan pendapatan guna memenuhi kebutuhan hidup yang kian membengkak. Selain itu, memperbanyak variasi produk seperti kue bantal.</p><p>Produk kuliner tradisional masyarakat ini memiliki pasaran yang cukup baik, terlebih ketika bermunculan pedagang bakso di setiap sudut kota. Namun, bukan berarti para perajin tupat lontong tidak membutuhkan perhatian.</p><p>Pasalnya, untuk mendapatkan hasil yang cukup, produk yang dibuat setiap hari ratusan jumlahnya dengan jam kerja lebih dari 8 jam sehari. Hal ini memerlukan energi yang tidak kecil. Sedangkan harga tupat lontong hanya sedikit beranjak naik ditengah harga beras yang menanjak.</p><p>Daya tahan para perajin tupat lontong khususnya di Kelurahan Punia patut diacungi jempol. Tidak sedikit di antara mereka yang meregenerasi keterampilan itu karena keterampilan itulah yang mereka miliki.</p><p>Kawasan ini pada akhirnya menjadi salah satu yang masih mempertahankan produk kuliner lokal yang jika ditingggalkan maka hilanglah salah satu ciri kekayaan kuliner Kota Mataram.</p><p>Karena itu, pemerintah mesti mengambil peran lebih untuk mempertahankan eksistensi masyarakat setempat, tidak sebatas pelatihan dan higienitas melainkan juga pengayaan produk, bantuan pemasaran di jajaran aparatur pemerintahan jika menggelar event tertentu.</p><p>Adanya kepastian pesanan penganan seperti kue bantal dan kue tradisional lainnya setidaknya memompakan semangat baru jika pesanan itu datang setiap kali pegawai melakukan meeting di lingkungan OPD.</p><p>Bagaimana pun, tupat, lontong dan kue bantal, sadar atau tidak telah membersamai   Kota Mataram sejak lama sehingga pemerintahsetempat pun selayaknya membersamai para perajinnya yang memberi efek ganda kepada petani. riyanto rabbah</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 1, '2025-05-10 00:27:00', '2025-05-09 16:17:52', '2025-05-09 16:27:00', NULL),
(3, 'Cerita Pedagang Ketupat Menjelang Lebaran Topat di Lombok', 'cerita-pedagang-ketupat-menjelang-lebaran-topat-di-lombok', '<p><a href=\"http://TEMPO.CO\">TEMPO.CO</a>, Mataram - Masyarakat Pulau Lombok memiliki tradisi Idul Fitri yang menarik, yaitu Lebaran Ketupat atau Lebaran Topat. Namun Lebaran ini tak diadakan pada hari pertama Idul Fitri 1 Syawal melainkan pada hari ketujuh yang tahun ini jatuh pada Sabtu, 29 April 2023.</p><p>Seperti namanya, hal utama dalam tradisi ini adalah ketupat. Karena itu, tak heran menjelang tradisi ini, penjual ketupat dapat mudah ditemukan.</p><p>Para pedagang ketupat bermunculan di sejumlah ruas jalan, termasuk di sekitar Kota Mataram. Kebanyakan dari mereka adalah warga Kelurahan Punia yang berdagang di atas trotoar sepanjang Jalan Airlangga dan Majapahit.</p><p>Para pedagang menggunakan satu meja di bawah tenda payung untuk menggelar ketupat yang digantung di atas panci berisi lauknya, seperti opor dan urap. Setiap pedagang menyiapkan ratusan biji ketupat yang diisi belasan kilogram beras. Setiap biji ketupat dijualnya Rp 3 ribu atau per ikat sebanyak lima biji seharga Rp 15 ribu.</p><p>Salah satunya adalah Maesarah, 55 tahun, yang berdagang ketupat sehari sebelum Lebaran Topat, Jumat, 28 April 2023. Rencananya, ia akan berjualan hingga malam hari atau jika masih tersisa ia menjualnya hingga hari H.</p><p>&quot;Silakan beli. Masih sepi ini,&quot; kata Maesarah, di ujung barat Majapahit.</p><p>Menurut Maesarah, sepinya pembeli karena lebih banyak warga yang melakukan mudik Lebaran setelah meredanya pandemi Covid-19. &quot;Jika dibanding dulu, lebih ramai karena mereka tidak pergi mudik ke kampung halamannya,&quot; ujarnya.</p><p>Seorang pedagang lainnya, Srianah, 53 tahun, menyatakan berjualan ketupat dan lontong ini adalah mata pencahariannya sehari-hari. Jika bukan Lebaran, mereka berdagang lontong di berbagai pasar di kota Mataram.</p><p>Lebaran Topat di Lombok biasanya diisi dengan sejumlah acara. Tradisi itu akan diawali dengan ziarah ke makam keramat, lalu menyantap ketupat bersama-sama. Setelah itu, masyarakat memanfaatkan momentum libur itu untuk rekreasi di berbagai pantai.</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 1, '2025-05-10 00:27:03', '2025-05-09 16:20:49', '2025-05-09 16:27:03', NULL),
(4, 'Lebaran Topat Dimanfaatkan Warga Punia Kota Mataram Berjualan Ketupat dan Opor', 'lebaran-topat-dimanfaatkan-warga-punia-kota-mataram-berjualan-ketupat-dan-opor', '<p><a href=\"http://TRIBUNLOMBOK.COM\">TRIBUNLOMBOK.COM</a>, MATARAM- Perayaan lebaran topat atau Lebaran Ketupat dimanfaatkan warga Kelurahan Punia, Kota Mataram untuk berjualan ketupat di sepanjang Jalan Airlangga, Jumat (28/4/2023).</p><p>Para pedagang tersebut membuka lapak di samping kiri dan kanan jalan. Sebagian besar dari mereka membuka lapak di samping Taman Budaya Nusa Tenggara Barat. Lebaran Ketupat akan dirayakan pada Sabtu, 29 April 2023.</p><p>Seorang pedagang ketupat, Sriyanah mengaku dirinya dan warga yang lain tetap berjualan setiap tahun. Dikatakan Sriyanah dalam sehari ia bisa memasak untuk 25 sampai 50 kilogram ketupat.</p><p>&quot;Tergantung pembeli, kadang 25 kilogram, kadang lebih,&quot; Kata Sriyanah kepada <a href=\"http://TribunLombok.com\">TribunLombok.com</a>.</p><div data-youtube-video=\"true\" class=\"responsive\"><iframe src=\"https://www.youtube.com/embed/VQlc9CY4AbM?controls=1\" width=\"1600\" height=\"900\" allowfullscreen=\"true\" allow=\"autoplay; fullscreen; picture-in-picture\" style=\"aspect-ratio:1600/900; width: 100%; height: auto;\"></iframe></div><p>Di lapak sederhana yang terbuat dari meja kayu dan satu payung besar milik Sriyanah digantung berbagai ukuran ketupat mulai dari yang kecil hingga besar.</p><p>Tidak hanya itu, warga Punia ini juga menjual berbagai jenis lontong, terdapat lontong panjang, lontong kecil.</p><p>Selain menjual ketupat Sriyanah juga menjual opor ayam, opor telur dan sayur nangka.</p><p>Harga masing-masing menu tersebut bervariasi. Untuk satu ikat ketupat yang berisi lima biji dihargai Rp 15.000. Sama halnya dengan satu ikat lontong berukuran kecil.</p><p style=\"text-align: center; ;\"><img src=\"http://127.0.0.1:8000/storage/images/1cbb080e-6f12-445e-9c59-4584f36d08ec.jpg\" title=\"Jual-ketupat-untuk-lebaran\" width=\"700\" height=\"393\"></p><p>Sementara untuk opor dan urap-urap, Sriyanah mengatakan tergantung berapa yang ingin dibeli oleh pengunjung yang datang.</p><p>Dikatakan Sriyanah waktu berjalannya hanya berlangsung selama dua hari, yakni sehari sebelum lebaran ketupat dan pada saat hari lebaran.</p><p>Setiap hari Sriyanah akan menutup lapaknya apabila ketupat yang dijual telah habis.</p><p>Kota Mataram pada Jumat sore sekira pukul 16.00 WITA dilanda hujan deras. Meskipun begitu Sriyanah dan pedagang yang lain tetap berjualan dengan menutup ketupat dagangannya menggunakan plastik.</p><p>Pengunjung yang datang semakin sore terlihat ramai. Meskipun sedang dilanda hujan tidak menyurutkan niat mereka datang membeli ketupat.</p><p>Dengan menggunakan mantel mereka menerobos hujan demi satu porsi ketupat opor.</p><p>Tidak hanya untuk dibawa pulang sebagai dari mereka juga memilih makan di tempat. Untuk satu porsi ketupat opor dengan pilihan menu daging ayam dan telur dihargai mulai dari Rp 10.000 sampai Rp 15.000.</p><p>Sriyanah mengaku modal yang digunakan merupakan hasil pinjaman dari bank keliling. Ia mendapat pinjaman Rp 1 juta kemudian setiap hari harus membayar Rp 20.000 selama dua bulan. (*)</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 1, '2025-05-10 00:27:06', '2025-05-09 16:25:17', '2025-05-09 16:27:06', NULL),
(5, 'Di Mataram, Puluhan Warga Berjualan Ketupat di Sepanjang Jalan Airlangga dan Majapahit', 'di-mataram-puluhan-warga-berjualan-ketupat-di-sepanjang-jalan-airlangga-dan-majapahit', '<p>MATARAM – Sehari menjelang Lebaran Ketupat yang di Lombok dikenal sebagai tradisi Lebaran Topat, bakda Dzuhur Jum’at 28 April 2023 siang tadi telah bermunculan pedagang ketupat di kota Mataram. Terbanyak mereka yang mayoritas warga Kelurahan Punia berdagang di atas trotoar sepanjang jalan Airlangga dan Majapahit.</p><p>Mereka rata-rata menggunakan satu meja di bawah tenda payung untuk menggelar ketupat yang digantung di atas panci berisi lauknya diantarannya opor dan urap. Setiap pedagang menyiapkan ratusan biji ketupat yang diisi belasan kilogram beras. Setiap biji ketupat dijualnya Rp 3 ribu atau perikat lima biji seharga Rp 15 ribu.</p><p>Seorang pedagang menawarkan membeli jualannya karena masih sepi. Rencananya ia berjualan hingga malam hari atau jika masih tersisa ia menjualnya Sabtu 29 April 2023 pagi. ‘’Silahkan pak beli. Masih sepi ini,’’ kata Maesarah, 55 tahun, di ujung barat Majapahit.</p><p>Menurutnya, sepinya pembeli karena lebih banyak warga yang melakukan mudik lebaran setelah meredanya pandemic Covid-19. ‘’Jika dibanding dulu, lebih ramai karena mereka tidak pergi mudik ke kampung halamannya,’’ ujar Maesarah.</p><p>Seorang pedagang lainnya Srianah, 53 tahun, menyatakan berjualan ketupat dan lontong ini adalah mata pencahariannya sehari-hari. Jika bukan lebaran, mereka berdagang lontong di berbagai pasar di kota Mataram.</p><p>Sabtu 29 April 2023 besok dipastikan tradisi Lebaran Topat di Lombok akan ramai. Di seluruh wilayah di Mataramk, Lombok Barat, Lombok Utara, Lombok Tengah dan Lombok Timur warga memanfaatkannya untuk rekreasi di berbagai pantai setelah melakukan ziarah kubur makam keramat yang dikenal sebagai penyebar Islam di Lombok.(*)</p>', 0, 1, NULL, '{\"meta_title\":null,\"meta_desc\":null}', 1, 1, '2025-05-10 00:27:08', '2025-05-09 16:26:49', '2025-05-09 16:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles_cover`
--

CREATE TABLE `articles_cover` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `cover_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_cover`
--

INSERT INTO `articles_cover` (`article_id`, `cover_id`) VALUES
(1, 4),
(2, 5),
(3, 6),
(4, 7),
(5, 8);

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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1746811648),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1746811648;', 1746811648),
('general-settings', 'a:0:{}', 2062094642),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36', 'i:1;', 1746891031),
('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36:timer', 'i:1746891031;', 1746891031),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:156:{i:0;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:12:\"view_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:1;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:16:\"view_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:2;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:14:\"create_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:3;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:14:\"update_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:4;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:15:\"restore_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:5;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:19:\"restore_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:6;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:17:\"replicate_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:7;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:15:\"reorder_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:8;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:14:\"delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:9;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:18:\"delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:10;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:20:\"force_delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:11;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:24:\"force_delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:12;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:13:\"view_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:13;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:17:\"view_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:14;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:15:\"create_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:15;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:15:\"update_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:16;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:16:\"restore_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:17;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:20:\"restore_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:18;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:18:\"replicate_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:19;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:16:\"reorder_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:20;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:15:\"delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:21;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:19:\"delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:22;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:21:\"force_delete_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:23;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:25:\"force_delete_any_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:24;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:10:\"view_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:25;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:14:\"view_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:26;a:4:{s:1:\"a\";i:155;s:1:\"b\";s:12:\"create_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:27;a:4:{s:1:\"a\";i:156;s:1:\"b\";s:12:\"update_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:28;a:4:{s:1:\"a\";i:157;s:1:\"b\";s:13:\"restore_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:29;a:4:{s:1:\"a\";i:158;s:1:\"b\";s:17:\"restore_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:30;a:4:{s:1:\"a\";i:159;s:1:\"b\";s:15:\"replicate_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:31;a:4:{s:1:\"a\";i:160;s:1:\"b\";s:13:\"reorder_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:32;a:4:{s:1:\"a\";i:161;s:1:\"b\";s:12:\"delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:33;a:4:{s:1:\"a\";i:162;s:1:\"b\";s:16:\"delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:34;a:4:{s:1:\"a\";i:163;s:1:\"b\";s:18:\"force_delete_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:35;a:4:{s:1:\"a\";i:164;s:1:\"b\";s:22:\"force_delete_any_cover\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:36;a:4:{s:1:\"a\";i:165;s:1:\"b\";s:10:\"view_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:37;a:4:{s:1:\"a\";i:166;s:1:\"b\";s:14:\"view_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:38;a:4:{s:1:\"a\";i:167;s:1:\"b\";s:12:\"create_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:39;a:4:{s:1:\"a\";i:168;s:1:\"b\";s:12:\"update_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:40;a:4:{s:1:\"a\";i:169;s:1:\"b\";s:13:\"restore_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:41;a:4:{s:1:\"a\";i:170;s:1:\"b\";s:17:\"restore_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:42;a:4:{s:1:\"a\";i:171;s:1:\"b\";s:15:\"replicate_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:43;a:4:{s:1:\"a\";i:172;s:1:\"b\";s:13:\"reorder_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:44;a:4:{s:1:\"a\";i:173;s:1:\"b\";s:12:\"delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:45;a:4:{s:1:\"a\";i:174;s:1:\"b\";s:16:\"delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:46;a:4:{s:1:\"a\";i:175;s:1:\"b\";s:18:\"force_delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:47;a:4:{s:1:\"a\";i:176;s:1:\"b\";s:22:\"force_delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:48;a:4:{s:1:\"a\";i:177;s:1:\"b\";s:9:\"view_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:49;a:4:{s:1:\"a\";i:178;s:1:\"b\";s:13:\"view_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:50;a:4:{s:1:\"a\";i:179;s:1:\"b\";s:11:\"create_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:51;a:4:{s:1:\"a\";i:180;s:1:\"b\";s:11:\"update_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:52;a:4:{s:1:\"a\";i:181;s:1:\"b\";s:12:\"restore_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:53;a:4:{s:1:\"a\";i:182;s:1:\"b\";s:16:\"restore_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:54;a:4:{s:1:\"a\";i:183;s:1:\"b\";s:14:\"replicate_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:55;a:4:{s:1:\"a\";i:184;s:1:\"b\";s:12:\"reorder_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:56;a:4:{s:1:\"a\";i:185;s:1:\"b\";s:11:\"delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:57;a:4:{s:1:\"a\";i:186;s:1:\"b\";s:15:\"delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:58;a:4:{s:1:\"a\";i:187;s:1:\"b\";s:17:\"force_delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:59;a:4:{s:1:\"a\";i:188;s:1:\"b\";s:21:\"force_delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:60;a:3:{s:1:\"a\";i:189;s:1:\"b\";s:12:\"view_pattern\";s:1:\"c\";s:3:\"web\";}i:61;a:3:{s:1:\"a\";i:190;s:1:\"b\";s:16:\"view_any_pattern\";s:1:\"c\";s:3:\"web\";}i:62;a:3:{s:1:\"a\";i:191;s:1:\"b\";s:14:\"create_pattern\";s:1:\"c\";s:3:\"web\";}i:63;a:3:{s:1:\"a\";i:192;s:1:\"b\";s:14:\"update_pattern\";s:1:\"c\";s:3:\"web\";}i:64;a:3:{s:1:\"a\";i:193;s:1:\"b\";s:15:\"restore_pattern\";s:1:\"c\";s:3:\"web\";}i:65;a:3:{s:1:\"a\";i:194;s:1:\"b\";s:19:\"restore_any_pattern\";s:1:\"c\";s:3:\"web\";}i:66;a:3:{s:1:\"a\";i:195;s:1:\"b\";s:17:\"replicate_pattern\";s:1:\"c\";s:3:\"web\";}i:67;a:3:{s:1:\"a\";i:196;s:1:\"b\";s:15:\"reorder_pattern\";s:1:\"c\";s:3:\"web\";}i:68;a:3:{s:1:\"a\";i:197;s:1:\"b\";s:14:\"delete_pattern\";s:1:\"c\";s:3:\"web\";}i:69;a:3:{s:1:\"a\";i:198;s:1:\"b\";s:18:\"delete_any_pattern\";s:1:\"c\";s:3:\"web\";}i:70;a:3:{s:1:\"a\";i:199;s:1:\"b\";s:20:\"force_delete_pattern\";s:1:\"c\";s:3:\"web\";}i:71;a:3:{s:1:\"a\";i:200;s:1:\"b\";s:24:\"force_delete_any_pattern\";s:1:\"c\";s:3:\"web\";}i:72;a:4:{s:1:\"a\";i:201;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:73;a:4:{s:1:\"a\";i:202;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:74;a:4:{s:1:\"a\";i:203;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:75;a:4:{s:1:\"a\";i:204;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:76;a:4:{s:1:\"a\";i:205;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:77;a:4:{s:1:\"a\";i:206;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:78;a:4:{s:1:\"a\";i:207;s:1:\"b\";s:12:\"view_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:79;a:4:{s:1:\"a\";i:208;s:1:\"b\";s:16:\"view_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:80;a:4:{s:1:\"a\";i:209;s:1:\"b\";s:14:\"create_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:81;a:4:{s:1:\"a\";i:210;s:1:\"b\";s:14:\"update_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:82;a:4:{s:1:\"a\";i:211;s:1:\"b\";s:15:\"restore_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:83;a:4:{s:1:\"a\";i:212;s:1:\"b\";s:19:\"restore_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:84;a:4:{s:1:\"a\";i:213;s:1:\"b\";s:17:\"replicate_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:85;a:4:{s:1:\"a\";i:214;s:1:\"b\";s:15:\"reorder_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:86;a:4:{s:1:\"a\";i:215;s:1:\"b\";s:14:\"delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:87;a:4:{s:1:\"a\";i:216;s:1:\"b\";s:18:\"delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:88;a:4:{s:1:\"a\";i:217;s:1:\"b\";s:20:\"force_delete_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:89;a:4:{s:1:\"a\";i:218;s:1:\"b\";s:24:\"force_delete_any_sponsor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:90;a:4:{s:1:\"a\";i:219;s:1:\"b\";s:22:\"view_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:91;a:4:{s:1:\"a\";i:220;s:1:\"b\";s:26:\"view_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:92;a:4:{s:1:\"a\";i:221;s:1:\"b\";s:24:\"create_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:93;a:4:{s:1:\"a\";i:222;s:1:\"b\";s:24:\"update_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:94;a:4:{s:1:\"a\";i:223;s:1:\"b\";s:25:\"restore_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:95;a:4:{s:1:\"a\";i:224;s:1:\"b\";s:29:\"restore_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:96;a:4:{s:1:\"a\";i:225;s:1:\"b\";s:27:\"replicate_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:97;a:4:{s:1:\"a\";i:226;s:1:\"b\";s:25:\"reorder_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:98;a:4:{s:1:\"a\";i:227;s:1:\"b\";s:24:\"delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:99;a:4:{s:1:\"a\";i:228;s:1:\"b\";s:28:\"delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:100;a:4:{s:1:\"a\";i:229;s:1:\"b\";s:30:\"force_delete_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:101;a:4:{s:1:\"a\";i:230;s:1:\"b\";s:34:\"force_delete_any_sponsor::category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:102;a:4:{s:1:\"a\";i:231;s:1:\"b\";s:8:\"view_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:103;a:4:{s:1:\"a\";i:232;s:1:\"b\";s:12:\"view_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:104;a:4:{s:1:\"a\";i:233;s:1:\"b\";s:10:\"create_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:105;a:4:{s:1:\"a\";i:234;s:1:\"b\";s:10:\"update_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:106;a:4:{s:1:\"a\";i:235;s:1:\"b\";s:11:\"restore_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:107;a:4:{s:1:\"a\";i:236;s:1:\"b\";s:15:\"restore_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:108;a:4:{s:1:\"a\";i:237;s:1:\"b\";s:13:\"replicate_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:109;a:4:{s:1:\"a\";i:238;s:1:\"b\";s:11:\"reorder_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:110;a:4:{s:1:\"a\";i:239;s:1:\"b\";s:10:\"delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:111;a:4:{s:1:\"a\";i:240;s:1:\"b\";s:14:\"delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:112;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:16:\"force_delete_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:113;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:20:\"force_delete_any_tag\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}i:114;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:115;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:116;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:117;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:118;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:119;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:120;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:121;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:122;a:4:{s:1:\"a\";i:251;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:123;a:4:{s:1:\"a\";i:252;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:124;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:125;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:126;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:24:\"page_GeneralSettingsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:127;a:3:{s:1:\"a\";i:256;s:1:\"b\";s:12:\"page_ViewEnv\";s:1:\"c\";s:3:\"web\";}i:128;a:3:{s:1:\"a\";i:257;s:1:\"b\";s:21:\"widget_OptimizeButton\";s:1:\"c\";s:3:\"web\";}i:129;a:4:{s:1:\"a\";i:258;s:1:\"b\";s:18:\"page_EnvEditorPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:130;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:24:\"page_GoogleAnalyticsPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:131;a:4:{s:1:\"a\";i:260;s:1:\"b\";s:12:\"view_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:132;a:4:{s:1:\"a\";i:261;s:1:\"b\";s:16:\"view_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:133;a:4:{s:1:\"a\";i:262;s:1:\"b\";s:14:\"create_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:134;a:4:{s:1:\"a\";i:263;s:1:\"b\";s:14:\"update_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:135;a:4:{s:1:\"a\";i:264;s:1:\"b\";s:15:\"restore_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:136;a:4:{s:1:\"a\";i:265;s:1:\"b\";s:19:\"restore_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:137;a:4:{s:1:\"a\";i:266;s:1:\"b\";s:17:\"replicate_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:138;a:4:{s:1:\"a\";i:267;s:1:\"b\";s:15:\"reorder_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:139;a:4:{s:1:\"a\";i:268;s:1:\"b\";s:14:\"delete_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:140;a:4:{s:1:\"a\";i:269;s:1:\"b\";s:18:\"delete_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:141;a:4:{s:1:\"a\";i:270;s:1:\"b\";s:20:\"force_delete_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:142;a:4:{s:1:\"a\";i:271;s:1:\"b\";s:24:\"force_delete_any_section\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:143;a:4:{s:1:\"a\";i:272;s:1:\"b\";s:18:\"view_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:144;a:4:{s:1:\"a\";i:273;s:1:\"b\";s:22:\"view_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:145;a:4:{s:1:\"a\";i:274;s:1:\"b\";s:20:\"create_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:146;a:4:{s:1:\"a\";i:275;s:1:\"b\";s:20:\"update_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:147;a:4:{s:1:\"a\";i:276;s:1:\"b\";s:21:\"restore_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:148;a:4:{s:1:\"a\";i:277;s:1:\"b\";s:25:\"restore_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:149;a:4:{s:1:\"a\";i:278;s:1:\"b\";s:23:\"replicate_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:150;a:4:{s:1:\"a\";i:279;s:1:\"b\";s:21:\"reorder_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:151;a:4:{s:1:\"a\";i:280;s:1:\"b\";s:20:\"delete_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:152;a:4:{s:1:\"a\";i:281;s:1:\"b\";s:24:\"delete_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:153;a:4:{s:1:\"a\";i:282;s:1:\"b\";s:26:\"force_delete_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:154;a:4:{s:1:\"a\";i:283;s:1:\"b\";s:30:\"force_delete_any_section::type\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:155;a:4:{s:1:\"a\";i:284;s:1:\"b\";s:18:\"page_DashboardPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:7;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"Developer\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"Superadmin\";s:1:\"c\";s:3:\"web\";}}}', 1746924843);

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
(1, 'Artikel', 'artikel', 1, 1, 'artikel', 'artikel', '[]', NULL, '2025-05-09 10:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_interaction`
--

CREATE TABLE `chatbot_interaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `covers`
--

CREATE TABLE `covers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `covers`
--

INSERT INTO `covers` (`id`, `image_path`, `alt`) VALUES
(4, 'covers/01JTV03QVGPN34R9RMQVT1A52J.webp', 'Lontong yang sudah diisi beras kemudian ditata di dalam panci dan siap direbus selama 8 jam.'),
(5, 'covers/01JTV0V55HPCTAWMGDFZT0T722.webp', 'Tupat dan kue bantal'),
(6, 'covers/01JTV0YCQH904FMEEJJ9TP3NRA.webp', 'Penjualan Ketupat Lebaran 2023 di Kota Mataram.'),
(7, 'covers/01JTV13CAFPM40BNP62AH69P15.webp', 'Sriyanah sedang memotong ketupat untuk pembeli'),
(8, 'covers/01JTV1B9AJDGR18XZ17MXXBFF9.webp', 'Di Mataram, Puluhan Warga Berjualan Ketupat di Sepanjang Jalan Airlangga dan Majapahit');

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
  `chatbot_settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `site_description`, `site_logo`, `site_favicon`, `site_url`, `site_dashboard_url`, `location`, `contacts`, `theme`, `email_settings`, `social_network`, `navigation`, `features`, `google_analytics`, `user_features`, `chatbot_settings`, `created_at`, `updated_at`) VALUES
(1, 'Lombok', NULL, NULL, NULL, NULL, 'dashboard', '{\"url\": null, \"address\": null, \"coordinate\": {\"lat\": -8.695344881691632, \"lng\": 115.21278619766235}}', '{\"email\": \"lombok@gmail.com\", \"phone\": \"03701234\", \"whatsapp\": null}', '{\"primary\": {\"50\": \"245, 245, 253\", \"100\": \"235, 235, 250\", \"200\": \"204, 204, 243\", \"300\": \"173, 173, 236\", \"400\": \"112, 112, 221\", \"500\": \"50, 50, 207\", \"600\": \"45, 45, 186\", \"700\": \"38, 38, 155\", \"800\": \"30, 30, 124\", \"900\": \"25, 25, 101\", \"950\": \"15, 15, 62\"}, \"tertiary\": null, \"secondary\": null}', '{\"mail_to\": null, \"smtp_host\": \"sandbox.smtp.mailtrap.io\", \"smtp_port\": \"2525\", \"smtp_timeout\": null, \"smtp_password\": \"f9c7ce4781c953\", \"smtp_username\": \"08c61c0b0a50c8\", \"amazon_ses_key\": null, \"mailgun_domain\": null, \"mailgun_secret\": null, \"postmark_token\": null, \"email_from_name\": \"ExRyze\", \"smtp_encryption\": \"tls\", \"mailgun_endpoint\": null, \"amazon_ses_region\": null, \"amazon_ses_secret\": null, \"email_from_address\": \"exryze4@gmail.com\", \"default_email_provider\": \"smtp\"}', '{\"tiktok\": {\"url\": null, \"label\": null}, \"twitter\": {\"url\": null, \"label\": null}, \"youtube\": {\"url\": null, \"label\": null}, \"facebook\": {\"url\": null, \"label\": null}, \"linkedin\": {\"url\": null, \"label\": null}, \"whatsapp\": {\"url\": null, \"label\": null}, \"instagram\": {\"url\": null, \"label\": null}, \"pinterest\": {\"url\": null, \"label\": null}}', '{\"home\": \"1\", \"footer\": \"1\", \"header\": \"2\", \"search\": \"8\", \"nav_items\": [{\"link\": null, \"page\": \"10\", \"type\": \"page\"}, {\"link\": null, \"page\": \"9\", \"type\": \"page\"}]}', '{\"sponsors\":false,\"analytics\":false}', '{\"google_analytics_tag\": null, \"service-account-credentials\": null}', '{\"chatbot\":false}', '{\"xai\": {\"url\": null, \"api_key\": null}, \"groq\": {\"url\": null, \"api_key\": null}, \"model\": null, \"gemini\": {\"url\": null, \"api_key\": null}, \"ollama\": {\"url\": null}, \"openai\": {\"url\": null, \"api_key\": null, \"project\": null, \"organization\": null}, \"prompt\": null, \"mistral\": {\"url\": null, \"api_key\": null}, \"deepseek\": {\"url\": null, \"api_key\": null}, \"provider\": \"groq\", \"voyageai\": {\"url\": null, \"api_key\": null}, \"anthropic\": {\"api_key\": null, \"version\": null, \"anthropic_beta\": null, \"default_thinking_budget\": null}}', NULL, '2025-05-10 03:47:41');

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
(2, 'public', 'images', 'public', 'bc7c2f78-4890-465a-8740-cb35aa0e309c', 'images/bc7c2f78-4890-465a-8740-cb35aa0e309c.jpeg', 750, 500, 57444, 'image/jpeg', 'jpeg', NULL, '65eff5139b2f9', NULL, NULL, '{\"FileName\":\"rLxg1Ay7UUtvtA4c9byMz6VOVLIr4z-metaNjVlZmY1MTM5YjJmOS5qcGVn-.jpeg\",\"FileDateTime\":1746810496,\"FileSize\":57444,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"750\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":750,\"IsColor\":1}}', NULL, '2025-05-09 16:08:23', '2025-05-09 16:08:23', NULL),
(3, 'public', 'images', 'public', 'b5dacb1b-fa8d-4baa-99d2-675e074ee97a', 'images/b5dacb1b-fa8d-4baa-99d2-675e074ee97a.jpg', 750, 500, 70030, 'image/jpeg', 'jpg', NULL, '65eff226e5b93', NULL, NULL, '{\"FileName\":\"HHnhR8xlKeBRInZnaeWZgfxhjd5nVO-metaNjVlZmYyMjZlNWI5My5qcGc=-.jpg\",\"FileDateTime\":1746810632,\"FileSize\":70030,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"750\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":750,\"IsColor\":1}}', NULL, '2025-05-09 16:10:41', '2025-05-09 16:10:41', NULL),
(4, 'public', 'images', 'public', 'bcf57cb8-318a-4b22-b9de-6ab2624e454d', 'images/bcf57cb8-318a-4b22-b9de-6ab2624e454d.jpg', 750, 500, 40523, 'image/jpeg', 'jpg', NULL, '65eff22b4120e', NULL, NULL, '{\"FileName\":\"AMmduU7lW8zrjPYITGNqmjNMb8Wjhc-metaNjVlZmYyMmI0MTIwZS5qcGc=-.jpg\",\"FileDateTime\":1746810744,\"FileSize\":40523,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"750\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":750,\"IsColor\":1}}', NULL, '2025-05-09 16:12:27', '2025-05-09 16:12:27', NULL),
(5, 'public', 'images', 'public', 'f90afa32-2b7a-4eca-b04e-9ec835834f48', 'images/f90afa32-2b7a-4eca-b04e-9ec835834f48.jpeg', 750, 500, 77286, 'image/jpeg', 'jpeg', NULL, '65eff6e37d6a2', NULL, NULL, '{\"FileName\":\"xWcGTJt27JltvbBvn1tNpuUjTwtGO6-metaNjVlZmY2ZTM3ZDZhMi5qcGVn-.jpeg\",\"FileDateTime\":1746810803,\"FileSize\":77286,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"750\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":750,\"IsColor\":1}}', NULL, '2025-05-09 16:13:28', '2025-05-09 16:13:28', NULL),
(6, 'public', 'images', 'public', '1cbb080e-6f12-445e-9c59-4584f36d08ec', 'images/1cbb080e-6f12-445e-9c59-4584f36d08ec.jpg', 700, 393, 64243, 'image/jpeg', 'jpg', NULL, 'Jual-ketupat-untuk-lebaran', NULL, NULL, '{\"FileName\":\"uF0Cr5mTPzOCmZ0hWr5CwIvKE7nCqr-metaSnVhbC1rZXR1cGF0LXVudHVrLWxlYmFyYW4uanBn-.jpg\",\"FileDateTime\":1746811495,\"FileSize\":64243,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"COMMENT\",\"COMPUTED\":{\"html\":\"width=\\\"700\\\" height=\\\"393\\\"\",\"Height\":393,\"Width\":700,\"IsColor\":1},\"COMMENT\":[\"CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), default quality\\n\"]}', NULL, '2025-05-09 16:25:02', '2025-05-09 16:25:02', NULL);

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
(28, '2025_05_03_000742_create_chatbot_field', 10),
(29, '2025_05_03_002036_create_chatbot_interaction_table', 11),
(30, '2025_05_03_103806_rename_pattern_to_section', 11),
(31, '2025_05_03_142441_general_settings_navigation_field', 12),
(32, '2025_05_09_004254_add_dashboard_url_field', 13),
(34, '2025_05_09_090030_add_slug_field_in_categories', 14),
(35, '2025_05_09_142301_change_name_field_of_section_load_table', 15),
(36, '2025_05_09_162824_update_fields_of_categories', 16);

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
(9, 'Contact', 'contact', 1, 1, '2025-05-09 09:37:44', '2025-05-09 10:28:37', NULL),
(10, 'Artikel', 'artikel', 1, 1, '2025-05-10 03:46:52', '2025-05-10 03:46:52', NULL);

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
(31, 10, 1, 24);

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
(258, 1),
(259, 1),
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
(153, 7),
(154, 7),
(155, 7),
(156, 7),
(157, 7),
(158, 7),
(159, 7),
(160, 7),
(161, 7),
(162, 7),
(163, 7),
(164, 7),
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
(177, 7),
(178, 7),
(179, 7),
(180, 7),
(181, 7),
(182, 7),
(183, 7),
(184, 7),
(185, 7),
(186, 7),
(187, 7),
(188, 7),
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
(255, 7),
(258, 7),
(259, 7),
(260, 7),
(261, 7),
(262, 7),
(263, 7),
(264, 7),
(265, 7),
(266, 7),
(267, 7),
(268, 7),
(269, 7),
(270, 7),
(271, 7),
(272, 7),
(273, 7),
(274, 7),
(275, 7),
(276, 7),
(277, 7),
(278, 7),
(279, 7),
(280, 7),
(281, 7),
(282, 7),
(283, 7),
(284, 7);

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
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `layout_path`, `has_dataset`, `type_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Footer', 'footers/footer', 0, 1, 1, '2025-01-01 19:04:47', '2025-02-28 06:45:41', NULL),
(2, 'Navigation', 'navigations/navigation', 0, 2, 1, '2025-02-28 05:11:02', '2025-05-09 01:41:43', NULL),
(3, 'Hero - Carousel', 'heroes/carousel', 0, 3, 1, '2025-02-28 06:10:35', '2025-05-09 01:42:19', NULL),
(20, 'Load - Latest Article', 'loads/paginate_4_columns', 1, 8, 1, '2025-05-09 06:10:41', '2025-05-10 00:41:59', NULL),
(21, 'Other - Contact Mail', 'others/contact_mail', 0, 5, 1, '2025-05-09 10:29:22', '2025-05-09 10:29:22', NULL),
(22, 'Other - Sponsors', 'others/sponsors', 0, 5, 1, '2025-05-10 03:43:03', '2025-05-10 03:43:03', NULL),
(23, 'Load - Paginate Article', 'loads/paginate_4_columns', 1, 8, 1, '2025-05-10 03:45:48', '2025-05-10 03:45:48', NULL),
(24, 'Load - Highlights', 'loads/highlights', 1, 8, 1, '2025-05-10 14:34:10', '2025-05-10 14:34:10', NULL);

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
(12, 24, 'highlights_article', 1, 'published_at', 'desc', NULL, 4);

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
('QXrSdFgQdgTu41xjuO2XYFUzYGwL7bXK0CXozFF7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTVNqV0ZoYW1HVHljTFR5Y21rVElJTmhXaVZ2blZIUXlkb2xXa0VldyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQ1bGl5dVhKMkIyM1FJUGE5MmtkSkx1MWh2NHAydXh4QUV6MC5Wdi9MSEVBMWJmMnBtTkF5VyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1746895733);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `chatbot_interaction`
--
ALTER TABLE `chatbot_interaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatbot_interaction_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `patterns_title_unique` (`title`),
  ADD KEY `patterns_type_id_foreign` (`type_id`),
  ADD KEY `patterns_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chatbot_interaction`
--
ALTER TABLE `chatbot_interaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `covers`
--
ALTER TABLE `covers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `section_loads`
--
ALTER TABLE `section_loads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `section_types`
--
ALTER TABLE `section_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- Constraints for table `chatbot_interaction`
--
ALTER TABLE `chatbot_interaction`
  ADD CONSTRAINT `chatbot_interaction_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `patterns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
