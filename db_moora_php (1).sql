-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 09:28 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_moora_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` varchar(50) NOT NULL,
  `nama_alternatif` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`, `deskripsi`) VALUES
('1', 'Opo', 'Opo Opo Opo'),
('2', 'Xiomey', 'Xiaomey Xiaomey Xiaomey '),
('3', 'Zenpon', 'Zenpon Zenpon Zenpon'),
('4', 'Xpera', 'Xpera Xpera Xpera'),
('5', 'Glaxy', 'Glaxy GLaxy Glaxy'),
('6', 'Vio', 'Vio Vio Vio'),
('7', 'Ipone', 'Ipone Ipone Ipone');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif_kriteria`
--

CREATE TABLE `alternatif_kriteria` (
  `id_alternatif_kriteria` int(11) NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  `id_kriteria` varchar(50) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif_kriteria`
--

INSERT INTO `alternatif_kriteria` (`id_alternatif_kriteria`, `id`, `id_kriteria`, `nilai`) VALUES
(52, '11', '2', '22'),
(1, '1', '1', '5120'),
(2, '1', '2', '370'),
(51, '11', '1', '178'),
(3, '1', '3', 'Baik'),
(4, '1', '4', '1965000'),
(5, '1', '5', '450000'),
(6, '2', '1', '175'),
(7, '2', '2', '21'),
(50, '10', '5', '300000'),
(8, '2', '3', 'Cukup'),
(9, '2', '4', '1310000'),
(10, '2', '5', '510000'),
(11, '3', '1', '42'),
(12, '3', '2', '6'),
(49, '10', '4', '2950000'),
(13, '3', '3', 'Kurang'),
(14, '3', '4', '800000'),
(15, '3', '5', '250000'),
(48, '10', '3', 'Baik'),
(16, '4', '1', '7661'),
(17, '4', '2', '97'),
(18, '4', '3', 'Baik'),
(19, '4', '4', '8000000'),
(20, '4', '5', '1050000'),
(47, '10', '2', '259'),
(21, '5', '1', '1935'),
(22, '5', '2', '39'),
(46, '10', '1', '2164'),
(23, '5', '3', 'Baik'),
(24, '5', '4', '4075000'),
(25, '5', '5', '545000'),
(45, '9', '5', '700000'),
(26, '6', '1', '606'),
(27, '6', '2', '27'),
(28, '6', '3', 'Cukup'),
(29, '6', '4', '1650000'),
(30, '6', '5', '245000'),
(44, '9', '4', '6300000'),
(31, '7', '1', '3698'),
(32, '7', '2', '112'),
(43, '9', '3', 'Baik'),
(33, '7', '3', 'Baik'),
(34, '7', '4', '9415000'),
(35, '7', '5', '1250000'),
(42, '9', '2', '339'),
(36, '8', '1', '370'),
(37, '8', '2', '42'),
(41, '9', '1', '2170'),
(38, '8', '3', 'Baik'),
(39, '8', '4', '3525000'),
(40, '8', '5', '500000'),
(53, '11', '3', 'Cukup'),
(54, '11', '4', '1020000'),
(55, '11', '5', '350000'),
(56, '12', '1', '455'),
(57, '12', '2', '22'),
(58, '12', '3', 'Baik'),
(59, '12', '4', '1540000'),
(60, '12', '5', '420000'),
(61, '13', '1', '400'),
(62, '13', '2', '22'),
(63, '13', '3', 'Cukup'),
(64, '13', '4', '1140000'),
(65, '13', '5', '300000'),
(66, '14', '1', '159'),
(67, '14', '2', '19'),
(68, '14', '3', 'Cukup'),
(69, '14', '4', '930000'),
(70, '14', '5', '300000'),
(71, '15', '1', '130'),
(72, '15', '2', '15'),
(73, '15', '3', 'Baik'),
(74, '15', '4', '4300000'),
(75, '15', '5', '880000'),
(76, '16', '1', '358'),
(77, '16', '2', '32'),
(78, '16', '3', 'Baik'),
(79, '16', '4', '3200000'),
(80, '16', '5', '680000'),
(81, '17', '1', '858'),
(82, '17', '2', '55'),
(83, '17', '3', 'Baik'),
(84, '17', '4', '990000'),
(85, '17', '5', '80000'),
(86, '18', '1', '150'),
(87, '18', '2', '18'),
(88, '18', '3', 'Cukup'),
(89, '18', '4', '7100000'),
(90, '18', '5', '850000'),
(91, '19', '1', '498'),
(92, '19', '2', '63'),
(93, '19', '3', 'Baik'),
(94, '19', '4', '2700000'),
(95, '19', '5', '600000'),
(96, '20', '1', '5216'),
(97, '20', '2', '382'),
(98, '20', '3', 'Baik'),
(99, '20', '4', '3785000'),
(100, '20', '5', '295000'),
(101, '21', '1', '63'),
(102, '21', '2', '13'),
(103, '21', '3', 'Cukup'),
(104, '21', '4', '320000'),
(105, '21', '5', '480000'),
(106, '22', '1', '311'),
(107, '22', '2', '58'),
(108, '22', '3', 'Baik'),
(109, '22', '4', '1015000'),
(110, '22', '5', '125000'),
(111, '23', '1', '904'),
(112, '23', '2', '125'),
(113, '23', '3', 'Baik'),
(114, '23', '4', '9285000'),
(115, '23', '5', '1085000'),
(116, '24', '1', '546'),
(117, '24', '2', '78'),
(118, '24', '3', 'Baik'),
(119, '24', '4', '1605000'),
(120, '24', '5', '75000'),
(121, '25', '1', '637'),
(122, '25', '2', '70'),
(123, '25', '3', 'Baik'),
(124, '25', '4', '4600000'),
(125, '25', '5', '750000'),
(126, '26', '1', '4810'),
(127, '26', '2', '680'),
(128, '26', '3', 'Baik'),
(129, '26', '4', '705000'),
(130, '26', '5', '350000'),
(131, '27', '1', '3636'),
(132, '27', '2', '90'),
(133, '27', '3', 'Baik'),
(134, '27', '4', '1240000'),
(135, '27', '5', '300000'),
(136, '28', '1', '1326'),
(137, '28', '2', '66'),
(138, '28', '3', 'Cukup'),
(139, '28', '4', '1880000'),
(140, '28', '5', '350000'),
(141, '29', '1', '210'),
(142, '29', '2', '37'),
(143, '29', '3', 'Cukup'),
(144, '29', '4', '1500000'),
(145, '29', '5', '300000'),
(146, '30', '1', '1201'),
(147, '30', '2', '72'),
(148, '30', '3', 'Baik'),
(149, '30', '4', '2600000'),
(150, '30', '5', '570000'),
(151, '31', '1', '1006'),
(152, '31', '2', '21'),
(153, '31', '3', 'Baik'),
(154, '31', '4', '6000000'),
(155, '31', '5', '700000'),
(156, '32', '1', '2350'),
(157, '32', '2', '183'),
(158, '32', '3', 'Baik'),
(159, '32', '4', '2936000'),
(160, '32', '5', '400000'),
(161, '33', '1', '140'),
(162, '33', '2', '10'),
(163, '33', '3', 'Baik'),
(164, '33', '4', '3775000'),
(165, '33', '5', '550000'),
(166, '34', '1', '1315'),
(167, '34', '2', '65'),
(168, '34', '3', 'Baik'),
(169, '34', '4', '1419000'),
(170, '34', '5', '400000'),
(171, '35', '1', '70'),
(172, '35', '2', '15'),
(173, '35', '3', 'Cukup'),
(174, '35', '4', '1380000'),
(175, '35', '5', '50000'),
(176, '36', '1', '199'),
(177, '36', '2', '17'),
(178, '36', '3', 'Cukup'),
(179, '36', '4', '1250000'),
(180, '36', '5', '250000'),
(181, '37', '1', '129'),
(182, '37', '2', '55'),
(183, '37', '3', 'Cukup'),
(184, '37', '4', '1550000'),
(185, '37', '5', '380000'),
(186, '38', '1', '184'),
(187, '38', '2', '24'),
(188, '38', '3', 'Baik'),
(189, '38', '4', '1050000'),
(190, '38', '5', '450000'),
(191, '39', '1', '1658'),
(192, '39', '2', '659'),
(193, '39', '3', 'Baik'),
(194, '39', '4', '5544000'),
(195, '39', '5', '630000'),
(196, '40', '1', '73'),
(197, '40', '2', '23'),
(198, '40', '3', 'Baik'),
(199, '40', '4', '1544000'),
(200, '40', '5', '430000'),
(201, '41', '1', '186'),
(202, '41', '2', '30'),
(203, '41', '3', 'Baik'),
(204, '41', '4', '2850000'),
(205, '41', '5', '320000'),
(206, '42', '1', '231'),
(207, '42', '2', '30'),
(208, '42', '3', 'Cukup'),
(209, '42', '4', '1850000'),
(210, '42', '5', '350000'),
(211, '43', '1', '749'),
(212, '43', '2', '291'),
(213, '43', '3', 'Baik'),
(214, '43', '4', '6400000'),
(215, '43', '5', '600000'),
(216, '44', '1', '539'),
(217, '44', '2', '205'),
(218, '44', '3', 'Baik'),
(219, '44', '4', '5800000'),
(220, '44', '5', '700000'),
(221, '45', '1', '2451'),
(222, '45', '2', '925'),
(223, '45', '3', 'Baik'),
(224, '45', '4', '6905000'),
(225, '45', '5', '600000'),
(226, '46', '1', '480'),
(227, '46', '2', '182'),
(228, '46', '3', 'Baik'),
(229, '46', '4', '2900000'),
(230, '46', '5', '475000'),
(231, '47', '1', '176'),
(232, '47', '2', '28'),
(233, '47', '3', 'Cukup'),
(234, '47', '4', '1900000'),
(235, '47', '5', '375000'),
(236, '48', '1', '717'),
(237, '48', '2', '223'),
(238, '48', '3', 'Cukup'),
(239, '48', '4', '2550000'),
(240, '48', '5', '45000'),
(241, '49', '1', '126'),
(242, '49', '2', '53'),
(243, '49', '3', 'Baik'),
(244, '49', '4', '3000000'),
(245, '49', '5', '450000'),
(246, '50', '1', '350'),
(247, '50', '2', '153'),
(248, '50', '3', 'Baik'),
(249, '50', '4', '1050000'),
(250, '50', '5', '400000');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(50) NOT NULL,
  `nama_kriteria` varchar(100) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `bobot` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `tipe`, `bobot`) VALUES
