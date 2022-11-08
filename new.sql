-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: lhjateng
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikel` (
  `id_artikel` int NOT NULL AUTO_INCREMENT,
  `penulis` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tglUpload` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `id_tag` varchar(5) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_artikel`),
  KEY `id_user` (`id_user`),
  KEY `id_tag` (`id_tag`),
  CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `artikel_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` VALUES (1,'Kambali Prayoga','Pidato Jokowi Bikin Harga Nikel Melonjak 4% Lebih!','2022-09-04','article-cover.png','Nikel dunia mampu lepas dari pengaruh sentimen bertambahnya pasokan dari Indonesia, harganya pun melesat hingga 4% lebih. Pada Jumat (9/9/2022) pukul 15:30 WIB harga nikel dunia tercatat US$22.630 per ton, melonjak 4,03% dibandingkan harga penutupan kemarin. <br> Presiden Indonesia Joko Widodo mengatakan bahwa Indonesia kemungkinan akan kalah dalam sengketa perdagangan dengan Uni Eropa (UE) terkait larangan ekspor bijih nikel pada yang dimulai 2020. Hal ini membuat kecemasan para pelaku pasar akan kendala pasokan menjadi berkurang karena potensi pembukaan ekspor bijih nikel. <br> \"Kelihatannya kita kalah (gugatan) tapi tidak apa-apa, industri kita akhirnya sudah jadi. Jadi kenapa takut? Kalah tidak apa-apa, syukur bisa menang,\" terang Jokowi dalam acara Sarasehan 100 Ekonomi oleh INDEF dan CNBC Indonesia, Rabu (7/9/2022). <br> \"Di tahun 2021 ketika kita hilirisasi nikel, kita dapat US$ 20,9 miliar. Lompatannya, nilai tambah lompatannya 19 kali. ini kalau mulai tarik lagi stop tembaga, timah dan nikel,\" ungkap Joko Widodo.','1',1),(2,'Harjasa Kurniawan','Waspada! Ada Malware Baru Ditemukan Masuk ke Akun Youtube','2022-09-04','lala-azizli-OFZUaeYKP3k-unsplash.jpg','Ada sebuah malware baru yang menyebar melalui akun YouTube bernama Redline Infostealer. Melansir Tech Radar, pakar keamanan siber dari Kaspersky menemukan malware yang masuk ke akun YouTube & mengunggah video ke saluran mereka. <br> Seorang korban idealnya seperti gamers PC yang melihat video tentang crack, atau cheat gim favorit mereka seperti FIFA, Final Fantasy, Forza Horizon, Lego Star Wars, atau Spiderman. <br> Dalam deskripsi video itu terdapat tautan yang untuk mendapatkan cheat, namun pada kenyataanya menampung beberapa malware yang digabungkan menjadi satu. <br> Dalam bundel RedLine Stealer mampu mencuri kata sandi yang disimpan di browser orang, cookie, detail kartu kredit, percakapan pesan instan, serta dompet cryptocurrency. <br> Yang paling menarik bundel itu memiliki tiga executable berbahaya, yang disebut MakiseKurisu.exe, Download.exe, dan upload exe. <br> Makise Kurisu adalah infostealer yang mengambil cookie browser dan menyimpannya secara lokal. Download.exe mengambil video crack palsu dari repositori GitHub dan menyerahkannya ke upload.exe sehingga akan mengunggah videonya ke akun YouTube korban.','2',1),(4,'Harjasa Kurniawan','Penampakan Dahsyatnya Gempa Taiwan yang Memakan Korban jiwa','2022-09-04','new-artickel.jpg','Anggota Dewan Pertimbangan Presiden (Wantimpres) Sidarto Danusubroto mengenang kiprah mendiang Azyumardi Azra memperjuangkan Islam moderat. Sidarto berkata Azyumardi selalu memperkenalkan Islam moderat di setiap forum internasional. Dia mengaku terpukau saat mendengarkan presentasi Azyumardi di Al-Azhar beberapa tahun lalu. <br>','2',1),(5,'Hana Purnawati','Program Meriah Bareng Mega Lanjut, Emas dan Apartemen Menanti Nasabah','2022-09-07','jason-goodman-Oalh2MojUuk-unsplash.jpg','Bank Mega melanjutkan agenda Meriah Bareng Mega. Program tersebut berlaku untuk semua pengguna layanan, baik yang baru ataupun lawas. <br>Tak main-main, bagi nasabah setia bisa mendapatkan hadiah seperti 100 logam mulia seberat 5 gram, 10 logam mulia 50 gram, 20 Samsung Galaxy S22, 10 Apple iPad Pro M1, hingga grand prize satu unit apartemen Trans Park dengan nilai Rp1,2 miliar. <br> \"Program ini baru kami launching dua bulan lalu berlaku sampai 31 Januari 2023,\" ujar Regional Head Bank Mega Kalimantan Andrew Wongjaya kepada CNNIndonesia.com pada Ahad (18/9). <br> Lantaran mendapatkan animo yang luar biasa dari para nasabah, kata dia, program ini kemudian juga diluncurkan di 7 kota besar selain Jakarta seperti Surabaya, Samarinda, Bandung, Makassar, Medan, Yogyakarta dan Semarang. <br> Khusus di Kota Tepian-sebutan Samarinda, pelaksanaannya digelar di Kawasan GOR Sempaja. Dari pagi hingga siang hari. Warga yang berolahraga di kawasan tersebut pun terhibur. <br> \"Kami berharap melalui aktivitas ini, engagement dan customer loyalty bisa meningkat. Begitu juga dengan awareness masyarakat terhadap Program Meriah Bareng Mega,\" tegasnya','1',1),(6,'Danang Firgantoro','Wantimpres Jokowi Kenang Azyumardi Azra Perjuangkan Islam Moderat','2022-09-07','6318ad915fc68ini-terlihat-dengan-jelas-pemandanga_169.jpeg','Jiangxi telah menerima rata-rata 132,2 milimeter hujan sejak Juli. Ini 57% lebih rendah dari rata-rata dan rekor terendah untuk periode tersebut.<br>Sementara itu, panas yang terus menerus menghasilkan tingkat penguapan rata-rata 329 mm di seluruh provinsi. Akibatnya, permukaan airnya menyusut hingga seluas 291 kilometer persegi, atau 10% dari ukuran biasanya. Volume air di danau juga hanya sekitar 10% dari normal.<br><br>\"Temperatur yang tinggi secara konsisten, curah hujan yang rendah dan penurunan yang signifikan dalam pengosongan air ke Poyang harus disalahkan,\" tambah laporan pusat pemantauan itu.','3',1),(7,'Emir Yanwardhana','11 Makanan Penyebab Kolesterol Tinggi, Mana yang Berbahaya?','2022-09-18','632735858f41dilustrasi-kolesterol-tinggi-freepik-1_169.jpeg','Makanan bisa menyehatkan tubuh juga bisa menimbulkan penyakit, terutama yang memiliki kolesterol tinggi. Pasalnya, hal itu dapat menyumbat pembuluh darah dan bisa memicu masalah jantung hingga stroke.<br><br>Melansir Healthline ada beberapa makanan yang memiliki kolesterol tinggi namun masih dapat memberikan manfaat baik bagi tubuh. Namun, ada juga jenis makanan yang harus dihindari.<br>Makanan yang digoreng sangat mengandung kolesterol tinggi sehingga harus dihindari jika memungkinkan. Pasalnya, makanan ini memiliki kandungan trans lemak sehingga dapat meningkatkan risiko penyakit jantung dan lainnya.<br>Tentunya makanan cepat saji memiliki kadar kolesterol yang tinggi, Makanan ini merupakan faktor utama risiko berbagai kondisi kronis seperti jantung, diabetes, hingga obesitas.','1',1),(8,'CNBC Indonesia','Duh! Proyek Tol Ini Ternyata Bermasalah, Yakin Beres 2024?','2022-09-19','6327c3564c8d6jalan-tol-semarang-demak-3_169.jpg','Sejumlah proyek infrastruktur tengah dikebut kabinet Presiden Joko Widodo (Jokowi). Yang ditargetkan bisa rampung dan beroperasi sebelum tahun 2024.\nHanya saja, sejumlah isu masih mewarnai proses pembangunan beberapa proyek. Meski kemudian ada yang sudah bisa diatasi, namun bisa saja mengganggu upaya pemenuhan target.\n<br><br>\nPembangunan salah satu ruas dari Tol Padang-Pekanbaru, yaitu Padang-Sicincin sempat terhenti sejak Desember 2021 karena masalah pembebasan lahan. Yang sempat alot karena melewati tanah adat.\n<br><br>\nMeski kini, menurut Direktur Operasi III Hutama Karya Koentjoro proses konstruksi sudah kembali dilakukan.\n<br><br>\n\"Kami berterima kasih pada semua pihak yang telah membantu penyelesaian pembebasan lahan pembangunan Padang-Sicincin. Hutama Karya segera memulai kembali konstruksinya,\" jelasnya dalam keterangan, dikutip Senin (19/9/2022).\n<br><br>\nTol Proyek Semarang-Demak 27 km juga terus dikejar pembangunannya sebelum 2024 mendatang. Dan merupakan bagian dari Proyek Strategis Nasional.\n<br><br>\nHanya saja ada permasalahan kondisi tanah musnah yang membuat daratan yang menjadi trase tol tertutup oleh air laut sehingga terlihat seperti fenomena yang terjadi pada Atlantis.\n<br><br>\nAkibat \'fenomena Atlantis\' ini, proses perhitungan dan pembebasan lahan menjadi kendala, sebab lahan itu sebelumnya dimiliki oleh sejumlah pihak namun kini sudah terendam air laut.\n<br><br>\nSaat ini pemerintah tengah memperkuat payung hukum untuk pembebasan lahan kondisi tanah musnah milik masyarakat yang terjadi pada seksi 1.','1',1),(9,'CNBC Indonesia','20 Pekerjaan Ini Terancam Hilang Dalam 5 Tahun, Siap-Siap Ya!','2022-09-19','6327c4572d5e13156b227-1600-4d4a-8b37-de98559fafcb_169.jpeg','Pada 2025, beberapa pekerjaan diprediksi hilang di masa depan, menyusul terus berkembangnya teknologi digital. Tidak dapat dipungkiri, kehadiran teknologi memiliki andil yang cukup besar dalam hidup manusia.<br><br>Dalam laporan tersebut, diperkirakan 85 juta pekerjaan tergeser oleh perubahan besar-besaran dalam pembagian tenaga kerja antar manusia dan mesin tahun 2025 mendatang.<br><br>Selain itu, terdapat jenis peran tertentu yang berkurang, namun akan ada kemunculan keterampilan serta pengalaman baru. Jumlahnya sekitar 97 juta peran pada 15 industri dan 26 ekonomi yang disurvei.<br><br>Dalam laporan tersebut, diperkirakan 85 juta pekerjaan tergeser oleh perubahan besar-besaran dalam pembagian tenaga kerja antar manusia dan mesin tahun 2025 mendatang.<br><br>Selain itu, terdapat jenis peran tertentu yang berkurang, namun akan ada kemunculan keterampilan serta pengalaman baru. Jumlahnya sekitar 97 juta peran pada 15 industri dan 26 ekonomi yang disurvei.','2',1);

--
-- Table structure for table `pageview`
--

DROP TABLE IF EXISTS `pageview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pageview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page` text NOT NULL,
  `userip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pageview`
--


--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id_tag` varchar(5) NOT NULL,
  `deskripsi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` VALUES ('1','Self Improvement'),('2','Leadership'),('3','Education');

