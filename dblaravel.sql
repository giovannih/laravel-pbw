-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 07:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` bigint(20) NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jafung` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pakar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `status`, `jafung`, `pakar`, `created_at`, `updated_at`) VALUES
(1, 3215095007981084, 'Hilda Laksmiwati S.Kom', 'M.Ak', 'Dr.', 'Masinis', NULL, NULL),
(2, 1605765210077651, 'Daryani Galang Rajata S.Psi', 'S.Pt', 'dr.', 'Karyawan BUMN', NULL, NULL),
(3, 5207282210172271, 'Warta Megantara', 'S.H.', 'Ir.', 'Guru', NULL, NULL),
(4, 1220882908190797, 'Karna Tampubolon', 'S.Pd', 'Hj.', 'Perdagangan', NULL, NULL),
(5, 1607566904001041, 'Mutia Yuniar S.Gz', 'S.Farm', 'Ir.', 'Imam Masjid', NULL, NULL),
(6, 3205374611115294, 'Maman Habibi', 'S.Ked', 'dr.', 'Tukang Batu', NULL, NULL),
(7, 3278182105180347, 'Yahya Siregar', 'M.Kom.', 'H.', 'Pemandu Wisata', NULL, NULL),
(8, 3279891306107678, 'Ratih Hariyah S.Sos', 'S.E.', 'dr.', 'Dosen', NULL, NULL),
(9, 9111170411144459, 'Lanang Bakiono Narpati S.Pd', 'M.Farm', 'H.', 'Karyawan BUMD', NULL, NULL),
(10, 1206775904216667, 'Almira Wijayanti', 'S.T.', 'Dr.', 'Penerjemah', NULL, NULL),
(20, 12345, 'Jessica Ivana', 'Dosen Tetap', 'Asisten Ahli', 'Artificial Intelligence,Web Engineer,DB Engineer', '2022-05-19 04:37:06', '2022-05-19 04:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa366`
--

CREATE TABLE `mahasiswa366` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` bigint(20) NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_minat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa366`
--

INSERT INTO `mahasiswa366` (`id`, `nim`, `nama`, `gender`, `jurusan`, `bidang_minat`, `created_at`, `updated_at`) VALUES
(1, 6172434910945121, 'Sadina Hassanah', 'Perempuan', 'Kedokteran', 'Kesenian', NULL, NULL),
(2, 8204395003012693, 'Gabriella Yulianti', 'Laki-laki', 'Sistem Informasi', 'Membaca', NULL, NULL),
(3, 5206986212095130, 'Adinata Rajata', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(4, 8102916012064453, 'Gasti Purnawati S.I.Kom', 'Laki-laki', 'Informatika', 'Membaca', NULL, NULL),
(5, 1213845005129051, 'Eva Michelle Suryatmi M.Kom.', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(6, 1771711102011743, 'Natalia Shakila Mayasari S.Ked', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(7, 3313312512144213, 'Faizah Samiah Laksita', 'Laki-laki', 'Pertanian', 'Membaca', NULL, NULL),
(8, 7601821110152308, 'Suci Puspita', 'Laki-laki', 'Kedokteran', 'Membaca', NULL, NULL),
(9, 7602966303050933, 'Maryadi Wacana', 'Perempuan', 'Pertanian', 'Olahraga', NULL, NULL),
(10, 1103873101980195, 'Rika Purwanti', 'Perempuan', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(11, 1605792903095124, 'Almira Nurdiyanti', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(12, 6111885003008695, 'Zelaya Wulandari M.M.', 'Laki-laki', 'Informatika', 'Kesenian', NULL, NULL),
(13, 3602845806011761, 'Ega Nainggolan S.Gz', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(14, 3215355908138770, 'Cahyadi Tamba', 'Perempuan', 'Pertanian', 'Membaca', NULL, NULL),
(15, 6209653105020191, 'Ratih Fitria Andriani', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(16, 3175990603186790, 'Dina Sakura Anggraini S.Sos', 'Perempuan', 'Kedokteran', 'Kesenian', NULL, NULL),
(17, 5302286806940997, 'Edward Elvin Dongoran S.Farm', 'Laki-laki', 'Informatika', 'Kesenian', NULL, NULL),
(18, 3272090604190811, 'Maimunah Hasanah S.Gz', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(19, 9118172501069103, 'Ganep Setiawan', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(20, 5106991008953020, 'Wahyu Setiawan', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(21, 9206665807107623, 'Asirwanda Suryono S.H.', 'Perempuan', 'Informatika', 'Olahraga', NULL, NULL),
(22, 1506622201176162, 'Umaya Pradana', 'Perempuan', 'Informatika', 'Kesenian', NULL, NULL),
(23, 6302515907204181, 'Syahrini Haryanti', 'Laki-laki', 'Pertanian', 'Olahraga', NULL, NULL),
(24, 1171290907139245, 'Diana Namaga', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(25, 7571934603044749, 'Praba Prasetya', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(26, 1472672906967330, 'Nurul Purnawati', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(27, 7202384812160640, 'Tira Suartini', 'Perempuan', 'Informatika', 'Membaca', NULL, NULL),
(28, 3211871307998547, 'Belinda Kusmawati M.TI.', 'Perempuan', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(29, 1221681002059770, 'Hilda Pudjiastuti', 'Laki-laki', 'Pertanian', 'Kesenian', NULL, NULL),
(30, 1705950412200667, 'Eva Purnawati', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(31, 8107802508970137, 'Maria Anggraini S.Kom', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(32, 1223015402153333, 'Asmianto Balijan Prabowo', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(33, 1613345907981460, 'Tina Yulianti M.Pd', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(34, 1603080101136096, 'Lasmono Samosir', 'Laki-laki', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(35, 1402855309082176, 'Sadina Umi Nasyidah S.E.I', 'Perempuan', 'Informatika', 'Olahraga', NULL, NULL),
(36, 5207542112084818, 'Cakrabirawa Najmudin', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(37, 3278080703071113, 'Kezia Permata', 'Laki-laki', 'Informatika', 'Olahraga', NULL, NULL),
(38, 9114184412019481, 'Paiman Adriansyah', 'Perempuan', 'Informatika', 'Kesenian', NULL, NULL),
(39, 1407846608023387, 'Laswi Mandala', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(40, 1808842404220451, 'Vanya Prastuti S.Psi', 'Perempuan', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(41, 7606082810072951, 'Martaka Halim', 'Perempuan', 'Pertanian', 'Membaca', NULL, NULL),
(42, 1217861108056682, 'Heryanto Banara Ardianto S.E.I', 'Laki-laki', 'Pertanian', 'Membaca', NULL, NULL),
(43, 1407311908080756, 'Teguh Mustofa S.Gz', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(44, 6105434603061896, 'Wasis Santoso S.I.Kom', 'Laki-laki', 'Kedokteran', 'Membaca', NULL, NULL),
(45, 3402976110165160, 'Ida Widiastuti S.E.', 'Laki-laki', 'Kedokteran', 'Membaca', NULL, NULL),
(46, 3671584312078373, 'Dasa Natsir', 'Laki-laki', 'Sistem Informasi', 'Membaca', NULL, NULL),
(47, 6504181211961872, 'Margana Marpaung M.Ak', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(48, 3603480710061767, 'Raharja Hutasoit', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(49, 1707772310008181, 'Tantri Aryani S.Pd', 'Perempuan', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(50, 1223224111948171, 'Dasa Rajata', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(51, 1809471009091662, 'Najwa Suartini M.Ak', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(52, 6309252008149994, 'Aris Dimas Hidayanto S.Pt', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(53, 6111716301047392, 'Wisnu Suryono', 'Laki-laki', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(54, 1103524504124483, 'Bagus Nababan S.Gz', 'Laki-laki', 'Informatika', 'Olahraga', NULL, NULL),
(55, 5108354701182504, 'Rusman Yoga Pradana', 'Laki-laki', 'Informatika', 'Kesenian', NULL, NULL),
(56, 3527951609121168, 'Eka Kuswoyo S.Pd', 'Perempuan', 'Pertanian', 'Membaca', NULL, NULL),
(57, 6211026107970907, 'Darman Opan Widodo', 'Laki-laki', 'Pertanian', 'Membaca', NULL, NULL),
(58, 3174602012178535, 'Nadia Mayasari', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(59, 7409164303039925, 'Alambana Kacung Samosir', 'Perempuan', 'Informatika', 'Membaca', NULL, NULL),
(60, 1809812511064844, 'Bakiman Ardianto', 'Laki-laki', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(61, 7413530308119718, 'Oni Yuliarti', 'Laki-laki', 'Kedokteran', 'Membaca', NULL, NULL),
(62, 1704756512964177, 'Lukman Budiyanto', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(63, 8103801106928087, 'Sakti Mujur Januar', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(64, 7310735902028605, 'Ella Pertiwi', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(65, 6110300111117300, 'Bancar Hakim', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(66, 6205874807976553, 'Galih Mansur', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(67, 6202271502171808, 'Candra Narpati S.Pd', 'Perempuan', 'Informatika', 'Olahraga', NULL, NULL),
(68, 7309231003129094, 'Latif Gaduh Saputra S.IP', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(69, 6307004509994453, 'Dirja Sinaga S.H.', 'Laki-laki', 'Pertanian', 'Olahraga', NULL, NULL),
(70, 7101145706195059, 'Titin Pudjiastuti S.Kom', 'Perempuan', 'Pertanian', 'Membaca', NULL, NULL),
(71, 7412615101049519, 'Harsanto Galih Hutapea S.Gz', 'Laki-laki', 'Pertanian', 'Olahraga', NULL, NULL),
(72, 7110346807211178, 'Laila Wulandari', 'Laki-laki', 'Informatika', 'Olahraga', NULL, NULL),
(73, 5309376912041285, 'Endra Pradipta', 'Perempuan', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(74, 6206266912115022, 'Mujur Yosef Nashiruddin M.M.', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(75, 3310824611189159, 'Jayeng Kalim Pradana', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(76, 1905124203107399, 'Upik Wahyudin', 'Perempuan', 'Informatika', 'Membaca', NULL, NULL),
(77, 1117202306038617, 'Mala Shania Agustina M.Farm', 'Perempuan', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(78, 3204900606985931, 'Ratna Laksmiwati', 'Laki-laki', 'Kedokteran', 'Membaca', NULL, NULL),
(79, 3314420607151269, 'Lamar Simanjuntak', 'Laki-laki', 'Pertanian', 'Kesenian', NULL, NULL),
(80, 7305596308046562, 'Nyana Widodo', 'Laki-laki', 'Pertanian', 'Membaca', NULL, NULL),
(81, 1901435907068394, 'Labuh Kuswoyo', 'Perempuan', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(82, 1312371807149011, 'Johan Sihotang S.Farm', 'Perempuan', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(83, 6172422907063552, 'Imam Damanik', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(84, 1103831508048904, 'Wani Wijayanti S.Ked', 'Perempuan', 'Pertanian', 'Membaca', NULL, NULL),
(85, 1508451911071337, 'Pangeran Tampubolon', 'Laki-laki', 'Pertanian', 'Membaca', NULL, NULL),
(86, 8203974906212778, 'Lidya Jasmin Yuniar M.Farm', 'Laki-laki', 'Pertanian', 'Kesenian', NULL, NULL),
(87, 5207180902961338, 'Lutfan Hutasoit S.E.I', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(88, 1209751909169249, 'Safina Farida', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(89, 1404255805103442, 'Bakiadi Wardi Damanik', 'Laki-laki', 'Sistem Informasi', 'Membaca', NULL, NULL),
(90, 3525751906157321, 'Jumadi Putra', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(91, 1572512511977340, 'Shania Ulya Hartati S.E.I', 'Perempuan', 'Informatika', 'Olahraga', NULL, NULL),
(92, 1708605403191604, 'Lukita Wibisono', 'Perempuan', 'Pertanian', 'Membaca', NULL, NULL),
(93, 7108876907088994, 'Ida Zulaikha Yolanda S.Pd', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(94, 3305665207127096, 'Ayu Hana Winarsih S.Sos', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(95, 7109815410201236, 'Wira Sitorus S.E.I', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(96, 9113811303956363, 'Karma Irawan M.Kom.', 'Perempuan', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(97, 7310581511128424, 'Kania Oni Yuliarti', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(98, 3673835207067418, 'Ira Laksita S.Farm', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(99, 1102290302972392, 'Laras Prastuti', 'Perempuan', 'Pertanian', 'Olahraga', NULL, NULL),
(100, 5204835501979865, 'Salwa Janet Susanti S.Kom', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(101, 1708645001972849, 'Kasiran Megantara', 'Perempuan', 'Kedokteran', 'Kesenian', NULL, NULL),
(102, 6206666211019969, 'Gamani Umay Nainggolan', 'Laki-laki', 'Sistem Informasi', 'Membaca', NULL, NULL),
(103, 1116780901208007, 'Puspa Kuswandari S.Gz', 'Perempuan', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(104, 1704655807023320, 'Hardana Rajasa S.H.', 'Laki-laki', 'Informatika', 'Kesenian', NULL, NULL),
(105, 7105845112212307, 'Eva Hamima Pudjiastuti S.E.I', 'Laki-laki', 'Informatika', 'Kesenian', NULL, NULL),
(106, 6504524101937834, 'Maman Samosir', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(107, 3571672708020121, 'Rachel Nasyiah', 'Perempuan', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(108, 1804664507009682, 'Wawan Darimin Saragih S.Sos', 'Laki-laki', 'Sistem Informasi', 'Membaca', NULL, NULL),
(109, 7373694410957552, 'Belinda Nurdiyanti', 'Laki-laki', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(110, 6401206611007507, 'Bakda Suwarno S.Pt', 'Perempuan', 'Informatika', 'Olahraga', NULL, NULL),
(111, 1871571111168223, 'Tantri Mulyani', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(112, 3210176403217094, 'Vera Gabriella Halimah M.Farm', 'Perempuan', 'Pertanian', 'Kesenian', NULL, NULL),
(113, 1274054906194144, 'Adikara Gunarto', 'Laki-laki', 'Pertanian', 'Kesenian', NULL, NULL),
(114, 6472730504985854, 'Ega Darmanto Mustofa', 'Laki-laki', 'Sistem Informasi', 'Membaca', NULL, NULL),
(115, 2105542704090175, 'Harsanto Sitorus', 'Laki-laki', 'Informatika', 'Olahraga', NULL, NULL),
(116, 7111482405095591, 'Uchita Farida', 'Perempuan', 'Informatika', 'Membaca', NULL, NULL),
(117, 5371812008093852, 'Ajeng Jessica Nasyiah', 'Perempuan', 'Pertanian', 'Olahraga', NULL, NULL),
(118, 3471344902138707, 'Adikara Surya Saputra', 'Perempuan', 'Pertanian', 'Olahraga', NULL, NULL),
(119, 6102266601939108, 'Kartika Eka Mulyani', 'Perempuan', 'Informatika', 'Kesenian', NULL, NULL),
(120, 3321712309946386, 'Jabal Timbul Mandala M.M.', 'Laki-laki', 'Pertanian', 'Membaca', NULL, NULL),
(121, 3271074801207681, 'Michelle Cinthia Prastuti S.Pd', 'Laki-laki', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(122, 7407766406062077, 'Kairav Iswahyudi S.IP', 'Perempuan', 'Kedokteran', 'Membaca', NULL, NULL),
(123, 6107335803096357, 'Rama Najam Prakasa', 'Perempuan', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(124, 5314903011167382, 'Ida Wijayanti', 'Perempuan', 'Pertanian', 'Kesenian', NULL, NULL),
(125, 9126896805121843, 'Violet Hastuti', 'Laki-laki', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(126, 6213981805179955, 'Ira Padmi Kuswandari S.H.', 'Perempuan', 'Pertanian', 'Kesenian', NULL, NULL),
(127, 6371615809173061, 'Nadia Mandasari S.Farm', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(128, 5306751706929814, 'Irma Winarsih', 'Perempuan', 'Pertanian', 'Kesenian', NULL, NULL),
(129, 6303226305029110, 'Radika Dongoran', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(130, 1278110305190580, 'Harsana Wahyudin S.Sos', 'Laki-laki', 'Informatika', 'Membaca', NULL, NULL),
(131, 7306731208996777, 'Qori Hartati', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(132, 9126805608014217, 'Jaeman Thamrin', 'Laki-laki', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(133, 7309030406983652, 'Elvina Haryanti', 'Laki-laki', 'Kedokteran', 'Kesenian', NULL, NULL),
(134, 1603654305140112, 'Tiara Salwa Purwanti', 'Laki-laki', 'Kedokteran', 'Olahraga', NULL, NULL),
(135, 6171476508067361, 'Safina Wahyuni', 'Perempuan', 'Pertanian', 'Kesenian', NULL, NULL),
(136, 3303164202184415, 'Tirtayasa Hidayat', 'Perempuan', 'Informatika', 'Kesenian', NULL, NULL),
(137, 5312724610158091, 'Icha Mayasari', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(138, 1308554608018380, 'Zalindra Hastuti', 'Laki-laki', 'Sistem Informasi', 'Olahraga', NULL, NULL),
(139, 7301651404074175, 'Karsa Kurniawan', 'Perempuan', 'Kedokteran', 'Olahraga', NULL, NULL),
(140, 7373661212954283, 'Mulyono Bakianto Suryono', 'Perempuan', 'Pertanian', 'Olahraga', NULL, NULL),
(141, 3322564203113978, 'Panca Pranowo', 'Laki-laki', 'Pertanian', 'Kesenian', NULL, NULL),
(142, 5171032409929699, 'Kamaria Maryati', 'Laki-laki', 'Pertanian', 'Membaca', NULL, NULL),
(143, 3671096202076233, 'Rahman Kuswoyo', 'Laki-laki', 'Kedokteran', 'Membaca', NULL, NULL),
(144, 1113424111108349, 'Humaira Nurdiyanti', 'Perempuan', 'Sistem Informasi', 'Membaca', NULL, NULL),
(146, 9126182204077929, 'Latif Empluk Wijaya S.E.I', 'Perempuan', 'Sistem Informasi', 'Kesenian', NULL, NULL),
(147, 6271164501125149, 'Karna Rajasa S.IP', 'Perempuan', 'Kedokteran', 'Kesenian', NULL, NULL),
(161, 72200366, 'Giovanni Harrius', 'Laki-laki', 'Sistem Informasi', 'Olahraga', '2022-05-28 07:38:50', '2022-05-28 07:40:08');

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
(5, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik_user` int(20) NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik_user`, `nama_user`, `no_hp`, `password`, `created_at`, `updated_at`) VALUES
(1, 12345, 'giovanni harrius', '081224569005', '$2y$10$6RpHXYQWo5jmO0ur3c7gu.h6htF3FFjGxEtZOxMtFQLdk4cGAIXKC', '2022-06-02 07:39:52', '2022-06-02 07:39:52'),
(2, 12346, 'Jessica Ivana', '081224569006', '$2y$10$DXKStDPBU04CbAMiGaHaEueGK2mZiC8za.NdzLJ7zg./.WRNPL8VO', '2022-06-02 08:21:44', '2022-06-02 08:21:44'),
(3, 12347, 'Test MD5', '081224569007', '912ec803b2ce49e4a541068d495ab570', '2022-06-02 08:23:15', '2022-06-02 08:23:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa366`
--
ALTER TABLE `mahasiswa366`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_no_hp_unique` (`no_hp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mahasiswa366`
--
ALTER TABLE `mahasiswa366`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