('1', 'jumlah_santri', 'benefit', 2),
('2', 'jumlah_pengajar', 'benefit', 2),
('3', 'fasilitas', 'benefit', 2),
('4', 'biaya_masuk', 'cost', 2),
('5', 'spp', 'cost', 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pesantren`
--

CREATE TABLE `pesantren` (
  `id` int(11) NOT NULL,
  `nama_pesantren` varchar(100) NOT NULL,
  `jenis_pesantren` varchar(15) NOT NULL,
  `lembaga_agama` varchar(25) NOT NULL,
  `kota_kabupaten_pesantren` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jumlah_santri` int(100) NOT NULL,
  `jumlah_pengajar` int(100) NOT NULL,
  `fasilitas` varchar(100) NOT NULL,
  `biaya_masuk` int(100) NOT NULL,
  `spp` int(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `gambar1` varchar(100) NOT NULL,
  `gambar2` varchar(100) NOT NULL,
  `gambar3` varchar(100) NOT NULL,
  `santri_lk` int(100) NOT NULL,
  `santri_pr` int(100) NOT NULL,
  `tentang_pesantren` varchar(1000) NOT NULL,
  `fasilitas_pesantren` varchar(1000) NOT NULL,
  `pendidikan_pesantren` varchar(1000) NOT NULL,
  `nilai_optimasi` decimal(20,13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesantren`
--

INSERT INTO `pesantren` (`id`, `nama_pesantren`, `jenis_pesantren`, `lembaga_agama`, `kota_kabupaten_pesantren`, `alamat`, `jumlah_santri`, `jumlah_pengajar`, `fasilitas`, `biaya_masuk`, `spp`, `website`, `gambar1`, `gambar2`, `gambar3`, `santri_lk`, `santri_pr`, `tentang_pesantren`, `fasilitas_pesantren`, `pendidikan_pesantren`, `nilai_optimasi`) VALUES
(1, 'DARUL HUDA', 'Khalafi', 'Nahdlatul Ulama', 'Ponorogo', 'Jl. Ir. H. Juanda VI/38, Mayak, Tonatan, Ponorogo, Jawa Timur', 5120, 370, 'Baik', 1965000, 450000, 'http://www.darulhudamayak.net', 'darul_huda_ponorogo1.jpg', 'darul_huda_ponorogo2.jpg', 'darul_huda_ponorogo3.jpg', 2540, 2580, 'Pondok Pesantren Darul Huda adalah salah satu pondok pesantren yang terletak di kabupaten Ponorogo tepatnya di desa Tonatan kecamatan Ponorogo kabupaten Ponorogo. Pondok Pesantren Darul Huda Berdiri sejak tahun 1968 dengan menggunakan metode Salafiyatil Haditsah dengan maksud bahwa Pondok Pesantren Darul Huda melestarikan hal-hal lama yang baik dan mengembangkan hal-hal baru yang lebih baik dan bermanfaat.', 'KBIH (Kelompok Bimbingan Ibadah Haji) Al-Haromain, Gedung Sekolah, Asrama, Sarana Belajar Audio Visual, Lapangan Olah Raga, Koperasi, Kantin, Rental Komputer, Perpustakaan, Lab. Komputer, Lab. IPA, Lab. Bahasa, Unit Simpan Dan Pertelekomunikasian (USP), Wesel Pos, Taman Bacaan (Papan Koran, Mading, Buletin), Photo Copy, POSKESTREN (Pos Kesehatan Pesantren), Kamar Tahfidz, Unit Penjahitan (putri), Kamar Khusus Pendalaman Kitab Kuning (putra), dan Kendaraan Operasional Pondok.', 'Madrasah Miftahul Huda (MMH), Madrasah Tsanawiyah (MTs) Darul Huda, Madrasah Aliyah ( MA ) Darul Huda, Studi Ilmu Agama Islam (IAGA), Studi Ilmu Sosial (IPS), Studi Ilmu Alam (IPA)', '1.1122637589829'),
(2, 'SABILUR ROSYAD', 'Khalafi', 'Nahdlatul Ulama', 'Sidoarjo', 'Jl. Hang Tuah (Bandaran) No 22 Sidoarjo, Kab. Sidoarjo, Jawa Timur', 175, 21, 'Cukup', 1310000, 510000, 'http://www.sabilurrosyad.n.nu', 'sabilur-rosyad-sidoarjo1.jpg', 'sabilur-rosyad-sidoarjo2.jpg', 'sabilur-rosyad-sidoarjo3.jpg', 95, 80, 'Pondok Pesantren Mambaul Ulum Sukodadi Paiton Probolinggo, didirikan oleh KH. Abuhasan Asy’ari pada tahun 1938. Pondok ini didirikan dalam rangka memenuhi kebutuhan ummat Islam, yang pada saat itu ( dalam suasana penjajahan Belanda ), kesulitan mencari tempat untuk mempelajari ajaran agama Islam. Disamping itu, beliau juga berniat, dalam rangka melanjutkan perjuangan para Masyayekh ( guru agama ) dan Walisongo, serta ikut menata masyarakat Islam agar lebih memahami ajaran agamanya.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, perpustakaan, gudang, kamar mandi/wc, klinik kesehatan.', 'TPQ, TK, SD, SMP, SMK Plus, MADIN', '-0.1069202376277'),
(3, 'SABILUNNAJAH', 'Khalafi', 'Nahdlatul Ulama', 'Sidoarjo', 'Sekelor Utara, Watutulis, Prambon, Kabupaten Sidoarjo, Jawa Timur', 42, 6, 'Kurang', 800000, 250000, '', 'sabilunnajah-sidoarjo1.jpg', 'sabilunnajah-sidoarjo2.jpg', 'sabilunnajah-sidoarjo3.jpg', 0, 42, 'Pondok Pesantren SABILUNNAJAH berdiri pada 06 Juli 1975 atas inisiatif mbah Nyai Hj. Khoriyah binti KH. HASYIM ASY\'ARI (PP. Tebuireng, Jombang).', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, Lab. Komputer, lapangan, perpustakaan, gudang, kamar mandi/wc, klinik kesehatan.', 'KB. RA, PAUD, TK, Madrasah Diniyah, Madrasah Tsanawiyah, Madrasah Aliyah (Akreditasi B. BAN), Universitas terbuka.', '-0.0735209439415'),
(4, 'MAMBAUL ULUM BATA-BATA', 'Khalafi', 'Nahdlatul Ulama', 'Pamekasan', 'Panaan, Palengaan, Kabupaten Pamekasan, Jawa Timur, Indonesia, Kab. Pamekasan, Jawa Timur', 7661, 97, 'Baik', 8000000, 1050000, 'http://www.bata-bata.net', 'bata-bata-pamekasan1.jpg', 'bata-bata-pamekasan2.jpg', 'bata-bata-pamekasan3.jpg', 3804, 3857, 'Pondok pesantren Mambaul Ulum Bata-Bata didirikan oleh RKH .Abd Majid yang tak lain merupakan putra RKH. Abd Hamid bin RKH Itsbat, Banyuanyar pada tahun 1943 M / 1363 H, Kepemimpinan RKH Abd Majid berlangsung selama 14 tahun terhitung mulai tahun 1943 M sampai dengan 1957 M.', 'Asrama santri yang dilengkapi dengan auditorium, gedung madrasah, wc umum, dan beberapa bangunan dalam tahap penyelesaian; gedung JPKS (Jaminan pelayanan kesehatan santri) asrama yatama (anak yatim), kamar mandi santri, dan kantor pondok pesantren yang sekaligus digandeng dengan gedung ma’had tahfidzulqur’an dan empat asrama santri. Sedangkan dibagian putri juga banyak bangunan yang telah berhasil didirikan diantaranya asrama santri yang digandeng dengan auditorium serta pembangunan gedung sekolah untuk madrasah Aliyah dan madrasah Tsanawiyah.', 'Pondok Pesantren mambaul ulum bata-bata, Madrasah Ibtidaiyah, Madrasah Tsanawiyah, Madrasah Aliyah, SMK.', '0.3682394416605'),
(5, 'AL-KARIMI', 'Khalafi', 'Nahdlatul Ulama', 'Gresik', 'Tebuwung, Dukun, Kec. Gresik, Indonesia, Kab. Gresik, Jawa Timur', 1935, 39, 'Baik', 4075000, 545000, '', 'al-karimi-gresik1.jpg', 'al-karimi-gresik2.jpg', 'al-karimi-gresik3.jpg', 687, 1248, 'Menyibak asal mula berdirinya pondok pesantren Al karimi erat kaitannya dengan latar belakang KH Abdul Karim sebagai pendiri Pondok Pesantren Al Karimi. Beliau adalah putra dari pasangan suami istri KH Abdul Qohar bin Darus dan Sarwilah binti Mursilah asli dari Desa Drajat Paciran Lamongan yang dilahirkan pada tahun 1238 H/1822 M.', 'Ruang belajar dan Asrama Pesantren terintegrasi yang religius, Laboratorium bahasa berstandar nasional, Laboratorium Informatika dan komputer berbasi IT, Madrasah dilengkapi Wifi, Perpustakaan Madrasah, Laboratorium IPA terpadu, Ruang pembelajaran Audio Visual dilengkapi LCD Proyektor, Tempat Ibadah Musholah dan Masjid, Koperasi Siswa, Lapangan Olah raga, Tempat Parkir yang aman dan nyaman, Sistem keamanan terpadu, Testimoni, Potret Kegiatan Siswa.', 'Pondok Pesantren Al Karimi, RA Al Karimi, Madrasah Ibtidaiyah Al Karimi, Madrasah Tsanawiyah Al Karimi, Madrasah Aliyah Al Karimi, SMP Al Karimi, SMA Al Karimi.', '0.0455547653545'),
(6, 'AL-JAYADI', 'Khalafi', 'Nahdlatul Ulama', 'Madiun', 'Ds Ketandan, Dagangan, Madiun, Jawa Timur', 606, 27, 'Cukup', 1650000, 245000, '', 'al-jayadi-madiun1.jpg', 'al-jayadi-madiun2.jpg', 'al-jayadi-madiun3.jpg', 283, 323, 'Pondok Pesantren PP Al Jayadi, NSPP 510035190149 berdiri pada tahun 1950. Pondok Pesantren PP Al Jayadi beralamat di Ds Ketandan, Dagangan Madiun, , Kabupaten Madiun, Propinsi Jawa Timur. Jumlah santi di Pesantren PP Al Jayadi adalah 606, dengan perincian jumlah santri pria berjumlah 283 orang dan santri perempuan berjumlah 323 orang, dengan tenaga pengajar berjumlah 27 orang.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, gudang, kamarmandi/wc, klinik kesehatan.', 'Pondok Pesantren Al Jayadi, Madrasah Tsanawiyah, Madrasah Aliyah, SMK.', '0.0764751467378'),
(7, 'TEBUIRENG', 'Khalafi', 'Nahdlatul Ulama', 'Jombang', 'Jl. Irian Jaya 10 Tebuireng, Kab. Jombang, Jawa Timur', 3698, 122, 'Baik', 9415000, 1250000, 'http://www.tebuireng.org', 'tebuireng-jombang1.jpg', 'tebuireng-jombang2.jpg', 'tebuireng-jombang3.jpg', 3261, 437, 'Tebuireng adalah nama sebuah pedukuhan yang termasuk wilayah administratif Desa Cukir, Kecamatan Diwek, Kabupaten Jombang, berada pada kilometer 8 dari kota Jombang ke arah selatan. Nama pedukuhan seluas 25,311 hektar ini kemudian dijadikan nama pesantren yang didirikan oleh Kiai Hasyim.', 'Masjid, pesantren, asrama, kantor, dapur, gedung sekolah, lapangan, koperasi santri, aula, perpustakaan, laboratorium komputer, laboratorium bahasa, praktikum bengkel, gedung teater, minimarket, lapangan futsal, lapangan voli, lapangan basket, gudang, kamar mandi, klinik kesehatan.', 'SMP, SMU, SMK, Madrasah Tsanawiyah, Madrasah Aliyah, Mualimin, Sekolah unggulan TrenSains.', '-0.3820076270483'),
(8, 'AR-ROHMAH', 'Khalafi', 'Nahdlatul Ulama', 'Ngawi', 'Bulakrejo Rt 10/06 Katikan Kedunggalar, Ngawi, Jawa Timur', 370, 42, 'Baik', 3525000, 500000, 'http://www.arrohmahngawi.blogspot.com', 'ar-rohmah-ngawi1.jpg', 'ar-rohmah-ngawi2.jpg', 'ar-rohmah-ngawi3.jpg', 0, 370, 'Pondok Pesantren Islam Ar-Rohmah hadir ditengah-tengah umat sebagai lembaga Pendidikan yang siap turut andil dalam mendidik dan mengarahkan anak-anak (terkhusus putri) agar mereka dapat terhindar dari pengaruh negatif zaman yang serba modern ini, dan dapat menjadi generasi yang berakhlaq Qur\'ani. Pada awal didirikan, Pondok Pesantren Islam Putri Ar-Rohmah berdiri di atas tanah milik bapak Untung di desa Terbono Selosari Kabupaten Magetan dengan luas tanah hanya 100 M² pada tanggal 15 Dzulqo\'dah 1424 H yang bertepatan dengan tanggal 19 Januari 2004.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'PAUD, TKIT, SDIT, Kuliyyatul Mu’allimat Al-Islamiyyah(KMA) tingkat Tsanwaiyah, Unit KMT tingkat wustho, Mengadakan ujian nasional wajar dikdas (paket B) mandiri, Unit KMT tngkat ulya, Kulliyatul Mu’allimat Al-Islamiyah (KMA) tingkat ‘Aliyah, Mengadakan ujian nasional paket C mandiri dan ujian pesantren Insyaallah program paket C diganti dengan PMU (pendidikan Menengah Universal), Unit Takhosus selama 1 tahun, Ma’had Sighor.', '-0.1069699516516'),
(9, 'WALI SONGO', 'Khalafi', 'Nahdlatul Ulama', 'Ponorogo', 'Jalan Sunan Kali Jaga Rt 01 Rw 02 Ngabar Siman Ponorogo, Jawa Timur', 2170, 339, 'Baik', 6300000, 700000, 'http://www.ppwalisongo.id/', 'walisongo-ponorogo1.jpg', 'walisongo-ponorogo2.jpg', 'walisongo-ponorogo3.jpg', 1033, 1137, 'Pondok Pesanten Wali Songo didirikan pada 4 April 1961 oleh KH. Muhammad Thoyyib dan dibantu oleh ketiga putranya yaitu KH. Ahmad Thoyyib KH. Ibrahim Thoyyib dan KH. Ishaq Thoyyib. Cita-cita mendirikan pondok pesantren telah lama ada dibenak KH. Muhammad Thoyyib dan telah dirintis jalan ke arah realisasinya. Semenjak tahun 1920 beliau telah menjadi Kiyai di Desa Ngabar, yang selain menjadi imam masjid juga mengajar mengaji Al Qur’an di suraunya yang dikenal dengan Langgar Blok Kidul ( Surau Kelompok Selatan).', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Tarbiyatul Athfal Al-Manar Al-Islamiyah setingkat RA atau TK, Madrasah Ibtidaiyah Mamba\'ul Huda Al-Islamiyah setingkat SD, Tarbiyatul Mu\'allimin Al-Islamiyah dan Tarbiyatul Mu\'allimat Al-Islamiyah sebagai pendidikan menengah setingkat MTs/MA atau SMP/SMA, perguruan tinggi bernama Istititut Agama Islam Riyadhlotul Mujahidin dengan tiga fakultas yaitu Fakultas Tarbiyah, Fakultas Syariah dan Fakultas Dakwah./red.sekpon.', '0.2057882396925'),
(10, 'MAMBA\'UL MA\'ARIF', 'Khalafi', 'Nahdlatul Ulama', 'Jombang', 'Jl. KH. Bisri Syansuri no 81-83, Denanyar 61416, Jombang, Jawa Timur', 2164, 259, 'Baik', 2950000, 300000, 'https://www.asadenanyar.com/', 'mambaul-maarif-jombang1.jpg', 'mambaul-maarif-jombang2.jpg', 'mambaul-maarif-jombang3.jpg', 1000, 1164, 'Nama pondok pesantren Mamba’ul Ma’arif, yang lebih dikenal dengan sebutan Pondok Denanyar, memang sudah tak asing lagi buat orang Indonesia – lebih-lebih bagi masyarakat Jawa Timur. Apalagi tak sedikit tokoh-tokoh yang berkaliber nasional, lahir dari pesantren ini. Tapi siapa sangka kalau dulu daerah ini merupakan tempat yang jauh dari sentuhan moralitas agama.', 'Pondok pesantren ini memiliki pondok putra dan putri terpisah, gedung pondok dilengkapi ini dilengkapi fasilitas laboraorium komputer, lembaga bahasa inggris dan bahasa arab, sekolah kaligrafi, sekolah dari PAUD, madrasah diniyah-madrasah tsanawiyah-madrasah Aliyah, Masjid, dan lapangan serbaguna, Kantor Pusat Yayasan Mamba\'ul Ma\'arif, Auditorium/Aula, Asrama Santri.', 'Unit pendidikan formal dan nonformal, yaitu: PAUD ( Pendidikan anak usia dini ) Mambaúl Maárif, Madrasah Tsanawiyah Mambaúl Maárif ( Mu\'allimin / Mu\'allimat ), Madrasah Tsanawiyah Negeri, Madrasah Aliyah Mambaúl Maárif ( Mu\'allimin / Mu\'allimat ), Madrasah Aliyah Negeri, SMK Bisri Syansuri, Madrasah Diniyah Mamba\'ul Ma\'arif, LBAI ( Lembaga Bahasa Arab dan Inggris ), SAKAL ( Sekolah Kaligrafi Al - Qurán ), Taman pendidikan Al - Qurán ( TPQ ).', '0.5641686500553'),
(11, 'AN-NUUR', 'Salafi', 'Nahdlatul Ulama', 'Ponorogo', 'Dusun Tampo II RT 38 RW 13 Trisono, Babadan, Ponorogo, Jawa Timur', 178, 22, 'Cukup', 1020000, 350000, 'https://www.annuurtrisono.sch.id/', 'an-nuur-ponorogo1.jpg', 'an-nuur-ponorogo2.jpg', 'an-nuur-ponorogo3.jpg', 93, 85, 'Pondok pesantren An nuur didirikan oleh K.H. Moh. Djamhari Ghozali Anwar pada tahun 1985. Bertempat dipinggiran kota perbatasan Kota Madiun Ponorogo, tepatnya di Dusun Tampo II RT 38 RW 13 Kelurahan Trisono Babadan Ponorogo. Berawal dari Majlis dzikir yang bernama Asmaul Haq dan kegiatan pencak silat Bunga Islam yang keberadaanya dirasakan manfaatnya oleh masyarakat sekitar. Terbukti dengan semakin banyaknya santri yang berguru kepada Beliau.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, laboratorium komputer, perpustakaan, gudang, kamarmandi/wc, klinik kesehatan.', 'Ma\'hadiyah : Tahfidzul Qur\'an, Kajian kitab salaf, Pendidikan Guru Pengajar, Majlis dzikir, Pelatihan kepemimpinan, Pencak silat.\r\nMadrasiyyah : MTs / Madrasah Tsanawiyah, MA / Madrasah Aliyah, Madrasah Diniyah Awwaliyah, Madrasah Diniyah Wustha.\r\nBadan niaga : Koperasi, Rumah Produksi, Pertanian mandiri, Sanggar seni dan budaya.', '0.0008098360364'),
(12, 'AL-AMIN', 'Khalafi', 'Nahdlatul Ulama', 'Ponorogo', 'Jl. Nusa Indah, Ds. Gandu, Kec. Mlarak, Ponorogo, Jawa Timur', 455, 22, 'Baik', 1540000, 420000, '', 'al-amin-ponorogo1.jpg', 'al-amin-ponorogo2.jpg', 'al-amin-ponorogo3.jpg', 215, 240, 'Pondok Pesantren AL AMIN, NSPP 510335020005 berdiri pada tahun 1994. Pondok Pesantren AL AMIN beralamat di Jl. Nusa Indah, Ds. Gandu, Kec. Mlarak Ponorogo, Propinsi Jawa Timur. Jumlah santi di Pesantren AL AMIN adalah 455, dengan perincian jumlah santri pria berjumlah 215 orang dan santri perempuan berjumlah 240 orang, dengan tenaga pengajar berjumlah 22 orang.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa,laboratorium tata boga, gudang, kamar mandi/wc, klinik kesehatan.', 'Lembaga Kesejahteraan Sosial Anak di Panti Asuhan Yatim Piatu AL-AMIN, Taman Pendidikan Al-Qur\'an AL-AMIN, Madrasah Diniyah Takmiliyah Awaliyah AMINULQUR\'AN, Program Kelompok Belajar Paket A Setara SD, Paket B Setara SMP, dan Paket C Setara SMA, SMK Raden Katong dengan program keahlian Tata Boga Patiseri.', '0.0688647544859'),
(13, 'MAMBA\'UL HUDA', 'Khalafi', 'Nahdlatul Ulama', 'Ponorogo', 'Jl. Achmad Hasyim, Ds. Sendang, Kec. Jambon, Ponorogo, Jawa Timur', 400, 22, 'Cukup', 1140000, 300000, 'http://mamambaulhuda.sch.id/', 'mambaul-huda-ponorogo1.jpg', 'mambaul-huda-ponorogo2.jpg', 'mambaul-huda-ponorogo3.jpg', 170, 230, 'Pondok Pesantren Mamba’ul Huda berdiri pada hari ahad kliwon, tanggal 1 Muharram tahun 1418 H yang bertepatan pada tahun 1997 M di desa sendang jambon ponorogo, dengan pengasuh adalah Kyai M. Imam Maksum (alumni pondok pesantren “Darul Abror” Sukorejo, Bangurejo, Banyuwangi, Jawa Timur). Sedangkan program pendidikan dan pengajarannya berorientasikan untuk mempersiapkan kader – keder Islam yang siap berjuang di segala lini kehidupan di sepanjang masa.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, gudang, kamarmandi/wc, klinik kesehatan.', 'Pondok Pesantren Mamba’ul Huda, Madrasah Ibtidaiyah, Madrasah Tsanawiyah, Madrasah Aliyah.', '0.0497184820533'),
(14, 'ALI MUTTAQIN', 'Khalafi', 'Nahdlatul Ulama', 'Ponorogo', 'Jl. Parang Menang No. 43 Ds. Patihan Wetan, Kec. Babadan, Ponorogo, Jawa Timur', 159, 19, 'Cukup', 930000, 300000, '', 'ali-muttaqin-ponorogo1.jpg', 'ali-muttaqin-ponorogo2.jpg', 'ali-muttaqin-ponorogo3.jpg', 96, 63, 'Pondok Pesantren Ali Muttaqin, NSPP 510035020021 berdiri pada tahun 1997. Pondok Pesantren Ali Muttaqin beralamat di Jl. Parang Menang No. 43 Ds. Patihan Wetan, Kec. Babadan, Kabupaten Ponorogo, Propinsi Jawa Timur. Jumlah santi di Pesantren Ali Muttaqin adalah 159, dengan perincian jumlah santri pria berjumlah 96 orang dan santri perempuan berjumlah 63 orang, dengan tenaga pengajar berjumlah 19 orang.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, gudang, kamarmandi/wc, klinik kesehatan.', 'Pondok Pesantren Ali Muttaqin, Madrasah Tsanawiyah, Madrasah Aliyah.', '0.0274975268467'),
(15, 'AN NUR', 'Khalafi', 'Muhammadiyah', 'Sidoarjo', 'Jl. H. Ahmad Dahlan No. 1, Penatarsewu, Tanggulangin, Sidoarjo, Jawa Timur', 130, 15, 'Baik', 4300000, 880000, 'https://ponpesannursidoarjo.wordpress.com/', 'an-nur-muhammadiyah-sidoarjo1.jpg', 'an-nur-muhammadiyah-sidoarjo2.jpg', 'an-nur-muhammadiyah-sidoarjo3.jpg', 78, 52, 'Pondok Pesantren “An-Nur Muhammadiyah Boarding School” (PPN-MBS) Sidoarjo menempati tanah wakaf milik Muhammadiyah. PPN-MBS Sidoarjo tersebut telah dirintis berdirinya sejak akhir tahun 2013 oleh pengurus KBIH “Jabal Nur” Sidoarjo periode tahun 2011-2016 dan pada tahun 2015 mulai eksis dengan membuka penerimaan santri baru untuk jenjang Sekolah Menengah Pertama (SMP).', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren An Nur, Madrasah Tsanawiyah.', '-0.4326565861811'),
(16, 'AL FATTAH', 'Khalafi', 'Muhammadiyah', 'Sidoarjo', 'Desa Banjarsari Rt 4 Rw 1, Buduran, Sidoarjo, Jawa Timur', 358, 32, 'Baik', 3200000, 680000, 'https://ponpesalfattahsidoarjo.com/', 'al-fattah-muhammadiyah-sidoarjo1.jpg', 'al-fattah-muhammadiyah-sidoarjo2.jpg', 'al-fattah-muhammadiyah-sidoarjo3.jpg', 218, 140, 'Cikal bakal Pondok Pesantren berawal dari adanya langgar yang disebut dengan nama langgar tengah, dinamakan langgar tengah karena letaknya di tengah-tengah, disebelah timur terdapat masjid kemudian disebelah barat terdapat langgar. Pada tahun 1976 Langgar tengah digunakan sebagai aktivitas pondok, yang datang untuk mengaji yakni masyarakat sekitar, pada saat itu yang mengajar yakni KH. Ahmad Subroto.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa,laboratorium ipa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Al-Fattah, Madrasah Tsanawiyah, Madrasah Aliyah, Madrasah Diniyah, Takhassus, Tahfidz Al-Qur’an.', '-0.1923932870166'),
(17, 'AL-KHOZINY', 'Khalafi', 'Nahdlatul Ulama', 'Sidoarjo', 'Desa Buduran Kabupaten Sidoarjo, Jawa Timur', 858, 55, 'Baik', 990000, 80000, 'http://www.alkhoziny.id/', 'al-khoziny-sidoarjo1.jpg', 'al-khoziny-sidoarjo2.jpg', 'al-khoziny-sidoarjo3.jpg', 750, 108, 'Pondok pesantren Al Khoziny berdiri pada tahun 1927. dibangun di atas tanah milik KHR. Mohammad Abbas Khozin yang terletak di desa Buduran Sidoarjo. Lokasinya cukup strategis, karena berada sekitar 50 m di tepi jalan raya utama Sidoarjo-Surabaya. PP ini dibangun atas prakarsa dan insiatif KHR. Khozin Khoiruddin, ayahanda  KHR. Mohammad Abbas. Beliau melihat bahwa masyarakat sekitar sangat membutuhkan bimbingan dan pengarahan di bidang agama, karena masyarakat di kelurahan Buduran saat itu nyaris tidak tersentuh oleh ajaran-ajaran Islam.', '35 ruang belajar untuk putra dan putri, empat ruang pimpinan PP, tiga ruang pimpinan madrasah, dua ruang guru, tiga ruang administrasi, tiga ruang pertemuan, satu ruang keterampilan, satu ruang laboratorium komputer, ruang kesenian, mushalla, ruang BP3, 34 ruang asrama putera, 23 ruang asrama puteri, tiga unit rumah pengasuh, 29 unit kamar mandi dan WC.', 'Pondok Pesantren Al-Khoziny, Madrasah Ibtidaiyah, Madrasah Tsanawiyah, Madrasah Aliyah, Institut Agama Islam, Akta IV, Pasca Sarjana.', '0.3872330409632'),
(18, 'MBS BARENG', 'Khalafi', 'Muhammadiyah', 'Jombang', 'Sawunggaling Gg V, Mojotengah, Bareng, Jombang, Jawa Timur', 150, 18, 'Cukup', 7100000, 850000, 'http://mbsjombang.blogspot.com/', 'mbs-muhammadiyah-jombang1.jpg', 'mbs-muhammadiyah-jombang2.jpg', 'mbs-muhammadiyah-jombang3.jpg', 97, 53, 'MBS Jombang mulai dibuka tahun 2014, merupakan program khusus dari SMP Muhammadiyah 1 Jombang. MBS Jombang menempati sebuah komplek pondok yang sebelumnya sudah ditutup oleh pemiliknya lalu diwakafkan ke PDM Jombang beserta sawah seluas 2,5 hektar. Penyerahan wakaf ke Muhammadiyah Jombang itu diterima oleh PDM Jombang pada bulan Desember 2011.', 'Masjid, Asrama, Ruang Kelas, Rumah Ustadz, Rumah Pengasuh, MCK, Dapur Umum, Ruang Makan, Ruang Tamu, Ruang Penginapan Tamu.', 'Pondok Pesantren Mbs Bareng, Madrasah Tsanawiyah.', '-0.7211297902221'),
(19, 'BAHRUL ULUM', 'Khalafi', 'Nahdlatul Ulama', 'Jombang', 'Jl. Kyai Haji Wahab Hasbullah 24, Tambak Rejo, Kab. Jombang, Jawa Timur', 498, 63, 'Baik', 2700000, 600000, 'https://www.tambakberas.com/', 'bahrul-ulum-jombang1.jpg', 'bahrul-ulum-jombang2.jpg', 'bahrul-ulum-jombang3.jpg', 265, 233, 'Pondok Pesantren Bahrul Ulum Tambakberas Jombang merupakan salah satu pondok pesantren tertua dan terbesar di Jawa Timur. Hingga sekarang pondok ini masih survive di tengah kecenderungan kuat sistem pendidikan formal. Dengan kultur mandiri, dekat dengan masyarakat, sederhana, dan adaptif, Pondok Pesantren Bahrul Ulum Tambakberas Jombang terus melakukan pengembangan dan perubahan seiring dengan dinamika perkembangan dan tuntutan global, dengan tetap mempertahankan nilai-nilai luhur kepesantrenan, berpegang pada prinsip al-muhafadhah ‘al al-qadim al-shalih wa al-akhdhu bi al-jadid al-ashlah dengan di bawah sinaran prinsip Aqidah Ahlussunnah Wal-Jama’ah ala NU.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Play Group Al-Firdaus Bahrul ‘Ulum, Taman kanak-kanak (TK) Muslimat, Madrasah Ibtidaiyah (MI), Madrasah Ibtidaiyah Program Khusus (MI-PK), Madrasah Ibtidaiyah Lil Jami’ah/Sekolah Persiapan PT (SPPT), Madrasah Tsanawiyah Bahrul ‘Ulum (MTs Bahrul ‘Ulum ), Madrasah Tsanawiyah Negeri (MTsN), Sekolah Menengah Pertama Bahrul ‘Ulum (SMP Bahrul ‘Ulum), Madrasah Aliyah Negeri (MAN), Madrasah Aliyah Bahrul ‘Ulum (MA-BU), Sekolah Menengah Umum Bahrul ‘Ulum (SMU-BU), Sekolah Teknik Menengah Bahrul ‘Ulum (STM Bahrul ‘Ulum), Madrasah Mualimin Mualimat Atas Bahrul ‘Ulum (MMA- Bahrul ‘Ulum) MAK- Bahrul ‘Ulum Sekolah Tinggi Agama Islam Bahrul ‘Ulum (STAI- Bahrul ‘Ulum) Jurusan Pendidikan Bahasa Arab dan Pendidikan Agama Islam, Akper-BU, STIMIK-BU, SMK-TI, STIKES-BU.', '-0.0548759959228'),
(20, 'DARUL ULUM', 'Khalafi', 'Nahdlatul Ulama', 'Jombang', 'Desa Rejoso, Kecamatan Peterongan, Jombang, Jawa Timur, Kab. Jombang, Jawa Timur', 5216, 382, 'Baik', 3785000, 295000, 'https://ponpesdarululum.id/', 'darul-ulum-jombang1.jpg', 'darul-ulum-jombang2.jpg', 'darul-ulum-jombang3.jpg', 2402, 2814, 'Pemimpin pertama yang mendirikan pendidikan ini, yaitu KH. Tamim Irsyad dibantu KH. Cholil sebagai mitra kerja dan sekaligus menjadi menantunya. Periode pertengahan (antara tahun 1937 - 1958 M) Tahun 1937, Kyai Cholil wafat. Dia digantikan anaknya, KH. Dahlan Cholil yang sempat mengenyam pendidikan agama di Makkah seusai nyantri di Tebuireng. “Kyai Romly dan Kyai Dahlan lah yang kemudian memimpin perkembangan pondok pesantren pada periode pertengahan (1937-1958),” jelas perempuan kelahiran Jombang, 26 Februari 1969 itu.', '14 Gedung Sekolah Formal, 2 Gedung Keterampilan, 9 Aula Pertemuan, 1 Masjid Utama dan 11 mushola, 2 Kantor Pusat dan 13 Kantor Unit, 34 Gedung Asrama (234 Kamar), 13 Unit Kamar Mandi, 2 Unit Pompa Air Besar, 50 Pompa Air Kecil, 2 Lapangan Sepak Bola, 8 Lapangan Bulu Tangkis, 8 Lapangan Basket, 13 Lapangan Tenis Meja, 2 Unit Kantor bank (Bank Jatim dan Bank BRI Syariah), 11 Sarana Wartel, 6 Sarana Warnet, 1 Pusat Komperasi dan 2 Unit Usaha Koperasi, 2 Unit Usaha Kesehatan Pondok (UKP), 4 Kantin Makan, 10 Laboratorium Biologi, Fisika, dan Kimia, 8 Laboratorium Bahasa dan Audio Visual, 1 Unit Laboratorium Audio dan Video Editing, 1 Laboratorium Komputer Pusat dan 18 Laboratorium Komputer Unit Pendidikan (Kurang lebih 563 unit komputer).', 'MIN Darul Ulum, MTs N Darul Ulum, Mts PK Darul Ulum, SLTP 1 Darul Ulum, SLTP N 3 Darul Ulum, MAN Darul Ulum, MAK Darul Ulum, SMA 1 Darul Ulum, SMA 2 Darul Ulum unggulan BPPT, SMA 3 Darul Ulum, SMK 1 Darul Ulum, SMK 2 Darul Ulum, SMK Telkom Darul Ulum, UNIPPDU (Universitas Pesantren Tinggi Darul Ulum), UNDAR (Universitas Darul Ulum).', '1.0885295365726'),
(21, 'AL-MUNAWWAROH', 'Khalafi', 'Muhammadiyah', 'Malang', 'JL. Kyai sofyan suyuf 32 Kedungkandang, Malang, Jawa Timur', 63, 13, 'Cukup', 320000, 480000, '', 'al-munawwaroh-muhammadiyah-malang1.jpg', 'al-munawwaroh-muhammadiyah-malang2.jpg', 'al-munawwaroh-muhammadiyah-malang3.jpg', 48, 15, 'Dipimpin oleh Kepala sekolah yang bernama M. Budiaji S.Pdi. Pak Budiaji dulunya adalah alumnus Pesantren modern gontor di Ponorogo. Ustadz Hamzah Utama sebagai guru senior dan juga Muballigh Muhammadiyah turut membantu mengajar anak-anak. Dalam kesehariannya ustadz hamzah mengajar Ilmu kalam dan siroh nabawiyah. Pembina Tahfidz Quran di MTs-MA Muhammadiyah adalah bu Anissa Rosyidah, S.Ag (alumni MAN 3 malang). Sementara Pengajar bhs Arab: Zahro Mufidah M.Pd.I (Pascasarjana Pendidikan bahasa Arab di UIN Malang), Ustadz Syuhada\' (Aumni Pesantren modern Gontor) & Diah ekasari (Alumni Pendidikan bahasa Arab di universitas Negeri Malang).', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, perpustakaan, laboratorium komputer, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Al-Munawwaroh, Madrasah Tsanawiyah, Madrasah Aliyah.', '-0.0437728105463'),
(22, 'AL-KHOIROT', 'Salafi', 'Nahdlatul Ulama', 'Malang', 'Jl. KH Syuhud Zayyadi No. 01, Kab. Malang, Jawa Timur', 311, 58, 'Baik', 1015000, 125000, '', 'al-khoirot-malang1.jpg', 'al-khoirot-malang2.jpg', 'al-khoirot-malang3.jpg', 223, 88, 'Pondok Pesantren Al-Khoirot didirikan oleh KH. Syuhud Zayyadi pada 1963. Beliau merupakan bagian dari keluarga besar Bany Itsbat (Bani Isbat) dengan silsilah nasab sampai ke salah satu Walisongo (Sunan Drajad / Sunan Ampel / Sunan Giri). Pesantren sejak awal didirikan sampai terjadinya tiga kali pergantian pimpinan atau pengasuh. Dari sistem salaf murni sampai sistem kombinasi salaf – modern. Sejak tahun 1963 sampai saat ini.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pendidikan yang ia pakai merupakan okmbinasi dari Empat jenis pola pendidikan yaitu pendidikan formal, pendidikan bahasa Arab modern, kajian kitab kuning serta pendidikan tingkat madrasah diniyah. Selain itu di pondok pesantren ini juga mempunyai program tambahan yaitu Tahfidzul Qur’an.', '0.2881901405761'),
(23, 'AL-RIFA\'IE', 'Khalafi', 'Nahdlatul Ulama', 'Malang', 'Jl. Raya Ketawang No. 01, Kab. Malang, Jawa Timur', 904, 125, 'Baik', 9285000, 1085000, 'https://www.pmalrifaie2.com/', 'al-rifaie-malang1.jpg', 'al-rifaie-malang2.jpg', 'al-rifaie-malang3.jpg', 0, 904, 'Yayasan Pondok Modern Al-Rifa\'ie ( YPMA ) mulai dibangun pada tanggal 08 Oktober 1992 M / 11 Robiul Akhir 1413 H, oleh KH. Achmad Zamachsyari yang merupakan pengasuh Pondok Pesantren Al-Fattah Singosari - Malang - Jawa Timur. Pondok tersebut didirikan oleh ayahanda beliau KH. Rifa\'ie Basuni. Dengan Akta Notaris No. 46 tanggal 11 Januari 1993. Pramu Hariono, SH, Kemudian pondok ini diresmikan pada hari Kamis tanggal 09 September 1999M / 28 Jumadil Awal 1420 H, oleh Panglima Komando Daerah Militer V Brawijaya : Mayjen TNI Rymizard Riacudu ( Sudibyo ) dan disaksikan oleh para kyai dan ulama khususnya kaum muslimin-muslimat Jawa Timur.', 'Satu komplek  asrama putri 2 lantai. Masing-masing lantai terdiri dari 20 kamar dengan kapasitas 12 santri per kamar di lengkapi dengan kamar mandi, Gedung SMP Modern Al-Rifa’ie dan SMK Modern Al-Rifa’ie Masing-masing terdiri dari: 2 Perkantoran, 20 Ruang belajar, Perpustakaan, Laboratorium Multimedia, Laboratorium Farmasi, Laboratorium Keparawatan, dan lain-lain, Sarana umum yaitu minimarket, ruang makan, kantin, gedung pertemuan, taman, dan lain-lain, Sarana olah raga yaitu lapangan sepak bola, basket, volly, badminton, Sarana berlatih kewirausahaan, agrobisnis, peternakan, dan lain-lain.', 'Sd Modern Al Rifa\'ie, Smp Modern Al Rifa\'ie, Sma Modern Al Rifa\'ie, Smk Modern Alrifa\'ie.', '-0.6628257205869'),
(24, 'SHIROTHUL FUQOHA\'', 'Khalafi', 'Nahdlatul Ulama', 'Malang', 'Jl. Raya Sepanjang Gondanglegi, 65174, Kab. Malang, Jawa Timur', 546, 78, 'Baik', 160500, 75000, 'http://www.shirothulfuqoha.com', 'shirotul-fuqoha-malang1.jpg', 'shirotul-fuqoha-malang2.jpg', 'shirotul-fuqoha-malang3.jpg', 316, 230, 'Akisah pada masa penjajahan belanda ada seorang Waqif mewaqofkan sebidang tanahnya seluas 1184 M2, guna mendirikan prasarana peribadatan umat islam di desa sepanjang kecamatan gondang legi kabupaten malang. Kira-kira pada tahun 1931 didirikanlah sebuah bangunan masjid yang motifnya menyerupai masjid wali songo oleh masyarakat setempat. karena areal tanah yang cukup luas jika hanya dibuat mendirikan masjid maka selebihnya oleh masyarakat dibuatkan asrama pengajian disamping selatan bangunan masjid dengan bangunan yang sederhana sekali pada tahun 1932(disinilah awal pondok ini berdiri).', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Madrasah Aliyah Shirothul Fuqoha\' (MASHIFA), TPQ Shirotul Fuqoha\', Madarasah Diniyah Ibtidaiyah (Putra), Madrasah Diniyah Tsanawiyah (Putra), Madrasah Diniyah Aliyah (Putra), Madrasah Diniyah Ibtidaiyah (Putri), Madrasah Diniyah Tsanawiyah (Putri).', '0.3291504697788'),
(25, 'AL-ITTIHAD', 'Khalafi', 'Nahdlatul Ulama', 'Malang', 'Belung,Poncokusumo,Malang, Jawa Timur', 637, 70, 'Baik', 4600000, 750000, 'http://mtsalittihadmlg.sch.id/', 'al-ittihad-putri-malang1.jpg', 'al-ittihad-putri-malang2.jpg', 'al-ittihad-putri-malang3.jpg', 0, 637, 'Yayasan Al Ittihad didirikan dan dibiayai oleh H. Rusydi Abdullah pada tahun 1979. H. Rusydi adalah seorang petani sukses-kaya, dermawan, dan sangat peduli terhadap keagamaan dan pendidikan. Sebelum mendirikan Yayasan Al Ittihad, H. Rusydi telah mendirikan beberapa sekolah dan masjid di beberapa desa bersama masyarakat di daerah yang bersangkutan.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Al-Munawwaroh, Madrasah Tsanawiyah, Madrasah Aliyah.', '-0.2460808225112'),
(26, 'DARUL ULUM BANYUANYAR', 'Khalafi', 'Nahdlatul Ulama', 'Pamekasan', 'Banyuanyar, Potoan Daya, Palengaan, Kab. Pamekasan, Jawa Timur', 4810, 680, 'Baik', 705000, 350000, 'https://banyuanyar.net/', 'darul-ulum-pamekasan1.jpg', 'darul-ulum-pamekasan2.jpg', 'darul-ulum-pamekasan3.jpg', 3239, 1571, 'Pondok Pesantren Banyuanyar bermula dari sebuah langgar (musholla) kecil yang didirikan oleh Kyai Itsbat bin Ishaq sekitar tahun + 1787 M/1204 H. Beliau adalah salah seorang ulama kharismatik yang terkenal dengan kezuhudan, ketawadhuan dan kearifannya yang kemudian melahirkan tokoh-tokoh masyarakat dan pengasuh pondok pesantren di Pulau Madura dan Pulau Jawa.', 'Asrama santri yang dilengkapi dengan auditorium, gedung madrasah, wc umum, dan beberapa bangunan dalam tahap penyelesaian; gedung JPKS (Jaminan pelayanan kesehatan santri) asrama yatama (anak yatim), kamar mandi santri, dan kantor pondok pesantren yang sekaligus digandeng dengan gedung ma’had tahfidzulqur’an dan empat asrama santri. Sedangkan dibagian putri juga banyak bangunan yang telah berhasil didirikan diantaranya asrama santri yang digandeng dengan auditorium serta pembangunan gedung sekolah untuk madrasah Aliyah dan madrasah Tsanawiyah.', 'Secara resmi pada tahun 1980 dibuka Madrasah Tsanawiyah dan pada tahun 1983 didirikan Madrasah Aliyah yang kemudian madrasah itu diberi Nama Darul-Ulum beserta seluruh tingkatan lembaga yang ada dan biasa disebut dengan Lembaga Pendidikan Islam Darul-Ulum ( LPI Darul-Ulum ).', '1.6000767953854'),
(27, 'MIFTAHUL ULUM PANYEPEN', 'Khalafi', 'Nahdlatul Ulama', 'Pamekasan', 'Palengaan, Pamekasan, 69362, Kab. Pamekasan, Jawa Timur', 3636, 90, 'Baik', 1240000, 300000, '', 'miftahul-ulum-pamekasan1.jpg', 'miftahul-ulum-pamekasan2.jpg', 'miftahul-ulum-pamekasan3.jpg', 2059, 1577, 'PP Miftahul Ulum Panyepen dirintis dan didirikan oleh RKH Nashrudin bin Itsbat pada 1827 silam. Kiai karismatik ini tidak hanya mendirikan pesantren di Kampung Panyepen, Desa Potoan Laok, Kecamatan Palengaan, Pamekasan, tapi juga di daerah lainnya. Beliau memimpin PP Miftahul Ulum Panyepen selama 82 tahun dari 1827 hingga 1909.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pendidikan formal ada PAUD, MI, SD, MTs, SMP, MA, SMA, dan SMK. Selain pendikan dasar hingga pendidikan menengah atas, juga ada perguruan tinggi, yakni Sekolah Tinggi Agama Islam Miftahul Ulum (STAIMU). Tak hanya pendidikan formal dan nonformal yang diberikan kepada santri, keterampilan kerja juga diajarkan, seperti kursus menjahit, perbengkelan, elektronik, pertukangan, pertanian, dan lain sebagainya.', '0.6875546788558'),
(28, 'AL MUJTAMA\' PEGANTENAN', 'Khalafi', 'Nahdlatul Ulama', 'Pamekasan', 'Jl. Raya Pegantenan KM 09 Plakpak Pegantenan, 69361, Kab. Pamekasan, Jawa Timur', 1326, 66, 'Cukup', 1880000, 350000, 'http://www.al-mujtama.com', 'al-mujtama-pamekasan1.jpg', 'al-mujtama-pamekasan2.jpg', 'al-mujtama-pamekasan3.jpg', 418, 908, 'Pondok Pesantren AL-MUJTAMA\' Adalah Pondok Pesantren Yang Berdiri Pada Tahun 1990, Yang Didirikan Oleh Pengasuh Pertamanya Yaitu KH. ABDUL GHAFUR, Lc. Awal Mula Berdirinya Pondok Pesantren Ini Yaitu Bermula Dari Keinginan Beliau Yang Ingin Keluar Dari Daerah Banyuanyar, Maka Kemudian Beliau Memutuskan Untuk Membeli Sebidang Tanah Didaerah Timur Banyuanyar. Setelah Itu Bangunan Yang Didirikan Pertama Kali Oleh Pengasuh Adalah Masjid, Setelah Masjid Jadi Barulah Beliau Membuat Sebuah Rumah Sederhana Sebagai Tempat Tinggal Bersama Keluarga.', 'Masjid, Gedung Pondok Santri Putra, Gedung Pondok Santri Putri, Gedung Pondok Santri Kecil, Mushollah Untuk Santri Tahfidz, Gedung Sekolah Yang Memadai, Perpustakaan Pesantren, Auditorium Kegiatan, Lapangan Olahraga Yang Memadai.', 'Pendidikan Formal : SDI, MTs, SMP, MA, SMK, Sekolah tinggi Ilmu Ushuluddin (STIU). Pendidikan Informal : Madrasah Diniyah Awwaliyah, Madrasah Diniyah Wushta, Madrasah Diniyah Ulya, TPQ.', '0.1539700831421'),
(29, 'AL KAUTSAR', 'Khalafi', 'Nahdlatul Ulama', 'Pamekasan', 'Jalan Lawangan Daya II Pademawu, Pamekasan, Jawa Timur', 210, 37, 'Cukup', 1500000, 300000, 'http://www.ppalkautsar.com', 'al-kautsar-pamekasan1.jpg', 'al-kautsar-pamekasan2.jpg', 'al-kautsar-pamekasan3.jpg', 118, 92, 'Pondok pesantren Al-Kautsar merupakan salah satu pesantren yang berada di pinggiran kota Pamekasan. Tepatnya di desa Lawangan Daya, Kecamatan Pademawu, Kabupaten Pamekasan. Sejak awal telah memposisikan diri sebagai pesantren dengan ciri keislaman yang berwawasan ahlu sunnah wal jama’ah dan kebangsaan. Memenuhi harapan dan aspirasi masyarakat, dan atas keterpanggilan untuk berperan mencerdaskan kehidupan bangsa.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, perpustakaan, laboratorium komputer, gudang, kamar mandi/wc, klinik kesehatan.', 'Pendidikan Formal : TK Al Kautsar, SMP Plus Al Kautsar, SMA Plus AL Kautsar. Pendidikan Informal : MD Al Kautsar.', '0.0150432018236'),
(30, 'MIFTAHUL QULUB', 'Khalafi', 'Nahdlatul Ulama', 'Pamekasan', 'Ds Polagan, Kec. Galis, Kab. Pamekasan, Jawa Timur', 1201, 72, 'Baik', 2600000, 570000, '', 'miftahul-qulub-pamekasan1.jpg', 'miftahul-qulub-pamekasan2.jpg', 'miftahul-qulub-pamekasan3.jpg', 431, 770, 'Pondok pesantren “ MIFTAHUL QULUB dirintis oleh kyai Fadloli siraj sekitar 41 tahun silam 1960. Pondok pesantren Miftahul Qulub memberikan pengajaran dan pendidikan bagi masyarakat desa Polagan Kecamatan Galis Kabupaten Pamekasan beliau mendirikan masjid sebagai pusat pendidikan bagi para santri nya, yang selanjutnya masjid tersebut dijadikan sebagai pusat segala macam kegiatan keagamaan di kota Pamekasan. Kyai Fadloli siraj adalah putra dari Kyai Sirajudin bin Nashirudin dari Desa Bettet Kecamatan Pamekasan Kabupaten Pamekasan.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Miftahul Qulub, Madrasah Tsanawiyah, Madrasah Aliyah, SMK, Madrasah Diniyah.', '0.0786820358404'),
(31, 'AL FURQON AL ISLAMI', 'Khalafi', 'Nahdlatul Ulama', 'Gresik', 'Jl. Perikanan Rt 03, Rw 01, Sidayu, Gresik, Jawa Timur', 1006, 21, 'Baik', 6000000, 700000, 'https://www.alfurqongresik.com/', 'al-furqon-al-islami-gresik1.jpg', 'al-furqon-al-islami-gresik2.jpg', 'al-furqon-al-islami-gresik3.jpg', 472, 534, 'Pondok Pesantren Al Furqon berdiri pertama kali di atas tanah di desa Srowo, kecamatan Sidayu, Kabupaten Gresik Jatim yang merupakan hibah dari orang tua pengasuh  seluas 850 m2 . Berdiri bangunan pertama seluas 7 x 18m2  Dibangun dengan dana dari pengasuh dan sumbangan dari masyarakat dan jama`ah pengajian yang diasuh oleh pendirinya yaitu al-Ustadz Aunur Rofiq bin Ghufron,Lc yang beliau adalah salah satu alumni Universitas Muhammad bin Su’ud Riyadh KSA tahun 1982.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'KB & TK, MSUTQ, MITQ, MSW, MMTW, IL & MTS PA, IL & MTS PI, MTI & MA PA, MTI & MA PI.', '-0.3318097381522'),
(32, 'MAMBA\'US SHOLIHIN', 'Khalafi', 'Nahdlatul Ulama', 'Gresik', 'Jalan K.H. Syafi\'i No. 07, Manyar, Kab. Gresik, Jawa Timur', 2350, 183, 'Baik', 2936000, 400000, 'https://mambaussholihin.net/', 'mambaus-sholihin-gresik1.jpg', 'mambaus-sholihin-gresik2.jpg', 'mambaus-sholihin-gresik3.jpg', 409, 1941, 'Pondok Pesantren Mamba\'us Sholihin dirintis oleh ayahanda KH. Masbuhin Faqih, yaitu Al Maghfurlah Al Mukarrom KH. Abdullah Faqih Suci sekitar tahun 1969 yang pada mulanya berupa surau kecil untuk mengaji AI-Qur’an dan Kitab Kuning di lingkungan desa Suci dan sekitarnya. Pada tahun 1976 Al Mukarram KH. Masbuhin Faqih (putra pertama KH. Abdullah Faqih Suci) yang baru mendapatkan restu dari Al Mukkarrom KH.', 'Mushola Akbar, Asrama, lapangan, koperasi, kantin, dapur, MCK, peternakan sapi dan ayam telor, kampus, madrasah tsanawiyyah dan madrasah aliyyah, kantor, rumah pengasuh, pendopo.', 'Pesantren juga menyelenggarakan pendidikan sekolah formal seperti: Raudlatul Athafal (RA), MI, MTs, MA, Sekolah Tinggi Islam Tarbiyah (STIT) yang merupakan cabang STIT I Raden Santri Gresik. Kurikulum yang digunakan adalah kurikulum Departemen Agama yang dipadu dengan kurikulum sendiri. Selain itu pesantren juga tidak meninggalkan pendidikan kepesantrenan seperti lazimnya dengan menyelenggarakan pengajian kitab salaf (kitab kuning) seperti Fiqih Wadih, Aqidatul Islamiyah, Arba\'in Nawawi, Tuhfatul Athfal, Goyah Wattanhib, Fausyekh Ibnu Qosim, Iqna dan Shoheh Muslim. Untuk membekali santri juga diadakan pendidikan ekstrakurikuler pesantren berupa muhadloroh dengan empat bahasa (bahasa Arab, Inggris, Indonesia dan Jawa), kursus bahasa Arab dan Inggris.', '0.4439504622934'),
(33, 'DARUL ATSAR AL ISLAMY', 'Khalafi', 'Nahdlatul Ulama', 'Gresik', 'Jl.Pondok No.1 Desa Banyutengah Panceng, Gresik, Jawa Timur', 140, 10, 'Baik', 3775000, 550000, 'https://www.darulatsar.ponpes.id/', 'darul-atsar-al-islamy-gresik1.jpg', 'darul-atsar-al-islamy-gresik2.jpg', 'darul-atsar-al-islamy-gresik3.jpg', 47, 93, 'Pondok Pesantren Darul Atsar yang diasuh oleh al Ustadz Kholiful Hadi tegak berdiri, berusaha mengembalikan umat kepada kemuliaan dan izzahnya sebagaimana telah didapatkan oleh generasi utama. Sebagai lembaga pendidikan, dakwah dan sosial Pondok Pesantren Darul Atsar mendidik generasi Islam dengan pendidikan berdasar al-Qur’an dan as Sunnah yang shohihah dengan pemahaman salafus sholih yaitu pemahaman shahabat dan para pengikut mereka dalam kebaikan.', 'Lab komputer, maktabah, area panahan, makhshof dan kantin, gedung asrama akhwat, gedung asrama ikhwan, masjid darul atsar, arena futsal, area paddock berkuda.', 'Tarbiyatul aulad/paud/tk, marhalah ula, marhalah wustha, marhalah ‘ulya, marhalah jami’iyyah, takhoshus tahfidzul qur’an.', '-0.2241052636404'),
(34, 'USHULUL HIKMAH AL-IBROHIMI', 'Khalafi', 'Nahdlatul Ulama', 'Gresik', 'Jl. Makam Dalem Manyar, Peganden, Manyar, Kabupaten Gresik ,Jawa Timur', 1315, 65, 'Baik', 1419000, 400000, 'http://www.al-ibrohimi.net', 'ushulul-hikmah-al-ibrohimi-gresik1.jpg', 'ushulul-hikmah-al-ibrohimi-gresik2.jpg', 'ushulul-hikmah-al-ibrohimi-gresik3.jpg', 490, 825, 'Berawal dari kegiatan mengaji yang diasuh oleh KH. Ahmad Husnan Abdulloh yang diselenggarakan dirumah beliau sehari hari, maka dengan bantuan masyarakat sekitar akhirnya diputuskan untuk membeli sebidang tanah seluas 130 meter persegi berlokasi di desa Sidomukti Kec. Manyar Kab. Gresik, untuk dijadikan sebuah Pondok Pesantren, yang kemudian diberi nama PP. Ushulul Hikmah.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Ushulul Hikmah Al-Ibrohimi, Madrasah Tsanawiyah, Madrasah Aliyah, Madrasah Diniyah, STIT.', '0.2631125007706'),
(35, 'MODERN BABUSSALAM', 'Khalafi', 'Nahdlatul Ulama', 'Madiun', 'Kerjo Mojorejo, Kebonsari, 63173, Kab. Madiun, Jawa Timur', 70, 15, 'Cukup', 1380000, 50000, 'http://www.babussalam.ac.id/', 'modern-babussalam-madiun1.jpg', 'modern-babussalam-madiun2.jpg', 'modern-babussalam-madiun3.jpg', 33, 37, 'Dalam rangka membina,mengarahkan serta membimbing Para santri untuk menuju kearah kedewasaan yang berakhlak baik dan menjadi insane yang selalu bersifat mulia, karena di Negara Indonesia khususnya,dan seluruh Negara yang ada di muka bumi ini umumnya, sebagian besar hanya memikirkan duniawi saja tidak memikirkan akhiratnya maka dari itu,Insya Allah Pondok Modern Babussalam selalu berusaha memberikan pendidikan jasmaniyah,Aqliyah Khulukiyah kepada santrinya.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, perpustakaan, laboratorium komputer, gudang, kamar mandi/wc, klinik kesehatan.', 'Pendidikan Formal : Kulliyatul Mu\'alimin Al-Islamiyah (KMI), Madrasah Tsanawiyah, Madrasah Aliyah, Madrasah Ibtidaiyah, Tarbiyatul Athfal, PAUD. Pendidikan Informal : madrasah diniyah, TPQ.', '0.1090910666526'),
(36, 'KANZUL ULUM', 'Khalafi', 'Nahdlatul Ulama', 'Madiun', 'Jl. Sri Rejeki, No. 23, Kertoharjo, Kab. Madiun, Jawa Timur', 199, 17, 'Cukup', 1250000, 250000, 'http://kanzululummadiun.blogspot.com/', 'kanzul-ulum-madiun1.jpg', 'kanzul-ulum-madiun2.jpg', 'kanzul-ulum-madiun3.jpg', 119, 80, 'Kolaborasi pendidikan Pesantren dan sekolah menghasilkan santri yang unggul memiliki wawasan keagamaan yang cukup serta di harapkan memiliki skill individu yang memadai, karena disamping mengajarkan agama kepada anak didiknya juga dibekali ketrampilan, seperti : Pertanian, Pertukangan, Menjahit, Menenun Tikar dan Tas dari Mendong, dll.', 'Gedung kelas tiga (3) lantai milik sendiri Asrama yang cukup aman dan nyaman Ketersediaan air dan listrik yang cukup Ketersediaan buku paket dan buku perpustakaan Guru yang sesuai dengan keahlian dan profesinya Ketersediaan alat alat ketrampilan :Mesin Jahit, Mesin obras, Alat Tenun Tikar, Komputer, Alat Pertanian dan Alat pertukangan. Lahan Pertanian seluas 3 ha milik sendiri dll.', 'Pendidikan Anak Usia Dini (PAUD), Taman Pendidikan Al Qur\'an (TPA/TPQ), Madrasah Ibtidaiyah (MI), Madrasah Tsanawiyah (MTs) setingkat SMP, Madrasah Aliyah (MA) setingkat SMA, PKBM Paket B, Wajar Dikdas Ula / Wustho, Madrasah Diniyah (Madin).', '0.0335093015896'),
(37, 'MIFTAHUL ULUM', 'Khalafi', 'Nahdlatul Ulama', 'Madiun', 'Desa Joho Kec.Dagangan, 63172, Kab. Madiun, Jawa Timur', 129, 55, 'Cukup', 1550000, 380000, '', 'miftahul-ulum-madiun1.jpg', 'miftahul-ulum-madiun2.jpg', 'miftahul-ulum-madiun3.jpg', 61, 68, 'Pondok pesantren putra putri Miftahul Ulum di bawah naungan Yayasan pon pes Miftahul Ulum Joho mengelola lembaga lembaga pendidikan baik formal maupun non formal antara lain paud permata pertiwi,ra alkautsar,madrasah ibtidaiyyah al kautsar,smp terpadu alkautsar,tpq arroudloh,madrasah takmiliyyah miftahul ulum,majlis taklim assalamah,thoriqot naqsyabandiyyah kholidiyyaH,yang kesemuanya itu untuk mewadahi menghimpun para santri baik dari lingkungan sekitar maupun dari luar daerah yang berminat tinggi dalam proses bertholabul ilmi mulai dari terkecil sampai para orang orang sepuh,sekaligus bentuk tafaqquh fiddin mulai dari pendiri sampai para pembantu pembantunya,seakligus melatih para santri di bidang usaha antara lain koperasi.peternakan dan pertanian,dll.', 'MCK rapi bersih, Koperasi,  Kamar tamu, Sarana makan bersama ,Masjid ,Balai pertemuan ,Tempat bermain dan bersosialisasi, Perpustakaan, Sarana Praktek Entrepreneurship, Praktek Bercocok Tanam.', 'Pendidikan Formal : PAUD PERMATA PERTIWI, MI ALKAUTSAR, SMP TERPADU ALKAUTSAR. Pendidikan Informal : Madrasah Takmiliyyah Miftahul Ulum, TPQ Alroudloh. Pendidikan Nonformal : Kajian kitab-kitab salaf, Majlis taklim Assalaamah, Sorogan Alquran.', '-0.0200077466005'),
(38, 'WISMA WISNU', 'Khalafi', 'Nahdlatul Ulama', 'Madiun', 'Jalan Jaiman Ds Jerukgulung Kec Balerejo, Kab. Madiun, Jawa Timur', 184, 24, 'Baik', 1050000, 450000, '', 'wisma-wisnu-madiun1.jpg', 'wisma-wisnu-madiun2.jpg', 'wisma-wisnu-madiun3.jpg', 112, 72, 'Kegigihan Kyai haji Moh.Anwar Muharror menimba ilmu yang bisa dilihat mata melalui ilmu teori dan praktek dengan mengembara jalan kaki mulai dari pulau Jawa, Sumatra, Kalimantan sampai ke negeri Jiran malaysia serta Singapore dan Brunai. Sekitar tahun 1990 saat melintasi dijalan besar Balerejo, Kyai yang asli Jember itu melihat ada banjir besar diwilayah Balerejo Kabupaten Madiun. Sang Kyai spontan ikut menolong masyarakat korban banjir dan berbincang dengan tokoh masyarakat setempat untuk berencana untuk membangun desa. Mbah Anwar (panggilan akrabnya) memutuskan membeli tanah di jeruk gulung Balerejo seluas 12 meter X 20 meter, tanah yang pada saat itu masih berupa hutan bambu dan rawa-rawa mulai di bangun rumah oleh Kyai anwar untuk dijadikan pos untuk rumah pengajian kecil-kecilan.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pendidikan Formal : SMK Terpadu Wisma Wisnu, Paket C, Wajar Dikdas Ula/Wustho Wisma Wisnu, Roudlotul athfal Wisma Wisnu. Pendidikan Informal : TPA/TPQ Wisma Wisnu, Madrasah Diniyah Wisma Wisnu. Pendidikan Nonformal : Askesos. Program :  Panti Asuhan Wisma – Wisnu.', '0.0534084842995'),
(39, 'GONTOR PUTRI', 'Salafi', 'Nahdlatul Ulama', 'Ngawi', 'Desa Sambirejo, Mantingan, Ngawi, Jawa Timur', 1658, 659, 'Baik', 5544000, 630000, 'https://www.gontor.ac.id/', 'gontor-putri-ngawi1.jpg', 'gontor-putri-ngawi2.jpg', 'gontor-putri-ngawi3.jpg', 0, 1658, 'Pesantren Putri Pondok Modern Darussalam Gontor, terletak lebih kurang 100 km dari Pondok Modern Darussalam Gontor Ponorogo atau 32 km sebelah barat kota Ngawi, tepatnya di desa Sambirejo Kec. Mantingan Kab. Ngawi. Aktifitas santriwati Gontor Putri yang mempunyai luas 6 ha. ini diorientasikan pada pembentukan sosok wanita muslimah, sholihah dan wanita serba teladan.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Gontor Putri, Madrasah Tsanawiyah, Kulliyatul Mu’allimat Al-Islamiyyah (KMI).', '0.6245170152791'),
(40, 'ULIL ALBAB', 'Khalafi', 'Muhammadiyah', 'Ngawi', 'Jalan. KH. A. Dahlan, Ngawi, Jawa Timur', 73, 23, 'Baik', 1544000, 430000, 'https://www.smpmusixngawi.com/', 'ulil-albab-ngawi1.jpg', 'ulil-albab-ngawi2.jpg', 'ulil-albab-ngawi3.jpg', 34, 39, 'Pondok Pesantren Ulil Albab, NSPP 510035210131 beralamat di Jl. KH. A. Dahlan, Ngawi, Kabupaten Ngawi, Propinsi Jawa Timur. Jumlah santi di Pesantren Ulil Albab adalah 73, dengan perincian jumlah santri pria berjumlah 34 orang dan santri perempuan berjumlah 39 orang, dengan tenaga pengajar berjumlah 23 orang.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Ulil Albab, Madrasah Tsanawiyah SMP muhammadiyah 6 Ngawi.', '0.0106669815730');
INSERT INTO `pesantren` (`id`, `nama_pesantren`, `jenis_pesantren`, `lembaga_agama`, `kota_kabupaten_pesantren`, `alamat`, `jumlah_santri`, `jumlah_pengajar`, `fasilitas`, `biaya_masuk`, `spp`, `website`, `gambar1`, `gambar2`, `gambar3`, `santri_lk`, `santri_pr`, `tentang_pesantren`, `fasilitas_pesantren`, `pendidikan_pesantren`, `nilai_optimasi`) VALUES
(41, 'DARUL MUKHLISIN TEMULUS', 'Salafi', 'Nahdlatul Ulama', 'Ngawi', 'Jl. Mantingan, Temulus, Desa Kedungharjo, Kecamatan Mantingan, Ngawi, Jawa Timur', 186, 30, 'Baik', 2850000, 320000, 'http://www.pesantrentemulus.or.id/', 'darul-mukhlisin-temulus-ngawi1.jpg', 'darul-mukhlisin-temulus-ngawi2.jpg', 'darul-mukhlisin-temulus-ngawi3.jpg', 87, 99, 'TEMULUS” kala itu (tahun 1997) adalah berupa kebun yang penuh dengan rumput ilalang dan pepohonan, benar-benar sebuah “Wana” yang aroma “kewingitannya” sudah semerbak tercium tajam saat saya baru pertama kali menginjakkan kaki. Bismillah dan Lillah serta dengan dukungan semua komponen masyarakat, saya menyatakan siap berjuang, berkhidmah dan mengabdikan diri pada Agama dengan memberdayakan “wana wakaf” Temulus agar kelak menjadi sentral kegiatan kegiatan pemberdayaan ummat dalam bidang  pendidikan,keagamaan dan sosial, semata mata.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium ipa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Darul Mukhlisin Temulus, SMP Pesantren, SMK Pesantren, Madrasah Diniyah.', '-0.0027979834296'),
(42, 'SYARIFATUL \'ULUM', 'Salafi', 'Nahdlatul Ulama', 'Ngawi', 'Dusun Katerban, Desa Sekaralas, Kec. Widodaren , Kab. Ngawi, Jawa Timur', 231, 30, 'Cukup', 1850000, 350000, 'http://syarifatululum.blogspot.com/', 'syarifatul-ulum-ngawi1.jpg', 'syarifatul-ulum-ngawi2.jpg', 'syarifatul-ulum-ngawi3.jpg', 131, 100, 'Keberadaan Pondok Pesantren Syarifatul ‘Ulum berawal dari sebuah pengajian-pengajian dalam bentuk pengajian diniyah pada tahun 1932 yang didirikan oleh K. H. Syarif Hidayatulloh. Perkembangan jumlah santri yang semakin hari semakin pesat disertai keinginan agar proses mengajar lebih terorganisir dengan baik, maka atas dukungan yang kuat dari masyarakat pada tahun 1995 mulai dibentuk lembaga yang lebih formal dengan didirikanya Lembaga Pondok Pesantren Syarifatul ‘Ulum.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, perpustakaan, laboratorium komputer, gudang, kamar mandi/wc, klinik kesehatan.', 'Pendidikan Formal : Kejar Paket C, Wajar Dikdas Wustho, Madrasah Aliyah Syarifatul ’Ulum. Pendidikan Informal : Taman Pendidikan Al Qur’an (TPA),  Madrasah Diniyah Awaliyah (MDA), Madrasah Diniyah Wustho (MDW). Pendidikan Nonformal : Tahfidzul Qur’an, Kajian Kitab Kuning (Sistem Salafi). Program : Keaksaraan Fungsional, Majelis Ta’lim.', '-0.0429786969762'),
(43, 'MODERN MUHAMMADIYAH PACIRAN', 'Khalafi', 'Muhammadiyah', 'Lamongan', 'Jl. Pondok Rt. 04 Rw. 05, Paciran, Lamongan, Jawa Timur', 749, 291, 'Baik', 6400000, 600000, 'http://pondokmodernpaciran.or.id/', 'modern-muhammadiyah-paciran-lamongan1.jpg', 'modern-muhammadiyah-paciran-lamongan2.jpg', 'modern-muhammadiyah-paciran-lamongan3.jpg', 346, 403, 'Pondok Modern Muhammadiyah Paciran adalah salah satu Pondok Pesantren di wilayah Jawa Timur yang berorientasi pada Akhlaq Karimah, Aqidah, Sains,  Ilmu alat (nahwu & shorof), Bahasa (arab & inggris) dan Lifeskill. Sebagai lembaga pendidikan, Pondok Modern tetap berupaya semaksimal mungkin untuk mencetak santri yang memiliki Akhlak Mulia.  Tugas tersebut merupakan sebuah amanat kenabian yang telah diemban oleh Rasulullah SAW. semenjak beliau diutus.', 'Gedung MIM 01 (putera), Gedung MIM 02 (puteri), Gedung MTsM 01, Gedung SMPM 25, Gedung MAM 02, Gedung SMK-TI 11, Gedung Asrama Puteri, Gedung Asrama Putera, Ruang perpustakaan, Ruang Multi Media, Ruang lab. Komputer, Ruang Lab. IPA, Lab. Bahasa, Masjid, Lapangan Olahraga, Koperasi/kantin, Balai Pelatihan.', 'Pondok Pesantren Modern Muhammadiyah Paciran, PAUD AISYIYAH 02, PAUD AISYIYAH 16, MI MUHAMMADIYAH 01, MI MUHAMMADIYAH 02, MTs. Muhammadiyah 01, SMP Muhammadiyah 25, MA Muhammadiyah 02, SMK TI Muhammadiyah 11, Sekolah Tinggi Ilmu Tarbiyah Muhammadiyah Paciran, TAMAN PENDIDIKAN ALQURAN, RUMAH BINAAN YATIM.', '-0.0087149660434'),
(44, 'AL MIZAN', 'Khalafi', 'Muhammadiyah', 'Lamongan', 'Jl. Jendral Sudirman No. 01, Lamongan, Jawa Timur', 539, 205, 'Baik', 5800000, 700000, 'https://ponpesalmizan.wordpress.com/', 'al-mizan-lamongan1.jpg', 'al-mizan-lamongan2.jpg', 'al-mizan-lamongan3.jpg', 232, 307, 'Pondok Pesantren Al – Mizan asal mulanya adalah Panti Asuhan Muhammadiyah Cabang Lamongan. Panti Asuhan Muhammadiyah Cabang Lamongan, didirikan pada tanggal 17 Agustus 1985, tepatnya di Desa Banjar Mendalan Kecamatan / Kabupaten Lamongan atau lebih dikenal dengan alamat Jl. Sudirman No.1 (utara monumen Kadet Soewoko) Lamongan Jawa Timur.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Al Mizan, Madrasah Tsanawiyah, Madrasah Aliyah.', '-0.1539844378753'),
(45, 'KARANGASEM', 'Khalafi', 'Muhammadiyah', 'Lamongan', 'Jl. Pondok Rt/Rw : 002/006 Ds. Paciran, Paciran, Lamongan, Jawa Timur', 2451, 925, 'Baik', 6905000, 600000, 'http://www.ponpeskarangasem.com/', 'karangasem-lamongan1.jpg', 'karangasem-lamongan2.jpg', 'karangasem-lamongan3.jpg', 1292, 1159, 'Meskipun Pondok Pesantren Karangasem telah dikenal oleh banyak orang, baik di dalam maupun di luar negeri, namun tidak banyak yang tahu mengenai asal usul nama Pondok yang kini telah berusia 60 tahun itu. Bahkan masih banyak yang salah kaprah. Pondok yang didirikan oleh Al marhum KH. Abdurrahman Syamsuri (Yiman) sejak tanggal 18 Oktober 1948 ini memiliki nama \"Karangasem\". Nama Pondok ini memang unik tidak seperti pondok-pondok kebanyakan, yang menggunakan nama tertentu kemudian di bahasa Arab-kan, Misalnya Pondok Al Mu\'min. Al Athfal dan lain-lain.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Karangasem, MA Muhammadiyah 1 Paciran, SMA Muhammadiyah 6 Paciran, SMK Muhammadiyah 8 Paciran, MTs. Muhammadiyah 2 Paciran, SMP Muhammadiyah 14 Paciran.', '0.9827451721473'),
(46, 'AN NUR', 'Khalafi', 'Muhammadiyah', 'Malang', 'Jl. Diponegoro IV / 6 Bululawang (65171), Malang, Kab. Malang, Jawa Timur', 480, 182, 'Baik', 2900000, 475000, '', 'an-nur-muhammadiyah-malang1.jpg', 'an-nur-muhammadiyah-malang2.jpg', 'an-nur-muhammadiyah-malang3.jpg', 180, 300, 'Asal mula nama pp annur, pada tahun 1950, sesudah keamanan pulih, keluarga kyai kembali dari pengungsian, dan santri santripun berdatangan kembali ke pondok. Dua tahun kemudian (tahun 1952) datanglah seorang pembuka masyarakat Bululawang memberi saran kepada kyai agar Langgarnya diberi nama “ AN NUR “ diambil dari singkatan pendirinya AN dari ANWAR dan NUR dari orang tua beliau NURUDDIN, disamping menurut bahasa artinya CAHAYA Kemudian dari penetapan inilah AN NUR semakin berkembang.', 'Sistem pembelajaran berbasis pondok pesantren (boarding school), asrama santri di Ponpes An Nur 1 hingga An Nur 3, gedung milik sendiri, perpustakaan dengan koleksi buku dan file-file multimedia serta digital library, laboratorium sains, laboratorium komputer dan internet, lab bahasa, lab interaktif, IKS (Instalasi Kesehatan Santri).', 'Pendidikan formal meliputi MI An Nur, MTs An Nur, SMP An Nur, MA An Nur, dan SMA An Nur. Sementara, untuk pendidikan non-formal, mencakup Madrasah Diniyyah, Madrasah Salafiyyah, Madrasah Tahfidz Al Quran, hingga Mahad Aly STIKK (Sekolah Tinggi Ilmu Kitab Kuning).', '0.1420358098440'),
(47, 'AL-JIHAD MUHAMMADIYAH', 'Khalafi', 'Muhammadiyah', 'Lamongan', 'Jln.Pasar Ringin Rt.03 Rw.06, Solokuro, Lamongan, Jawa Timur', 176, 28, 'Cukup', 1900000, 375000, '', 'al-jihad-lamongan1.jpg', 'al-jihad-lamongan2.jpg', 'al-jihad-lamongan3.jpg', 102, 74, 'Pondok Pesantren Al-Jihad Muhammadiyah dengan NSPP 510035240165. Pondok Pesantren Al-Jihad Muhammadiyah beralamat di Jln.Pasar Ringin Rt.03 Rw.06, Solokuro, Kabupaten Lamongan, Propinsi Jawa Timur. Jumlah santi di Pesantren Al-Jihad Muhammadiyah adalah 176, dengan perincian jumlah santri pria berjumlah 102 orang dan santri perempuan berjumlah 74 orang.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, perpustakaan, laboratorium komputer, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Al-Jihad Muhammadiyah, Madrasah Tsanawiyah.', '-0.0701388833101'),
(48, 'ROUDHOTU TAHFIDZIL QUR`AN', 'Salafi', 'Nahdlatul Ulama', 'Jombang', 'Jl. Raya Perak No. 365 Barat Pasar Perak, Jombang, Jawa Timur', 717, 223, 'Cukup', 2550000, 450000, 'https://pondokperak.blogspot.com/', 'roudhotu-tahfidzil-quran-jombang1.jpg', 'roudhotu-tahfidzil-quran-jombang2.jpg', 'roudhotu-tahfidzil-quran-jombang3.jpg', 600, 117, 'Pondok Pesantren Putra Putri Roudhotu Tahfidzil Qur’an Perak Jombang merupakan Pondok Pesantren rintisan KH. Ahmad Masduqi ‘Abdurrohman. Pada tahun 1960 KH. Ahmad Masduqi ‘Abdurrohman pulang dari masa belajar di berbagai Pondok Pesantren.  Pada tahun 1960 Ahmad Masduqi ‘Abdurrohman Muda diminta membantu mengajar Al Qur’an Oleh Kyai setempat didesa Perak yang bernama KH. Hasan (Mbah San), khususnya buat santri-santri yang sudah lancar bacaannya.', 'Masjid, Asrama Pesantren, Gedung Sekolah, Perpustakaan, MCK/WC, Laboratorium Komputer, Laboratorium Bahasa, Ruang tamu, Kopontren, Klinik Kesehatan, Aula.', 'Pendidikan Formal : TK, SD, SMP, SMA, SMK. Pendidikan Non Formal : Madrasah Diniyah, Tahfidzul Qur\'an.', '0.3754345398514'),
(49, 'MASKUMAMBANG', 'Salafi', 'Nahdlatul Ulama', 'Gresik', 'Sembungankidul Dukun Gresik, Jawa Timur', 126, 53, 'Baik', 3000000, 450000, 'https://maskumambang.ac.id/', 'maskumambang-gresik1.jpg', 'maskumambang-gresik2.jpg', 'maskumambang-gresik3.jpg', 41, 85, 'Pada awal berdirinya, Pesantren Maskumambang yang terletak di Desa Sembungan Kidul Kecamatan Dukun Kabupaten Gresik Provinsi Jawa Timur (± 40 km arah barat laut kota Surabaya) hanya mendidik masyarakat sekitar Maskumambang, dan itupun terbatas pada pelajaran Al-Qur’an dan tafsir, serta fiqih. Metode yang dipergunakan juga masih terbatas pada metode sorogan, bandongan, dan halaqoh.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Pondok Pesantren Maskumambang, Madrasah Ibtidaiyah, Madrasah Tsanawiyah, Madrasah Aliyah, Madrasah Diniyah, SMK, STITMAS.', '-0.0625039839372'),
(50, 'AL BAYYINAH', 'Salafi', 'Nahdlatul Ulama', 'Gresik', 'Jl RM Said No 06 RT 01 RW 1 Sedayu, Gresik, Jawa Timur', 350, 153, 'Baik', 1050000, 400000, 'http://mahadalbayyinah.blogspot.com/', 'al-bayyinah-gresik1.jpg', 'al-bayyinah-gresik2.jpg', 'al-bayyinah-gresik3.jpg', 200, 150, 'Pondok Pesantren Al Bayyinah beralamat di Jl RM Said No 06 RT 01 RW 1 Kecamatan Sedayu, Kabupaten Gresik, Provinsi Jawa Timur. Jumlah santi di Pesantren Al Bayyinah adalah 350, dengan perincian jumlah santri pria berjumlah 200 orang dan santri perempuan berjumlah 150 orang.', 'Masjid, asrama santri, kantor, asrama pengasuh, dapur, gedung sekolah, lapangan, koperasi santri, perpustakaan, laboratorium komputer, laboratorium bahasa, gudang, kamar mandi/wc, klinik kesehatan.', 'Ma’had tahfidzul qur’an (mtq), ma’had tahfidzul fata (mtf), ma’had tarbiyatus syabab (mts), ma’had tarbiyatun nisa’ (mtn).', '0.2637603340724');

-- --------------------------------------------------------

--
-- Table structure for table `spesifik`
--

CREATE TABLE `spesifik` (
  `id` int(100) NOT NULL,
  `jenis_pesantren` varchar(100) NOT NULL,
  `lembaga_agama` varchar(100) NOT NULL,
  `kota_kabupaten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spesifik`
--

INSERT INTO `spesifik` (`id`, `jenis_pesantren`, `lembaga_agama`, `kota_kabupaten`) VALUES
(1, 'Khalafi', 'Nahdlatul Ulama', 'Gresik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `alternatif_kriteria`
--
ALTER TABLE `alternatif_kriteria`
  ADD PRIMARY KEY (`id_alternatif_kriteria`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pesantren`
--
ALTER TABLE `pesantren`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spesifik`
--
ALTER TABLE `spesifik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif_kriteria`
--
ALTER TABLE `alternatif_kriteria`
  MODIFY `id_alternatif_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `pesantren`
--
ALTER TABLE `pesantren`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `spesifik`
--
ALTER TABLE `spesifik`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