--
-- Table structure for table `tbl_komentar`
--

DROP TABLE IF EXISTS `tbl_komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_komentar` (
  `komentar_id` int NOT NULL AUTO_INCREMENT,
  `artikel_id` int DEFAULT NULL,
  `parent_komentar_id` int NOT NULL,
  `komentar` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nama_pengirim` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`komentar_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` VALUES (11,7,0,'Artikel yang sangat bermanfaat','Dimas Alfata','2022-10-10 07:26:28'),(25,7,11,'Terimakasih kak Dimas Alfata :)','Admin','2022-10-18 04:25:24'),(29,7,0,'wah, ternyata makanan cepat saji punya kadar kolestrol yang tinggi ya','shabrina','2022-10-21 06:00:56'),(30,7,0,'Komen','Abah V1','2022-11-06 12:09:41'),(31,NULL,0,'Apakabar?','Abah V2','2022-11-06 12:27:31'),(32,9,0,'oooo','Abah V5','2022-11-06 12:33:24'),(33,9,32,'xcxzcxzc\r\nhj,hjkhjk','cxzcxz','2022-11-06 12:33:37'),(34,9,0,'Cek','Abah v6','2022-11-06 12:36:50'),(35,7,0,'Test','Abah v7','2022-11-06 12:37:28'),(36,7,35,'Cek Test','Abah v8','2022-11-06 12:37:44'),(37,4,0,'Cek Cek','Abah v9','2022-11-06 12:38:18');

--
-- Table structure for table `totalview`
--

DROP TABLE IF EXISTS `totalview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `totalview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page` text NOT NULL,
  `totalvisit` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalview`
--


--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `telp` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES (1,'fitrahtest@gmail.com','admin','fitrah','rahmadhani','L','082222333444'),(2,'dmsalfata@gmail.com','admin','dimas','alfata','L','088221043147');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 19:42:47
