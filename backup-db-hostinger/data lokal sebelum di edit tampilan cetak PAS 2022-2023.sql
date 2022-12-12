-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Des 2022 pada 19.29
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tk_rj`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ijin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sakit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alpha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id`, `nis`, `nama`, `kelas`, `jenjang`, `ijin`, `sakit`, `alpha`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001552', 'Adam Faiz Al Arkhan', 'B4', 'TK B', '1', '2', '3', 'Tengah', 175, 7, 1, 1, '2022-09-25 17:26:39', '2022-09-25 17:26:39'),
(2, 'TK001533', 'Adilah Fredela Putri', 'B4', 'TK B', '3', '2', '1', 'Tengah', 176, 7, 1, 1, '2022-09-25 17:26:39', '2022-09-25 17:34:02'),
(3, 'TK001496', 'Al Zeligdios Xavier', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 177, 7, 1, 1, '2022-09-25 17:26:39', '2022-09-25 17:26:39'),
(4, 'TK001568', 'Arjuna Zabir Maulana', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 178, 7, 1, 1, '2022-09-25 17:26:39', '2022-09-25 17:26:39'),
(5, 'TK001526', 'Arsenio Radhiyya Avid Ahmad', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 179, 7, 1, 1, '2022-09-25 17:26:40', '2022-09-25 17:26:40'),
(6, 'TK001504', 'Bilqis Khairunnisa Effendi', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 180, 7, 1, 1, '2022-09-25 17:26:40', '2022-09-25 17:26:40'),
(7, 'TK001514', 'Brian Adelio Dhavi', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 181, 7, 1, 1, '2022-09-25 17:26:40', '2022-09-25 17:26:40'),
(8, 'TK001572', 'Elvina Aleysya', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 182, 7, 1, 1, '2022-09-25 17:26:40', '2022-09-25 17:26:40'),
(9, 'TK001540', 'Ghaida Aeshana Noor Adryansyah', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 183, 7, 1, 1, '2022-09-25 17:26:40', '2022-09-25 17:26:40'),
(10, 'TK001579', 'Hanif Astaditya Rahman', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 184, 7, 1, 1, '2022-09-25 17:26:40', '2022-09-25 17:26:40'),
(11, 'TK001543', 'Hasna Althafunnisa Bachtiar', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 185, 7, 1, 1, '2022-09-25 17:26:41', '2022-09-25 17:26:41'),
(12, 'TK001584', 'Izzan Muhammad Al Fatih', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 186, 7, 1, 1, '2022-09-25 17:26:41', '2022-09-25 17:26:41'),
(13, 'TK001570', 'Jyotika Rayadinata', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 187, 7, 1, 1, '2022-09-25 17:26:41', '2022-09-25 17:26:41'),
(14, 'TK001575', 'Khanza Shabira Az Zahra', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 188, 7, 1, 1, '2022-09-25 17:26:41', '2022-09-25 17:26:41'),
(15, 'TK001585', 'Kinan Nefia Mumtaza', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 189, 7, 1, 1, '2022-09-25 17:26:41', '2022-09-25 17:26:41'),
(16, 'TK001521', 'Langit Kirania Maheswari Farzana', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 190, 7, 1, 1, '2022-09-25 17:26:41', '2022-09-25 17:26:41'),
(17, '', 'Muhammad Rafif Hikmawan Priambudi', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 191, 7, 1, 1, '2022-09-25 17:26:42', '2022-09-25 17:26:42'),
(18, 'TK001545', 'Muhammad Alvaro Asmaqyandra', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 192, 7, 1, 1, '2022-09-25 17:26:42', '2022-09-25 17:26:42'),
(19, 'TK001591', 'Muhammad Haidar Mirza', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 193, 7, 1, 1, '2022-09-25 17:26:42', '2022-09-25 17:26:42'),
(20, 'TK001577', 'Narayya Fatihah Arindra', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 194, 7, 1, 1, '2022-09-25 17:26:42', '2022-09-25 17:26:42'),
(21, 'TK001558', 'Natha Deandra Ardhani', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 195, 7, 1, 1, '2022-09-25 17:26:42', '2022-09-25 17:26:42'),
(22, 'TK001551', 'Salma Ghaida Zahra', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 196, 7, 1, 1, '2022-09-25 17:26:43', '2022-09-25 17:26:43'),
(23, 'TK001507', 'Sienna Faeyza Atkinson', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 197, 7, 1, 1, '2022-09-25 17:26:43', '2022-09-25 17:26:43'),
(24, 'TK001539', 'Vania Carissa Salsabila', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 198, 7, 1, 1, '2022-09-25 17:26:43', '2022-09-25 17:26:43'),
(25, 'TK001640', 'M. Kenzie Alfatih', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 199, 7, 1, 1, '2022-09-25 17:26:43', '2022-09-25 17:26:43'),
(26, 'TK001530', 'M. Khalid Multazam', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 200, 7, 1, 1, '2022-09-25 17:26:43', '2022-09-25 17:26:43'),
(27, 'TK001535', 'Rafif Hammam Abdurahman', 'B4', 'TK B', NULL, NULL, NULL, 'Tengah', 201, 7, 1, 1, '2022-09-25 17:26:43', '2022-09-25 17:26:43'),
(28, 'TK001625', 'AL BARR MUHAMMAD RAFASYA', 'B3', 'TK B', '2', '3', NULL, 'Tengah', 153, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(29, 'TK001722', 'ALARIC  RASYID ARDIANTO', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 154, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(30, 'TK001647', 'ALTA THANISA SANSU', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 155, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(31, 'TK001626', 'ANDI AZZAM HAMZAH DJOEDDAWI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 156, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(32, 'TK001652', 'ARAZKA RADEYA ZHAAFIR', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 157, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(33, 'TK001576', 'ATHALLAH FAUSTINE ADIYANT', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 158, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(34, 'TK001630', 'HANIFA NAFIA ALMEERRA', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 159, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(35, 'TK001643', 'KAREEM ABDUL HARRAZ AL AYYUBI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 160, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(36, 'TK001599', 'KIRANA ANINDYA TUNGGA DEWI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 161, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(37, 'TK001631', 'MISHA AQILLA SHAZFA KRESNADI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 162, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(38, 'TK001601', 'MUHAMMAD AFDHALUSH SHOLAH HERMAWAN', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 163, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(39, 'TK001596', 'M. ARKAN AL FATIH', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 164, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(40, 'TK001654', 'NAFEESHA ALMAHYRA PRAMANA PUTRI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 165, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(41, 'TK001649', 'NARASHYA KHAIRA RIZHANI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 166, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(42, 'TK001597', 'NIRVANA KARA RAIZANDHA', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 167, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(43, 'TK001617', 'NISA SHAKILA RAMADHANI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 168, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(44, 'TK001513', 'NISMARA FARZANA AISHA RATIFA', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 169, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(45, 'TK001650', 'QASIRATUT TARFIIN', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 170, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(46, 'TK001644', 'RAFFASYA ARKAAN ALHAQQI', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 171, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(47, 'TK001691', 'SHAKILA INARA MARITZA', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 172, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(48, 'TK001627', 'ADREENA MALIEKA KHAIRIY', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 173, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(49, 'TK001612', 'ZAIDAN AHMAD ALKAF', 'B3', 'TK B', NULL, NULL, NULL, 'Tengah', 174, 6, 1, 1, '2022-09-26 07:30:08', '2022-09-26 07:30:08'),
(50, 'TK001606', 'ACHMAD SAKHA ALFATIH', 'B1', 'TK B', '6', '2', NULL, 'Tengah', 108, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(51, 'TK001552', 'ADAM FAIZ AL ARKHAN', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 109, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(52, 'TK001635', 'ADHYASTHA TARIMAULI TUA SIRAIT', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 110, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(53, 'TK001628', 'ADIBA ZAREEN NUFA', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 111, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(54, 'TK001655', 'AHMAD SALAHUDDIN KARIM', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 112, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(55, 'TK001728', 'AINAYYA ASMA PRATOMO', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 113, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(56, 'TK001622', 'AQILAH AZZALEA HULWAH', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 114, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(57, 'TK001674', 'ARETHA ZAYNA ULIMA', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 115, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(58, 'TK001656', 'ARSYA REINDRA ZEN', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 116, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(59, 'TK001624', 'AZKIYA NURIN NISA\'', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 117, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(60, 'TK001614', 'AZZAM MUMTAZ SHAWQY', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 118, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(61, 'TK001633', 'DEVAN DANADYAKSA MULYANI', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 119, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(62, 'TK001637', 'EVANDER ALKHALIFI ARSYANTO', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 120, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(63, 'TK001543', 'HASNA ALTHAFUNNISA BACHTIAR', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 121, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(64, 'TK001620', 'JIHAN ANINDYA REANDRA SHANUM', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 122, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(65, 'TK001609', 'KHAIRUNNISA AZZAHRA DYANDRA H', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 123, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(66, 'TK001619', 'MAUDY SHINTA RAMADHANI', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 124, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(67, 'TK001608', 'M. AGAM AL BARRA', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 125, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(68, 'TK001645', 'M. ALIYANDI HAZZA', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 126, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(69, 'TK001623', 'M. ARKHA ARYASTIA', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 127, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(70, 'TK001613', 'RAKHSHANDRINA ALESHA ZAHEERA', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 128, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(71, 'TK001629', 'SAKHA ELFATHAN KUSUMA ZHAFRAN', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 129, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(72, 'TK001748', 'ANINDYA RAIMA DANASWORO', 'B1', 'TK B', NULL, NULL, NULL, 'Tengah', 130, 2, 1, 1, '2022-09-26 07:30:22', '2022-09-26 07:30:22'),
(73, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'TK A', '1', '3', NULL, 'Tengah', 79, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(74, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'TK A', NULL, '3', NULL, 'Tengah', 80, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(75, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'TK A', NULL, '1', NULL, 'Tengah', 81, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(76, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'TK A', '3', '3', NULL, 'Tengah', 82, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(77, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'TK A', NULL, '2', NULL, 'Tengah', 83, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(78, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'TK A', NULL, '2', NULL, 'Tengah', 84, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(79, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'TK A', NULL, '8', NULL, 'Tengah', 85, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(80, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'TK A', NULL, '2', NULL, 'Tengah', 86, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(81, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'TK A', NULL, '7', NULL, 'Tengah', 87, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(82, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'TK A', '1', '2', '1', 'Tengah', 88, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(83, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'TK A', NULL, '9', '1', 'Tengah', 89, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(84, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'TK A', '5', '4', '1', 'Tengah', 90, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(85, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'TK A', '3', '7', NULL, 'Tengah', 91, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(86, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'TK A', NULL, '10', NULL, 'Tengah', 92, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(87, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'TK A', NULL, '2', NULL, 'Tengah', 93, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(88, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'TK A', NULL, '7', NULL, 'Tengah', 94, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(89, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'TK A', '3', '4', NULL, 'Tengah', 95, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(90, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'TK A', NULL, '6', NULL, 'Tengah', 96, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(91, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'TK A', NULL, '3', NULL, 'Tengah', 97, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(92, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'TK A', '1', '3', NULL, 'Tengah', 98, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(93, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'TK A', NULL, NULL, NULL, 'Tengah', 99, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(94, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'TK A', NULL, '4', NULL, 'Tengah', 100, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(95, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'TK A', '1', '10', NULL, 'Tengah', 101, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(96, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'TK A', '1', '1', NULL, 'Tengah', 102, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(97, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'TK A', NULL, '15', NULL, 'Tengah', 103, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(98, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'TK A', NULL, '6', NULL, 'Tengah', 104, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(99, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'TK A', NULL, '9', NULL, 'Tengah', 105, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(100, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'TK A', NULL, '13', NULL, 'Tengah', 106, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(101, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'TK A', NULL, NULL, NULL, 'Tengah', 107, 4, 2, 1, '2022-09-29 05:58:11', '2022-09-29 05:58:11'),
(102, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', '7', '3', NULL, 'Tengah', 131, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(103, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'TK B', NULL, NULL, NULL, 'Tengah', 132, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(104, 'TK001618', 'SYIFA NUR AINI', 'B2', 'TK B', NULL, '8', NULL, 'Tengah', 133, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(105, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'TK B', '1', NULL, NULL, 'Tengah', 134, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(106, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'TK B', '3', NULL, NULL, 'Tengah', 135, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(107, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'TK B', NULL, '1', NULL, 'Tengah', 136, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(108, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'TK B', NULL, '1', NULL, 'Tengah', 137, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(109, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'TK B', '1', NULL, NULL, 'Tengah', 138, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(110, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'TK B', NULL, '17', NULL, 'Tengah', 139, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(111, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'TK B', NULL, '1', NULL, 'Tengah', 140, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(112, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'TK B', '4', '8', NULL, 'Tengah', 141, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(113, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'TK B', NULL, '3', NULL, 'Tengah', 142, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(114, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'TK B', '1', '5', NULL, 'Tengah', 143, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(115, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'TK B', NULL, '3', NULL, 'Tengah', 144, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(116, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'TK B', '4', '2', NULL, 'Tengah', 145, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(117, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'TK B', '1', '11', NULL, 'Tengah', 146, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(118, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'TK B', NULL, NULL, NULL, 'Tengah', 147, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(119, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'TK B', NULL, '4', NULL, 'Tengah', 148, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(120, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'TK B', NULL, '11', NULL, 'Tengah', 149, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(121, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'TK B', NULL, '3', NULL, 'Tengah', 150, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(122, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'TK B', '6', '4', NULL, 'Tengah', 151, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46'),
(123, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'TK B', '1', '6', NULL, 'Tengah', 152, 5, 1, 1, '2022-09-29 21:53:46', '2022-09-29 21:53:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_indicators`
--

CREATE TABLE `data_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `development` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `master_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_indicators`
--

INSERT INTO `data_indicators` (`id`, `area`, `development`, `indicators`, `jenjang`, `periode`, `semester`, `tahunajaran`, `status`, `area_id`, `development_id`, `jenjang_id`, `master_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menggambar & Mewarnai', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Sains', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Happy Cooking', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menari', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menyanyi', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Puppet Show', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Karate', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Futsal', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 3, 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menggambar & Mewarnai', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Sains', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Happy Cooking', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menari', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menyanyi', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Puppet Show', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Karate', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Futsal', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 2, 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menggambar & Mewarnai', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Sains', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Happy Cooking', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menari', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Menyanyi', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Puppet Show', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Karate', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Pengembangan  Bakat dan Minat', 'Kegiatan Ekstrakurikuler', 'Futsal', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 1, 1, 1, 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Takbiratul Ihram', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 3, 7, 1, '2022-09-18 10:21:19', '2022-09-18 10:21:19'),
(26, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Takbiratul Ihram', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 2, 7, 1, '2022-09-18 10:26:18', '2022-09-18 10:26:18'),
(27, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Do\'a Iftitah', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 2, 18, 1, '2022-09-18 10:27:26', '2022-09-18 10:27:26'),
(28, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Takbiratul ihram,  Do\'a Iftitah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 3, 2, 1, 19, 1, '2022-09-18 10:29:43', '2022-09-27 09:05:04'),
(29, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Do\'a sujud', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 1, 20, 1, '2022-09-18 10:32:52', '2022-09-18 10:32:52'),
(30, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Do\'a Ruku\'', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 1, 9, 1, '2022-09-18 10:33:16', '2022-09-18 10:33:16'),
(31, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Do\'a I\'tidal', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 1, 21, 1, '2022-09-18 10:33:29', '2022-09-18 10:33:29'),
(32, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Do\'a sesudah wudhu', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 1, 22, 1, '2022-09-18 10:33:46', '2022-09-18 10:33:46'),
(33, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Ta\'awudz, Basmalah', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 4, 3, 3, 1, 1, '2022-09-19 01:01:53', '2022-09-27 09:42:35'),
(34, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Syahadat', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 5, 1, '2022-09-19 01:08:09', '2022-09-19 01:08:09'),
(35, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a bertemu sesama muslim', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 2, 1, '2022-09-19 01:08:45', '2022-09-19 01:08:45'),
(36, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tasbih', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 3, 1, '2022-09-19 01:09:32', '2022-09-19 01:09:32'),
(37, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tahmid', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 8, 1, '2022-09-19 01:21:56', '2022-09-19 01:21:56'),
(38, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a sebelum makan', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 6, 1, '2022-09-19 01:22:32', '2022-09-19 01:22:32'),
(39, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a sesudah makan', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 4, 1, '2022-09-19 01:22:58', '2022-09-19 01:22:58'),
(40, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Ta\'awudz, Basmalah', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 4, 3, 2, 1, 1, '0000-00-00 00:00:00', '2022-09-27 09:38:29'),
(41, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a akan belajar', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a bangun tidur', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a sebelum tidur', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a sesudah makan', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a sebelum makan', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a bertemu sesama muslim', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Syahadat', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Istighfar', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tahlil', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tasbih, Tahmid beserta arti', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 4, 3, 2, 24, 1, '0000-00-00 00:00:00', '2022-09-27 09:37:36'),
(51, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tasbih, Tahmid', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 4, 3, 2, 23, 1, '0000-00-00 00:00:00', '2022-09-27 09:37:53'),
(52, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Ta\'awudz, Basmalah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 4, 3, 1, 1, 1, '0000-00-00 00:00:00', '2022-09-27 09:19:53'),
(53, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tasbih, Tahmid', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 4, 3, 1, 23, 1, '0000-00-00 00:00:00', '2022-09-27 09:08:16'),
(54, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tahlil, Istighfar', 'TK B', 'Tengah', 'Semester 1', '2022/2024', 'Non Aktif', 4, 3, 1, 26, 1, '0000-00-00 00:00:00', '2022-09-27 09:08:38'),
(55, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Syahadat', 'TK B', 'Tengah', 'Semester 1', '2022/2025', 'Aktif', 4, 3, 1, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a sesudah Adzan', 'TK B', 'Tengah', 'Semester 1', '2022/2026', 'Aktif', 4, 3, 1, 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a mengalami kesulitan', 'TK B', 'Tengah', 'Semester 1', '2022/2027', 'Aktif', 4, 3, 1, 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a melihat teman tertawa', 'TK B', 'Tengah', 'Semester 1', '2022/2028', 'Aktif', 4, 3, 1, 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Do\'a keselamatan dunia akhirat', 'TK B', 'Tengah', 'Semester 1', '2022/2029', 'Aktif', 4, 3, 1, 30, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Muatan Lokal', 'Mengenal kosakata dan konsep ide', 'Prakomunikasi, komunikasi sintas, dan literasi akademik dasar.', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 10, 3, 3, 1, '2022-09-19 02:39:45', '2022-09-19 02:39:45'),
(61, 'Muatan Lokal', 'Mengenal kosakata dan konsep ide', 'Level prafonik.', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 10, 3, 4, 1, '2022-09-19 02:40:31', '2022-09-19 02:40:31'),
(62, 'Muatan Lokal', 'Mengenal bunyi huruf', 'Level prafonik.', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 7, 2, 4, 1, '2022-09-19 02:43:54', '2022-09-19 02:43:54'),
(63, 'Muatan Lokal', 'Mengenal huruf', 'Level dasar materi a, i, u, o, e, m.', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 8, 2, 5, 1, '2022-09-19 02:45:11', '2022-09-19 02:45:11'),
(64, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil double konsonan.', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 2, 9, 1, '2022-09-19 02:46:17', '2022-09-19 02:46:17'),
(65, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil double vokal (m, b, p, d, n, t, k, g, c, j, w, y, l, r, s, z, f, v, h).', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 2, 8, 1, '2022-09-19 02:46:55', '2022-09-19 02:46:55'),
(66, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil suku kata terbuka (m, b, p, d, n, t, k, g c, j, w, y, l, r, s, z, f, v, h).', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 2, 6, 1, '2022-09-19 02:47:18', '2022-09-19 02:47:18'),
(67, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil suku kata tertutup (m, b, p, d, n, t, k, g, c, j, w, y, l, r, s, z, f, v, h).', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 2, 7, 1, '2022-09-19 02:47:37', '2022-09-19 02:47:37'),
(68, 'Muatan Lokal', 'Mengenal bunyi huruf', 'Level prafonik.', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 7, 1, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Muatan Lokal', 'Mengenal huruf', 'Level dasar materi a, i, u, o, e, m.', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 8, 1, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil double konsonan.', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 1, 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil double vokal (m, b, p, d, n, t, k, g, c, j, w, y, l, r, s, z, f, v, h).', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 1, 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil suku kata terbuka (m, b, p, d, n, t, k, g c, j, w, y, l, r, s, z, f, v, h).', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 1, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Muatan Lokal', 'Mengenal kata bermakna', 'Level terampil suku kata tertutup (m, b, p, d, n, t, k, g, c, j, w, y, l, r, s, z, f, v, h).', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 9, 1, 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Fatihah', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 3, 1, 1, '2022-09-19 04:11:31', '2022-09-19 04:11:31'),
(75, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'An-Nas', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 3, 2, 1, '2022-09-19 04:11:49', '2022-09-19 04:11:49'),
(76, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Falaq', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 3, 3, 1, '2022-09-19 04:12:08', '2022-09-19 04:12:08'),
(77, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Ikhlas', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 3, 4, 1, '2022-09-19 04:12:24', '2022-09-19 04:12:24'),
(78, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'An-Nas', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Falaq', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Ikhlas', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Lahab', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'An-Nashr', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Kafirun', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Kautsar', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Ma\'un', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Quraysh', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Fiil', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Humazah', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-\'Asr', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'At-Takatsur', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 2, 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Qari\'ah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-\'Adiyat', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Az-Zalzalah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Bayyinah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Qadr', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-\'Alaq', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'At-Tin', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Al-Insyirah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Menghafal (Talaqqi Al Quran)', 'Ad-Dhuha', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 6, 1, 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati PAUD halaman 11', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 3, 1, 1, '2022-09-19 06:43:06', '2022-09-19 06:43:06'),
(102, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati PAUD halaman 22', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 3, 2, 1, '2022-09-19 06:44:34', '2022-09-19 06:44:34'),
(103, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati PAUD halaman 33', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 3, 3, 1, '2022-09-19 06:46:51', '2022-09-19 06:46:51'),
(104, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati PAUD halaman 44', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 3, 4, 1, '2022-09-19 06:47:31', '2022-09-19 06:47:31'),
(105, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 2, 5, 1, '2022-09-19 06:48:54', '2022-09-19 06:48:54'),
(106, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 1 halaman 22', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 2, 6, 1, '2022-09-19 06:51:05', '2022-09-19 06:51:05'),
(107, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 1 halaman 33', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 2, 7, 1, '2022-09-19 06:51:39', '2022-09-19 06:51:39'),
(108, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 1 halaman 44', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 2, 8, 1, '2022-09-19 06:52:07', '2022-09-19 06:52:07'),
(109, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 2 halaman 11', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 1, 9, 1, '2022-09-19 06:53:04', '2022-09-19 06:53:04'),
(110, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 2 halaman 22', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 1, 10, 1, '2022-09-19 06:53:25', '2022-09-19 06:53:25'),
(112, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 2 halaman 33', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 1, 11, 1, '2022-09-19 06:55:03', '2022-09-19 06:55:03'),
(113, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 2 halaman 44', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 1, 12, 1, '2022-09-19 06:55:52', '2022-09-19 06:55:52'),
(114, 'Mampu mengenal hadist dengan benar', 'Mengenal hadist - hadist', 'Tersenyum', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 5, 4, 3, 1, 1, '2022-09-19 07:44:45', '2022-09-19 07:44:45'),
(115, 'Mampu mengenal hadist dengan benar', 'Mengenal hadist - hadist', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 5, 4, 2, 3, 1, '2022-09-19 07:45:18', '2022-09-19 07:45:18'),
(116, 'Mampu mengenal hadist dengan benar', 'Mengenal hadist - hadist', 'Larangan Minum Sambil Berdiri', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 5, 4, 2, 4, 1, '2022-09-19 07:45:37', '2022-09-19 07:45:37'),
(117, 'Mampu mengenal hadist dengan benar', 'Mengenal hadist - hadist', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 5, 4, 1, 3, 1, '2022-09-19 07:45:57', '2022-09-19 07:45:57'),
(118, 'Mampu mengenal hadist dengan benar', 'Mengenal hadist - hadist', 'Larangan Minum Sambil Berdiri', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 5, 4, 1, 4, 1, '2022-09-19 07:46:11', '2022-09-19 07:46:11'),
(119, 'Mampu mengenal hadist dengan benar', 'Mengenal hadist - hadist', 'Tersenyum', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 5, 4, 1, 1, 1, '2022-09-19 07:46:27', '2022-09-19 07:46:27'),
(120, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Membaca Al Quran dengan tartil', 'Tilawati 1 halaman 22', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 6, 5, 1, 6, 1, '2022-09-20 01:05:35', '2022-09-20 01:05:35'),
(121, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Basmalah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 1, 32, 1, '2022-09-27 08:56:30', '2022-09-27 08:56:30'),
(122, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Ta\'awudz', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 1, 31, 1, '2022-09-27 09:12:02', '2022-09-27 09:12:02'),
(123, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tasbih', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 1, 3, 1, '2022-09-27 09:12:49', '2022-09-27 09:12:49'),
(124, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tahmid', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 1, 8, 1, '2022-09-27 09:13:16', '2022-09-27 09:13:16'),
(125, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tahlil', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 1, 15, 1, '2022-09-27 09:13:48', '2022-09-27 09:13:48'),
(126, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Istighfar', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 1, 17, 1, '2022-09-27 09:14:46', '2022-09-27 09:14:46'),
(127, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Takbiratul Ihram', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Non Aktif', 4, 3, 1, 7, 1, '2022-09-27 09:15:13', '2022-09-27 09:17:40'),
(128, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Takbiratul Ihram', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 1, 7, 1, '2022-09-27 09:18:41', '2022-09-27 09:18:41'),
(129, 'Mampu beribadah  dengan benar', 'Mengenal Ibadah praktis sholat', 'Do\'a Iftitah', 'TK B', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 3, 2, 1, 18, 1, '2022-09-27 09:19:08', '2022-09-27 09:19:08'),
(130, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Basmalah', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 32, 1, '2022-09-27 09:38:46', '2022-09-27 09:38:46'),
(131, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Ta\'awudz', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 31, 1, '2022-09-27 09:39:15', '2022-09-27 09:39:15'),
(132, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tasbih', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 3, 1, '2022-09-27 09:39:47', '2022-09-27 09:39:47'),
(133, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Tahmid', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 2, 8, 1, '2022-09-27 09:40:08', '2022-09-27 09:40:08'),
(136, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Ta\'awudz', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 31, 1, '2022-09-27 09:42:56', '2022-09-27 09:42:56'),
(137, 'Mampu mengenal doa-doa harian dengan benar', 'Mengenal doa-doa harian', 'Basmalah', 'PG', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 4, 3, 3, 32, 1, '2022-09-27 09:43:13', '2022-09-27 09:43:13'),
(138, 'Muatan Lokal', 'Mengenal kosakata dan konsep ide', 'Prakomunikasi, komunikasi sintas, dan literasi akademik dasar.', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 10, 2, 3, 1, '2022-09-28 01:55:17', '2022-09-28 01:55:17'),
(139, 'Muatan Lokal', 'Mengenal kosakata dan konsep ide', 'Prakomunikasi dan komunikasi sintas.', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 10, 2, 2, 1, '2022-09-28 02:31:22', '2022-09-28 02:31:22'),
(140, 'Muatan Lokal', 'Mengenal kosakata dan konsep ide', 'Prakomunikasi.', 'TK A', 'Tengah', 'Semester 1', '2022/2023', 'Aktif', 2, 10, 2, 1, 1, '2022-09-28 02:31:43', '2022-09-28 02:31:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_murid`
--

CREATE TABLE `data_murid` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `absen` int(11) NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahunajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahunajaran_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_murid`
--

INSERT INTO `data_murid` (`id`, `nis`, `nama`, `absen`, `kelas`, `jenjang`, `extra`, `tahunajaran`, `siswa_id`, `kelas_id`, `jenjang_id`, `extra_id`, `tahunajaran_id`, `created_at`, `updated_at`) VALUES
(1, 'PG000981', 'ALTHAFANDRA GAVIN ABQARY', 1, 'PG 1', 'PG', NULL, '2022/2023', 1, 8, 3, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'PG000982', 'ARFAN MUHAMMAD AL RAIS', 2, 'PG 1', 'PG', NULL, '2022/2023', 2, 8, 3, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'PG000984', 'AZIRAH NASYWA ALIS', 3, 'PG 1', 'PG', '', '2022/2023', 3, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'PG000993', 'CARISSA NAMIRA PUTRI', 4, 'PG 1', 'PG', '', '2022/2023', 4, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'PG000985', 'HAMZAH AL QORNI DANISWARA', 5, 'PG 1', 'PG', '', '2022/2023', 5, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'PG000979', 'JAN CETTA NARENDRA', 6, 'PG 1', 'PG', '', '2022/2023', 6, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'PG000995', 'MUHAMMAD FATIH ALHAKIM', 7, 'PG 1', 'PG', '', '2022/2023', 7, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'PG000990', 'RAFANDA AINAYYA WIDODO', 8, 'PG 1', 'PG', '', '2022/2023', 8, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'PG000988', 'SARAH AISYAH', 9, 'PG 1', 'PG', '', '2022/2023', 9, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'PG000976', 'MUHAMMAD YAHYA AL-BASSAM', 10, 'PG 1', 'PG', '', '2022/2023', 10, 8, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'PG000989', 'ABRAHAM BANYU NARENDRA', 1, 'PG 2', 'PG', NULL, '2022/2023', 11, 9, 3, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'PG000987', 'AKMAL KHALID KATITO', 2, 'PG 2', 'PG', NULL, '2022/2023', 12, 9, 3, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'PG000986', 'FAYYADH KHAEDAR PURWANTO', 3, 'PG 2', 'PG', '', '2022/2023', 13, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'PG000994', 'HARITSAH GHANI PUTRANTO', 4, 'PG 2', 'PG', '', '2022/2023', 14, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'PG000980', 'JELITA ZAHIRA CELESTYN', 5, 'PG 2', 'PG', '', '2022/2023', 15, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'PG000977', 'KAYLILA SHAFIYAZEEMA BHASKARA', 6, 'PG 2', 'PG', '', '2022/2023', 16, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'PG000991', 'PRINCESSA CLEMIRA ZOEYIKU RIZKY', 7, 'PG 2', 'PG', '', '2022/2023', 17, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'PG000983', 'SARAH CHANDINI GAYATRI', 8, 'PG 2', 'PG', '', '2022/2023', 18, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'PG000992', 'LUQMAN ABDURRAHMAN MUTTAQIN RAMADHANA', 9, 'PG 2', 'PG', '', '2022/2023', 19, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'PG000996', 'NAUFAL MUHAMMAD ZAIDAN ALBARR', 10, 'PG 2', 'PG', '', '2022/2023', 20, 9, 3, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'TK001704', 'ADREENA KANYA MARDHIKA', 1, 'A1', 'TK A', NULL, '2022/2023', 21, 3, 2, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'TK001690', 'ALESHA KANIA ZHAFIRAH KURNIAWAN', 2, 'A1', 'TK A', NULL, '2022/2023', 22, 3, 2, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'TK001708', 'ALFATIH MAULANA IRAWAN', 3, 'A1', 'TK A', '', '2022/2023', 23, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'TK001694', 'ALMEERA MAFAZA ALESHA RIZKY', 4, 'A1', 'TK A', '', '2022/2023', 24, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'TK001662', 'ATHAR ARSYAD UTOMO', 5, 'A1', 'TK A', '', '2022/2023', 25, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'TK001670', 'AYRA MYSHA ALMAHYRA', 6, 'A1', 'TK A', '', '2022/2023', 26, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'TK001671', 'AZMIYA KHALISA DZAHIN', 7, 'A1', 'TK A', '', '2022/2023', 27, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'TK001723', 'BHUMI DAKSYA DAMARLANGIT', 8, 'A1', 'TK A', '', '2022/2023', 28, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'TK001659', 'FARAH ANINDITA AZZAHRA', 9, 'A1', 'TK A', '', '2022/2023', 29, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'TK001682', 'FATHAN NAUSHAD WAHYUDI', 10, 'A1', 'TK A', '', '2022/2023', 30, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'TK001658', 'HANEENA FATHIYA AZZAHRA', 11, 'A1', 'TK A', '', '2022/2023', 31, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'TK001676', 'HATTA MEDINA', 12, 'A1', 'TK A', '', '2022/2023', 32, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'TK001679', 'HIRO AZZIZURRAHMAN WIJAYANTO', 13, 'A1', 'TK A', '', '2022/2023', 33, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'TK001687', 'KAI RASENDRIA NUR MUNANDAR', 14, 'A1', 'TK A', '', '2022/2023', 34, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'TK001692', 'KINARA ZEA MAHREENNISA', 15, 'A1', 'TK A', '', '2022/2023', 35, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'TK001684', 'LINKA AZKADINA AHMAD', 16, 'A1', 'TK A', '', '2022/2023', 36, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'TK001700', 'MUHAMMAD HANAN ASH-SHIDDIQ', 17, 'A1', 'TK A', '', '2022/2023', 37, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'TK001713', 'MUHAMMAD ABIZARD AMRULLOH', 18, 'A1', 'TK A', '', '2022/2023', 38, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'TK001734', 'MUHAMMAD SYATHIR FAUZAN', 19, 'A1', 'TK A', '', '2022/2023', 39, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'TK001689', 'QONITA HUMAIRA OELIL ALBAB', 20, 'A1', 'TK A', '', '2022/2023', 40, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'TK001664', 'R.A. SHAYNALA ZALIKA QIANZI', 21, 'A1', 'TK A', '', '2022/2023', 41, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'TK001718', 'ROMEESA ARSYILA FARZANA', 22, 'A1', 'TK A', '', '2022/2023', 42, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'TK001660', 'RANIA KHAIRUN NAJMAH AGHNIYAH', 23, 'A1', 'TK A', '', '2022/2023', 43, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'TK001711', 'TSAQIF ARSYANENDRA CALIEF', 24, 'A1', 'TK A', '', '2022/2023', 44, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'TK001738', 'OMAR ABRAHAMALIQ ANSTIAN', 25, 'A1', 'TK A', '', '2022/2023', 45, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'TK001740', 'ARKANANTA MALEEQ KAMESHWARA', 26, 'A1', 'TK A', '', '2022/2023', 46, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'TK001739', 'ABDULLAH AZZAM SUBIANTOKO', 27, 'A1', 'TK A', '', '2022/2023', 47, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'TK001741', 'RAFASYA AKELA HERMAWAN', 28, 'A1', 'TK A', '', '2022/2023', 48, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'TK001746', 'ABHIPRAYA LUCKMAN EL FAUZIE', 29, 'A1', 'TK A', '', '2022/2023', 49, 3, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 1, 'A2', 'TK A', NULL, '2022/2023', 50, 1, 2, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 2, 'A2', 'TK A', NULL, '2022/2023', 51, 1, 2, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 3, 'A2', 'TK A', '', '2022/2023', 52, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 4, 'A2', 'TK A', '', '2022/2023', 53, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 5, 'A2', 'TK A', '', '2022/2023', 54, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'TK001706', 'ASSYFA PUTRI PURWANTO', 6, 'A2', 'TK A', '', '2022/2023', 55, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'TK001699', 'AZKADINA KIREI MUFIA', 7, 'A2', 'TK A', '', '2022/2023', 56, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 8, 'A2', 'TK A', '', '2022/2023', 57, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 9, 'A2', 'TK A', '', '2022/2023', 58, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 10, 'A2', 'TK A', '', '2022/2023', 59, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'TK001717', 'GALANG AZKA NARENDRA', 11, 'A2', 'TK A', '', '2022/2023', 60, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'TK001707', 'GENEVIEVE NABILA RAHMA', 12, 'A2', 'TK A', '', '2022/2023', 61, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'TK001715', 'HANUM NABILA JATMIKO', 13, 'A2', 'TK A', '', '2022/2023', 62, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 14, 'A2', 'TK A', '', '2022/2023', 63, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 15, 'A2', 'TK A', '', '2022/2023', 64, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 16, 'A2', 'TK A', '', '2022/2023', 65, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 17, 'A2', 'TK A', '', '2022/2023', 66, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 18, 'A2', 'TK A', '', '2022/2023', 67, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 19, 'A2', 'TK A', '', '2022/2023', 68, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 20, 'A2', 'TK A', '', '2022/2023', 69, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 21, 'A2', 'TK A', '', '2022/2023', 70, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 22, 'A2', 'TK A', '', '2022/2023', 71, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 23, 'A2', 'TK A', '', '2022/2023', 72, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'TK001673', 'SRIKANDI PUTRI UTAMI', 24, 'A2', 'TK A', '', '2022/2023', 73, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'TK001736', 'ARSYA ADITYA RAHMAN', 25, 'A2', 'TK A', '', '2022/2023', 74, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'TK001737', 'ALIYA ANJANI AKHYAR', 26, 'A2', 'TK A', '', '2022/2023', 75, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'TK001742', 'AIRIN AZKA MUMTAZA', 27, 'A2', 'TK A', '', '2022/2023', 76, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'TK001744', 'TAQIYA ALESHA MAHIRA', 28, 'A2', 'TK A', '', '2022/2023', 77, 1, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 1, 'A3', 'TK A', NULL, '2022/2023', 78, 4, 2, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 2, 'A3', 'TK A', NULL, '2022/2023', 79, 4, 2, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 3, 'A3', 'TK A', '', '2022/2023', 80, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'TK001661', 'AISYAH RANIAH AZZAHRA', 4, 'A3', 'TK A', '', '2022/2023', 81, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'TK001703', 'AKSA ADINATA NUGROHO', 5, 'A3', 'TK A', '', '2022/2023', 82, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'TK001719', 'ARA ADZKIA HILYA', 6, 'A3', 'TK A', '', '2022/2023', 83, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 7, 'A3', 'TK A', '', '2022/2023', 84, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'TK001705', 'ASYHAM WAFI ALFARISH', 8, 'A3', 'TK A', '', '2022/2023', 85, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 9, 'A3', 'TK A', '', '2022/2023', 86, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'TK001663', 'AULIA FATMA ADIFA', 10, 'A3', 'TK A', '', '2022/2023', 87, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'TK001677', 'CLESYA SHAFARA FERNADO', 11, 'A3', 'TK A', '', '2022/2023', 88, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 12, 'A3', 'TK A', '', '2022/2023', 89, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'TK001725', 'GIFA AUDIFARAH', 13, 'A3', 'TK A', '', '2022/2023', 90, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'TK001678', 'HAFIZ RAFI RABBANI', 14, 'A3', 'TK A', '', '2022/2023', 91, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 15, 'A3', 'TK A', '', '2022/2023', 92, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'TK001712', 'MUHAMMAD HANIF SYAM', 16, 'A3', 'TK A', '', '2022/2023', 93, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 17, 'A3', 'TK A', '', '2022/2023', 94, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 18, 'A3', 'TK A', '', '2022/2023', 95, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 19, 'A3', 'TK A', '', '2022/2023', 96, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 20, 'A3', 'TK A', '', '2022/2023', 97, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'TK001720', 'NOURA RAYA SASHIKIRANA', 21, 'A3', 'TK A', '', '2022/2023', 98, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 22, 'A3', 'TK A', '', '2022/2023', 99, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 23, 'A3', 'TK A', '', '2022/2023', 100, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'TK001730', 'SADJIWO DAMAR KHAISANU', 24, 'A3', 'TK A', '', '2022/2023', 101, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 25, 'A3', 'TK A', '', '2022/2023', 102, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'TK001721', 'UMAIZA AZKADINA', 26, 'A3', 'TK A', '', '2022/2023', 103, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 27, 'A3', 'TK A', '', '2022/2023', 104, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 28, 'A3', 'TK A', '', '2022/2023', 105, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 29, 'A3', 'TK A', '', '2022/2023', 106, 4, 2, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'TK001606', 'ACHMAD SAKHA ALFATIH', 1, 'B1', 'TK B', NULL, '2022/2023', 107, 2, 1, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'TK001552', 'ADAM FAIZ AL ARKHAN', 2, 'B1', 'TK B', NULL, '2022/2023', 108, 2, 1, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'TK001635', 'ADHYASTHA TARIMAULI TUA SIRAIT', 3, 'B1', 'TK B', '', '2022/2023', 109, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'TK001628', 'ADIBA ZAREEN NUFA', 4, 'B1', 'TK B', '', '2022/2023', 110, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'TK001655', 'AHMAD SALAHUDDIN KARIM', 5, 'B1', 'TK B', '', '2022/2023', 111, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'TK001728', 'AINAYYA ASMA PRATOMO', 6, 'B1', 'TK B', '', '2022/2023', 112, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'TK001622', 'AQILAH AZZALEA HULWAH', 7, 'B1', 'TK B', '', '2022/2023', 113, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'TK001674', 'ARETHA ZAYNA ULIMA', 8, 'B1', 'TK B', '', '2022/2023', 115, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'TK001656', 'ARSYA REINDRA ZEN', 9, 'B1', 'TK B', '', '2022/2023', 116, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'TK001624', 'AZKIYA NURIN NISA\'', 10, 'B1', 'TK B', '', '2022/2023', 117, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'TK001614', 'AZZAM MUMTAZ SHAWQY', 11, 'B1', 'TK B', '', '2022/2023', 118, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'TK001633', 'DEVAN DANADYAKSA MULYANI', 12, 'B1', 'TK B', '', '2022/2023', 119, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'TK001637', 'EVANDER ALKHALIFI ARSYANTO', 13, 'B1', 'TK B', '', '2022/2023', 120, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'TK001543', 'HASNA ALTHAFUNNISA BACHTIAR', 14, 'B1', 'TK B', '', '2022/2023', 121, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'TK001620', 'JIHAN ANINDYA REANDRA SHANUM', 15, 'B1', 'TK B', '', '2022/2023', 122, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'TK001609', 'KHAIRUNNISA AZZAHRA DYANDRA H', 16, 'B1', 'TK B', '', '2022/2023', 123, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'TK001619', 'MAUDY SHINTA RAMADHANI', 17, 'B1', 'TK B', '', '2022/2023', 124, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'TK001608', 'M. AGAM AL BARRA', 18, 'B1', 'TK B', '', '2022/2023', 125, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'TK001645', 'M. ALIYANDI HAZZA', 19, 'B1', 'TK B', '', '2022/2023', 126, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'TK001623', 'M. ARKHA ARYASTIA', 20, 'B1', 'TK B', '', '2022/2023', 127, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'TK001613', 'RAKHSHANDRINA ALESHA ZAHEERA', 21, 'B1', 'TK B', '', '2022/2023', 128, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'TK001629', 'SAKHA ELFATHAN KUSUMA ZHAFRAN', 22, 'B1', 'TK B', '', '2022/2023', 129, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'TK001748', 'ANINDYA RAIMA DANASWORO', 23, 'B1', 'TK B', '', '2022/2023', 130, 2, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 1, 'B2', 'TK B', NULL, '2022/2023', 131, 5, 1, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 2, 'B2', 'TK B', NULL, '2022/2023', 132, 5, 1, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'TK001618', 'SYIFA NUR AINI', 3, 'B2', 'TK B', '', '2022/2023', 133, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 4, 'B2', 'TK B', '', '2022/2023', 134, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'TK001639', 'AULIYA ADILA BILQIS', 5, 'B2', 'TK B', '', '2022/2023', 135, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 6, 'B2', 'TK B', '', '2022/2023', 136, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'TK001648', 'AZKIA SHINTA NURAINI', 7, 'B2', 'TK B', '', '2022/2023', 137, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 8, 'B2', 'TK B', '', '2022/2023', 138, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 9, 'B2', 'TK B', '', '2022/2023', 139, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 10, 'B2', 'TK B', '', '2022/2023', 140, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'TK001611', 'FALAHILMI AZKA TAUFIK', 11, 'B2', 'TK B', '', '2022/2023', 141, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'TK001598', 'HARIS AHMAD FAUDZAN', 12, 'B2', 'TK B', '', '2022/2023', 142, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 13, 'B2', 'TK B', '', '2022/2023', 143, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 14, 'B2', 'TK B', '', '2022/2023', 144, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'TK001538', 'KIANO KARIM RAMAZAN', 15, 'B2', 'TK B', '', '2022/2023', 145, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 16, 'B2', 'TK B', '', '2022/2023', 146, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'TK001603', 'M. HATTA RAFSAN GHANI', 17, 'B2', 'TK B', '', '2022/2023', 147, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 18, 'B2', 'TK B', '', '2022/2023', 148, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'TK001724', 'RADYANA ALESHA PRAMESTI', 19, 'B2', 'TK B', '', '2022/2023', 149, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'TK001616', 'VALERIE FIDELYA GIOVANI', 20, 'B2', 'TK B', '', '2022/2023', 150, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 21, 'B2', 'TK B', '', '2022/2023', 151, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'TK001638', 'ZIDNI HASSANAH QOLBU', 22, 'B2', 'TK B', '', '2022/2023', 152, 5, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'TK001625', 'AL BARR MUHAMMAD RAFASYA', 1, 'B3', 'TK B', NULL, '2022/2023', 153, 6, 1, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'TK001722', 'ALARIC  RASYID ARDIANTO', 2, 'B3', 'TK B', NULL, '2022/2023', 154, 6, 1, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'TK001647', 'ALTA THANISA SANSU', 3, 'B3', 'TK B', '', '2022/2023', 155, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'TK001626', 'ANDI AZZAM HAMZAH DJOEDDAWI', 4, 'B3', 'TK B', '', '2022/2023', 156, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'TK001652', 'ARAZKA RADEYA ZHAAFIR', 5, 'B3', 'TK B', '', '2022/2023', 157, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'TK001576', 'ATHALLAH FAUSTINE ADIYANT', 6, 'B3', 'TK B', '', '2022/2023', 158, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'TK001630', 'HANIFA NAFIA ALMEERRA', 7, 'B3', 'TK B', '', '2022/2023', 159, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'TK001643', 'KAREEM ABDUL HARRAZ AL AYYUBI', 8, 'B3', 'TK B', '', '2022/2023', 160, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'TK001599', 'KIRANA ANINDYA TUNGGA DEWI', 9, 'B3', 'TK B', '', '2022/2023', 161, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'TK001631', 'MISHA AQILLA SHAZFA KRESNADI', 10, 'B3', 'TK B', '', '2022/2023', 162, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'TK001601', 'MUHAMMAD AFDHALUSH SHOLAH HERMAWAN', 11, 'B3', 'TK B', '', '2022/2023', 163, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'TK001596', 'M. ARKAN AL FATIH', 12, 'B3', 'TK B', '', '2022/2023', 164, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'TK001654', 'NAFEESHA ALMAHYRA PRAMANA PUTRI', 13, 'B3', 'TK B', '', '2022/2023', 165, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'TK001649', 'NARASHYA KHAIRA RIZHANI', 14, 'B3', 'TK B', '', '2022/2023', 166, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'TK001597', 'NIRVANA KARA RAIZANDHA', 15, 'B3', 'TK B', '', '2022/2023', 167, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'TK001617', 'NISA SHAKILA RAMADHANI', 16, 'B3', 'TK B', '', '2022/2023', 168, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'TK001513', 'NISMARA FARZANA AISHA RATIFA', 17, 'B3', 'TK B', '', '2022/2023', 169, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'TK001650', 'QASIRATUT TARFIIN', 18, 'B3', 'TK B', '', '2022/2023', 170, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'TK001644', 'RAFFASYA ARKAAN ALHAQQI', 19, 'B3', 'TK B', '', '2022/2023', 171, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'TK001691', 'SHAKILA INARA MARITZA', 20, 'B3', 'TK B', '', '2022/2023', 172, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'TK001627', 'ADREENA MALIEKA KHAIRIY', 21, 'B3', 'TK B', '', '2022/2023', 173, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'TK001612', 'ZAIDAN AHMAD ALKAF', 22, 'B3', 'TK B', '', '2022/2023', 175, 6, 1, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pengajar`
--

CREATE TABLE `data_pengajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `tahunajaran_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_pengajar`
--

INSERT INTO `data_pengajar` (`id`, `nip`, `nama`, `kelas`, `jenjang`, `tahunajaran`, `guru_id`, `kelas_id`, `tahunajaran_id`, `created_at`, `updated_at`) VALUES
(2, '0985.03155', 'Nur Laila Wardah, S.Pd.I.S.Pd', 'B3', 'TK B', '2022/2023', 13, 6, 3, '2022-09-12 07:06:29', '2022-09-12 07:06:29'),
(3, '0687.03064', 'Wara Rina Wahyuni, S.E.S.Pd', 'B2', 'TK B', '2022/2023', 11, 5, 3, '2022-09-12 07:06:47', '2022-09-12 07:06:47'),
(4, '1688.03263', 'Novidatul Faliyah, S.Pd', 'B1', 'TK B', '2022/2023', 9, 2, 3, '2022-09-12 07:07:24', '2022-09-12 07:07:24'),
(5, '1689.03264', 'Lia Maf\'ula, S.Pd.AUD', 'A3', 'TK A', '2022/2023', 7, 4, 3, '2022-09-12 07:07:41', '2022-09-12 07:07:41'),
(6, '1383.03230', 'Dyah Ayu Wulandari, S.HI.S.Pd', 'A2', 'TK A', '2022/2023', 5, 1, 3, '2022-09-12 07:07:54', '2022-09-12 07:07:54'),
(7, '1179.03199', 'Atiek Dianasari, ST.S.Pd', 'A1', 'TK A', '2022/2023', 3, 3, 3, '2022-09-12 07:08:13', '2022-09-12 07:08:13'),
(8, '1492.03241', 'Kiki Febrianti, S.Pd.I.AUD', 'PG 2', 'PG', '2022/2023', 1, 9, 3, '2022-09-12 07:09:02', '2022-09-12 07:09:02'),
(9, '1492.03241', 'Kiki Febrianti, S.Pd.I.AUD', 'PG 1', 'PG', '2022/2023', 1, 8, 3, '2022-09-12 07:09:17', '2022-09-12 07:09:17'),
(10, '1692.03265', 'Wellya Dian Pratiwi, S.Pd', 'PG 1', 'PG', '2022/2023', 2, 8, 3, '2022-09-28 00:57:16', '2022-09-28 00:57:16'),
(11, '1692.03265', 'Wellya Dian Pratiwi, S.Pd', 'PG 2', 'PG', '2022/2023', 2, 9, 3, '2022-09-28 00:57:45', '2022-09-28 00:57:45'),
(12, '9976.03005', 'Luluk Isfiyah, S.Pd.I, S.Pd', 'A1', 'TK A', '2022/2023', 4, 3, 3, '2022-09-28 00:58:26', '2022-09-28 00:58:26'),
(13, '0371.03017', 'Suryaningsih, S.Pd.I.S.Pd', 'A2', 'TK A', '2022/2023', 6, 1, 3, '2022-09-28 00:58:54', '2022-09-28 00:58:54'),
(14, '1392.03238', 'Wenny Ratnasari Agustin', 'A3', 'TK A', '2022/2023', 8, 4, 3, '2022-09-28 00:59:42', '2022-09-28 00:59:42'),
(15, '0074.03009', 'Anis Darwati, S.Pd.I.S.Pd', 'B1', 'TK B', '2022/2023', 10, 2, 3, '2022-09-28 01:00:13', '2022-09-28 01:00:13'),
(16, '0988.01124', 'Ellin Suhendra, S.Pd.I', 'B2', 'TK B', '2022/2023', 12, 5, 3, '2022-09-28 01:00:36', '2022-09-28 01:00:36'),
(17, '0477.03025', 'Anisah Rahmayanti, S.E.S.Pd', 'B3', 'TK B', '2022/2023', 14, 6, 3, '2022-09-28 01:01:08', '2022-09-28 01:01:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_walikelas`
--

CREATE TABLE `data_walikelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `tahunajaran_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_walikelas`
--

INSERT INTO `data_walikelas` (`id`, `nip`, `nama`, `kelas`, `jenjang`, `tahunajaran`, `guru_id`, `kelas_id`, `tahunajaran_id`, `created_at`, `updated_at`) VALUES
(3, '1492.03241', 'Kiki Febrianti, S.Pd.I.AUD', 'PG 1', 'PG', '2022/2023', 1, 8, 3, '2022-09-12 06:58:54', '2022-09-26 07:19:58'),
(4, '1492.03241', 'Kiki Febrianti, S.Pd.I.AUD', 'PG 2', 'PG', '2022/2023', 1, 9, 3, '2022-09-12 06:59:29', '2022-09-26 07:20:25'),
(5, '1179.03199', 'Atiek Dianasari, ST.S.Pd', 'A1', 'TK A', '2022/2023', 3, 3, 3, '2022-09-12 07:01:48', '2022-09-26 07:21:42'),
(6, '1383.03230', 'Dyah Ayu Wulandari, S.HI.S.Pd', 'A2', 'TK A', '2022/2023', 5, 1, 3, '2022-09-12 07:02:08', '2022-09-26 07:22:51'),
(7, '1689.03264', 'Lia Maf\'ula, S.Pd.AUD', 'A3', 'TK A', '2022/2023', 7, 4, 3, '2022-09-12 07:02:29', '2022-09-26 07:23:40'),
(8, '1688.03263', 'Novidatul Faliyah, S.Pd', 'B1', 'TK B', '2022/2023', 9, 2, 3, '2022-09-12 07:02:55', '2022-09-26 07:26:18'),
(9, '0687.03064', 'Wara Rina Wahyuni, S.E.S.Pd', 'B2', 'TK B', '2022/2023', 11, 5, 3, '2022-09-12 07:03:14', '2022-09-26 07:26:47'),
(10, '0985.03155', 'Nur Laila Wardah, S.Pd.I.S.Pd', 'B3', 'TK B', '2022/2023', 13, 6, 3, '2022-09-12 07:03:33', '2022-09-26 07:27:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` bigint(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `guru_id` int(10) NOT NULL,
  `tahunajaran_id` int(10) NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `id_wali_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `jenjang` varchar(20) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_akun`
--

CREATE TABLE `master_akun` (
  `id` bigint(5) NOT NULL,
  `kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_areas_dev`
--

CREATE TABLE `master_areas_dev` (
  `id` bigint(10) NOT NULL,
  `nama_area` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_areas_dev`
--

INSERT INTO `master_areas_dev` (`id`, `nama_area`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pengembangan  Bakat dan Minat', 'Aktif', '2022-08-29 01:57:36', '2022-08-29 01:57:36'),
(2, 'Muatan Lokal', 'Aktif', '2022-08-29 01:58:21', '2022-08-29 01:58:21'),
(3, 'Mampu beribadah  dengan benar', 'Aktif', '2022-08-29 06:01:47', '2022-09-12 14:58:53'),
(4, 'Mampu mengenal doa-doa harian dengan benar', 'Aktif', '2022-09-12 14:52:45', '2022-09-12 14:52:45'),
(5, 'Mampu mengenal hadist dengan benar', 'Aktif', '2022-09-12 14:59:34', '2022-09-12 14:59:34'),
(6, 'Mampu membaca Al Qur\'an dengan tartil, mentadaburinya, menghafal, dan mengamalkan', 'Aktif', '2022-09-12 14:59:59', '2022-09-12 14:59:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_cbi`
--

CREATE TABLE `master_cbi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cbi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_cbi`
--

INSERT INTO `master_cbi` (`id`, `cbi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Prakomunikasi.', 'Aktif', '2022-09-14 08:58:43', '2022-09-14 09:03:25'),
(2, 'Prakomunikasi dan komunikasi sintas.', 'Aktif', '2022-09-14 09:03:03', '2022-09-14 09:03:39'),
(3, 'Prakomunikasi, komunikasi sintas, dan literasi akademik dasar.', 'Aktif', '2022-09-14 09:03:20', '2022-09-14 09:03:20'),
(4, 'Level prafonik.', 'Aktif', '2022-09-14 09:03:52', '2022-09-14 09:03:52'),
(5, 'Level dasar materi a, i, u, o, e, m.', 'Aktif', '2022-09-14 09:04:01', '2022-09-14 09:04:01'),
(6, 'Level terampil suku kata terbuka (m, b, p, d, n, t, k, g c, j, w, y, l, r, s, z, f, v, h).', 'Aktif', '2022-09-14 09:04:12', '2022-09-14 09:04:12'),
(7, 'Level terampil suku kata tertutup (m, b, p, d, n, t, k, g, c, j, w, y, l, r, s, z, f, v, h).', 'Aktif', '2022-09-14 09:04:29', '2022-09-14 09:04:29'),
(8, 'Level terampil double vokal (m, b, p, d, n, t, k, g, c, j, w, y, l, r, s, z, f, v, h).', 'Aktif', '2022-09-14 09:04:42', '2022-09-14 09:04:42'),
(9, 'Level terampil double konsonan.', 'Aktif', '2022-09-14 09:04:52', '2022-09-14 09:04:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_c_p_s`
--

CREATE TABLE `master_c_p_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_cp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_c_p_s`
--

INSERT INTO `master_c_p_s` (`id`, `nama_cp`, `status_aktif`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Nilai Agama dan Budi Pekerti ', 'Aktif', 'Aspek perkembangan Nilai agama dan moral', NULL, NULL),
(2, 'Jati Diri', 'Aktif', 'Aspek perkembangan: fisik motorik dan sosial emosional', NULL, NULL),
(3, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Aktif', 'Aspek perkembangan: bahasa dan kognitif', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_dev_achiev`
--

CREATE TABLE `master_dev_achiev` (
  `id` bigint(10) NOT NULL,
  `area_id` bigint(10) NOT NULL,
  `nama_achievment` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_dev_achiev`
--

INSERT INTO `master_dev_achiev` (`id`, `area_id`, `nama_achievment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kegiatan Ekstrakurikuler', 'Aktif', '2022-08-29 06:39:05', '2022-08-29 07:11:05'),
(2, 3, 'Mengenal Ibadah praktis sholat', 'Aktif', '2022-09-12 15:24:47', '2022-09-12 15:24:47'),
(3, 4, 'Mengenal doa-doa harian', 'Aktif', '2022-09-12 15:25:03', '2022-09-12 15:25:03'),
(4, 5, 'Mengenal hadist - hadist', 'Aktif', '2022-09-12 15:25:20', '2022-09-12 15:25:20'),
(5, 6, 'Membaca Al Quran dengan tartil', 'Aktif', '2022-09-12 15:25:53', '2022-09-12 15:25:53'),
(6, 6, 'Menghafal (Talaqqi Al Quran)', 'Aktif', '2022-09-12 15:26:31', '2022-09-12 15:26:31'),
(7, 2, 'Mengenal bunyi huruf', 'Aktif', '2022-09-12 15:27:46', '2022-09-12 15:27:46'),
(8, 2, 'Mengenal huruf', 'Aktif', '2022-09-12 15:28:02', '2022-09-12 15:28:02'),
(9, 2, 'Mengenal kata bermakna', 'Aktif', '2022-09-12 15:28:19', '2022-09-12 15:28:19'),
(10, 2, 'Mengenal kosakata dan konsep ide', 'Aktif', '2022-09-19 02:36:41', '2022-09-19 02:36:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_doa_harian`
--

CREATE TABLE `master_doa_harian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doa_harian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_doa_harian`
--

INSERT INTO `master_doa_harian` (`id`, `doa_harian`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ta\'awudz, Basmalah', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Do\'a bertemu sesama muslim', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Tasbih', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Do\'a sesudah makan', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Syahadat', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Do\'a sebelum makan', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Takbiratul Ihram', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Tahmid', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Do\'a Ruku\'', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Do\'a bangun tidur', 'Aktif', '0000-00-00 00:00:00', '2022-09-14 03:30:00'),
(11, 'Do\'a kedua orang tua', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Do\'a masuk rumah', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Do\'a keluar rumah', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Do\'a sebelum tidur', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Tahlil', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Do\'a belajar', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Istighfar', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Do\'a Iftitah', 'Aktif', '2022-09-18 10:27:01', '2022-09-18 10:27:01'),
(19, 'Takbiratul ihram,  Do\'a Iftitah', 'Aktif', '2022-09-18 10:29:19', '2022-09-18 10:29:19'),
(20, 'Do\'a sujud', 'Aktif', '2022-09-18 10:31:29', '2022-09-18 10:31:29'),
(21, 'Do\'a I\'tidal', 'Aktif', '2022-09-18 10:31:47', '2022-09-18 10:31:47'),
(22, 'Do\'a sesudah wudhu', 'Aktif', '2022-09-18 10:32:03', '2022-09-18 10:32:03'),
(23, 'Tasbih, Tahmid', 'Aktif', '2022-09-19 01:24:16', '2022-09-19 01:24:16'),
(24, 'Tasbih, Tahmid beserta arti', 'Aktif', '2022-09-19 01:24:25', '2022-09-19 01:24:25'),
(25, 'Do\'a akan belajar', 'Aktif', '2022-09-19 01:31:38', '2022-09-19 01:31:38'),
(26, 'Tahlil, Istighfar', 'Aktif', '2022-09-19 01:59:19', '2022-09-19 01:59:19'),
(27, 'Do\'a sesudah Adzan', 'Aktif', '2022-09-19 02:00:22', '2022-09-19 02:00:22'),
(28, 'Do\'a mengalami kesulitan', 'Aktif', '2022-09-19 02:00:37', '2022-09-19 02:00:37'),
(29, 'Do\'a melihat teman tertawa', 'Aktif', '2022-09-19 02:00:50', '2022-09-19 02:00:50'),
(30, 'Do\'a keselamatan dunia akhirat', 'Aktif', '2022-09-19 02:01:02', '2022-09-19 02:01:02'),
(31, 'Ta\'awudz', 'Aktif', '2022-09-26 06:47:04', '2022-09-26 06:47:04'),
(32, 'Basmalah', 'Aktif', '2022-09-26 06:47:19', '2022-09-26 06:47:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_ekstra`
--

CREATE TABLE `master_ekstra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ekstra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_ekstra`
--

INSERT INTO `master_ekstra` (`id`, `ekstra`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Menggambar & Mewarnai', 'Aktif', '2022-09-13 01:16:53', '2022-09-13 01:16:53'),
(2, 'Sains', 'Aktif', '2022-09-13 01:17:06', '2022-09-13 01:20:21'),
(3, 'Happy Cooking', 'Aktif', '2022-09-13 01:20:12', '2022-09-13 01:20:12'),
(4, 'Menari', 'Aktif', '2022-09-13 01:20:30', '2022-09-13 01:20:30'),
(5, 'Menyanyi', 'Aktif', '2022-09-13 01:20:38', '2022-09-13 01:20:38'),
(6, 'Puppet Show', 'Aktif', '2022-09-13 01:20:46', '2022-09-13 01:20:46'),
(7, 'Karate', 'Aktif', '2022-09-13 01:20:53', '2022-09-13 01:20:53'),
(8, 'Futsal', 'Aktif', '2022-09-13 01:20:59', '2022-09-13 01:20:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_elemen_cp`
--

CREATE TABLE `master_elemen_cp` (
  `id` bigint(10) NOT NULL,
  `cp_id` bigint(10) NOT NULL,
  `nama_elemen` text NOT NULL,
  `narasi` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_elemen_cp`
--

INSERT INTO `master_elemen_cp` (`id`, `cp_id`, `nama_elemen`, `narasi`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Anak percaya kepada Tuhan Yang Maha Esa, mulai mengenal dan mempraktikkan ajaran pokok sesuai dengan agama dan kepercayaanNya.', 'Anak percaya kepada Tuhan Yang Maha Esa, mulai mengenal dan mempraktikkan ajaran pokok sesuai dengan agama dan kepercayaanNya.', 'Aktif', NULL, NULL),
(2, 1, 'Anak berpartisipasi aktif dalam menjaga kebersihan, kesehatan dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'Anak berpartisipasi aktif dalam menjaga kebersihan, kesehatan dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'Aktif', NULL, NULL),
(3, 1, 'Anak menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'Anak menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'Aktif', NULL, NULL),
(4, 1, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Aktif', NULL, NULL),
(5, 2, 'Anak mengenali, mengekspresikan, dan mengelola emosi diri serta membangun hubungan sosial secara sehat.', 'Anak mengenali, mengekspresikan, dan mengelola emosi diri serta membangun hubungan sosial secara sehat.', 'Aktif', NULL, NULL),
(6, 2, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'Aktif', NULL, NULL),
(7, 2, 'Anak menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'Anak menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'Aktif', NULL, NULL),
(8, 2, 'Anak menggunakan fungsi gerak (motorik kasar, halus, dan taktil) untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'Anak menggunakan fungsi gerak (motorik kasar, halus, dan taktil) untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'Aktif', NULL, NULL),
(9, 3, 'Anak mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'Anak mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'Aktif', NULL, NULL),
(10, 3, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', 'Aktif', NULL, NULL),
(11, 3, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'Aktif', NULL, NULL),
(12, 3, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'Aktif', NULL, NULL),
(13, 3, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', 'Aktif', NULL, NULL),
(14, 3, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'Aktif', NULL, NULL),
(15, 3, 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'Aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_gurus`
--

CREATE TABLE `master_gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_induk` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_guru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_gurus`
--

INSERT INTO `master_gurus` (`id`, `nomor_induk`, `nama_guru`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, '1492.03241', 'Kiki Febrianti, S.Pd.I.AUD', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1692.03265', 'Wellya Dian Pratiwi, S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '1179.03199', 'Atiek Dianasari, ST.S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '9976.03005', 'Luluk Isfiyah, S.Pd.I, S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '1383.03230', 'Dyah Ayu Wulandari, S.HI.S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '0371.03017', 'Suryaningsih, S.Pd.I.S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '1689.03264', 'Lia Maf\'ula, S.Pd.AUD', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '1392.03238', 'Wenny Ratnasari Agustin', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '1688.03263', 'Novidatul Faliyah, S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '0074.03009', 'Anis Darwati, S.Pd.I.S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '0687.03064', 'Wara Rina Wahyuni, S.E.S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '0988.01124', 'Ellin Suhendra, S.Pd.I', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '0985.03155', 'Nur Laila Wardah, S.Pd.I.S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '0477.03025', 'Anisah Rahmayanti, S.E.S.Pd', 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_hadist`
--

CREATE TABLE `master_hadist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hadist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_hadist`
--

INSERT INTO `master_hadist` (`id`, `hadist`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tersenyum', 'Aktif', '2022-09-14 07:18:17', '2022-09-14 07:18:17'),
(2, 'Larangan Marah', 'Aktif', '2022-09-14 07:18:34', '2022-09-14 07:18:34'),
(3, 'Larangan Makan Sambil Berdiri', 'Aktif', '2022-09-14 07:18:45', '2022-09-14 07:18:45'),
(4, 'Larangan Minum Sambil Berdiri', 'Aktif', '2022-09-14 07:18:55', '2022-09-14 07:18:55'),
(5, 'Sodaqoh', 'Aktif', '2022-09-14 07:19:18', '2022-09-14 07:19:18'),
(6, 'Berbakti Kepada Orang Tua', 'Aktif', '2022-09-14 07:19:30', '2022-09-14 07:27:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_indikator_studentprofile`
--

CREATE TABLE `master_indikator_studentprofile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indikator_studentprofile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','NonAktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_indikator_studentprofile`
--

INSERT INTO `master_indikator_studentprofile` (`id`, `indikator_studentprofile`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Taqwa', 'Aktif', NULL, NULL),
(2, 'Visionary', 'Aktif', NULL, NULL),
(3, 'Thinker ', 'Aktif', NULL, NULL),
(4, 'Responsibility', 'Aktif', NULL, NULL),
(5, 'Tough', 'Aktif', NULL, NULL),
(6, 'Independent', 'Aktif', NULL, NULL),
(7, 'Creative Inovative', 'Aktif', NULL, NULL),
(8, 'Communicator ', 'Aktif', NULL, NULL),
(9, 'Pro Active', 'Aktif', NULL, NULL),
(10, 'Patriotic ', 'Aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jenjang`
--

CREATE TABLE `master_jenjang` (
  `id` int(5) NOT NULL,
  `nama_jenjang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_jenjang`
--

INSERT INTO `master_jenjang` (`id`, `nama_jenjang`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'TK B', 'Aktif', '2022-08-24 13:15:21', '2022-08-24 13:21:11'),
(2, 'TK A', 'Aktif', '2022-08-31 20:37:02', '2022-08-31 20:37:02'),
(3, 'PG', 'Aktif', '2022-09-12 05:34:10', '2022-09-12 05:34:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategoris`
--

CREATE TABLE `master_kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_kategoris`
--

INSERT INTO `master_kategoris` (`id`, `nama_kategori`, `keterangan`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'Kesehatan', 'Indera Tubuh', 'Aktif', '2022-08-19 02:55:22', '2022-08-24 23:41:22'),
(3, 'SMART', '', 'Aktif', '2022-08-19 19:43:59', '2022-08-19 19:43:59'),
(4, 'KREATIF', '', 'Aktif', '2022-08-19 19:44:07', '2022-08-19 19:44:07'),
(5, 'BRAINLESS', '', 'Tidak Aktif', '2022-08-19 19:44:23', '2022-08-19 19:46:48'),
(6, 'Kebersihan', 'Kebersihan Badan', 'Aktif', '2022-08-24 12:03:49', '2022-08-24 12:03:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kelas`
--

CREATE TABLE `master_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_kelas`
--

INSERT INTO `master_kelas` (`id`, `nama_kelas`, `jenjang`, `status`, `jenjang_id`, `created_at`, `updated_at`) VALUES
(1, 'A2', 'TK A', '1', 2, '2022-09-01 20:00:42', '2022-09-12 05:28:01'),
(2, 'B1', 'TK B', '1', 1, '2022-09-01 20:00:55', '2022-09-12 05:28:13'),
(3, 'A1', 'TK A', '1', 2, '2022-09-12 05:28:30', '2022-09-12 05:28:30'),
(4, 'A3', 'TK A', '1', 2, '2022-09-12 05:28:42', '2022-09-12 05:28:42'),
(5, 'B2', 'TK B', '1', 1, '2022-09-12 05:34:39', '2022-09-12 05:34:39'),
(6, 'B3', 'TK B', '1', 1, '2022-09-12 05:34:54', '2022-09-12 05:34:54'),
(7, 'B4', 'TK B', '1', 1, '2022-09-12 05:36:15', '2022-09-12 05:36:15'),
(8, 'PG 1', 'PG', '1', 3, '2022-09-12 05:36:38', '2022-09-12 05:36:38'),
(9, 'PG 2', 'PG', '1', 3, '2022-09-12 05:36:53', '2022-09-12 05:36:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_periode`
--

CREATE TABLE `master_periode` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahunajaran_id` bigint(20) UNSIGNED NOT NULL,
  `tahunmulai` int(11) NOT NULL,
  `tahunselesai` int(11) NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MASTER PERIODE PERSEMESTER \r\nPEMBAGIAN TENGAH SEMESTER DAN AKHIR SEMESTER YG BERUBAH HANYA DI KOLOM PERIODE';

--
-- Dumping data untuk tabel `master_periode`
--

INSERT INTO `master_periode` (`id`, `tahunajaran_id`, `tahunmulai`, `tahunselesai`, `semester_id`, `semester`, `periode`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2022, 2023, 1, 'Semester 1', 'Tengah', '1', '2022-09-15 01:23:40', '2022-09-15 01:23:40'),
(2, 3, 2022, 2023, 2, 'Semester 2', 'Tengah', '0', '2022-09-15 01:24:17', '2022-09-15 01:24:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_perkembangan`
--

CREATE TABLE `master_perkembangan` (
  `id` int(10) NOT NULL,
  `perkembangan` varchar(30) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `status_aktif` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_perkembangan`
--

INSERT INTO `master_perkembangan` (`id`, `perkembangan`, `kategori_id`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'Berat badan', 1, '1', '2022-11-22 23:21:29', '2022-11-22 23:21:29'),
(2, 'Tinggi Badan', 1, '1', '2022-11-22 23:21:52', '2022-11-22 23:21:52'),
(3, 'Lingkar Kepala', 1, '1', NULL, NULL),
(4, 'Kesehatan Mata', 1, '1', NULL, NULL),
(5, 'Kebersihan Rambut dan Kuku', 6, '1', '2022-11-22 23:37:46', '2022-11-22 23:37:46'),
(6, 'Kebersihan Gigi dan Mulut', 6, '1', '2022-11-22 23:37:59', '2022-11-22 23:37:59'),
(7, 'Telinga', 6, '1', '2022-11-22 23:38:13', '2022-11-22 23:38:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_predikat`
--

CREATE TABLE `master_predikat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_predikat`
--

INSERT INTO `master_predikat` (`id`, `kode`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'BB', 'Belum Berkembang', NULL, NULL),
(2, 'MB', 'Mulai Berkembang', NULL, NULL),
(3, 'BSH', 'Berkembang Sesuai Harapan', NULL, NULL),
(4, 'BSB', 'Berkembang Sangat Baik', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_semesters`
--

CREATE TABLE `master_semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang_id` bigint(10) NOT NULL,
  `tahun_ajaran_id` bigint(10) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_semesters`
--

INSERT INTO `master_semesters` (`id`, `nama_semester`, `jenjang_id`, `tahun_ajaran_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Semester 1', 1, 1, 'Aktif', '2022-08-28 21:42:38', '2022-08-28 22:34:00'),
(2, 'Semester 2', 1, 1, 'Aktif', '2022-08-28 22:33:13', '2022-08-28 22:33:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_siswa`
--

CREATE TABLE `master_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `tahunajaran_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panggilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak_ke` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `registrasi_akte_kelahiran_anak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bapak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_bapak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendaftaran_id` int(11) NOT NULL,
  `ppdb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_keluar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_siswa`
--

INSERT INTO `master_siswa` (`id`, `tahun_masuk`, `tahunajaran_masuk`, `nis`, `nama`, `panggilan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_tlp`, `anak_ke`, `nik`, `registrasi_akte_kelahiran_anak`, `nama_bapak`, `pekerjaan_bapak`, `nama_ibu`, `pekerjaan_ibu`, `pendaftaran_id`, `ppdb`, `status`, `tahun_keluar`, `created_at`, `updated_at`) VALUES
(1, 2022, '2022/2023', 'PG000981', 'ALTHAFANDRA GAVIN ABQARY', 'GAVIN', 'Laki-Laki', 'SIDOARJO', '05/12/2018', 'GREEN POLOH B-08, KELOPOSEPULUH, SUKODONO-SIDOARJO', '85697815791', 1, 0, '', 'ANDRI PERMANA PUTRA', 'SWASTA', 'SITI ROHANA', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2022, '2022/2023', 'PG000982', 'ARFAN MUHAMMAD AL RAIS', 'ARFAN', 'Laki-Laki', 'SURABAYA', '17/09/2018', 'GRAND ALOHA REGENCY BLOK A5 NO. 7 WAGE, TAMAN-SIDOARJO', '8113390244', 1, 0, '', 'RYAN PRIAMBODO', 'SWASTA', 'LAKSMI WARDANI AYUNINGTYAS', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2022, '2022/2023', 'PG000984', 'AZIRAH NASYWA ALIS', 'NASYWA', 'Perempuan', 'SURABAYA', '18/10/2018', 'JL. BOHAR TIMUR RT. 12 RW. 07 BOHAR, TAMAN-SIDOARJO', '83847121911', 1, 0, '', 'ARIF KURNIAWAN', 'SWASTA', 'RINDI ASTRINI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2022, '2022/2023', 'PG000993', 'CARISSA NAMIRA PUTRI', 'NAMIRA', 'Perempuan', 'SIDOARJO', '13/04/2019', 'JL. DELIMA B/21 PERUM JOMBANG PERMAI, JOMBANG', '82140800400', 2, 0, '', 'MOCHAMMAD MUCHSIN', 'SWASTA', 'AQUA RAHMA MARGASARI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2022, '2022/2023', 'PG000985', 'HAMZAH AL QORNI DANISWARA', 'HAMZAH', 'Laki-Laki', 'MOJOKERTO', '15/12/2018', 'ASRAMA BRIMOB MEDAENG BLOK A GG. 7 WARU-SIDOARJO', '85648432167', 1, 0, '', 'RAHMAT JULI AGUNG WIDODO', 'POLRI', 'AGUSTINA ALIDA KHOIROTUN NISA', 'POLRI', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2022, '2022/2023', 'PG000979', 'JAN CETTA NARENDRA', 'JAN CETTA', 'Laki-Laki', 'JEMBER', '11/01/2019', 'JL. JERUK IIIC NO. 68E WAGE, SIDOARJO', '82230101011', 1, 0, '', 'ANGGIK RIEZKA APRIYANTO', 'SWASTA', 'DIAN EKA PUSPITASARI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2022, '2022/2023', 'PG000995', 'MUHAMMAD FATIH ALHAKIM', 'FATIH', 'Laki-Laki', 'SURABAYA', '31/08/2018', 'JL. MERBABU BLOK I-27 PERUM. KEPUH PERMAI WARU SIDOARJO', '81939193120', 1, 0, '', 'LUQMAN CHAKIM (ALM)', ' -', 'WAHYU RAKHMAWIYATIE', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2022, '2022/2023', 'PG000990', 'RAFANDA AINAYYA WIDODO', 'NAYA', 'Perempuan', 'SIDOARJO', '31/07/2018', 'TAMAN PONDOK JATI BC-17 RT. 30 RW. 06 WAGE, SIDOARJO', '85232312069', 5, 0, '', 'SARJOE WIDODO', 'WIRASWASTA', 'VINAS VALENTINA DIAN PERTIWI', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 2022, '2022/2023', 'PG000988', 'SARAH AISYAH', 'SARAH', 'Perempuan', 'SURAKARTA', '28/02/2019', 'PERUM TAMAN PONDOK LEGI V P19, PEPELEGI, WARU-SIDOARJO', '89630854620', 3, 0, '', 'GALIH EKA SANJAYA', 'SWASTA', 'PUTRI HABSARI SUNDORO', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2022, '2022/2023', 'PG000976', 'MUHAMMAD YAHYA AL-BASSAM', 'YAHYA', 'Laki-Laki', 'SURABAYA', '04/01/2019', 'JL. KI SURYO JATI SELATAN PERUM SAFIRA BLUE RESORT E 11 SIDOARJO', '81234599747', 1, 0, '', 'BAGUS PRANUGROHO', 'SWASTA', 'NINIK AMBAR SARI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2022, '2022/2023', 'PG000989', 'ABRAHAM BANYU NARENDRA', 'ABRAHAM', 'Laki-Laki', 'SURABAYA', '27/07/2018', 'JL. JATISARI PERMAI VI/I 27 PEPELEGI, WARU-SIDOARJO', '81233315055', 2, 0, '', 'PANJI HARIYO KUSUMA', 'WIRASWASTA', 'AULIA RIZQI NURDIANA', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2022, '2022/2023', 'PG000987', 'AKMAL KHALID KATITO', 'AKMAL', 'Laki-Laki', 'SURABAYA', '27/06/2019', 'BANGAH JAYA INDAH VI NO. 311 B RT.02 RW.07 BANGAH, GEDANGAN-SIDOARJO', '87765007766', 1, 0, '', 'TITO SEPTIAN ADINANDRA ADJI PUTRA', 'BUMD', 'KATI SUCI YOKAWATI', 'DOKTER', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2022, '2022/2023', 'PG000986', 'FAYYADH KHAEDAR PURWANTO', 'FAYYADH', 'Laki-Laki', 'SIDOARJO', '07/08/2018', 'PERUM GRAND ROYAL REGENCY', '8119869090', 2, 0, '', 'ANDI PURWANTO', 'SWASTA', 'RINA WAHYU SURYANI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2022, '2022/2023', 'PG000994', 'HARITSAH GHANI PUTRANTO', 'GHANI', 'Laki-Laki', 'SIDOARJO', '24/06/2019', 'SIMO POMAHAN BARU 1A/10 SURABAYA', '85706476786', 2, 0, '', 'ANTON TRI PUTRANTO, SE', 'SWASTA', 'DR. GHIFA FATIKHA', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2022, '2022/2023', 'PG000980', 'JELITA ZAHIRA CELESTYN', 'JELITA', 'Perempuan', 'SIDOARJO', '07/02/2019', 'JL. PUTRI CANTIK 5 BLOK B7 NO. 4 RT. 04 RW. 18 PERUM PUTRI JUANDA, PEPE, SEDATI-SIDOARJO', '81330657239', 1, 0, '', 'UTU HARIYADI, AMd.T.', 'WIRASWASTA', 'IKA YUNIAR HERMININGRUM. S.Kep.Ns.', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2022, '2022/2023', 'PG000977', 'KAYLILA SHAFIYAZEEMA BHASKARA', 'KAYLILA', 'Perempuan', 'SURABAYA', '18/03/2019', 'TAMAN PONDOK LEGI I BLOK A-3 RT. 7 RW. 8 PEPELEGI, WARU-SIDOARJO', '85649479776', 1, 0, '', 'HANDIKA BHASKARA PRATAMA', 'SWASTA', 'YUWANICHA ASTRY LAILA PERMATASARI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2022, '2022/2023', 'PG000991', 'PRINCESSA CLEMIRA ZOEYIKU RIZKY', 'ZOEYI', 'Perempuan', 'TULUNGAGUNG', '17/10/2018', 'Grand Aloha Regency Blok D6-no.15', '82334770005', 1, 0, '', 'RIZQI NUR A.', 'BPD', 'STEFANI F.O.F', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2022, '2022/2023', 'PG000983', 'SARAH CHANDINI GAYATRI', 'ARA', 'Perempuan', 'SURABAYA', '04/03/2019', 'PERUM GRAND ALOHA REGENCY BLOK A9/11 WAGE, TAMAN-SIDOARJO', '85235665512', 1, 0, '', 'HARYA ANINDITA DIWASACRI', 'SWASTA', 'ABIDA ZURIKA', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 2022, '2022/2023', 'PG000992', 'LUQMAN ABDURRAHMAN MUTTAQIN RAMADHANA', 'RAHMAN', 'Laki-Laki', 'SURABAYA', '22/05/2019', 'ARGOPURO NO. 35 SIDOARJO', '81332163373', 3, 0, '', 'DODDY HIKMAWAN', 'SWASTA', 'DINDA MAHERANI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2022, '2022/2023', 'PG000996', 'NAUFAL MUHAMMAD ZAIDAN ALBARR', 'ZAIDAN', 'Laki-Laki', 'SURABAYA', '22/11/2018', 'JAMBANGAN NO. 53 RT 01 RW 01, SURABAYA', '81216337259', 0, 0, '', 'MOCH. IVI JUNAIDI', '', 'SULISTYO HANDAYANI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2022, '2022/2023', 'TK001704', 'ADREENA KANYA MARDHIKA', 'ANYA', 'Perempuan', 'SURABAYA', '06-Sep-17', 'PERUM WISMA PERMAI JL. JATISARI PERMAI IV BLOK H NO. 4 PEPELEGI, WARU-SIDOARJO', '81234477972', 1, 0, '', 'HENDRA MARDHIKA, SE', 'WIRASWASTA', 'NATALIA SAURMAIDAH LUBIS', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2022, '2022/2023', 'TK001690', 'ALESHA KANIA ZHAFIRAH KURNIAWAN', 'ALESHA', 'Perempuan', 'SIDOARJO', '19-Sep-17', 'GRIYA SEPANJANG B7 SIDOARJO', '8113114200', 2, 0, '', 'FAJAR MUKTI KURNIAWAN', 'SWASTA', 'EVI YULIANTI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 2022, '2022/2023', 'TK001708', 'ALFATIH MAULANA IRAWAN', 'FATIH', 'Laki-Laki', 'SURABAYA', '08-Jan-18', 'GARUDA VIII/K-86 REWWIN, WARU-SIDOARJO', '81249696998', 1, 0, '', 'BAGAS IRAWAN', 'SWASTA', 'SILVIA RUSDIANA', 'NAKES', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 2022, '2022/2023', 'TK001694', 'ALMEERA MAFAZA ALESHA RIZKY', 'ALMEERA', 'Perempuan', 'SIDOARJO', '11-Jul-18', 'PERUM GRIYA PERMATA GEDANGAN A3 NO. 07 SIDOARJO', '8113442678', 3, 0, '', 'RIZKY SUGENG PRABAWANTO', 'WIRASWASTA', 'EVA TRIWULANDARI', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 2022, '2022/2023', 'TK001662', 'ATHAR ARSYAD UTOMO', 'ATHAR', 'Laki-Laki', 'SIDOARJO', '22-Apr-18', 'JL. RAYA KETEGAN NO. 79 TAMAN, SEPANJANG-SIDOARJO', '81334532899', 4, 0, '', 'WAHYUDI UTOMO, SE.', 'SWASTA', 'NUR HIDAYATI, S.Pd.', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 2022, '2022/2023', 'TK001670', 'AYRA MYSHA ALMAHYRA', 'AYRA', 'Perempuan', 'SURABAYA', '12-Des-17', 'JL. KENONGOSARI 6 NO. 39 RT. 05 RW. 02 PEPELEGI, WARU-SIDOARJO', '81234401990', 1, 0, '', 'HERMANTO', 'SWASTA', 'IDA MARIYANI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 2022, '2022/2023', 'TK001671', 'AZMIYA KHALISA DZAHIN', 'MIA', 'Perempuan', 'TULUNGAGUNG', '26-Jun-17', 'PONDOK WAGE INDAH 2 BLOK AA 22 SIDOARJO', '81230121213', 3, 0, '', 'AGUS WAHYUDI', 'ASN', 'LILIK HANDAYANI', 'ASN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 2022, '2022/2023', 'TK001723', 'BHUMI DAKSYA DAMARLANGIT', 'BHUMI', 'Laki-Laki', 'SURABAYA', '21-Apr-18', 'KEDONDONG LOR 4 TENGAH NO. 3 SURABAYA', '81213578978', 1, 0, '', 'DIMAS ARDIANTO', 'SWASTA', 'KENANGA SANI YADIANDANI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 2022, '2022/2023', 'TK001659', 'FARAH ANINDITA AZZAHRA', 'FARAH', 'Perempuan', 'SIDOARJO', '07-Des-17', 'JL. JEND. S. PARMAN IVA NO. 10A RT. 04 RW. 06 WARU-SIDOARJO', '081330337106/081330499702', 1, 0, '', 'MACHMOED CHAIROEL ANWAR', 'SWASTA', 'MEGAH KARTIKA WULANDARI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 2022, '2022/2023', 'TK001682', 'FATHAN NAUSHAD WAHYUDI', 'FATHAN', 'Laki-Laki', 'SIDOARJO', '30-Agu-17', 'KARANGBONG RT. 05 RW. 02 GEDANGAN-SIDOARJO', '82139785478', 2, 0, '', 'HENDRIK TRI WAHYUDI', 'GURU', 'MEMY IKLIMA', 'GURU', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 2022, '2022/2023', 'TK001658', 'HANEENA FATHIYA AZZAHRA', 'HANIN', 'Perempuan', 'SURABAYA', '02-Mar-18', 'WISMA PERMAI REGENCY BLOK CC-25 WARU-SIDOARJO', '8113433635', 3, 0, '', 'ARIF KHUSYAINI', '-', 'DWI RATNAWATI', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 2022, '2022/2023', 'TK001676', 'HATTA MEDINA', 'HEIMA', 'Perempuan', 'SURABAYA', '30-Jun-18', 'GRAND ROYAL REGENCY CLUSTER EDELWEISS BLOK I2/10 WAGE, TAMAN-SIDOARJO', '85203096796', 1, 0, '', 'RIZAL ZAFIKHAL BIAD SEKTYOKO', 'ASN', 'SYAHRILA ROMADHANI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 2022, '2022/2023', 'TK001679', 'HIRO AZZIZURRAHMAN WIJAYANTO', 'HIRO', 'Laki-Laki', 'SURABAYA', '10-Mei-18', 'GRAND ALOHA REGENCY D7-15 SIDOARJO', '85855521712', 1, 0, '', 'ARIF NUR WIJAYANTO', 'SWASTA', 'IZZA MATSALUL KAMILA', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 2022, '2022/2023', 'TK001687', 'KAI RASENDRIA NUR MUNANDAR', 'KAI', 'Laki-Laki', 'SURABAYA', '24-Feb-18', 'JL. JERUK 1 RT. 02 RW. 08 WAGE, TAMAN-SIDOARJO', '82338356088', 1, 0, '', 'ARISMUNANDAR', 'SWASTA', 'YUNITA TRISNANINGDYAH', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 2022, '2022/2023', 'TK001692', 'KINARA ZEA MAHREENNISA', 'KINARA', 'Perempuan', 'SURABAYA', '07-Jun-17', 'PERUM DE FARDA C27 KEBOANANOM, GEDANGAN-SIDOARJO', '82244472665', 1, 0, '', 'ANDIKA ADI SANJAYA PUTRA, SE', 'PNS', 'ANA ERISTIA WULANDARI, S.KOM', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 2022, '2022/2023', 'TK001684', 'LINKA AZKADINA AHMAD', 'LINKA', 'Perempuan', 'SURABAYA', '08-Des-17', 'GRAND ALOHA REGENCY A2/15 WAGE, TAMAN-SIDOARJO', '85895386559', 1, 0, '', 'PILAR SINULINGGA RENGKOT', 'SWASTA', 'EKO JANTI RINJANIKA', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 2022, '2022/2023', 'TK001700', 'MUHAMMAD HANAN ASH-SHIDDIQ', 'HANAN', 'Laki-Laki', 'MALANG', '13-Apr-18', 'TAMAN WAGE REGENCY KAV. 15 SIDOARJO', '81299068280', 2, 0, '', 'PUTU FERLY SETYAWAN', 'SWASTA', 'WIDHI AYU RAKHMA DAMAYANTI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 2022, '2022/2023', 'TK001713', 'MUHAMMAD ABIZARD AMRULLOH', 'EZARD', 'Laki-Laki', 'SURABAYA', '01-Mei-17', 'JL. FLAMBIYAN NO. 24 RT. 2 RW. 2 KUREKSARI, WARU-SIDOARJO', '81259877785', 2, 0, '', 'MUHAMMAD ANTHON NASHRULLOH', 'PNS', 'IIN INDAHWATI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 2022, '2022/2023', 'TK001734', 'MUHAMMAD SYATHIR FAUZAN', 'FAUZAN', 'Laki-Laki', 'SIDOARJO', '28-Jun-18', 'JL TIDAR NO.11 PERUM PEPELEGI INDAH WARU SDA', '81234619381', 2, 0, '', 'THOHIR BASUKI', 'SWASTA', 'AGUSTIN INDRIANI', 'DOKTER GIGI', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 2022, '2022/2023', 'TK001689', 'QONITA HUMAIRA OELIL ALBAB', 'QONITA', 'Perempuan', 'JAKARTA', '16-Okt-17', 'PERUM UNIMAS GARDEN REGENCY BLOK E11 RT. 04 RW. 09 WARU-SIDOARJO', '8113001920', 1, 0, '', 'MR. OELIL ALBAB', 'WIRASWASTA', 'NABILA RACHMADINA', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 2022, '2022/2023', 'TK001664', 'R.A. SHAYNALA ZALIKA QIANZI', 'SHAYNA', 'Perempuan', 'SURABAYA', '02-Nov-18', 'JL. JATISARI PERMAI II E43 PEPELEGI, WARU-SIDOARJO', '82245059585', 1, 0, '', 'R.B. AKBAR ALAM PRATAMA', 'SWASTA', 'ASTIFANI KIRYADHITA PUTRI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 2022, '2022/2023', 'TK001718', 'ROMEESA ARSYILA FARZANA', 'ROMEESA', 'Perempuan', 'SIDOARJO', '27-Jan-18', 'JL. RATU AYU NO. 74 RT. 03 RW.01 WAGE, TAMAN-SIDOARJO', '85785197747', 1, 0, '', 'CHANDRA WIJAYA', 'SWASTA', 'AULIYA DWITHA JOHANNA', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 2022, '2022/2023', 'TK001660', 'RANIA KHAIRUN NAJMAH AGHNIYAH', 'RANIA', 'Perempuan', 'SIDOARJO', '02-Nov-17', 'BULANG RT. 17 RW. 04 KLOPOSEPULUH SUKODONO SIDOARJO', '85736360700', 2, 0, '', 'ADITYA HANIF AZHARI', 'WIRASWASTA', 'DINI ILMIYATI FAIDAH', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 2022, '2022/2023', 'TK001711', 'TSAQIF ARSYANENDRA CALIEF', 'TSAQIF', 'Laki-Laki', 'SURABAYA', '30-Des-17', 'DELTASARI INDAH BLOK AM NO. 34 WARU-SIDOARJO', '81230089000', 2, 0, '', 'AFRIYANTO DANU KURNIAWAN', 'PNS', 'DYTTA MAHARANI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 2022, '2022/2023', 'TK001738', 'OMAR ABRAHAMALIQ ANSTIAN', 'OMAR', 'Laki-Laki', 'SIDOARJO', '26-Jan-18', 'JALAN IKAN GURAMI LEBAR NO. 39 SURABAYA', '8563229095', 1, 0, '', 'MENGGALA PUTRA ANSTIAN', 'SWASTA', 'NANDA PUTRI PRAMUDYA PERTIWI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 2022, '2022/2023', 'TK001740', 'ARKANANTA MALEEQ KAMESHWARA', 'ARKA', 'Laki-Laki', 'SURABAYA', '19-Okt-17', 'PURI SURYA JAYA A3/26 RT 01 RW 11 GEDANGAN SIDOARJO', '85234503717', 3, 0, '', 'NUGROHO SUSRIYANTO', 'SWASTA', 'YUNITA CANDRASARI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 2022, '2022/2023', 'TK001739', 'ABDULLAH AZZAM SUBIANTOKO', 'AZZAM', 'Laki-Laki', 'SIDOARJO', '24-Mei-18', 'JL. BATAM 1 NO. 11 BLITAR', '81333331300', 3, 0, '', 'BENNI SUBIANTOKO', 'SWASTA', 'EVA AZIZAH', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 2022, '2022/2023', 'TK001741', 'RAFASYA AKELA HERMAWAN', 'ASYA', 'Laki-Laki', 'SURABAYA', '30-Agu-17', 'JL. DEWI SARTIKA ATAS NO. 126 TEMAS BATU', '82141050050', 2, 0, '', 'AGUS HERMAWAN', 'KONTRAKTOR', 'PUTRI IKA FIANA', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 2022, '2022/2023', 'TK001746', 'ABHIPRAYA LUCKMAN EL FAUZIE', 'ALEF', 'Laki-Laki', 'SURABAYA', '15-Jul-17', 'JL. SIDOSERMO 4 GANG 15 BLOK D-19 SURABAYA', '89657935725', 1, 0, '', 'FAUZIE RIDWAN MAS', 'SWASTA', 'ALFI HANIK ROYANI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 2022, '2022/2023', 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'DAMAR', 'Laki-Laki', 'SURABAYA', '26-Apr-18', 'PEPELEGI INDAH BLOK I NO. 16 PEPELEGI, WARU-SIDOARJO', '85385359799', 2, 0, '', 'DHANI TRIE PRASETYO, S.T', '', 'ARLITA LUSIANA WARDANI, S.Psi', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 2022, '2022/2023', 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'HANIN', 'Perempuan', 'SIDOARJO', '19-Okt-18', 'PEPELEGI INDAH BLOK G/24A SIDOARJO', '81216272086', 4, 0, '', 'AHMAD FANANI', 'WIRASWASTA', 'ARLISA EKA LARASATY', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 2022, '2022/2023', 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'AQLAN', 'Laki-Laki', 'PASURUAN', '19-Okt-17', 'STAR SAFIRA REGENCY CLUSTER NIZAR MANSION E4 NO. 09 BOHAR, TAMAN-SIDOARJO', '85646394699', 3, 0, '', 'WAHYU WIDODO', 'WIRASWASTA', 'AYUWINDA PUTRI KAROLINA', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 2022, '2022/2023', 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'RAYYAN', 'Laki-Laki', 'SURABAYA', '13-Nov-17', 'PERUM TAMAN PONDOK LEGI 2 B-6 PEPELEGI, WARU-SIDOARJO', '81259299187', 1, 0, '', 'BAMBANG KURNIAWAN', 'SWASTA', 'EVI DIAN PUSPITANINGRUM', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 2022, '2022/2023', 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'ARSEN', 'Laki-Laki', 'SIDOARJO', '20-Agu-17', 'GRIYO WAGE ASRI F-17 TAMAN SDA', '81235090719', 1, 0, '', 'FIRMAN PERMANA PUTRA, SP', 'SWASTA', 'RIMA DEWI IFFAHWATI, A.MD', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 2022, '2022/2023', 'TK001706', 'ASSYFA PUTRI PURWANTO', 'ASSYFA', 'Perempuan', 'SURABAYA', '31-Jul-18', 'PERUM TAMAN SURYA AGUNG BLOK A NO. 5 TAMAN, SEPANJANG-SIDOARJO', '8113432103', 1, 0, '', 'MOH. SINGGIH PURWANTO, S.SI, MT', 'DOSEN', 'YUYUN TRI WAHYUNI, A.MD', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 2022, '2022/2023', 'TK001699', 'AZKADINA KIREI MUFIA', 'MUFIA', 'Perempuan', 'SURABAYA', '13-Nov-17', 'PERUM TAMAN PONDOK LEGI 2 B-6 PEPELEGI, WARU-SIDOARJO', '81259299187', 2, 0, '', 'BAMBANG KURNIAWAN', 'SWASTA', 'EVI DIAN PUSPITANINGRUM', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 2022, '2022/2023', 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'DAFFA', 'Laki-Laki', 'SIDOARJO', '30-Nov-17', 'JL. ANGGREK NO. 73 WAGE, TAMAN-SIDOARJO', '85731008488', 2, 0, '', 'AGUS SUBEKTI', 'SWASTA', 'IIK INDRITIA, SE', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 2022, '2022/2023', 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'DIEN AYU', 'Perempuan', 'SIDOARJO', '13-Jun-17', 'PERUM PURI SURYA JAYA NAGOYA REGENCY G3 NO. 3 KETAJEN, GEDANGAN-SIDOARJO', '81233713993', 1, 0, '', 'M. DIDIN NASHRUDDIN', 'PNS', 'DIYAN BUDIARTI', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 2022, '2022/2023', 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'VIRA', 'Perempuan', 'SURABAYA', '08-Agu-18', 'PERUM GRAND ALOHA REGENCY C7/1 SIDOARJO', '82131170010', 1, 0, '', 'ARDI WIYONO', 'SWASTA', 'NUDYA RISMA RAHMADANIARI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 2022, '2022/2023', 'TK001717', 'GALANG AZKA NARENDRA', 'GALANG', 'Laki-Laki', 'SURAKARTA', '22-Des-17', 'RT. 01 RW. 01 JOYOTAKAN, SERENGAN-SURAKARTA', '81390288086', 1, 0, '', 'BAYU PRASETYO', 'BUMN', 'ARISTA NOVIYANTI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 2022, '2022/2023', 'TK001707', 'GENEVIEVE NABILA RAHMA', 'NABILA', 'Perempuan', 'JOMBANG', '23-Des-17', 'PERUM GRAND ROYAL REGENCY, BOUGENVILLE H6-5 WAGE, TAMAN-SIDOARJO', '82140800400', 1, 0, '', 'M. MUCHSIN', 'SWASTA', 'AQUARAHMA MARGASARI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 2022, '2022/2023', 'TK001715', 'HANUM NABILA JATMIKO', 'HANUM', 'Perempuan', 'SURABAYA', '05-Feb-18', 'TAMAN PONDOK LEGI III BLOK T NO. 7 PEPELEGI, WARU-SIDOARJO', '81222585947', 1, 0, '', 'WISNU DWI JATMIKO', 'SWASTA', 'TITA FADILAH', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 2022, '2022/2023', 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'IBRAHIM', 'Laki-Laki', 'MALANG', '21-Jul-17', 'JL. TERONG NO. 42A BUMIAYU, KEDUNGKANDANG-MALANG', '82131521255', 3, 0, '', 'M. FARIS ANDRI ADI', 'BUMN', 'DEVI RAHMAWATI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 2022, '2022/2023', 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'ANDRA', 'Laki-Laki', 'GRESIK', '08-Jan-18', 'DELTA SARI INDAH K12 WARU-SIDOARJO', '81275390053', 2, 0, '', 'BAYU SEPTIANTO SATRIO UTOMO', 'SWASTA', 'ADIK DWI RETNO LANGKING', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 2022, '2022/2023', 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'KEANO', 'Laki-Laki', 'SIDOARJO', '04-Jan-18', 'JL. KLAMPIS SEMOLO TIMUR VI-AB 148 SEMOLOWARU, SUKOLILO-SURABAYA', '8970366799', 2, 0, '', 'ADE ZULKIFLY, SE.,MM', 'DOSEN', 'ASTRID FEBI ANINDITA, SE', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 2022, '2022/2023', 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'MARYAM', 'Perempuan', 'SURABAYA', '13-Sep-17', 'JL. PUNDEN PERUM RATU AYU PERMAI NO. 8P WAGE-SIDOARJO', '81357603309', 3, 0, '', 'AHMAD ARIFIN', 'WIRAUSAHA', 'DENNY KURNIAWATI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 2022, '2022/2023', 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'AZLAN', 'Laki-Laki', 'SURABAYA', '08-Jan-18', 'JL. KAWI NO. 2 PEPELEGI, WARU-SIDOARJO', '81330709243', 2, 0, '', 'DIDIET HIDAYATULLAH, SE', 'BUMN', 'YENI DWI ASTUTI, SE', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 2022, '2022/2023', 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 'KENZIE', 'Laki-Laki', 'SURABAYA', '03-Sep-17', 'PERUM BUMITARUNA XV B KAV 9 WAGE, TAMAN-SIDOARJO', '8113548663', 2, 0, '', 'EKO DWI SUSANTO', 'WIRASWASTA', 'FITRIYA ENDAH MARDHANI', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 2022, '2022/2023', 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'JUNA', 'Laki-Laki', 'SIDOARJO', '06-Jun-17', 'JL. JEND. S. PARMAN IV NO. 14 WARU-SIDOARJO', '85732398210', 2, 0, '', 'MAS\'UL HADI', 'TERAPIS', 'NUR HIDAYAH', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 2022, '2022/2023', 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'RAFFASYA', 'Laki-Laki', 'MALANG', '07-Jun-18', 'PERUM GRAND ROYAL REGENCY BLOK J-03 NO. 3A WAGE, TAMAN-SIDOARJO', '82131222320', 2, 0, '', 'DHANI KURNIAWAN', 'BUMN', 'ANITA PUTRI HARDIYANTI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 2022, '2022/2023', 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'RAFA', 'Laki-Laki', 'SIDOARJO', '20-Jun-18', 'JL. JATISARI PERMAI I/D04 WISMA PERMAI, PEPELEGI, WARU-SIDOARJO', '818585636', 4, 0, '', 'IR. H. SYARIF HIDAYATULLAH, M.Si', 'PNS', 'IR. HERMIN SETYANINGSIH, MP', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 2022, '2022/2023', 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'GISKA', 'Perempuan', 'SURABAYA', '02-Okt-17', 'SAFIRA BLUE RESORT BLOK E 5 SIDOARJO', '81259159010', 2, 0, '', 'MADE SUGIARTO', 'SWASTA', 'RAKHMI AYU ZULVINA', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 2022, '2022/2023', 'TK001673', 'SRIKANDI PUTRI UTAMI', 'PUPUT', 'Perempuan', 'SIDOARJO', '19-Jan-18', 'PERUM MEDAMAS REGENCY JL. JOYOBOYO NO. 10 RT. 04 RW. 02 WARU-SIDOARJO', '81331874329', 1, 0, '', 'SASMITO JATI UTAMA', 'DOSEN', 'SRI HARTANTI SETYOWARNI', 'DOSEN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 2022, '2022/2023', 'TK001736', 'ARSYA ADITYA RAHMAN', 'ARSYA', 'Laki-Laki', 'SURABAYA', '01-Agu-18', 'GRAND ROYAL REGENCY CLUSTER EDELWEISS WAGE', '82257697242', 3, 0, '', 'RAHMAN ADHI WIJAYA HERU', 'WIRAUSAHA', 'DESY PURI HASTARI, SS', 'WIRAUSAHA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 2022, '2022/2023', 'TK001737', 'ALIYA ANJANI AKHYAR', 'ALIYA', 'Perempuan', 'SURABAYA', '06-Jun-18', 'JL. WIYUNG INDAH 32 II - 4', '81336768880', 1, 0, '', 'DANAR MARDLOTILLAH, S.PSI', 'SWASTA', 'NURANI SITI ANSHORI, S.PSI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 2022, '2022/2023', 'TK001742', 'AIRIN AZKA MUMTAZA', 'AIRIN', 'Perempuan', 'PATI', '11-Jun-17', 'PERUM. GRAND ALOHA REGENCY C4/09 WAGE TAMAN', '82234343497', 2, 0, '', 'HABIBI', 'IBU RUMAH TANGGA', 'ANA SUSANA', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 2022, '2022/2023', 'TK001744', 'TAQIYA ALESHA MAHIRA', 'KIYA', 'Perempuan', 'SURABAYA', '06-Mei-18', 'JL. TIDAR NO. 6 PEPELEGI INDAH WARU SIDOARJO', '89650718121', 2, 0, '', 'RADITE EFFENDI, SH', 'SWASTA', 'DINNY SURYANI, S.KM', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 2022, '2022/2023', 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'ASTHA', 'Laki-Laki', 'SURABAYA', '31-Des-17', 'PERUM GRAND ROYAL REGENCY CLUSTER ORCHID J7-8 TAMAN, WAGE-SIDOARJO', '81231625524', 1, 0, '', 'AMANDA PRATAMA', 'PNS', 'UKIK SULISTYORINI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 2022, '2022/2023', 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'FARA', 'Perempuan', 'SIDOARJO', '22-Feb-17', 'ASPOL WAGE 1 A-56 RT.02 RW.11 TAMAN-SIDOARJO', '82245679796', 3, 0, '', 'M. FARIS SUNARKO', 'POLRI', 'NOVI DAMAYANTI', 'POLRI', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 2022, '2022/2023', 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'KHALIF', 'Laki-Laki', 'SIDOARJO', '10-Apr-18', 'JL. RAYA WONOCOLO NO. 57 RT. 01 RW. 01 TAMAN-SIDOARJO', '82147860878', 2, 0, '', 'H. AHMAD FANANI, SE', 'WIRASWASTA', 'IMRO\'ATUS SHOLIHAH, S.PD.I', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 2022, '2022/2023', 'TK001661', 'AISYAH RANIAH AZZAHRA', 'RARA', 'Perempuan', 'SURABAYA', '27-Feb-18', 'JL. YOS SUDARSO NO. 80C WARU-SIDOARJO', '81252210543', 1, 0, '', 'RINGGA NIRBAYA PUTRA', 'SWASTA', 'DEWI PUSPITA SARI', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 2022, '2022/2023', 'TK001703', 'AKSA ADINATA NUGROHO', 'AKSA', 'Laki-Laki', 'KOTA MADIUN', '29-Mei-18', 'GRAND ALOHA D2/03 WAGE, TAMAN-SIDOARJO', '85755196600', 2, 0, '', 'HASIS AGUNG NUGROHO', 'BUMN', 'ESTY PUJI RAHAYU, S.ST., M.KES', 'DOSEN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 2022, '2022/2023', 'TK001719', 'ARA ADZKIA HILYA', 'ARA', 'Perempuan', 'BOJONEGORO', '03-Apr-18', 'RT. 02 RW. 01 BANJAREJO, SUMBERREJO-BOJONEGORO', '85853042802', 1, 0, '', 'KALIH NURROHMAN', 'WIRASWASTA', 'USWATUN HASANAH', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 2022, '2022/2023', 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'GANTA', 'Laki-Laki', 'SIDOARJO', '11-Feb-18', 'GRIYO TAMAN ASRI CLUSTER CATTLEYA CF 37 TAWANGSARI, TAMAN-SIDOARJO', '81332986121', 2, 0, '', 'DWINANDA ADI NUGROHO', 'TNI', 'BETRIS EVA ENGGARLIS', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 2022, '2022/2023', 'TK001705', 'ASYHAM WAFI ALFARISH', 'ASYHAM', 'Laki-Laki', 'SURABAYA', '02-Mei-18', 'GRAND ALOHA REGENCY BLOK C6 NO. 3 SIDOARJO', '81331701221', 1, 0, '', 'MOH. ZABIDI MASYKURI', 'PERAWAT', 'ARKHA ROSYARIA', 'DOSEN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 2022, '2022/2023', 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'JAY', 'Laki-Laki', 'GRESIK', '06-Mei-17', 'GRIYO WAGE ASRI 1 BLOK C NO. 1 TAMAN-SIDOARJO', '8113959737', 2, 0, '', 'MIRZA AL HABRI TANDJUNG', 'WIRASWASTA', 'NURLAILY FARAH NISYAH, SH., ST', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 2022, '2022/2023', 'TK001663', 'AULIA FATMA ADIFA', 'AULIA', 'Perempuan', 'MALANG', '19-Okt-17', 'GRAND ROYAL REGENCY G3-3A WAGE, TAMAN-SIDOARJO', '82137992128', 2, 0, '', 'ADIB DWI ARIANTO, SE', 'BUMN', 'SIFAUL WARDANI MUFTI, A.MD', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 2022, '2022/2023', 'TK001677', 'CLESYA SHAFARA FERNADO', 'CLESYA', 'Perempuan', 'SURABAYA', '21-Jan-18', 'SIMO GUNUNG 3 NO. 14 SURABAYA', '82244373838', 2, 0, '', 'M. NICKO FERNADO FRONDI PUTRA, ST', 'SWASTA', 'VERA VERONIKA ARDIANA, ST', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 2022, '2022/2023', 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'DASTAN', 'Laki-Laki', 'Surabaya', '23-Sep-17', 'DS. SADANG RT.1 RW. 1', '81335303499', 1, 0, '', 'DICKY ADITYA', 'PNS', 'ANISA RAHMAWATI', 'BUMN', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 2022, '2022/2023', 'TK001725', 'GIFA AUDIFARAH', 'GIFA', 'Perempuan', 'SURABAYA', '17-Agu-17', 'GUBENG KERTAJAYA 1E NO. 25 SURABAYA', '83854323111', 1, 0, '', 'MABRURI RACHMADI', 'BUMN', 'AULIA DEVI FEBRIANA S.', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 2022, '2022/2023', 'TK001678', 'HAFIZ RAFI RABBANI', 'HAFIZ', 'Laki-Laki', 'SIDOARJO', '23-Des-17', 'PONDOK WAGE INDAH II BLOK II NO. 2 WAGE, TAMAN-SIDOARJO', '81332816195', 2, 0, '', 'SUGENG PRASETYO, SH', 'POLRI', 'SANTY WIJAYATI, SH.', 'POLRI', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 2022, '2022/2023', 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'KAYLA', 'Perempuan', 'SURABAYA', '21-Feb-18', 'JL. JATISARI PERMAI IV/G35 PEPELEGI, WARU-SIDOARJO', '81331614636', 1, 0, '', 'RAHADIAS DANAR MURIA', 'SWASTA', 'ARDISA PRIYANI WIDHAKARSARI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 2022, '2022/2023', 'TK001712', 'MUHAMMAD HANIF SYAM', 'HANIF', 'Laki-Laki', 'SIDOARJO', '11-Des-17', 'PERUM GRAND ALOHA BLOK D7 NO. 19 WAGE, TAMAN-SIDOARJO', '81217878951', 2, 0, '', 'HISHNUL YAQIN', 'BUMN', 'UYUNG PANCARI ARTATI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 2022, '2022/2023', 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'MARSHA', 'Perempuan', 'SIDOARJO', '23-Nov-17', 'Taman Pondok Legi 3 Blok R 11 pepelegi waru Sidoarjo', '8563112828', 2, 0, '', 'M. FAKHRURROZI', 'SWASTA', 'RISKA AGVIANTININGRUM', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 2022, '2022/2023', 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'MALIQ', 'Laki-Laki', 'SURABAYA', '24-Sep-17', 'GRAND ROYAL REGENCY BLOK F2-5 WAGE, TAMAN-SIDOARJO', '81553162426', 1, 0, '', 'ADIMAS CHANDRA FATURAHMAN', 'WIRAUSAHA', 'RETNO WARTININGSIH', 'WIRAUSAHA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 2022, '2022/2023', 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'ATHAR', 'Laki-Laki', 'SIDOARJO', '22-Feb-17', 'ASPOL WAGE 1 A-56 RT.02 RW.11 TAMAN-SIDOARJO', '82245679796', 2, 0, '', 'M. FARIS SUNARKO', 'POLRI', 'NOVI DAMAYANTI', 'POLRI', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 2022, '2022/2023', 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'ALE', 'Laki-Laki', 'SIDOARJO', '02-Feb-18', 'WISMA PERMAI REGENCY BB 19 WARU-SIDOARJO', '811300910', 3, 0, '', 'ANTON PRASETIYO, ST', 'SWASTA', 'NENI PRAMANTI, SE', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 2022, '2022/2023', 'TK001720', 'NOURA RAYA SASHIKIRANA', 'RAYA', 'Perempuan', 'SIDOARJO', '21-Apr-18', 'TAMAN WARU PERMAI BLOK A109 RT. 01 RW. 01 MEDAENG, WARU-SIDOARJO', '83831511315', 2, 0, '', 'ACHMAD FARUQ HARJONO', 'WIRASWASTA', 'WAHYU KUSUMA ARTATI, ST', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 2022, '2022/2023', 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'KAYLA', 'Perempuan', 'SIDOARJO', '20-Jun-18', 'JL. JATISARI PERMAI I/D.04 WISMA PERMAI, PEPELEGI, WARU-SIDOARJO', '818585636', 3, 0, '', 'IR. H. SYARIF HIDAYATULLAH, M.Si.', 'PNS', 'IR. HERMIN SETYANINGSIH, MP', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 2022, '2022/2023', 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'ZEYN', 'Laki-Laki', 'SURABAYA', '13-Apr-18', 'MEDOKAN AYU MA I BLOK O NO. 3 SURABAYA', '82233737635', 1, 0, '', 'RIO INDRALAKSONO, ST', 'BUMN', 'DR. DIAR MEITHA WARDHANA', 'DOKTER', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 2022, '2022/2023', 'TK001730', 'SADJIWO DAMAR KHAISANU', 'DAMAR', 'Laki-Laki', 'BLITAR', '27-Mar-17', 'PERUM GRAND ROYAL REGENCY, CLUSTER ORCHID BLOK J1-6 WAGE, TAMAN-SIDOARJO', '81334499756', 2, 0, '', 'DIDIT SETIAWAN', 'PNS', 'RATIH KUSUMA DEWI', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 2022, '2022/2023', 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'TSAQIF', 'Laki-Laki', 'SURABAYA', '03-Agu-18', 'JL. LETJEND POL SOEMARTO GG. IX NO. 717 RT. 02 RW. 03 PURWOKERTO', '81228919112', 2, 0, '', 'FAQIH BACHTIAR', 'BUMN', 'LUSIANA WULANDARI', 'DOKTER', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 2022, '2022/2023', 'TK001721', 'UMAIZA AZKADINA', 'UMAIZA', 'Perempuan', 'SIDOARJO', '22-Nov-17', 'JL. JOYOBOYO NO. 81 MEDAENG-SIDOARJO', '81217937770', 1, 0, '', 'ERFANDI CARERA', 'SWASTA', 'RIZKI SULISTYOWATI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 2022, '2022/2023', 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'AKIO', 'Laki-Laki', 'SIDOARJO', '15-Jul-18', 'TROSOBO UTAMA VII BLOK H NO. 24', '85934546618', 4, 0, '', 'SLAMET MULYONO', 'SWASTA', 'ANIK AGUSTINO', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 2022, '2022/2023', 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'AHSAN', 'Laki-Laki', 'BALIKPAPAN', '08-Agu-17', 'GRAND ALOHA REGENCY BLOK C1 NO. 14 DESA WAGE', '8128883053', 3, 0, '', 'DRAJAD SETIADI', 'PNS', 'IKA KURNIANTI AYUNINGTIAS', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 2022, '2022/2023', 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'JAZZ', 'Perempuan', 'SIDOARJO', '30-Apr-18', 'JL. SINDORO 44 RT 11 RW 3 PEPELEGI WARU', '81330555533', 2, 0, '', 'ANDRE FITRYANTO', 'WIRASWASTA', 'NITACA LADYTIA KHARISMA', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 2021, '2021/2022', 'TK001606', 'ACHMAD SAKHA ALFATIH', 'Achmad', 'Laki-Laki', 'Surabaya', '23/09/2016', 'Jl. Garuda V No. 30 Rewwin', '818851986', 2, 0, '', 'Ach. Rony Akmal', 'WIRASWASTA', 'Syilvia Wulandari', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 2021, '2021/2022', 'TK001552', 'ADAM FAIZ AL ARKHAN', 'Adam', 'Laki-Laki', 'Surabaya', '06/08/2016', 'Jl. Joyoboyo 34B Medaeng', '81331454769', 3, 3, '3515-LU-04102016-0146', 'Ibnu Abbas', 'Swasta', 'Sri Utami', 'Swasta', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 2021, '2021/2022', 'TK001635', 'ADHYASTHA TARIMAULI TUA SIRAIT', 'Yastha', 'Laki-Laki', 'Sidoarjo', '24/06/2016', 'Unimas Garden Regency D-29 Waru', '81333240351', 2, 0, '', 'Irwanto Sirait', 'SWASTA', 'Galuh Lukitasari Supangkyowati', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 2021, '2021/2022', 'TK001628', 'ADIBA ZAREEN NUFA', 'Adiba', 'Perempuan', 'Sidoarjo', '23/11/2016', 'Griyo Wage Asri 1 Blok K No. 12A', '81939417281', 3, 0, '', 'Shaief Nufa', 'KONSULTAN TELEKOMUNIKASI', 'Dina Hasanah', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 2021, '2021/2022', 'TK001655', 'AHMAD SALAHUDDIN KARIM', 'Karim', 'Laki-Laki', 'Tangerang', '21/05/2016', 'Jl. Muria No. 30 Rt 10 Rw 03 Waru', '081357104242/08155149934', 2, 0, '', 'Andry Lesmana Ardyanto', 'BUMN', 'Aristia Wardani', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 2021, '2021/2022', 'TK001728', 'AINAYYA ASMA PRATOMO', 'ASMA', 'Perempuan', 'BOGOR', '29-Agu-16', 'KEBONSARI V/8 SURABAYA', '8563369464', 1, 0, '', 'RAHADI PRATOMO', 'PNS', 'APRIWI ZULFITRI', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 2021, '2021/2022', 'TK001622', 'AQILAH AZZALEA HULWAH', 'Aqilah', 'Perempuan', 'Sidoarjo', '15/11/2016', 'Jl. Kawi No. 47 Pepelegi Waru', '85648204018', 2, 0, '', 'Thohir Basuki', 'PNS', 'Agustin Indriani', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 2021, '2021/2022', 'TK001674', 'ARETHA ZAYNA ULIMA', 'Rere', 'Perempuan', 'Sidoarjo', '16/10/2016', 'Surya Asri 1 Blok A11No. 5 Sidokepung Buduran', '81333223728', 2, 0, '', 'Eko Ariyanto', 'PNS', 'Dwi Rohmatin', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 2021, '2021/2022', 'TK001656', 'ARSYA REINDRA ZEN', 'Arsya', 'Laki-Laki', 'Sidoarjo', '04/04/2017', 'Jl. Lawu 56 Perum, Pepelegi Indah. Pepelegi Waru Sidoarjo', '85648188092', 3, 0, '', 'Muhammad Zubaidi', 'PNS', 'Yenni Rahmah', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 2021, '2021/2022', 'TK001624', 'AZKIYA NURIN NISA\'', 'Kia', 'Perempuan', 'Sidoarjo', '18/01/2017', 'Jl. Kol Sugiono Rt 08/ Rw 02 Ngingas Waru', '85755577222', 0, 0, '', 'M. Nisak', '', 'Lia Maf\'Ulah', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 2021, '2021/2022', 'TK001614', 'AZZAM MUMTAZ SHAWQY', 'Qiqi', 'Laki-Laki', 'Sidoarjo', '29/11/2016', 'Tpj Ag-6', '81803032397', 4, 0, '', 'M. Anas Rafiq (Alm)', '', 'Anisah', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 2021, '2021/2022', 'TK001633', 'DEVAN DANADYAKSA MULYANI', 'Devan', 'Laki-Laki', 'Surabaya', '30/10/2016', 'Perum D\' Spring Of Tomorrow Cluster Ravino Iii No. 3 Taman', '81347003456', 2, 0, '', 'Mulyani', 'PNS', 'Titik Kartikasari', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 2021, '2021/2022', 'TK001637', 'EVANDER ALKHALIFI ARSYANTO', 'Al', 'Laki-Laki', 'Sidoarjo', '09/06/2016', 'Jl. Kenanga Keboan Sikep Rt. 6 Rw. 4 Gedangan', '8123022788', 2, 0, '', 'Diky Sulistyanto', 'SWASTA', 'Ariek Andiyanti', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 2021, '2021/2022', 'TK001543', 'HASNA ALTHAFUNNISA BACHTIAR', 'Hasna', 'Perempuan', 'Banyumas', '23/07/2016', 'Jl. Jatisari Besar Gg 1/2', '081228919112/081228919112', 1, 3, '3302-LU-02082016-0084', 'Faqih Bachtiar', 'Bumn', 'Lusiana Wulandari', 'Swasta', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 2021, '2021/2022', 'TK001620', 'JIHAN ANINDYA REANDRA SHANUM', 'Jihan', 'Perempuan', 'Surabaya', '07/09/2017', 'Grand Aloha Regency Blok A8/12 Wage', '85648696885', 2, 0, '', 'Irvan Budi Setyoko', 'BUMN', 'Tri Resmi Handayani', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 2021, '2021/2022', 'TK001609', 'KHAIRUNNISA AZZAHRA DYANDRA H', 'Nisa', 'Perempuan', 'Sidoarjo', '05/09/2016', 'Deltasari Indah Blok W No. 26', '85648032900', 2, 0, '', 'Dimas H', 'PNS', 'Amelia Damayanti', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 2021, '2021/2022', 'TK001619', 'MAUDY SHINTA RAMADHANI', 'Shinta', 'Perempuan', 'Surabaya', '07/08/2016', 'Perum Griya Masangan Asri D3 No. 10 Rt. 24 Rw. 08 Masangan Wetan, Sukodono', '82288000087', 1, 0, '', 'Maulana Wisnupraba', 'SWASTA', 'Dini Defianti', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 2021, '2021/2022', 'TK001608', 'M. AGAM AL BARRA', 'Pio', 'Laki-Laki', 'Surabaya', '07/10/2016', 'Perum Grand Royal Regency Blok H1 No. 2', '', 1, 0, '', 'Moch. Alit Putranto', 'BUMN', 'Anik Sriwilujeng', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 2021, '2021/2022', 'TK001645', 'M. ALIYANDI HAZZA', 'Hazza', 'Laki-Laki', 'Malang', '09/07/2016', 'Grand Royal Regency F4 No.3A', '082230306625/087855570803', 0, 0, '', 'Yanu Perwira Adi Putra', '', 'Dila Aliffita Isworowati', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 2021, '2021/2022', 'TK001623', 'M. ARKHA ARYASTIA', 'Arkha', 'Laki-Laki', 'Surabaya', '09/12/2016', 'Jl. Jatisari Permai Iv/H3', '85230251462', 3, 0, '', 'Romli', 'WIRASWASTA', 'Rina Widuri Cahyani', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 2021, '2021/2022', 'TK001613', 'RAKHSHANDRINA ALESHA ZAHEERA', 'Zaheera', 'Perempuan', 'Surabaya', '25/11/2016', 'Tpl 2A/7 Pepelegi', '81231077049', 2, 0, '', 'Agus Setiobudi', 'SWASTA', 'Yuniati Rakhmawardhani', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 2021, '2021/2022', 'TK001629', 'SAKHA ELFATHAN KUSUMA ZHAFRAN', 'Sakha', 'Laki-Laki', 'Surabaya', '01/01/2017', 'Grand Royal Regency Cluster Bougenville H4 No. 7 Wage', '87855381771', 1, 0, '', 'M. Syaiful', 'BUMN', 'Shinta Citra Kusuma', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 2021, '2021/2022', 'TK001748', 'ANINDYA RAIMA DANASWORO', 'MIMA', 'Perempuan', 'JAKARTA', '30/06/2016', 'JL. JATI NANGKA NO. 48 RT 08 RW 04 JAKARTA TIMUR', '81908889917', 2, 0, '', 'ANDRYAN DANASWORO', 'SWASTA', 'ANNISA RAHMA', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 2021, '2021/2022', 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'Dayyan', 'Laki-Laki', 'Surabaya', '27/07/2017', 'Puri Surya Jaya Cluster Taman Boston Blok K8 No. 27 Rt. 03 Rw. 06 Gedangan', '811330092', 3, 0, '', 'Joko Setiawan, St', 'SWASTA', 'Ari Setyaningrum, S.Psi', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 2021, '2021/2022', 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'Kimy', 'Perempuan', 'Surabaya', '17/09/2017', 'Jl. Jendral S.Parman V/84', '081230889191/081232660341', 1, 3, '3515-LU-20102017-0046', 'Tri Nur Romadhon', 'SWASTA', 'Intan Sonia Tri Lestari', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 2021, '2021/2022', 'TK001618', 'SYIFA NUR AINI', 'Syifa', 'Perempuan', 'Sidoarjo', '13/04/2017', 'Jl. Petemon Kali 67 Kel. Sawahan', '81330509613', 2, 0, '', 'Achmad Bustari', 'PNS', 'Sri Winahyu', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 2021, '2021/2022', 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'Wintang', 'Perempuan', 'Sidoarjo', '28/07/2016', 'Grand City Park Blok Ya-07 Suko', '85234202029', 2, 0, '', 'Candra Kurniawan', 'SWASTA', 'Ari Agustusia', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 2021, '2021/2022', 'TK001639', 'AULIYA ADILA BILQIS', 'Bilqis', 'Perempuan', 'Sidoarjo', '20/11/2016', 'Jl. Kawi 69 Pepelegi, Waru', '8563175516', 2, 0, '', 'M. Nurul Huda', 'GURU', 'Nanik Utami', 'GURU', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 2021, '2021/2022', 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'Aza', 'Laki-Laki', 'Surabaya', '10/07/2017', 'Wisper Regency Bb-02 Waru Sda', '81357359060', 3, 3, '3504-LU-26072017-0003', 'Nanang Dwi Santoso', 'POLRES', 'Wahyu Tri Susanti', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 2021, '2021/2022', 'TK001648', 'AZKIA SHINTA NURAINI', 'Shinta', 'Perempuan', 'Surabaya', '27/01/2017', 'Unimas Garden Regency Blok E-08', '81908000179', 3, 0, '', 'Kunto Wibisono', 'BUMN', 'Febriyana Maulida', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 2021, '2021/2022', 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'Cantika', 'Perempuan', 'Surabaya', '27/09/2016', 'Grand Royal Regency Cluster Lavender Blok K2 No. 5 Wage', '', 1, 0, '', 'Deka Maheswara', 'BUMN', 'Rizka Eny Rachmawati', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 2021, '2021/2022', 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'Dhika', 'Laki-Laki', 'Sidoarjo', '07/05/2016', 'Jl. Muria Pplg Indah No19', '8113227706', 1, 0, '', 'M. Bustomi', 'SWASTA', 'Arum Wirandari', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 2021, '2021/2022', 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'Dzakiy', 'Laki-Laki', 'Madiun', '01/09/2016', 'Jl. Jatisari Permai 8 Blok M No. 2', '85731630750', 2, 0, '', 'Arfan Agung Nugroho', 'SWASTA', 'Dian Puspitasari Hayuningtyas', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 2021, '2021/2022', 'TK001611', 'FALAHILMI AZKA TAUFIK', 'Azka', 'Laki-Laki', 'Surabaya', '10/01/2017', 'Grand Royal Regency Blok H5/18', '08124196969/081355923993', 3, 0, '', 'Taufik Iswahyudi, St', 'SWASTA', 'Rezki Annisa, S.Pd.', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 2021, '2021/2022', 'TK001598', 'HARIS AHMAD FAUDZAN', 'Haris', 'Laki-Laki', 'Bangil', '13/01/2017', 'Jl Bangah Jaya Indah Viii Kav 229 Ds. Bangah', '81268404765', 0, 0, '', 'Agus Setiono', 'BUMN', 'Anita Nawangsari', 'IRT', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 2021, '2021/2022', 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'Kayra', 'Perempuan', 'Surabaya', '17/06/2017', 'Perum Taman Pondok Legi I Blok D-7 Pepelegi', '81335169509', 1, 0, '', 'Moh. Hasan Basri', 'POLRI', 'Galuh Arum Sari', 'WIRASWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 2021, '2021/2022', 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'Caca', 'Perempuan', 'Sidoarjo', '08/09/2016', 'Perum, Taman Aloha Blok H4-18', '085855555033/08192006009', 4, 3, '3515-LT-17042017-0036', 'Choirul Hidayat, St', 'Wiraswasta', 'Umu Hanik', 'Bidan', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 2021, '2021/2022', 'TK001538', 'KIANO KARIM RAMAZAN', 'Kiano', 'Laki-Laki', 'Surabaya', '15/06/2016', 'Jatisari Permai I Blok D-10', '81231192875', 3, 3, '', 'Rian Susanto', 'Swasta', 'Prahasti Yulistiari', 'Ibu Rumah Tangga', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 2021, '2021/2022', 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'Davin', 'Laki-Laki', 'Surabaya', '09/12/2016', 'Perum Pepelegi Indah Jl. Bromo No. 74 Waru', '82244373838', 1, 0, '', 'M. Nicko Fernado Frondi Putra', 'KONTRAKTOR', 'Vera Veronika Ardiana', 'KONTRAKTOR', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 2021, '2021/2022', 'TK001603', 'M. HATTA RAFSAN GHANI', 'Rafsan', 'Laki-Laki', 'Padang', '07/04/2016', 'Delta Mandala Ii No.57 Semambung', '81331585499', 0, 0, '', 'Astra Dinata Syukur, Sh', '', 'Amelia Suryaningsih', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 2021, '2021/2022', 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'Raffa', 'Laki-Laki', 'Surabaya', '06/09/2017', 'Deltasari Indah Blok Ad-62 Waru', '81230780962', 1, 0, '', 'Muzazin Arifin', 'SWASTA', 'Bila Tyantia', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 2021, '2021/2022', 'TK001724', 'RADYANA ALESHA PRAMESTI', 'RADYANA', 'Perempuan', 'SIDOARJO', '10-Nov-16', 'JL. PINUS 3 NO. 28 PINUS REGENCY SOEKARNO HATTA-BANDUNG', '811222170', 2, 0, '', 'MULYONO', 'SWASTA', 'EFFI KURNIAWATI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 2021, '2021/2022', 'TK001616', 'VALERIE FIDELYA GIOVANI', 'Valerie', 'Perempuan', 'Sidoarjo', '26/05/2017', 'Grand Aloha Regency B2-19', '82245002013', 1, 0, '', 'Fahreza Giovani, S.H,M.A.P', '', 'Putri Mahardhika Novia Herdyanti, S.H', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 2021, '2021/2022', 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'Zhafran', 'Laki-Laki', 'Surabaya', '06/04/2017', 'Jl Tangkuban Perahu No.52 Pepelegi Indah', '81332088474', 1, 0, '', 'Maulana Farizil Qudsi', 'SWASTA', 'Rima Yuniar', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 2021, '2021/2022', 'TK001638', 'ZIDNI HASSANAH QOLBU', 'Hassa', 'Laki-Laki', 'Sidoarjo', '23/04/2017', 'Taruna 8C /Kav 275 A Wage', '8155278381', 3, 0, '', 'Budiarto', 'SWASTA', 'Tri Lestari', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 2021, '2021/2022', 'TK001625', 'AL BARR MUHAMMAD RAFASYA', 'Al Barr', 'Laki-Laki', 'Sidoarjo', '29/01/2017', 'Jl. Taruna Gg. Masjid No. 91 Wage', '85733555058', 2, 0, '', 'M. Nizar Muliawan, Sip, Ma', 'ASN', 'Maratus Sholikhah, Amd. Keb', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 2021, '2021/2022', 'TK001722', 'ALARIC  RASYID ARDIANTO', 'RASYID', 'Laki-Laki', 'SURABAYA', '22-Feb-17', 'JL. PRIMA I BLOK L-7/11 TEGAL ALUR KALIDERES, JAKARTA BARAT-JAKARTA', '81284000992', 1, 0, '', 'DHONI ARDIANTO', 'SWASTA', 'RINA FATMASARI', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 2021, '2021/2022', 'TK001647', 'ALTA THANISA SANSU', 'Alta', 'Perempuan', 'Surabaya', '24/12/2016', 'Perum Grand Masangan Blok B2 No. 26 Sukodono', '85231724784', 2, 0, '', 'M. Insaf Difsi Arissandi', 'SWASTA', 'Vera Indah Susiati', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 2021, '2021/2022', 'TK001626', 'ANDI AZZAM HAMZAH DJOEDDAWI', 'Azzam', 'Laki-Laki', 'Surabaya', '07/09/2017', 'Griyo Wage Asri 1 Blok K/28 Sidoarjo', '81332369828', 1, 0, '', 'Andi Izwahyudi Dwi Karyadi Djoeddawi', 'SWASTA', 'Dheby Cinthia Paramastri', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 2021, '2021/2022', 'TK001652', 'ARAZKA RADEYA ZHAAFIR', 'Razka', 'Laki-Laki', 'Surabaya', '25/09/2017', 'Wisma Permai Regency Ee-14 Waru Sidoarjo', '8113566777', 1, 2147483647, '3578-LU-03082016-0054', 'Adwinrizal Hilmansyah', 'SWASTA', 'Dinar Astriny', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 2021, '2021/2022', 'TK001576', 'ATHALLAH FAUSTINE ADIYANT', 'Atha', 'Perempuan', 'Surabaya', '15/07/2016', 'Kebonsari I/24 Jambangan', '081343379674/08124253220', 2, 3, '3578-LU-03082016-0054', 'Juniadi, S.Pd', 'Swasta', 'Dewi Damayanti, Amk', 'Perawat', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 2021, '2021/2022', 'TK001630', 'HANIFA NAFIA ALMEERRA', 'Nafia', 'Perempuan', 'Sidoarjo', '14/07/2016', 'Grand Aloha Regency B2/6', '8,12172E+12', 2, 0, '', 'Agung Setyabudi Laksono', 'PNS', 'Atiek Ferdiana Sari', 'PNS', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `master_siswa` (`id`, `tahun_masuk`, `tahunajaran_masuk`, `nis`, `nama`, `panggilan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_tlp`, `anak_ke`, `nik`, `registrasi_akte_kelahiran_anak`, `nama_bapak`, `pekerjaan_bapak`, `nama_ibu`, `pekerjaan_ibu`, `pendaftaran_id`, `ppdb`, `status`, `tahun_keluar`, `created_at`, `updated_at`) VALUES
(160, 2021, '2021/2022', 'TK001643', 'KAREEM ABDUL HARRAZ AL AYYUBI', '', 'Laki-Laki', 'Malang', '09/02/2016', 'Pepelegi Indah Blok A-12 Waru Sidoarjo', '82221220210', 0, 0, '', 'Razan Damardhi', '', 'Amalia Isna Yunita', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 2021, '2021/2022', 'TK001599', 'KIRANA ANINDYA TUNGGA DEWI', 'Nindy', 'Perempuan', 'Sidoarjo', '08/02/2017', 'Perum Greenpark Residence Blok C4-1 Jalan Telaga Indah Ganting Gedangan', '085233620007/085233620006', 0, 0, '', 'Mayor Hariyadi', '', 'Dessy Nonita Sari', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 2021, '2021/2022', 'TK001631', 'MISHA AQILLA SHAZFA KRESNADI', 'Sasha', 'Perempuan', 'Sidoarjo', '04/08/2017', 'Pepelegi Indah Blok H No. 18 Waru', '81235050725', 3, 0, '', 'Ferdian Yuananto Rully Kresnadi', 'WIRASWASTA', 'Melani Dwi Hapsari', '', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 2021, '2021/2022', 'TK001601', 'MUHAMMAD AFDHALUSH SHOLAH HERMAWAN', 'Afdhol', 'Laki-Laki', 'Sidoarjo', '05/05/2017', 'Griya Permata Gedangan A1/96', '81230619444', 3, 3, '3515-LT-26092017-0015', 'Toni Hermawan', 'SWASTA', 'Ninuk Wijayanti', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 2021, '2021/2022', 'TK001596', 'M. ARKAN AL FATIH', 'Arkan', 'Laki-Laki', 'Surabaya', '01/11/2016', 'Perum Pondok Maspion Blok C-13, Waru', '81216511868', 2, 0, '', 'R. Arie Guruh', 'WIRASWASTA', 'Winda Irawati', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 2021, '2021/2022', 'TK001654', 'NAFEESHA ALMAHYRA PRAMANA PUTRI', 'Alma', 'Perempuan', 'Kediri', '02/08/2017', 'Aspol Wage 2 Blok B/6', '81338000540', 1, 0, '', 'Hongky Hesa Pramana', 'POLRI', 'Maretha Mega Tamara', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 2021, '2021/2022', 'TK001649', 'NARASHYA KHAIRA RIZHANI', 'Nasyha', 'Perempuan', 'Surabaya', '26/06/2017', 'Jl Lawu No 34 Pepelegi Waru Sda', '8123214805', 2, 0, '', 'M. Insan Taqwa', 'PNS', 'Nira Tityaligi', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 2021, '2021/2022', 'TK001597', 'NIRVANA KARA RAIZANDHA', 'Nina', 'Perempuan', 'Surabaya', '09/06/2017', 'Unimas Garden Regency B7 Waru', '85646270663', 0, 0, '', 'M. Achdiar Raizandha', 'DOKTER', 'Caesarisma Vidiyanti', 'DOKTER', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 2021, '2021/2022', 'TK001617', 'NISA SHAKILA RAMADHANI', 'Shakila', 'Perempuan', 'Sidoarjo', '28/05/2017', 'Grand Aloha Regency B6-21', '081332613862/081222575779', 1, 0, '', 'Anjar Purnama, Sh.,M.A.P', 'POLRI', 'Renna Rahmania', 'IBU RUMAH TANGGA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 2021, '2021/2022', 'TK001513', 'NISMARA FARZANA AISHA RATIFA', 'Aisha', 'Perempuan', 'Surabaya', '09/07/2016', 'Pepelegi Indah Jl Slamet I/4', '81331598282', 2, 3, '3515-LU-1472016-0032', 'Guruh Hendro Leksono', 'Swasta', 'Ira Yuliana Malvina', 'Bumn', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 2021, '2021/2022', 'TK001650', 'QASIRATUT TARFIIN', 'Tarfi', 'Perempuan', 'Surabaya', '26/06/2016', 'Jl. Jatisari Permai V/H-34 Pepelegi', '81357788196', 4, 0, '', 'Khoirul Hudallah', 'SWASTA', 'Dwi Nur Syafriyanti', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 2021, '2021/2022', 'TK001644', 'RAFFASYA ARKAAN ALHAQQI', 'Haqqi', 'Laki-Laki', 'Surabaya', '29/03/2017', 'Griyo Wage Asri 1 D23', '82143306686', 1, 0, '', 'Hamdan Abdurrahman', 'BUMN', 'Rizky Destya Rachmikasari', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 2021, '2021/2022', 'TK001691', 'SHAKILA INARA MARITZA', 'KINAR', 'Perempuan', 'SIDOARJO', '23-Jul-16', 'PURI ALOHA BB9 SUKO, SUKODONO-SIDOARJO', '8155009595', 3, 0, '', 'JOHAN SAPTADI', 'PNS', 'ERISKA SISTANTY', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 2021, '2021/2022', 'TK001627', 'ADREENA MALIEKA KHAIRIY', 'Rena', 'Perempuan', 'Sidoarjo', '28/09/2017', 'Graha Properindo Ch-7', '8155046215', 1, 0, '', 'Mico Risandityo', 'SWASTA', 'Ary Yuana', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 2021, '2021/2022', 'TK001612', 'ZAIDAN AHMAD ALKAF', 'Zaidan', 'Laki-Laki', 'Sidoarjo', '19/02/2017', 'Pasegan Asri Blok G6-8', '85852614108', 2, 2147483647, '3515-LT-16052018-0074', 'Asgaf Mustofa Alkaf', 'SWASTA', 'Riza Afrita', 'SWASTA', 0, '', 'Aktif', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_skill_value`
--

CREATE TABLE `master_skill_value` (
  `id` int(10) NOT NULL,
  `skill_value` varchar(30) NOT NULL,
  `status_aktif` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_skill_value`
--

INSERT INTO `master_skill_value` (`id`, `skill_value`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'Visionary', 'Aktif', '2022-08-24 23:30:45', '2022-08-24 23:34:25'),
(2, 'Taqwa', 'Aktif', '2022-08-24 23:32:54', '2022-08-24 23:32:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tahfidz`
--

CREATE TABLE `master_tahfidz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_ayat` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_tahfidz`
--

INSERT INTO `master_tahfidz` (`id`, `surat`, `jumlah_ayat`, `hari`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Al-Fatihah', 7, 7, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'An-Nas', 6, 6, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Al-Falaq', 5, 5, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Al-Ikhlas', 4, 4, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'An-Nas', 6, 7, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Al-Falaq', 5, 6, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Al-Ikhlas', 4, 5, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Al-Lahab', 5, 6, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'An-Nashr', 3, 4, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Al-Kafirun', 6, 7, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Al-Kautsar', 3, 4, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Al-Ma\'un', 7, 8, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Quraysh', 4, 5, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Al-Fiil', 5, 6, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Al-Humazah', 9, 10, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Al-\'Asr', 3, 4, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'At-Takatsur', 8, 9, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Al-Qari\'ah', 11, 11, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Al-\'Adiyat', 11, 12, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Az-Zalzalah', 8, 9, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Al-Bayyinah', 8, 9, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Al-Qadr', 5, 6, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Al-\'Alaq', 19, 20, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'At-Tin', 8, 9, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Al-Insyirah', 8, 9, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Ad-Dhuha', 11, 12, 'Aktif', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tema`
--

CREATE TABLE `master_tema` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tema` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_tema`
--

INSERT INTO `master_tema` (`id`, `tema`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ourselves', '', 'Aktif', NULL, NULL),
(2, 'Environment', '', 'Aktif', NULL, NULL),
(3, 'Technology', '', 'Aktif', NULL, NULL),
(4, 'Entrepreneurship', '', 'Aktif', NULL, NULL),
(5, 'Changing', '', 'Aktif', NULL, NULL),
(6, 'Manage The Wold', '', 'Aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tilawah`
--

CREATE TABLE `master_tilawah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tilawati` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Non Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_tilawah`
--

INSERT INTO `master_tilawah` (`id`, `tilawati`, `jumlah_halaman`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PAUD', 11, 'Tilawati PAUD halaman 11', 'Aktif', '2022-09-14 01:45:44', '2022-09-14 01:45:44'),
(2, 'PAUD', 22, 'Tilawati PAUD halaman 22', 'Aktif', '2022-09-14 01:56:43', '2022-09-14 01:56:43'),
(3, 'PAUD', 33, 'Tilawati PAUD halaman 33', 'Aktif', '2022-09-14 01:56:52', '2022-09-14 01:56:52'),
(4, 'PAUD', 44, 'Tilawati PAUD halaman 44', 'Aktif', '2022-09-14 01:56:59', '2022-09-14 01:56:59'),
(5, '1', 11, 'Tilawati 1 halaman 11', 'Aktif', '2022-09-14 01:57:45', '2022-09-14 01:57:45'),
(6, '1', 22, 'Tilawati 1 halaman 22', 'Aktif', '2022-09-14 01:57:51', '2022-09-14 01:57:51'),
(7, '1', 33, 'Tilawati 1 halaman 33', 'Aktif', '2022-09-14 01:57:57', '2022-09-14 01:57:57'),
(8, '1', 44, 'Tilawati 1 halaman 44', 'Aktif', '2022-09-14 01:58:03', '2022-09-14 01:58:03'),
(9, '2', 11, 'Tilawati 2 halaman 11', 'Aktif', '2022-09-14 01:58:10', '2022-09-14 01:58:10'),
(10, '2', 22, 'Tilawati 2 halaman 22', 'Aktif', '2022-09-14 01:58:16', '2022-09-14 01:58:16'),
(11, '2', 33, 'Tilawati 2 halaman 33', 'Aktif', '2022-09-14 01:58:23', '2022-09-14 01:58:23'),
(12, '2', 44, 'Tilawati 2 halaman 44', 'Aktif', '2022-09-14 01:58:31', '2022-09-14 02:16:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_t_k_s`
--

CREATE TABLE `master_t_k_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tujuan_pembelajaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_referensi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no` int(10) NOT NULL,
  `tujuan_kegiatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang_id` int(5) NOT NULL,
  `jenjang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_id` bigint(20) NOT NULL,
  `tp_id` bigint(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_t_k_s`
--

INSERT INTO `master_t_k_s` (`id`, `tujuan_pembelajaran`, `kode_referensi`, `no`, `tujuan_kegiatan`, `jenjang_id`, `jenjang`, `status_aktif`, `cp_id`, `tp_id`, `created_at`, `updated_at`) VALUES
(1, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'LB.B1.1.1.1.3', 1, 'Menghafal  syahadat berserta artinya ', 3, 'PG', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'LB.B1.1.1.1.7', 2, 'Mengenal dan melafalkan asmaul husna ', 3, 'PG', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', '', 3, 'Mengenal alam semesta dan isinya sebagai ciptaan Allah\n \n', 3, 'PG', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', '', 4, 'Meyakini bahwa Allah adalah  pencipta dan pengatur alam semesta', 3, 'PG', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', '', 5, 'Berdoa hanya meminta kepada Allah', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', '', 6, 'Memiliki perasaan merasa diawasi oleh Allah', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.2. ', 7, 'Menghafal lafal kalimat thoyibah', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.4. ', 8, 'Mengucapkan kalimat thoyibah sesuai aktivitas yang dilakukan dan aktivitas yang terjadi di lingkungannya', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.5. \nLB.B1.1.4.2.14.', 9, 'Menirukan sholawat ', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.2.3.1.', 10, 'Menghafal  6 hadist pendek yang berkaitan dengan kehidupan sehari-hari', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.2.3.2.', 11, 'Mengaplikasikan dalam keseharian tuntunan hadist yang dihafal', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.1.8.', 12, 'Berwudlu sesuai Rasulullah (pendampingan)', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.2.1.', 13, 'Mengenal dan mampu mengikuti gerakan Sholat', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.2.3.', 14, 'Mengenal bacaan sholat dengan benar ', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.3.1. \n\'LB.B1.1.3.3.2. ', 15, 'Mengenal dan Berlatih puasa Ramadhan', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.4.1. \nLB.B2.1.2.1.1.', 16, 'Berinfaq, bersedekah ', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.5.1.', 17, 'Mengenal ibadah haji', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.6.1', 18, 'Hafal dan mengimplementasikan  do\'a-do\'a harian', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.7.1\n\'LB.B1.1.3.7.2\n\'LB.B1.1.3.7.3\n\'LB.B1.1.3.7.4\n\'LB.B1.1.3.7.5', 19, 'Mengetahui, memahami, memaknai, dan mengambil pelajaran dari hari besar agama islam (Hari raya Idul Fitri, Idul Adha, Isra\' Mi\'raj, maulid Nabi, tahun baru hijriyah)', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.4.1.5.', 20, 'Mengucapkan salam', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.4.2.13.', 21, 'Meneladani Rasulullah ', 3, 'PG', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'LB.B1.1.3.1.5.\nLB.B2.3.1.1.1.', 22, 'Toilet training (istinja\') - bisa ke kamar mandi BAK-BAB Mandiri (TK B semester 2) ', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'LB.B2.3.1.1.1.', 23, 'Mandi sendiri', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'KPSP.S&K.1', 24, 'Memakai baju sendiri tanpa bantuan', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.5', 25, 'Menutup hidung dan mulut ketika batuk dan bersin', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.6', 26, 'Membersihkan dan membereskan tempat bermain', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.2\nSTPPA.137.K&PK.7', 27, 'Melindungi diri dari percobaan kekerasan, termasuk kekerasan seksual dan bullying (misal dengan berteriak/ berlari)', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.3\nSTPPA.137.K&PK.7', 28, 'Menjaga keamanan diri dari benda-benda berbahaya (misal: listrik, pisau, pembasmi serangga)', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.8', 29, 'Memahami tata cara menyebrang', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.4', 30, 'Terbiasa mengkonsumsi makanan dan minuman yang bersih, sehat, dan bergizi', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.9', 31, 'Mengenal kebiasaan buruk bagi kesehatan (minuman dan makanan yang tidak sehat, rokok, minuman keras)', 3, 'PG', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.1.1.', 32, 'BerJalan dengan tenang dan fokus', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.1.4.', 33, 'Memperbanyak senyum', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 34, 'Mendoakan orangtua', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 35, 'Mengucapkan dan menjawab salam, mencium tangan serta menyambut kedatangan orang tua dengan wajah berseri', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 36, 'Memberikan perhatian dan pelayanan yang baik', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 37, 'Memohon maaf bila bersalah', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 38, 'Memanggil orangtua dengan sebutan yang baik (misal Ibu, bapak, Mama, papa dll)', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 39, 'Berkata dengan lembut, sopan, tawadhu\' dan tidak mengeraskan suara serta tidak mencela', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 40, 'Duduk di hadapan orangtua dengan santun', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 41, 'Tidak mengagetkan orangtua ketika tidur atau istirahat', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 42, 'Segera menjawab seruan orangtua apabila dipanggil', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 43, 'Membantu pekerjaan orangtua', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 44, 'Meminta izin jika mau melakukan sesuatu', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 45, 'Mau mendengarkan ketika orangtua berbicara', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.22.', 46, 'Menunjukka adab kepada guru', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.23.', 47, 'Menunjukkan adab kepada saudara ', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.25.', 48, 'Menunjukkan adab kepada teman (termasuk lawan jenis)', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'KP.B4.1.1.1.1.', 49, 'Mempunyai inisiatif membantu teman yang membutuhkan bantuan ', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.26.', 50, 'Menunjukkan adab kepada tetangga', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.27.', 51, 'Menunjukkan adab kepada tamu ', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.28.', 52, 'Menunjukkan adab kepada sesama muslim ', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'KP.B4.1.1.1.2.', 53, 'Senang menolong orang lain', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B2.1.1.1.1.', 54, 'Berkata jujur dalam keseharian', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B2.1.2.1.2.\n\'KP.B3.1.1.2.1.', 55, 'Melakukan perbuatan baik setiap hari', 3, 'PG', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B1.1.4.2.29.', 56, 'Menyayangi hewan (misal: memberi makan/ merawat)', 3, 'PG', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B1.1.4.2.30.', 57, 'Menyayangi tanaman/ tumbuhan ', 3, 'PG', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B2.1.3.1.2.\nLB.B1.1.4.2.32.', 58, 'Membuang sampah pada tempatnya', 3, 'PG', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', '', 59, 'Memilah sampah', 3, 'PG', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', '', 1, 'Mengekspresikan emosi yang sesuai dengan kondisi yang ada', 3, 'PG', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'KP.B3.3.1.2.1. ', 2, 'mampu memahami  bahasa ekspresi wajah', 3, 'PG', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'KP.B3.3.1.2.2. ', 3, 'mampu memahami   kontak mata dan bahasa tubuh yang lain', 3, 'PG', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'LB.B2.4.2.1.1.', 4, 'Mampu mengelola emosi sesuai perkembangan', 3, 'PG', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'STPPA.137.Sosem.B.2', 5, 'Bersabar menunggu giliran', 3, 'PG', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Anak mampu membangun hubungan sosial secara sehat.', 'LB.B2.4.2.1.4.', 6, 'mampu berteman dan bekerjasama dengan orang lain', 3, 'PG', 'Aktif', 2, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.2.\nLB.B2.1.3.1.3.', 7, 'menjaga dan merawat barang milik pribadi dan yang dipinjam atau yang diamanahkan  (masih diingatkan)', 3, 'PG', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.3.', 8, 'menjaga dan merawat fasilitas dan kebersihan lingkungan sekolah ', 3, 'PG', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.4.', 9, 'menjaga dan merawat fasilitas dan kebersihan lingkungan  secara umum', 3, 'PG', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.1.', 10, 'cinta tanah air Indonesia (Mau menggunakan produk Indonesia )', 3, 'PG', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.2.2.1.3', 11, 'Mampu beradaptasi dengan lingkungan baru', 3, 'PG', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.2.2.1.1', 12, 'mengerjakan tugas perkembangannya dengan semangat, pantang menyerah ', 3, 'PG', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.3.1.1.', 13, 'Faham aturan', 3, 'PG', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.3.1.2.', 14, 'Mentaati aturan yang berlaku', 3, 'PG', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.1.3.1.1.', 15, 'Merapikan dan mengembalikan  barang (mainan, dll) setelah digunakan sesuai tempatnya', 3, 'PG', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.1\nLB.B2.2.1.2.1.', 16, ' Melempar bola lurus ke arah perut/dada orang dewasa dari jarak 1.5 m', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.2\nLB.B2.2.1.2.1.', 17, 'Melompat (seukuran lebar kertas HVS) dengan mengangkat kedua kaki tanpa didahului lari', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.3\nLB.B2.2.1.2.1.', 18, 'Mengayuh sepeda roda 3 sejauh minimal 3 m', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.4\nSTPPA.137.FMK.6\nLB.B2.2.1.2.1.', 19, 'Berdiri satu kaki minimal 2 detik', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.5\nLB.B2.2.1.2.1.', 20, 'Melompat (seukuran panjang kertas HVS) dengan mengangkat kedua kaki tanpa didahului lari', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.6\nLB.B2.2.1.2.1.', 21, 'Berjalan mengikuti garis lurus', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.7\nLB.B2.2.1.2.1.', 22, 'Melempar benda kecil ke atas', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.8\nSTPPA.137.FMK.5\nSTPPA.146.4.3.4\nLB.B2.2.1.2.1.', 23, 'Meniru gerakan senam sederhana seperti\nmenirukan gerakan pohon, binatang berjalan', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.9\nLB.B2.2.1.2.1.', 24, 'Berjalan jinjit', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.10\nSTPPA.137.FMK.2\nLB.B2.2.1.2.1.', 25, ' Naik turun tangga atau tempat yang lebih tinggi dengan kaki bergantian tanpa berpegangan orang', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.11\nLB.B2.2.1.2.1.', 26, 'Menendang bola', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.12\nLB.B2.2.1.2.1.', 27, 'Menangkap bola dengan mendekap di dada', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMK.1\nLB.B2.2.1.2.1.', 28, 'Berlari sambil membawa sesuatu yang ringan\n(bola)', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMK.4\nSTPPA.146.4.3.3\nLB.B2.2.1.2.1.', 29, 'Melompat turun dari ketinggian kurang lebih\n20 cm (di bawah tinggi lutut anak)', 3, 'PG', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.1\nLB.B2.2.1.2.2.', 30, 'Mencoret kertas tanpa bantuan/petunjuk', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.2\nLB.B2.2.1.2.2.', 31, 'Menyusun 4 kubus ukuran 2.5-5 cm satu persatu tanpa jatuh', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.3\nLB.B2.2.1.2.2.', 32, 'Menggambar garis lurus ke bawah sepanjang minimal 2.5 cm', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.4\nLB.B2.2.1.2.2.', 33, 'Menggambar lingkaran', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.5\nLB.B2.2.1.2.2.', 34, 'Menyusun 8 kubus ukuran 2.5-5 cm satu persatu tanpa jatuh', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.6\nSTPPA.FMH.4\nSTPPA.146.4.3.8\nLB.B2.2.1.2.2.', 35, 'Menggunting, menempel, menjahit, menggambar dengan jari', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.FMH.1\nSTPPA.146.4.3.5\nLB.B2.2.1.2.2.', 36, 'Menuang air, pasir, atau biji-bijian ke dalam tempat penampung (mangkuk, ember)', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.FMH.2\nSTPPA.146.4.3.6\nLB.B2.2.1.2.2.', 37, 'Memasukkan benda kecil ke dalam botol\n(potongan lidi, kerikil, biji-bijian)\n', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.FMH.3\nSTPPA.146.4.3.7\nLB.B2.2.1.2.2.', 38, 'Meronce benda yang cukup besar', 3, 'PG', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'KPSP.B.1', 1, 'Menggunakan 2 kata pada saat bicara', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'KP.B3.3.2.1.2. ', 2, 'Menjawab pertanyaan tentang identitas diri (nama panggilan)', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'STPPA.137.B.2\nSTPPA.146.4.10.2\n\'KP.B3.3.1.1.2. ', 3, 'Melaksanakan tiga atau lebih perintah sederhana', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'STPPA.137.MB.2', 4, 'Mulai menceritakan pengalaman yang dialami dengan cerita sederhana', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'STPPA.137.B.1', 5, 'Membaca cerita bergambar dalam buku dengan kata-kata sendiri', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'STPPA.137.MB.1', 6, 'Mulai menyatakan keinginan dengan mengucapkan kalimat sederhana', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'KP.B3.3.2.1.2. ', 7, 'Mulai bertanya dengan menggunakan lebih dari 1 kata tanya', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'KP.B3.3.1.1.1. ', 8, 'Memahami kalimat ajakan', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'KP.B3.3.1.1.7. ', 9, 'Mampu memahami pertanyaan 5 W 1H dalam bahasa Indonesia (disesuaikan dengan perkembangan berfikirnya)', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'KP.B3.3.1.1.8. ', 10, 'Memahami dan merespon secara tepat informasi dan instruksi yang ada', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', '\'KP.B3.4.1.1.1. ', 11, 'Membuat karya yang menunjukkan ide, gagasan, atau perasaannya', 3, 'PG', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', 'STPPA.146.4.11.4', 12, 'Menunjukkan perilaku sedang membaca buku', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 13, '1.Menyebutkan nama benda dengan tepat', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 14, '2. memberikan konsep ide', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 15, '3. Menghubungkan kata dan makna', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 16, '4. Menggabungkan kata menjadi kalimat sederhana', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 17, '5. Melatih nada dan tempo untuk persiapan komunikasi', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 18, 'Membaca kartu fonem lembar apel', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 19, 'Memegang kartu fonem', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 20, 'Mengenal dan mengidentifikasi bunyi huruf vokal', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 21, 'Menyanyikan lagu fonik huruf vokal', 3, 'PG', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.2', 22, 'Menentukan korespondensi satu-satu (benda yang disekitar anak)', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.1', 23, 'Mengklasifikasikan benda berdasarkan ciri-ciri tertentu (warna, ukuran, bentuk,  tekstur, dan jenis)', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 24, 'Membilang banyak benda 1-5', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.5', 25, 'Mengenal konsep besar-kecil, banyak-sedikit, panjang-pendek, berat-ringan, tinggi-rendah, tebal-tipis dengan kegiatan membandingkan', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 26, 'Mengenal pola AB-AB', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.3', 27, 'Mengenal pola bertumbuh dan sebaliknya (banyak benda 3)', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.4', 28, 'Mengenal bentuk-bentuk geometri (segitiga, segiempat, lingkaran)', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 29, 'Mengenal konsep luar-dalam, bawah-atas, dan depan-belakang', 3, 'PG', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'KP.B3.2.1.1.1.\nSTPPA.146.3.5.1', 30, 'Memecahkan masalah sederhana yang dihadapi dengan aktif bertanya pada orang-orang yang ada di lingkungannya', 3, 'PG', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 31, 'Mampu menggunakan lima indera yang dimiliki untuk mendapatkan informasi (seperti, bentuk, warna, aroma, rasa, bunyi, dan tekstur)', 3, 'PG', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 32, 'Mengeksplorasi dan bereksperimen dengan material alam atau buatan manusia', 3, 'PG', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'STPPA.146.4.9.1', 33, 'Menyebutkan nama benda-benda teknologi sederhana', 3, 'PG', 'Aktif', 3, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'STPPA.146.4.9.2', 34, 'Mengelompokkan berbagai teknologi sederhana yang ada di rumah dan lingkungan sekitar', 3, 'PG', 'Aktif', 3, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'STPPA.146.4.15.1', 35, 'Melakukan aktivitas seni sederhana', 3, 'PG', 'Aktif', 3, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'LB.B1.1.1.1.2', 1, 'Menirukan lafal syahadat dan artinya', 2, 'TK A', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'LB.B1.1.1.1.7', 2, 'Mengenal dan melafalkan asmaul husna', 2, 'TK A', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', '', 3, 'Mengenal alam semesta dan isinya sebagai ciptaan Allah', 2, 'TK A', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', '', 4, 'Berdoa hanya meminta kepada Allah', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', '', 5, 'Memiliki perasaan merasa diawasi oleh Allah', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.2. ', 6, 'Menghafal lafal kalimat thoyibah', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.4. ', 7, 'Mengucapkan kalimat thoyibah sesuai aktivitas yang dilakukan dan aktivitas yang terjadi di lingkungannya', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.5. \nLB.B1.1.4.2.14.', 8, 'Menirukan sholawat', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.2.3.1.', 9, 'Menghafal  4 hadist pendek yang berkaitan dengan kehidupan sehari-hari', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.2.3.2.', 10, 'Mengaplikasikan dalam keseharian tuntunan hadist yang dihafal', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.1.8.', 11, 'Berwudlu sesuai Rasulullah (pendampingan)', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.2.1.', 12, 'Mengenal dan mampu mengikuti gerakan Sholat', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.3.1. \n\'LB.B1.1.3.3.2. ', 13, 'Mengenal dan Berlatih puasa Ramadhan', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.4.1. \nLB.B2.1.2.1.1.', 14, 'Berinfaq, bersedekah', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.5.1.', 15, 'Mengenal ibadah haji', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.6.1', 16, 'Hafal dan mengimplementasikan  do\'a-do\'a harian', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.7.1\n\'LB.B1.1.3.7.2\n\'LB.B1.1.3.7.3\n\'LB.B1.1.3.7.4\n\'LB.B1.1.3.7.5', 17, 'Mengetahui dan memahami dari hari besar agama islam (Hari raya Idul Fitri, Idul Adha, Isra\' Mi\'raj, maulid Nabi, tahun baru hijriyah)', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.4.1.5.', 18, 'Mengucapkan salam', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.4.2.13.', 19, 'Meneladani Rasulullah', 2, 'TK A', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'LB.B1.1.3.1.4.\nSTPPA.137.K&PK.5\nSTPPA.146.4.4.4', 20, 'Toilet training (istinja\') - bisa ke kamar mandi BAK-BAB dengan pendampingan guru', 2, 'TK A', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'LB.B2.3.1.1.1.', 21, 'Menggosok gigi sendiri', 2, 'TK A', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'LB.B2.3.1.1.1.\nKPSP.S&K.1', 22, 'Melepas dan memakai baju (mengancingkan baju) sendiri', 2, 'TK A', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.6', 23, 'Memahami berbagai alarm bahaya (kebakaran, banjir, gempa)', 2, 'TK A', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.7', 24, 'Mengenal rambu lalu lintas yang ada di jalan', 2, 'TK A', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.2', 25, 'Mengenali bagian tubuh yang harus dilindungi (boleh disentuh dan tidak boleh disentu orang lain)', 2, 'TK A', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.3', 26, 'Mulai terbiasa mengkonsumsi makanan dan minuman yang bersih, sehat, dan bergizi', 2, 'TK A', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.1.4.', 27, 'Memperbanyak senyum', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 28, 'Mendoakan orangtua', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 29, 'Mengucapkan dan menjawab salam, mencium tangan serta menyambut kedatangan orang tua dengan wajah berseri', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 30, 'Memberikan perhatian dan pelayanan yang baik', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 31, 'Memohon maaf bila bersalah', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 32, 'Memanggil orangtua dengan sebutan yang baik (misal Ibu, bapak, Mama, papa dll)', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 33, 'Berkata dengan lembut, sopan, tawadhu\' dan tidak mengeraskan suara serta tidak mencela', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 34, 'Duduk di hadapan orangtua dengan santun', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 35, 'Tidak mengagetkan orangtua ketika tidur atau istirahat', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 36, 'Segera menjawab seruan orangtua apabila dipanggil', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 37, 'Membantu pekerjaan orangtua', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 38, 'Meminta izin jika mau melakukan sesuatu', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 39, 'Mau mendengarkan ketika orangtua berbicara', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.22.', 40, 'Menunjukka adab kepada guru', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.23.', 41, 'Menunjukkan adab kepada saudara', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'KP.B4.1.1.1.1.', 42, 'Mempunyai inisiatif membantu teman yang membutuhkan bantuan', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'KP.B4.1.1.1.2.', 43, 'Senang menolong orang lain', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B2.1.1.1.1.', 44, 'Berkata jujur dalam keseharian', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B2.1.2.1.2.\n\'KP.B3.1.1.2.1.', 45, 'Melakukan perbuatan baik setiap hari', 2, 'TK A', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B1.1.4.2.29.', 46, 'Menyayangi hewan (misal: memberi makan/ merawat)', 2, 'TK A', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B1.1.4.2.30.', 47, 'Menyayangi tanaman/ tumbuhan', 2, 'TK A', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B2.1.3.1.2.', 48, 'Membuang sampah pada tempatnya', 2, 'TK A', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', '', 49, 'Memilah sampah', 2, 'TK A', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', '', 1, 'Mengekspresikan emosi yang sesuai dengan kondisi yang ada', 2, 'TK A', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `master_t_k_s` (`id`, `tujuan_pembelajaran`, `kode_referensi`, `no`, `tujuan_kegiatan`, `jenjang_id`, `jenjang`, `status_aktif`, `cp_id`, `tp_id`, `created_at`, `updated_at`) VALUES
(222, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'KP.B3.3.1.2.1. ', 2, 'mampu memahami  bahasa ekspresi wajah', 2, 'TK A', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'KP.B3.3.1.2.2. ', 3, 'mampu memahami   kontak mata dan bahasa tubuh yang lain', 2, 'TK A', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'LB.B2.4.2.1.1.', 4, 'Mampu mengelola emosi sesuai perkembangan', 2, 'TK A', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'KPSP.S&K.2', 5, 'Tenang, tidak rewel pada saat ditinggal orang terdekat (orang tua/pengasuh)', 2, 'TK A', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Anak mampu membangun hubungan sosial secara sehat.', 'LB.B2.4.2.1.4.', 6, 'mampu berteman dan bekerjasama dengan orang lain', 2, 'TK A', 'Aktif', 2, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'LB.B2.3.1.1.7.', 7, 'Cakap dalam  mengurus diri dan perbekalan pribadi', 2, 'TK A', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.2.\nLB.B2.1.3.1.3.', 8, 'menjaga dan merawat barang milik pribadi dan yang dipinjam atau yang diamanahkan  (masih diingatkan)', 2, 'TK A', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.3.', 9, 'menjaga dan merawat fasilitas dan kebersihan lingkungan sekolah ', 2, 'TK A', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.4.', 10, 'menjaga dan merawat fasilitas dan kebersihan lingkungan  secara umum', 2, 'TK A', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.1.', 11, 'cinta tanah air Indonesia (Mau menggunakan produk Indonesia )', 2, 'TK A', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.2.2.1.3', 12, 'Mampu beradaptasi dengan lingkungan baru', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.1.3.1.5.', 13, 'melaksanakan tugas dan kewajiban yang telah diamanahkan dengan baik dan tuntas (dengan pendampingan) ', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.1.3.1.7.', 14, 'berani menjalankan konsekuensi dari tindakan yang sudah dilakukan', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.2.2.1.1', 15, 'mengerjakan tugas perkembangannya dengan semangat, pantang menyerah ', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.1.1.1.', 16, 'Mampu datang ke sekolah tepat waktu', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.3.1.1.', 17, 'Faham aturan', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.3.1.2.', 18, 'Mentaati aturan yang berlaku', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.1.3.1.1.', 19, 'Merapikan dan mengembalikan  barang (mainan, dll) setelah digunakan sesuai tempatnya', 2, 'TK A', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.1\nLB.B2.2.1.2.1.', 20, 'Berdiri satu kaki minimal 6 detik', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.2\nLB.B2.2.1.2.1.', 21, 'Melompat satu kaki tanpa berpegangan minimal 3 kali lompatan.\n', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.3\nLB.B2.2.1.2.1.', 22, 'Berjalan mundur', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.4\nLB.B2.2.1.2.1.', 23, 'Melompat ke depan dan ke belakang', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.5\nLB.B2.2.1.2.1.', 24, 'Salto/berguling ke depan', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.6\nSTPPA.137.FMK.7\nLB.B2.2.1.2.1.', 25, 'Menendang secara terkoordinasi dengan kaki dan tangan terayun', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.7\nSTPPA.137.FMK.5\nLB.B2.2.1.2.1.\nSTPPA.4.3.5.\n', 26, 'Menangkap sesuatu secara tepat dari jarak jauh', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.8\nLB.B2.2.1.2.1.', 27, 'Berjalan di atas papan titian', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMK.1\nLB.B2.2.1.2.1.', 28, 'Menirukan gerakan binatang, pohon tertiup angin, pesawat  terbang, dsb', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMK.2\nLB.B2.2.1.2.1.\nSTPPA.146.4.3.2', 29, 'Melakukan gerakan menggantung\n(bergelayut)', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMK.3\nLB.B2.2.1.2.1.\nSTPPA.4.3.4', 30, 'Melakukan gerakan melompat, meloncat, dan berlari secara terkoordinasi', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMK.4\nLB.B2.2.1.2.1.', 31, 'Melempar sesuatu secara terarah', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMK.6\nLB.B2.2.1.2.1.', 32, 'Melakukan gerakan antisipasi', 2, 'TK A', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.1\nLB.B2.2.1.2.2.', 33, 'Menunjukkan garis yang lebih panjang', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.2\nLB.B2.2.1.2.2.', 34, 'Menggambar tanda jumlah', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.3\nLB.B2.2.1.2.2.', 35, 'Memegang pensil dengan ujung jari', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.4\nLB.B2.2.1.2.2.', 36, 'Menggambar sesuatu yang berarti dan dapat dikenali orang lain', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.5\nLB.B2.2.1.2.2.', 37, 'Menulis beberapa huruf', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMH.6\nLB.B2.2.1.2.2.', 38, 'Mengontrol gerakan tangan yang meggunakan otot halus  (menjumput, mengelus, mencolek, mengepal, memelintir, memilin, memeras)', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMH.1\nLB.B2.2.1.2.2.', 39, 'Membuat garis vertikal, horizontal, lengkung kiri/kanan, miring kiri/kanan, dan lingkaran', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMH.2\nLB.B2.2.1.2.2.', 40, 'Menjiplak bentuk', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMH.3\nSTPPA.146.4.3.9\nLB.B2.2.1.2.2.', 41, 'Mengkoordinasikan mata dan tangan untuk melakukan gerakan yang rumit', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.137.FMH.4\nLB.B2.2.1.2.2.', 42, 'Melakukan gerakan manipulatif untuk menghasilkan suatu bentuk\ndengan menggunakan berbagai media', 2, 'TK A', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KPSP.B.1\nKP.B3.3.2.1.2. ', 1, 'Menyebutkan nama lengkap', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KPSP.B.2\nSTPPA.137.B.3', 2, 'Menjawab pertanyaan tentang apa yang harus dilakukan jika merasakan sesuatu', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KPSP.B.3\nSTPPA.146.4.10.2\n\'KP.B3.3.1.1.2. ', 3, 'Melaksanakan perintah sederhana sesuai aturan yang disampaikan', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.146.4.10.1', 4, 'Menceritakan kembali apa yang didengar dengan kosakata yang terbatas', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.137.B. 8\nKP.B3.3.2.1.3. ', 5, 'Menceritakan kembali cerita yang didengar', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.137.B. 4', 6, 'Mengungkapkan perasaan atau pendapat kepada orang lain', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.137.B.2\nSTPPA.146.4.11.6\nKP.B3.3.2.1.2. ', 7, 'Bertanya dengan menggunakan lebih dari 2 kata tanya', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.1. ', 8, 'Memahami kalimat ajakan', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.3. ', 9, 'Memahami isi cerita', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.7. ', 10, 'Mampu memahami pertanyaan 5 W 1H dalam bahasa Indonesia (disesuaikan dengan perkembangan berfikirnya)', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.8. ', 11, 'Memahami dan merespon secara tepat informasi dan instruksi yang ada', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', '\'KP.B3.4.1.1.1. ', 12, 'Membuat karya yang menunjukkan ide, gagasan, atau perasaannya', 2, 'TK A', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', 'STPPA.146.4.11.4', 13, 'Menceritakan gambar yang ada dalam buku', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 14, 'Membaca kartu fonem lembar apel dan bola', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 15, 'Memegang kartu fonem', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 16, 'Mengenal dan mengidentifikasi bunyi huruf vokal dan konsonan', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 17, 'Menyanyikan lagu fonik huruf vokal dan konsonan', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 18, 'Membaca gambar huruf vokal dan konsonan', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 19, 'Menemukan padanan huruf vokal dan konsonan', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 20, 'Menulis huruf vokal dan konsonan dengan gerakan yang tepat dan runtut', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 21, 'Membedakan huruf kecil dan kapital', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 22, 'Menggabungkan bunyi suku kata terbuka', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 23, 'Menyusun kata dari suku kata terbuka', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 24, 'Menulis dan membaca kata suku kata terbuka', 2, 'TK A', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.2', 25, 'Menentukan korespondensi satu-satu (benda lebih kompleks)', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.1', 26, 'Mengklasifikasikan benda berdasarkan ciri-ciri tertentu (warna, jenis, ukuran, bentuk, jumlah, suara, tekstur, dan fungsi)', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 27, 'Membilang banyak benda 1-10', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 28, 'Membilang banyak benda pada gambar 1-10', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.5', 29, 'Mengenal konsep besar-kecil, banyak-sedikit, panjang-pendek, berat-ringan, tinggi-rendah, tebal-tipis dengan kegiatan membandingkan', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 30, 'Memperkirakan banyak benda', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 31, 'Memperkirakan lama waktu suatu kegiatan', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 32, 'Mengenal pola ABC-ABC', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.3', 33, 'Mengenal pola bertumbuh dan sebaliknya (banyak benda 5)', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.4', 34, 'Mengenal bentuk-bentuk geometri (segitiga, persegi, persegi panjang, belah ketupat, layang-layang, lingkaran)', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 35, 'Mengenal konsep luar-dalam, bawah-atas, depan-belakang, dan kanan-kiri', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 36, 'Mengukur menggunakan alat ukur tidak baku', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 37, 'Mengumpulkan data', 2, 'TK A', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'KP.B3.2.1.1.1.\nSTPPA.146.3.5.1', 38, 'Mampu memecahkan masalah sederhana yang dihadapi dibantu orang dewasa', 2, 'TK A', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'KP.B3.2.1.1.2.', 39, 'Mengikuti proses belajar Exploring - Planing - doing - communicating -Reflecting  (learning cycle)', 2, 'TK A', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'STPPA.137.BL.2', 40, 'Mengenal gejala sebab akibat yang terkait dengan dirinya', 2, 'TK A', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 41, 'Mampu menggunakan lima indera yang dimiliki untuk mendapatkan informasi (seperti, bentuk, warna, aroma, rasa, bunyi, dan tekstur)', 2, 'TK A', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', 'STPPA.137.K.6', 42, 'Mengamati benda dan gejala dengan rasa ingin tahu', 2, 'TK A', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 43, 'Mengeksplorasi dan bereksperimen dengan material alam atau buatan manusia', 2, 'TK A', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'STPPA.146.4.9.1', 44, 'Mengetahui cara penggunaan benda-benda teknologi sederhana', 2, 'TK A', 'Aktif', 3, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'STPPA.146.4.9.2', 45, 'Mengenali bahan-bahan pembuatan teknologi sederhana', 2, 'TK A', 'Aktif', 3, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'STPPA.146.4.15.2', 46, 'Menampilkan karya seni sederhana di depan teman atau orang lain', 2, 'TK A', 'Aktif', 3, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'STPPA.146.4.15.1', 47, 'Menghargai penampilan karya seni anak lain dengan bimbingan', 2, 'TK A', 'Aktif', 3, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'LB.B1.1.1.1.3', 1, 'Menghafal  syahadat berserta artinya', 1, 'TK B', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'LB.B1.1.1.1.7', 2, 'Mengenal dan melafalkan asmaul husna', 1, 'TK B', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', '', 3, 'Mengenal alam semesta dan isinya sebagai ciptaan Allah', 1, 'TK B', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', '', 4, 'Meyakini bahwa Allah adalah  pencipta dan pengatur alam semesta', 1, 'TK B', 'Aktif', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', '', 5, 'Berdoa hanya meminta kepada Allah', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', '', 6, 'Memiliki perasaan merasa diawasi oleh Allah', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.2. ', 7, 'Menghafal lafal kalimat thoyibah', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.4. ', 8, 'Mengucapkan kalimat thoyibah sesuai aktivitas yang dilakukan dan aktivitas yang terjadi di lingkungannya', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.1.2.5. \nLB.B1.1.4.2.14.', 9, 'Menirukan sholawat', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.2.3.1.', 10, 'Menghafal  6 hadist pendek yang berkaitan dengan kehidupan sehari-hari', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.2.3.2.', 11, 'Mengaplikasikan dalam keseharian tuntunan hadist yang dihafal', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.1.8.', 12, 'Berwudlu sesuai Rasulullah (pendampingan)', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.2.1.', 13, 'Mengenal dan mampu mengikuti gerakan Sholat', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.2.3.', 14, 'Mengenal bacaan sholat dengan benar', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.3.1. \n\'LB.B1.1.3.3.2. ', 15, 'Mengenal dan Berlatih puasa Ramadhan', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.4.1. \nLB.B2.1.2.1.1.', 16, 'Berinfaq, bersedekah', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.5.1.', 17, 'Mengenal ibadah haji', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.6.1', 18, 'Hafal dan mengimplementasikan  do\'a-do\'a harian', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.3.7.1\n\'LB.B1.1.3.7.2\n\'LB.B1.1.3.7.3\n\'LB.B1.1.3.7.4\n\'LB.B1.1.3.7.5', 19, 'Mengetahui, memahami, memaknai, dan mengambil pelajaran dari hari besar agama islam (Hari raya Idul Fitri, Idul Adha, Isra\' Mi\'raj, maulid Nabi, tahun baru hijriyah)', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.4.1.5.', 20, 'Mengucapkan salam', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'LB.B1.1.4.2.13.', 21, 'Meneladani Rasulullah ', 1, 'TK B', 'Aktif', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'LB.B1.1.3.1.5.\nLB.B2.3.1.1.1.', 22, 'Toilet training (istinja\') - bisa ke kamar mandi BAK-BAB Mandiri (TK B semester 2)', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'LB.B2.3.1.1.1.', 23, 'Mandi sendiri', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'KPSP.S&K.1', 24, 'Memakai baju sendiri tanpa bantuan', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.5', 25, 'Menutup hidung dan mulut ketika batuk dan bersin', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.6', 26, 'Membersihkan dan membereskan tempat bermain', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.2\nSTPPA.137.K&PK.7', 27, 'Melindungi diri dari percobaan kekerasan, termasuk kekerasan seksual dan bullying (misal dengan berteriak/ berlari)', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.3\nSTPPA.137.K&PK.7', 28, 'Menjaga keamanan diri dari benda-benda berbahaya (misal: listrik, pisau, pembasmi serangga)', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.8', 29, 'Memahami tata cara menyebrang', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.146.4.4.4', 30, 'Terbiasa mengkonsumsi makanan dan minuman yang bersih, sehat, dan bergizi', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'STPPA.137.K&PK.9', 31, 'Mengenal kebiasaan buruk bagi kesehatan (minuman dan makanan yang tidak sehat, rokok, minuman keras)', 1, 'TK B', 'Aktif', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.1.1.', 32, 'BerJalan dengan tenang dan fokus', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.1.4.', 33, 'Memperbanyak senyum', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 34, 'Mendoakan orangtua', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 35, 'Mengucapkan dan menjawab salam, mencium tangan serta menyambut kedatangan orang tua dengan wajah berseri', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 36, 'Memberikan perhatian dan pelayanan yang baik', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 37, 'Memohon maaf bila bersalah', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 38, 'Memanggil orangtua dengan sebutan yang baik (misal Ibu, bapak, Mama, papa dll)', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 39, 'Berkata dengan lembut, sopan, tawadhu\' dan tidak mengeraskan suara serta tidak mencela', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 40, 'Duduk di hadapan orangtua dengan santun', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 41, 'Tidak mengagetkan orangtua ketika tidur atau istirahat', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 42, 'Segera menjawab seruan orangtua apabila dipanggil', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 43, 'Membantu pekerjaan orangtua', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 44, 'Meminta izin jika mau melakukan sesuatu', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.21.', 45, 'Mau mendengarkan ketika orangtua berbicara', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.22.', 46, 'Menunjukka adab kepada guru', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.23.', 47, 'Menunjukkan adab kepada saudara', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.25.', 48, 'Menunjukkan adab kepada teman (termasuk lawan jenis)', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'KP.B4.1.1.1.1.', 49, 'Mempunyai inisiatif membantu teman yang membutuhkan bantuan', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.26.', 50, 'Menunjukkan adab kepada tetangga', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.27.', 51, 'Menunjukkan adab kepada tamu', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B1.1.4.2.28.', 52, 'Menunjukkan adab kepada sesama muslim', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'KP.B4.1.1.1.2.', 53, 'Senang menolong orang lain', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B2.1.1.1.1.', 54, 'Berkata jujur dalam keseharian', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'LB.B2.1.2.1.2.\n\'KP.B3.1.1.2.1.', 55, 'Melakukan perbuatan baik setiap hari', 1, 'TK B', 'Aktif', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B1.1.4.2.29.', 56, 'Menyayangi hewan (misal: memberi makan/ merawat)', 1, 'TK B', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B1.1.4.2.30.', 57, 'Menyayangi tanaman/ tumbuhan', 1, 'TK B', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'LB.B2.1.3.1.2.\nLB.B1.1.4.2.32.', 58, 'Membuang sampah pada tempatnya', 1, 'TK B', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', '', 59, 'Memilah sampah', 1, 'TK B', 'Aktif', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'STPPA.137.Sosem.C.8', 1, 'Mengekspresikan emosi yang sesuai dengan kondisi yang ada', 1, 'TK B', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', '', 2, 'Menyebutkan kejadian atau situasi yang menyebabkan munculnya emosi', 1, 'TK B', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'KP.B3.3.1.2.1. ', 3, 'mampu memahami  bahasa ekspresi wajah', 1, 'TK B', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'KP.B3.3.1.2.2. ', 4, 'mampu memahami   kontak mata dan bahasa tubuh yang lain', 1, 'TK B', 'Aktif', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'LB.B2.4.2.1.1.', 5, 'Mampu mengelola emosi sesuai perkembangan', 1, 'TK B', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'STPPA.137.Sosem.A.3', 6, 'Mengenal perasaan sendiri dan mengelolanya secara wajar (mampu mengendalikan diri secara wajar)', 1, 'TK B', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', '', 7, 'Mengkomunikasikan hal yang disukai dan tidak disukai ketika merasakan emosi yang tidak nyaman', 1, 'TK B', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'STPPA.137.Sosem.C.3', 8, 'Mengetahui perasaan temannya dan meresponnya secara wajar', 1, 'TK B', 'Aktif', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'Anak mampu membangun hubungan sosial secara sehat.', 'LB.B2.4.2.1.4.', 9, 'mampu berteman dan bekerjasama dengan orang lain', 1, 'TK B', 'Aktif', 2, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'LB.B2.3.1.1.7.', 10, 'Cakap dalam  mengurus diri dan perbekalan pribadi', 1, 'TK B', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.2.\nLB.B2.1.3.1.3.', 11, 'menjaga dan merawat barang milik pribadi dan yang dipinjam atau yang diamanahkan  (masih diingatkan)', 1, 'TK B', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.3.', 12, 'menjaga dan merawat fasilitas dan kebersihan lingkungan sekolah', 1, 'TK B', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.4.', 13, 'menjaga dan merawat fasilitas dan kebersihan lingkungan  secara umum', 1, 'TK B', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.1.', 14, 'cinta tanah air Indonesia (Mau menggunakan produk Indonesia)', 1, 'TK B', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'KP.B4.2.1.1.1.', 15, 'Mengenal isi dasar negara', 1, 'TK B', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', '', 16, 'Mengenal lambang negara', 1, 'TK B', 'Aktif', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.2.2.1.3', 17, 'Mampu beradaptasi dengan lingkungan baru', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.1.3.1.5.', 18, 'melaksanakan tugas dan kewajiban yang telah diamanahkan dengan baik dan tuntas (dengan pendampingan)', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.1.3.1.7.', 19, 'berani menjalankan konsekuensi dari tindakan yang sudah dilakukan', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.2.2.1.1', 20, 'mengerjakan tugas perkembangannya dengan semangat, pantang menyerah', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.1.1.1.', 21, 'Mampu datang ke sekolah tepat waktu', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.3.1.1.', 22, 'Faham aturan', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.4.3.1.2.', 23, 'Mentaati aturan yang berlaku', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'LB.B2.1.3.1.1.', 24, 'Merapikan dan mengembalikan  barang (mainan, dll) setelah digunakan sesuai tempatnya', 1, 'TK B', 'Aktif', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.1\nLB.B2.2.1.2.1.', 25, 'Lempar tangkap bola kecil sebesar bola tenis dengan menggunakan kedua tangan', 1, 'TK B', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.2\nLB.B2.2.1.2.1.', 26, 'Berdiri satu kaki minimal 11 detik', 1, 'TK B', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMK.3\nLB.B2.2.1.2.1.', 27, 'Melompat satu kaki tanpa berpegangan sejauh minimal 1 m', 1, 'TK B', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.146.4.3.1\nSTPPA.137.FMK.1\nLB.B2.2.1.2.1.', 28, 'Melakukan berbagai gerakan terkoordinasi seraca terkontrol, seimbang, dan lincah', 1, 'TK B', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.146.4.3.2\nSTPPA.137.FMK.2\nLB.B2.2.1.2.1.', 29, 'Melakukan koordinasi gerakan mata, tangan, kaki, kepala dalam menirukan tarian atau senam', 1, 'TK B', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `master_t_k_s` (`id`, `tujuan_pembelajaran`, `kode_referensi`, `no`, `tujuan_kegiatan`, `jenjang_id`, `jenjang`, `status_aktif`, `cp_id`, `tp_id`, `created_at`, `updated_at`) VALUES
(398, 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.146.4.3.3\nSTPPA.137.FMK.3\nLB.B2.2.1.2.1.', 30, 'Melakukan permainan fisik dengan aturan', 1, 'TK B', 'Aktif', 2, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.1\nLB.B2.2.1.2.2.', 31, 'Menggambar orang (minimal 6 anggota tubuh)', 1, 'TK B', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.2\nLB.B2.2.1.2.2.', 32, 'Menggambar kotak dan segitiga', 1, 'TK B', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.3\nLB.B2.2.1.2.2.', 33, 'Menulis nama sendiri', 1, 'TK B', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'KPSP.FMH.4\nLB.B2.2.1.2.2.', 34, 'Memotong bentuk-bentuk sederhana', 1, 'TK B', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'STPPA.146.4.3.4\nLB.B2.2.1.2.2.', 35, 'Menggunakan tangan kanan dan kiri dalam berbagai aktivitas (misal: mengancingkan baju, menali sepatu, menggambar, menempel, menggunting, makan, dll)', 1, 'TK B', 'Aktif', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KPSP.B.1', 1, 'Melengkapi pernyataan tentang lawan kata dan bahan benda', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.137.B.B.1\nKP.B3.3.2.1.2. ', 2, 'Menjawab pertanyaan yang lebih kompleks', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KPSP.B.2\nSTPPA.146.4.10.2\nSTPPA.137.B.A.1\n\'KP.B3.3.1.1.2. ', 3, 'Melaksanakan perintah yang lebih kompleks sesuai aturan yang disampaikan', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.146.4.10.1', 4, 'Menceritakan kembali apa yang didengar dengan kosakata yang lebih', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.137.B. B.6\nKP.B3.3.2.1.3. ', 5, 'Melanjutkan sebagian cerita yang telah diperdengarkan', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.137.B. B.4', 6, 'Menyusun kalimat sederhana dalam struktur lengkap (subjek-predikat-keterangan)', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'STPPA.137.B. B.5', 7, 'Memiliki lebih banyak kata-kata untuk mengekpresikan ide pada orang lain', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.2.1.2. \nKP.B3.3.2.1.4. ', 8, 'Mampu mengajukan pertanyaan dengan kata tanya : apa, siapa, kapan, dimana, mengapa, bagaimana', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.1. ', 9, 'Memahami kalimat ajakan', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.3. ', 10, 'Memahami isi cerita', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.4. ', 11, 'Mampu menyimpulkan cerita', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.7. ', 12, 'Mampu memahami pertanyaan 5 W 1H dalam bahasa Indonesia (disesuaikan dengan perkembangan berfikirnya)', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.3.1.1.8. ', 13, 'Memahami dan merespon secara tepat informasi dan instruksi yang ada', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', '\'KP.B3.4.1.1.1. ', 14, 'Membuat karya yang menunjukkan ide, gagasan, atau perasaannya', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan. ', 'KP.B3.1.2.1.1.', 15, 'Memiliki cita-cita dan bercerita tentang cita-cita', 1, 'TK B', 'Aktif', 3, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', 'STPPA.146.4.11.4', 16, 'Menunjukkan perilaku senang membaca buku terhadap buku-buku yang dikenali', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 17, 'Menggabungkan bunyi suku kata tertutup', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 18, 'Menyusun kata dari suku kata tertutup', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 19, 'Menulis dan membaca kata dari suku kata tertutup', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 20, 'Menggabungkan bunyi suku kata double vokal', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 21, 'Menyusun kata dari suku kata double vokal', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 22, 'Menulis dan membaca kata dari suku kata double vokal', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 23, 'Menggabungkan bunyi suku kata double konsonan', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 24, 'Menyusun kata dari suku kata double konsonan', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 25, 'Menulis dan membaca kata dari suku kata double konsonan', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', '', 26, 'Menulis dan membaca kalimat', 1, 'TK B', 'Aktif', 3, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.137.BS.1', 27, 'Menyebutkan lambang bilangan 1-20', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.137.BS.2', 28, 'Menggunakan lambang bilangan untuk menghitung (hasil maksimal 10)', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 29, 'Mengenal waktu (dalam satuan jam)', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.137.BL.7', 30, 'Mengenal pola ABCD-ABCD', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.137.BL.8', 31, 'Mengenal pola bertumbuh dan sebaliknya (banyak benda 7)', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.4', 32, 'Mengenal bentuk-bentuk georuang (kubus, balok, bola, kerucut, tabung)', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.\nSTPPA.146.3.6.5', 33, 'Mengukur menggunakan alat ukur baku', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'KP.B3.2.1.1.3.', 34, 'Mengumpulkan dan menyajikan data dalam bentuk piktograf', 1, 'TK B', 'Aktif', 3, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'KP.B3.2.1.1.1.\nSTPPA.146.3.5.1\nSTPPA.137.K.2', 35, 'Mampu memecahkan masalah sederhana yang dihadapi', 1, 'TK B', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'KP.B3.2.1.1.2.', 36, 'Mengikuti proses belajar Exploring - Planing - doing - communicating -Reflecting  (learning cycle)', 1, 'TK B', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'STPPA.137.K.4', 37, 'Menunjukkan sikap kreatif dalam menyelesaikan masalah (ide, gagasan diluar kebiasaan)', 1, 'TK B', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'STPPA.137.BL.4', 38, 'Mengetahui hubungan sebab akibat dari suatu peristiwa atau kejadian sehari-hari', 1, 'TK B', 'Aktif', 3, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 39, 'Mampu menggunakan lima indera yang dimiliki untuk mendapatkan informasi (seperti, bentuk, warna, aroma, rasa, bunyi, dan tekstur)', 1, 'TK B', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', 'STPPA.137.K.1', 40, 'Menunjukkan aktivitas yang bersifat eksploratif dan menyelidik (seperti: apa yang terjadi ketika air ditumpahkan?)', 1, 'TK B', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 41, 'Mengeksplorasi dan bereksperimen dengan material alam atau buatan manusia', 1, 'TK B', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 42, 'Mengajukan pertanyaan-pertanyaan mengapa dan apa yang menyebabkan suatu peristiwa atau kejadian', 1, 'TK B', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', '', 43, 'Mampu membuat prediksi dalam kegiatan uji coba', 1, 'TK B', 'Aktif', 3, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'STPPA.146.4.9.1', 44, 'Melakukan kegiatan dengan menggunakan alat teknologi sederhana sesuai fungsinya secara aman dan bertanggung jawab', 1, 'TK B', 'Aktif', 3, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'STPPA.146.4.9.2', 45, 'Membuat alat-alat teknologi sederhana', 1, 'TK B', 'Aktif', 3, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'STPPA.146.4.9.3', 46, 'Melakukan proses kerja sesuai dengan prosedurnya', 1, 'TK B', 'Aktif', 3, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'STPPA.146.4.15.2', 47, 'Membuat karya seni sesuai kreativitasnya', 1, 'TK B', 'Aktif', 3, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'STPPA.146.4.15.1', 48, 'Menghargai penampilan karya seni anak lain', 1, 'TK B', 'Aktif', 3, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_t_p_s`
--

CREATE TABLE `master_t_p_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `capaian_pembelajaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan_pembelajaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_id` bigint(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_t_p_s`
--

INSERT INTO `master_t_p_s` (`id`, `capaian_pembelajaran`, `tujuan_pembelajaran`, `status_aktif`, `cp_id`, `created_at`, `updated_at`) VALUES
(1, 'Nilai Agama dan Budi Pekerti', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Aktif', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Nilai Agama dan Budi Pekerti', 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'Aktif', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Nilai Agama dan Budi Pekerti', 'Anak mampu menjaga kebersihan, kesehatan, dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'Aktif', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Nilai Agama dan Budi Pekerti', 'Anak mampu menghargai sesama manusia dengan berbagai perbedaannya dan mempraktikkan perilaku baik dan berakhlak mulia.', 'Aktif', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Nilai Agama dan Budi Pekerti', 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Aktif', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Jati Diri', 'Anak mampu mengenali dan mengekspresikan emosi yang dirasakan ketika melakukan hubungan sosial.', 'Aktif', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Jati Diri', 'Anak mampu mengola emosi ketika melakukan hubungan sosial.', 'Aktif', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Jati Diri', 'Anak mampu membangun hubungan sosial secara sehat.', 'Aktif', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Jati Diri', 'Anak mengenal dan memiliki perilaku positif terhadap diri dan lingkungan (keluarga, sekolah, masyarakat, negara, dan dunia) serta rasa bangga sebagai anak Indonesia yang berlandaskan Pancasila.', 'Aktif', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Jati Diri', 'Anak mampu menyesuaikan diri dengan lingkungan, aturan, dan norma yang berlaku.', 'Aktif', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Jati Diri', 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'Aktif', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Jati Diri', 'Anak menggunakan fungsi gerak motorik halus untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'Aktif', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak mampu mengenali dan memahami berbagai informasi, mengomunikasikan perasaan dan pikiran secara lisan, tulisan, atau menggunakan berbagai media serta membangun percakapan.', 'Aktif', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak menunjukkan minat, kegemaran, dan berpartisipasi dalam kegiatan pramembaca dan pramenulis.', 'Aktif', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak mengenali dan menggunakan konsep pramatematika untuk memecahkan masalah di dalam kehidupan sehari-hari.', 'Aktif', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak menunjukkan kemampuan dasar berpikir kritis, kreatif, dan kolaboratif.', 'Aktif', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak menunjukkan rasa ingin tahu melalui observasi, eksplorasi, dan eksperimen dengan menggunakan lingkungan sekitar dan media sebagai sumber belajar, untuk mendapatkan gagasan mengenai fenomena alam dan sosial.', 'Aktif', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'Aktif', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'Aktif', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2022_08_18_075800_create_master_t_k_s_table', 2),
(41, '2014_10_12_000000_create_users_table', 3),
(42, '2014_10_12_100000_create_password_resets_table', 3),
(43, '2019_08_19_000000_create_failed_jobs_table', 3),
(44, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(47, '2022_08_18_023528_create_master_gurus_table', 3),
(48, '2022_08_18_090031_create_master_t_k_s_table', 3),
(49, '2022_08_19_024354_create_master_t_p_s_table', 4),
(50, '2022_08_19_062418_create_master_c_p_s_table', 5),
(51, '2022_08_19_074733_create_master_semesters_table', 6),
(52, '2022_08_19_092215_create_master_kategoris_table', 7),
(53, '2022_08_20_030132_create_master_ekstras_table', 8),
(59, '2022_09_02_004806_create_data_murid_table', 12),
(61, '2022_09_02_023030_create_master_kelas_table', 13),
(62, '2022_09_03_163938_create_data_walikelas_table', 14),
(63, '2022_09_10_160250_create_data_pengajar_table', 15),
(64, '2022_09_01_073833_create_master_siswa_table', 16),
(65, '2022_09_13_010332_create_master_ekstra_table', 17),
(66, '2022_09_13_012232_create_master_tahfidz_table', 18),
(68, '2022_09_13_061216_create_master_tilawah_table', 19),
(69, '2022_09_14_021757_create_master_doa_harian_table', 20),
(70, '2022_09_14_065732_create_master_hadist_table', 21),
(71, '2022_09_14_073458_create_master_cbi_table', 22),
(72, '2022_09_01_040448_create_master_periode_table', 23),
(77, '2022_09_15_024727_create_data_indicators_table', 24),
(78, '2022_09_16_065046_create_master_predikat_table', 25),
(80, '2022_09_16_071746_create_nilai_ekstra_table', 26),
(81, '2022_09_18_155950_create_nilai_ibadah_table', 27),
(82, '2022_09_19_003554_create_nilai_doa_harian_table', 28),
(83, '2022_09_19_021916_create_nilai_cbi_table', 29),
(84, '2022_09_19_035259_create_nilai_tahfidz_table', 30),
(85, '2022_09_19_062248_create_nilai_tilawah_table', 31),
(86, '2022_09_19_072027_create_nilai_hadist_table', 32),
(87, '2022_09_19_154916_create_master_tema_table', 33),
(89, '2022_09_21_003516_create_nilai_akademik_table', 34),
(91, '2022_09_23_063618_create_absen_table', 35),
(92, '2022_10_05_160412_create_rekap_akademik_table', 36),
(93, '2022_11_24_004631_create_nilai_perkembangan_table', 37),
(94, '2022_11_24_062628_create_master_indikator_studentprofile_table', 38),
(95, '2022_11_24_073408_create_nilai_studentprofile_table', 39),
(97, '2022_11_24_073951_create_nilai_studentprofile_detail_table', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_akademik`
--

CREATE TABLE `nilai_akademik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `cp_id` bigint(20) UNSIGNED NOT NULL,
  `tp_id` bigint(20) UNSIGNED NOT NULL,
  `tk_id` bigint(20) UNSIGNED NOT NULL,
  `tema_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_akademik`
--

INSERT INTO `nilai_akademik` (`id`, `nis`, `nama`, `kelas`, `jenjang`, `cp`, `tp`, `tk`, `tema`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `cp_id`, `tp_id`, `tk_id`, `tema_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Menghafal  syahadat berserta artinya', 'Ourselves', 'Tengah', 131, 5, 1, 1, 1, 310, 1, 1, '2022-10-21 01:09:38', '2022-10-21 01:09:38'),
(2, 'TK001618', 'SYIFA NUR AINI', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Menghafal  syahadat berserta artinya', 'Ourselves', 'Tengah', 133, 5, 1, 1, 1, 310, 1, 1, '2022-10-21 01:09:38', '2022-10-21 01:09:38'),
(3, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Menghafal  syahadat berserta artinya', 'Ourselves', 'Tengah', 137, 5, 1, 1, 1, 310, 1, 1, '2022-10-21 01:09:38', '2022-10-21 01:09:38'),
(4, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Menghafal  syahadat berserta artinya', 'Ourselves', 'Tengah', 152, 5, 1, 1, 1, 310, 1, 1, '2022-10-21 01:09:38', '2022-10-21 01:09:38'),
(5, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Mengenal alam semesta dan isinya sebagai ciptaan Allah', 'Ourselves', 'Tengah', 131, 5, 1, 1, 1, 312, 1, 1, '2022-10-21 01:10:13', '2022-10-21 01:10:13'),
(6, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Mengenal alam semesta dan isinya sebagai ciptaan Allah', 'Ourselves', 'Tengah', 146, 5, 1, 1, 1, 312, 1, 1, '2022-10-21 01:10:13', '2022-10-21 01:10:13'),
(7, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Mengenal alam semesta dan isinya sebagai ciptaan Allah', 'Ourselves', 'Tengah', 152, 5, 1, 1, 1, 312, 1, 1, '2022-10-21 01:10:13', '2022-10-21 01:10:13'),
(8, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Menyayangi hewan (misal: memberi makan/ merawat)', 'Ourselves', 'Tengah', 131, 5, 1, 1, 5, 365, 1, 1, '2022-10-21 01:11:41', '2022-10-21 01:11:41'),
(9, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Menyayangi hewan (misal: memberi makan/ merawat)', 'Ourselves', 'Tengah', 140, 5, 1, 1, 5, 365, 1, 1, '2022-10-21 01:11:41', '2022-10-21 01:11:41'),
(10, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Menyayangi hewan (misal: memberi makan/ merawat)', 'Ourselves', 'Tengah', 150, 5, 1, 1, 5, 365, 1, 1, '2022-10-21 01:11:41', '2022-10-21 01:11:41'),
(11, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Menyayangi hewan (misal: memberi makan/ merawat)', 'Ourselves', 'Tengah', 152, 5, 1, 1, 5, 365, 1, 1, '2022-10-21 01:11:41', '2022-10-21 01:11:41'),
(12, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Jati Diri', 'Anak mampu membangun hubungan sosial secara sehat.', 'mampu berteman dan bekerjasama dengan orang lain', 'Ourselves', 'Tengah', 131, 5, 1, 2, 8, 377, 1, 1, '2022-10-21 01:11:56', '2022-10-21 01:11:56'),
(13, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'TK B', 'Jati Diri', 'Anak mampu membangun hubungan sosial secara sehat.', 'mampu berteman dan bekerjasama dengan orang lain', 'Ourselves', 'Tengah', 132, 5, 1, 2, 8, 377, 1, 1, '2022-10-21 01:11:56', '2022-10-21 01:11:56'),
(14, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak mengeksplorasi berbagai proses seni, mengekspresikannya serta mengapresiasi karya seni.', 'Menghargai penampilan karya seni anak lain', 'Ourselves', 'Tengah', 131, 5, 1, 3, 19, 451, 1, 1, '2022-10-21 01:12:16', '2022-10-21 01:12:16'),
(15, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Anak menunjukkan kemampuan awal menggunakan dan merekayasa teknologi serta untuk mencari iformasi, gagasan, dan keterampilan, secara aman dan bertanggung jawab.', 'Melakukan kegiatan dengan menggunakan alat teknologi sederhana sesuai fungsinya secara aman dan bertanggung jawab', 'Ourselves', 'Tengah', 131, 5, 1, 3, 18, 447, 1, 1, '2022-10-21 01:12:35', '2022-10-21 01:12:35'),
(16, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'Mengenal dan Berlatih puasa Ramadhan', 'Environment', 'Tengah', 131, 5, 1, 1, 2, 324, 2, 1, '2022-11-22 18:45:46', '2022-11-22 18:45:46'),
(17, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti ', 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'Mengetahui, memahami, memaknai, dan mengambil pelajaran dari hari besar agama islam (Hari raya Idul Fitri, Idul Adha, Isra\' Mi\'raj, maulid Nabi, tahun baru hijriyah)', 'Ourselves', 'Tengah', 131, 5, 1, 1, 2, 328, 1, 1, '2022-11-22 18:45:58', '2022-11-22 18:45:58'),
(18, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Jati Diri', 'Anak menggunakan fungsi gerak motorik kasar untuk mengeksplorasi dan memanipulasi berbagai objek dan lingkungan sekitar sebagai bentuk pengembangan diri.', 'Melakukan permainan fisik dengan aturan', 'Technology', 'Tengah', 131, 5, 1, 2, 11, 398, 3, 1, '2022-11-22 18:46:08', '2022-11-22 18:46:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_cbi`
--

CREATE TABLE `nilai_cbi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `areas_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `indicators_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_cbi`
--

INSERT INTO `nilai_cbi` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001645', 'M. ALIYANDI HAZZA', 'B1', 'Level Pravonik materi \"a,i,u\"', 'Level prafonik.', 'TK B', 'Tengah', 126, 2, 1, 2, 7, 68, 1, '2022-09-26 07:11:39', '2022-09-26 07:11:39'),
(2, 'TK001630', 'HANIFA NAFIA ALMEERRA', 'B3', 'Lever terampil suku kata terbuka materi m, b, p, d, n, t, k, g, c, j, w, y, l, r, s, z, f, v, h.', 'Level terampil suku kata terbuka (m, b, p, d, n, t, k, g c, j, w, y, l, r, s, z, f, v, h).', 'TK B', 'Tengah', 159, 6, 1, 2, 9, 72, 1, '2022-09-26 07:13:50', '2022-09-26 07:13:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_development`
--

CREATE TABLE `nilai_development` (
  `id_nilai` int(10) NOT NULL,
  `nis` int(20) NOT NULL,
  `id_indikator` int(10) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_doa_harian`
--

CREATE TABLE `nilai_doa_harian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `areas_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `indicators_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_doa_harian`
--

INSERT INTO `nilai_doa_harian` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001606', 'ACHMAD SAKHA ALFATIH', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 108, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(2, 'TK001552', 'ADAM FAIZ AL ARKHAN', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 109, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(3, 'TK001635', 'ADHYASTHA TARIMAULI TUA SIRAIT', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 110, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(4, 'TK001628', 'ADIBA ZAREEN NUFA', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 111, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(5, 'TK001655', 'AHMAD SALAHUDDIN KARIM', 'B1', 'MB', 'Syahadat', 'TK B', 'Tengah', 112, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:53:06'),
(6, 'TK001728', 'AINAYYA ASMA PRATOMO', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 113, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(7, 'TK001622', 'AQILAH AZZALEA HULWAH', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 114, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(8, 'TK001674', 'ARETHA ZAYNA ULIMA', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 115, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(9, 'TK001656', 'ARSYA REINDRA ZEN', 'B1', 'BSH', 'Syahadat', 'TK B', 'Tengah', 116, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(10, 'TK001624', 'AZKIYA NURIN NISA\'', 'B1', 'BSB', 'Syahadat', 'TK B', 'Tengah', 117, 2, 1, 4, 3, 55, 1, '2022-09-26 06:49:45', '2022-09-26 06:49:45'),
(12, 'TK001722', 'ALARIC  RASYID ARDIANTO', 'B3', 'BSH', 'Syahadat', 'TK B', 'Tengah', 154, 6, 1, 4, 3, 55, 1, '2022-09-26 06:59:09', '2022-09-26 06:59:09'),
(13, 'TK001630', 'HANIFA NAFIA ALMEERRA', 'B3', 'BSB', 'Syahadat', 'TK B', 'Tengah', 159, 6, 1, 4, 3, 55, 1, '2022-09-26 06:59:09', '2022-09-26 06:59:09'),
(14, 'TK001643', 'KAREEM ABDUL HARRAZ AL AYYUBI', 'B3', 'BSB', 'Syahadat', 'TK B', 'Tengah', 160, 6, 1, 4, 3, 55, 1, '2022-09-26 06:59:09', '2022-09-26 06:59:09'),
(15, 'TK001599', 'KIRANA ANINDYA TUNGGA DEWI', 'B3', 'BSH', 'Syahadat', 'TK B', 'Tengah', 161, 6, 1, 4, 3, 55, 1, '2022-09-26 06:59:09', '2022-09-26 06:59:09'),
(16, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 131, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(17, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 132, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(18, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 133, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(19, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 134, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(20, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 135, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(21, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 136, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(22, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 137, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(23, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 138, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(24, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 139, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(25, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 140, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(26, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 141, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(27, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 142, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(28, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 143, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(29, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 144, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(30, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 145, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(31, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 146, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(32, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 147, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(33, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 148, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(34, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 149, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(35, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 150, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(36, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 151, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(37, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Ta\'awudz', 'TK B', 'Tengah', 152, 5, 1, 4, 3, 122, 1, '2022-09-28 05:25:37', '2022-09-28 05:25:37'),
(38, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 131, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(39, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 132, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(40, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 133, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(41, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 134, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(42, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 135, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(43, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 136, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(44, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 137, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(45, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 138, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(46, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 139, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(47, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 140, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(48, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 141, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(49, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 142, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(50, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 143, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(51, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 144, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(52, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 145, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(53, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 146, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(54, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 147, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(55, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 148, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(56, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 149, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(57, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 150, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(58, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 151, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(59, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Basmalah', 'TK B', 'Tengah', 152, 5, 1, 4, 3, 121, 1, '2022-09-28 05:26:40', '2022-09-28 05:26:40'),
(60, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 131, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(61, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 132, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(62, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 133, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(63, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 134, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(64, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 135, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(65, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 136, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(66, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 137, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(67, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 138, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(68, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 139, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(69, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 140, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(70, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 141, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(71, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 142, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(72, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 143, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(73, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 144, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(74, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 145, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(75, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 146, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(76, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 147, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(77, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 148, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(78, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 149, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(79, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 150, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(80, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 151, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(81, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Istighfar', 'TK B', 'Tengah', 152, 5, 1, 4, 3, 126, 1, '2022-09-28 05:28:33', '2022-09-28 05:28:33'),
(82, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 131, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(83, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 132, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(84, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 133, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(85, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 134, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(86, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 135, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(87, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 136, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(88, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 137, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(89, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 138, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(90, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 139, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(91, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 140, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(92, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 141, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(93, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 142, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(94, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 143, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(95, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 144, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(96, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 145, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(97, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 146, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(98, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 147, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(99, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 148, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(100, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 149, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(101, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 150, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(102, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 151, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(103, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Tasbih', 'TK B', 'Tengah', 152, 5, 1, 4, 3, 123, 1, '2022-09-28 05:30:06', '2022-09-28 05:30:06'),
(104, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 131, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(105, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 132, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(106, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 133, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(107, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 134, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(108, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 135, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(109, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 136, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(110, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 137, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(111, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 138, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(112, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 139, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(113, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 140, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(114, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 141, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(115, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 142, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(116, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 143, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(117, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 144, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(118, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 145, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(119, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 146, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(120, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 147, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(121, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 148, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(122, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 149, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(123, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 150, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(124, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 151, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(125, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Tahmid', 'TK B', 'Tengah', 152, 5, 1, 4, 3, 124, 1, '2022-09-28 05:31:44', '2022-09-28 05:31:44'),
(126, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 131, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(127, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 132, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(128, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 133, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(129, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 134, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(130, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 135, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(131, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 136, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(132, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 137, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(133, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 138, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(134, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 139, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(135, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 140, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(136, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 141, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(137, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 142, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(138, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 143, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(139, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 144, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(140, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 145, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(141, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 146, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(142, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 147, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(143, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 148, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(144, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 149, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(145, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 150, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(146, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 151, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(147, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Tahlil', 'TK B', 'Tengah', 152, 5, 1, 4, 3, 125, 1, '2022-09-28 05:33:10', '2022-09-28 05:33:10'),
(148, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 131, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(149, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 132, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(150, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 133, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(151, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 134, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(152, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 135, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(154, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 137, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(155, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 138, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(156, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 139, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(157, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 140, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(158, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSH', 'Syahadat', 'TK B', 'Tengah', 141, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(159, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSH', 'Syahadat', 'TK B', 'Tengah', 142, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(160, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 143, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(161, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 144, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(162, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 145, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(163, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 146, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:08', '2022-09-28 05:37:08'),
(164, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSH', 'Syahadat', 'TK B', 'Tengah', 147, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:09', '2022-09-28 05:37:09'),
(165, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSH', 'Syahadat', 'TK B', 'Tengah', 148, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:09', '2022-09-28 05:37:09'),
(166, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 149, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:09', '2022-09-28 05:37:09'),
(167, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 150, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:09', '2022-09-28 05:37:09'),
(168, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 151, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:09', '2022-09-28 05:37:09'),
(169, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Syahadat', 'TK B', 'Tengah', 152, 5, 1, 4, 3, 55, 1, '2022-09-28 05:37:09', '2022-09-28 05:37:09'),
(171, 'TK001625', 'AL BARR MUHAMMAD RAFASYA', 'B3', 'BSH', 'Syahadat', 'TK B', 'Tengah', 153, 6, 1, 4, 3, 55, 1, '2022-09-28 08:27:44', '2022-09-28 08:27:44'),
(172, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 79, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(173, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 80, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(174, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'MB', 'Ta\'awudz', 'TK A', 'Tengah', 81, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(175, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 82, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(176, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 83, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(177, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 84, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(178, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 85, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(179, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 86, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(180, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 87, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(181, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 88, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(182, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 89, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(183, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 90, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(184, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 91, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(185, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 92, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(186, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 93, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(187, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 94, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(188, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'BSH', 'Ta\'awudz', 'TK A', 'Tengah', 95, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(189, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 96, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(190, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 97, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(191, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 98, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(192, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSH', 'Ta\'awudz', 'TK A', 'Tengah', 99, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(193, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSH', 'Ta\'awudz', 'TK A', 'Tengah', 100, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(194, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 101, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(195, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 102, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(196, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 103, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(197, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 104, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(198, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'MB', 'Ta\'awudz', 'TK A', 'Tengah', 105, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(199, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 106, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(200, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 107, 4, 2, 4, 3, 131, 1, '2022-09-29 05:36:57', '2022-09-29 05:36:57'),
(201, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 79, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(202, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 80, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(203, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'MB', 'Basmalah', 'TK A', 'Tengah', 81, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(204, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 82, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(205, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 83, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(206, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 84, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(207, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 85, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(208, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 86, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(209, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 87, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(210, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 88, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(211, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 89, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(212, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 90, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(213, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 91, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(214, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 92, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(215, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 93, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(216, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 94, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(217, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'BSH', 'Basmalah', 'TK A', 'Tengah', 95, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(218, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 96, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(219, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 97, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(220, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 98, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(221, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 99, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(222, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 100, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(223, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 101, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(224, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 102, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(225, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 103, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(226, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 104, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(227, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'MB', 'Basmalah', 'TK A', 'Tengah', 105, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(228, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 106, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(229, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Basmalah', 'TK A', 'Tengah', 107, 4, 2, 4, 3, 130, 1, '2022-09-29 05:39:12', '2022-09-29 05:39:12'),
(230, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 79, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(231, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 80, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(232, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 81, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(233, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 82, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(234, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 83, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(235, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 84, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(236, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 85, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(237, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 86, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(238, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 87, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(239, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 88, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(240, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 89, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(241, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 90, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(242, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 91, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(243, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 92, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(244, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 93, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(245, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 94, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(246, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'BSH', 'Tasbih', 'TK A', 'Tengah', 95, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(247, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 96, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(248, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 97, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(249, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 98, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(250, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 99, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(251, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 100, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(252, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 101, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(253, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 102, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(254, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 103, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(255, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 104, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(256, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'MB', 'Tasbih', 'TK A', 'Tengah', 105, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(257, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 106, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(258, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Tasbih', 'TK A', 'Tengah', 107, 4, 2, 4, 3, 132, 1, '2022-09-29 05:41:33', '2022-09-29 05:41:33'),
(259, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 79, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(260, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 80, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(261, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 81, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(262, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 82, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(263, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 83, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(264, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 84, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(265, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 85, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(266, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 86, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(267, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 87, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(268, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 88, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(269, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 89, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(270, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 90, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(271, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 91, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(272, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 92, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(273, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 93, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(274, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 94, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(275, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'BSH', 'Tahmid', 'TK A', 'Tengah', 95, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(276, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 96, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(277, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 97, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(278, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 98, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(279, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 99, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(280, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 100, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(281, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 101, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(282, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 102, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(283, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 103, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(284, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 104, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(285, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'MB', 'Tahmid', 'TK A', 'Tengah', 105, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(286, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 106, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(287, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Tahmid', 'TK A', 'Tengah', 107, 4, 2, 4, 3, 133, 1, '2022-09-29 05:46:22', '2022-09-29 05:46:22'),
(288, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 79, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(289, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 80, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(290, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 81, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(291, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 82, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(292, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 83, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(293, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 84, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(294, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 85, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(295, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 86, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(296, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 87, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(297, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 88, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(298, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 89, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(299, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 90, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(300, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 91, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(301, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'MB', 'Tahlil', 'TK A', 'Tengah', 92, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(302, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 93, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(303, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 94, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(304, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 95, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(305, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 96, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(306, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 97, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(307, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 98, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(308, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 99, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(309, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 100, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(310, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 101, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(311, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 102, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:02', '2022-09-29 05:49:02'),
(312, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 103, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:03', '2022-09-29 05:49:03'),
(313, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 104, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:03', '2022-09-29 05:49:03'),
(314, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'MB', 'Tahlil', 'TK A', 'Tengah', 105, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:03', '2022-09-29 05:49:03'),
(315, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 106, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:03', '2022-09-29 05:49:03'),
(316, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Tahlil', 'TK A', 'Tengah', 107, 4, 2, 4, 3, 49, 1, '2022-09-29 05:49:03', '2022-09-29 05:49:03'),
(317, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 79, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:42', '2022-09-29 05:51:42'),
(318, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 80, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:42', '2022-09-29 05:51:42'),
(319, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 81, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:42', '2022-09-29 05:51:42'),
(320, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 82, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:42', '2022-09-29 05:51:42');
INSERT INTO `nilai_doa_harian` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(321, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 83, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:42', '2022-09-29 05:51:42'),
(322, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 84, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:42', '2022-09-29 05:51:42'),
(323, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 85, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(324, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 86, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(325, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 87, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(326, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 88, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(327, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 89, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(328, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 90, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(329, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 91, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(330, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'BSH', 'Istighfar', 'TK A', 'Tengah', 92, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(331, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 93, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(332, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 94, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(333, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'MB', 'Istighfar', 'TK A', 'Tengah', 95, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(334, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 96, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(335, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 97, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(336, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 98, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(337, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 99, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(338, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 100, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(339, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 101, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(340, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 102, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(341, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 103, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(342, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 104, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(343, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'MB', 'Istighfar', 'TK A', 'Tengah', 105, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(344, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 106, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(345, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Istighfar', 'TK A', 'Tengah', 107, 4, 2, 4, 3, 48, 1, '2022-09-29 05:51:43', '2022-09-29 05:51:43'),
(346, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 50, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(347, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 51, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(348, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 52, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(349, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 53, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(350, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 54, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(351, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 55, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(352, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 56, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(353, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 57, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(354, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 58, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(355, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 59, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(356, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 60, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(357, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 61, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(358, 'TK001715', 'HANUM NABILA JATMIKO', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 62, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(359, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 63, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(360, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 64, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(361, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 65, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(362, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 66, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(363, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 67, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(364, 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 68, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(365, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 69, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(366, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 70, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(367, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'BSH', 'Basmalah', 'TK A', 'Tengah', 71, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(368, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 72, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(369, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 73, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(370, 'TK001736', 'ARSYA ADITYA RAHMAN', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 74, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(371, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 75, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(372, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 76, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(373, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'BSB', 'Basmalah', 'TK A', 'Tengah', 77, 1, 2, 4, 3, 130, 1, '2022-10-03 07:15:46', '2022-10-03 07:15:46'),
(374, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'MB', 'Istighfar', 'TK A', 'Tengah', 50, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(375, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 51, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(376, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 52, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(377, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 53, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(378, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 54, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(379, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 55, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(380, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 56, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(381, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 57, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(382, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 58, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(383, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 59, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(384, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'BSH', 'Istighfar', 'TK A', 'Tengah', 60, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(385, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 61, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(386, 'TK001715', 'HANUM NABILA JATMIKO', 'A2', 'BSH', 'Istighfar', 'TK A', 'Tengah', 62, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(387, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'BSH', 'Istighfar', 'TK A', 'Tengah', 63, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(388, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 64, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(389, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 65, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(390, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 66, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(391, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 67, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(392, 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 68, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(393, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 69, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(394, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 70, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(395, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 71, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(396, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 72, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(397, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 73, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(398, 'TK001736', 'ARSYA ADITYA RAHMAN', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 74, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(399, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 75, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(400, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 76, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(401, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'BSB', 'Istighfar', 'TK A', 'Tengah', 77, 1, 2, 4, 3, 48, 1, '2022-10-03 07:18:00', '2022-10-03 07:18:00'),
(402, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 50, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(403, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 51, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(404, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 52, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(405, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 53, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(406, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 54, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(407, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 55, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(408, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 56, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(409, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 57, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(410, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 58, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(411, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 59, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(412, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 60, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(413, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 61, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(414, 'TK001715', 'HANUM NABILA JATMIKO', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 62, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(415, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 63, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(416, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 64, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(417, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 65, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(418, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 66, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(419, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 67, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(420, 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 68, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(421, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 69, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(422, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 70, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(423, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'BSH', 'Ta\'awudz', 'TK A', 'Tengah', 71, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(424, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 72, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(425, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 73, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(426, 'TK001736', 'ARSYA ADITYA RAHMAN', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 74, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(427, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 75, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(428, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 76, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(429, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'BSB', 'Ta\'awudz', 'TK A', 'Tengah', 77, 1, 2, 4, 3, 131, 1, '2022-10-03 07:20:17', '2022-10-03 07:20:17'),
(430, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'MB', 'Tahlil', 'TK A', 'Tengah', 50, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(431, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 51, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(432, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 52, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(433, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 53, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(434, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 54, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(435, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 55, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(436, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 56, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(437, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 57, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(438, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 58, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(439, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 59, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(440, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'BSH', 'Tahlil', 'TK A', 'Tengah', 60, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(441, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 61, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(442, 'TK001715', 'HANUM NABILA JATMIKO', 'A2', 'MB', 'Tahlil', 'TK A', 'Tengah', 62, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(443, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'BSH', 'Tahlil', 'TK A', 'Tengah', 63, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(444, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 64, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(445, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'BSH', 'Tahlil', 'TK A', 'Tengah', 65, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(446, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 66, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(447, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 67, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(448, 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 68, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(449, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 69, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(450, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 70, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(451, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 71, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(452, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 72, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(453, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 73, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(454, 'TK001736', 'ARSYA ADITYA RAHMAN', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 74, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(455, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 75, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(456, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 76, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(457, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'BSB', 'Tahlil', 'TK A', 'Tengah', 77, 1, 2, 4, 3, 49, 1, '2022-10-03 07:22:18', '2022-10-03 07:22:18'),
(458, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'BSH', 'Tahmid', 'TK A', 'Tengah', 50, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(459, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 51, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(460, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 52, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(461, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 53, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(462, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 54, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(463, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 55, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(464, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 56, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(465, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 57, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(466, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 58, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(467, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 59, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(468, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'BSH', 'Tahmid', 'TK A', 'Tengah', 60, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(469, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 61, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(470, 'TK001715', 'HANUM NABILA JATMIKO', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 62, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(471, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 63, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(472, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 64, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(473, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'BSH', 'Tahmid', 'TK A', 'Tengah', 65, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(474, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 66, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(475, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 67, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(476, 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 68, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(477, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 69, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(478, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 70, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(479, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 71, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(480, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 72, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(481, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 73, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(482, 'TK001736', 'ARSYA ADITYA RAHMAN', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 74, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(483, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 75, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(484, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 76, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(485, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'BSB', 'Tahmid', 'TK A', 'Tengah', 77, 1, 2, 4, 3, 133, 1, '2022-10-03 07:24:11', '2022-10-03 07:24:11'),
(486, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 50, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(487, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 51, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(488, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 52, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(489, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 53, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(490, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 54, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(491, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 55, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(492, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 56, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(493, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 57, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(494, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 58, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(495, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 59, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(496, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 60, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(497, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 61, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(498, 'TK001715', 'HANUM NABILA JATMIKO', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 62, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(499, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 63, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(500, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 64, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(501, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 65, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(502, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 66, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(503, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 67, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(504, 'TK001714', 'MUHAMMAD KENZIE ADELARD JOURDAIN', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 68, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(505, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 69, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(506, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 70, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(507, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'BSH', 'Tasbih', 'TK A', 'Tengah', 71, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(508, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 72, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(509, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 73, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(510, 'TK001736', 'ARSYA ADITYA RAHMAN', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 74, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(511, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 75, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(512, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 76, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03'),
(513, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'BSB', 'Tasbih', 'TK A', 'Tengah', 77, 1, 2, 4, 3, 132, 1, '2022-10-03 07:26:03', '2022-10-03 07:26:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_ekstra`
--

CREATE TABLE `nilai_ekstra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `areas_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `indicators_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_ekstra`
--

INSERT INTO `nilai_ekstra` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001597', 'NIRVANA KARA RAIZANDHA', 'B3', 'MB', 'Menyanyi', 'TK B', 'Tengah', 167, 6, 1, 1, 1, 21, 1, '2022-09-26 06:46:07', '2022-09-26 06:46:07'),
(2, 'TK001691', 'SHAKILA INARA MARITZA', 'B3', 'MB', 'Menyanyi', 'TK B', 'Tengah', 172, 6, 1, 1, 1, 21, 1, '2022-09-26 06:46:07', '2022-09-26 06:46:07'),
(5, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'BSH', 'Futsal', 'TK A', 'Tengah', 81, 4, 2, 1, 1, 16, 1, '2022-09-29 06:01:13', '2022-09-29 06:01:13'),
(6, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Futsal', 'TK A', 'Tengah', 85, 4, 2, 1, 1, 16, 1, '2022-09-29 06:01:13', '2022-09-29 06:01:13'),
(7, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Futsal', 'TK A', 'Tengah', 98, 4, 2, 1, 1, 16, 1, '2022-09-29 06:01:13', '2022-09-29 06:01:13'),
(8, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Karate', 'TK A', 'Tengah', 79, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(9, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Karate', 'TK A', 'Tengah', 90, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(10, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Karate', 'TK A', 'Tengah', 94, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(11, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Karate', 'TK A', 'Tengah', 96, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(12, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BB', 'Karate', 'TK A', 'Tengah', 101, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(13, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'BSH', 'Karate', 'TK A', 'Tengah', 103, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(14, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Karate', 'TK A', 'Tengah', 104, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(15, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'BSH', 'Karate', 'TK A', 'Tengah', 105, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(16, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Karate', 'TK A', 'Tengah', 106, 4, 2, 1, 1, 15, 1, '2022-09-29 06:03:49', '2022-09-29 06:03:49'),
(17, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Happy Cooking', 'TK A', 'Tengah', 80, 4, 2, 1, 1, 11, 1, '2022-09-29 06:04:37', '2022-09-29 06:04:37'),
(18, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Happy Cooking', 'TK A', 'Tengah', 84, 4, 2, 1, 1, 11, 1, '2022-09-29 06:04:37', '2022-09-29 06:04:37'),
(19, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Happy Cooking', 'TK A', 'Tengah', 89, 4, 2, 1, 1, 11, 1, '2022-09-29 06:04:37', '2022-09-29 06:04:37'),
(20, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Menari', 'TK A', 'Tengah', 82, 4, 2, 1, 1, 12, 1, '2022-09-29 06:05:55', '2022-09-29 06:05:55'),
(21, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Menari', 'TK A', 'Tengah', 91, 4, 2, 1, 1, 12, 1, '2022-09-29 06:05:55', '2022-09-29 06:05:55'),
(22, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Menari', 'TK A', 'Tengah', 93, 4, 2, 1, 1, 12, 1, '2022-09-29 06:05:55', '2022-09-29 06:05:55'),
(23, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'MB', 'Menari', 'TK A', 'Tengah', 95, 4, 2, 1, 1, 12, 1, '2022-09-29 06:05:55', '2022-09-29 06:05:55'),
(24, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSB', 'Menari', 'TK A', 'Tengah', 99, 4, 2, 1, 1, 12, 1, '2022-09-29 06:05:55', '2022-09-29 06:05:55'),
(25, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Menggambar & Mewarnai', 'TK A', 'Tengah', 83, 4, 2, 1, 1, 9, 1, '2022-09-29 06:07:16', '2022-09-29 06:07:16'),
(26, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Menggambar & Mewarnai', 'TK A', 'Tengah', 86, 4, 2, 1, 1, 9, 1, '2022-09-29 06:07:16', '2022-09-29 06:07:16'),
(27, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Menggambar & Mewarnai', 'TK A', 'Tengah', 87, 4, 2, 1, 1, 9, 1, '2022-09-29 06:07:16', '2022-09-29 06:07:16'),
(28, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'BSB', 'Menggambar & Mewarnai', 'TK A', 'Tengah', 92, 4, 2, 1, 1, 9, 1, '2022-09-29 06:07:16', '2022-09-29 06:07:16'),
(29, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Menggambar & Mewarnai', 'TK A', 'Tengah', 97, 4, 2, 1, 1, 9, 1, '2022-09-29 06:07:16', '2022-09-29 06:07:16'),
(30, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Menggambar & Mewarnai', 'TK A', 'Tengah', 107, 4, 2, 1, 1, 9, 1, '2022-09-29 06:07:16', '2022-09-29 06:07:16'),
(31, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Menyanyi', 'TK A', 'Tengah', 88, 4, 2, 1, 1, 13, 1, '2022-09-29 06:12:21', '2022-09-29 06:12:21'),
(32, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSB', 'Menyanyi', 'TK A', 'Tengah', 100, 4, 2, 1, 1, 13, 1, '2022-09-29 06:12:21', '2022-09-29 06:12:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_hadist`
--

CREATE TABLE `nilai_hadist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `areas_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `indicators_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_hadist`
--

INSERT INTO `nilai_hadist` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(2, 'TK001722', 'ALARIC  RASYID ARDIANTO', 'B3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 154, 6, 1, 5, 4, 117, 1, '2022-09-26 07:05:31', '2022-09-26 07:05:31'),
(3, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 131, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(4, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 132, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(5, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 133, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(6, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 134, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(7, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 135, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(8, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 136, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(9, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 137, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(10, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 138, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(11, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 139, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(12, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 140, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(13, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 141, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(14, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 142, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(15, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 143, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(16, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 144, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(17, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 145, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(18, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 146, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(19, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 147, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(20, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 148, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(21, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 149, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(22, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 150, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(23, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 151, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(24, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 152, 5, 1, 5, 4, 117, 1, '2022-09-28 05:42:57', '2022-09-28 05:42:57'),
(25, 'TK001625', 'AL BARR MUHAMMAD RAFASYA', 'B3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK B', 'Tengah', 153, 6, 1, 5, 4, 117, 1, '2022-09-28 08:09:15', '2022-09-28 08:09:15'),
(26, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 79, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(27, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 80, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(28, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 81, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(29, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 82, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(30, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 83, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(31, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 84, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(32, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 85, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(33, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 86, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(34, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 87, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(35, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 88, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(36, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 89, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(37, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 90, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(38, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 91, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(39, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 92, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(40, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 93, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(41, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 94, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(42, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 95, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(43, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 96, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(44, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 97, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(45, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 98, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(46, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 99, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(47, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 100, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(48, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 101, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(49, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 102, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(50, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'MB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 103, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(51, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 104, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(52, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'MB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 105, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(53, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 106, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(54, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 107, 4, 2, 5, 4, 115, 1, '2022-09-29 05:33:43', '2022-09-29 05:33:43'),
(55, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 50, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(56, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 51, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(57, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 52, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(58, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 53, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(59, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 54, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(60, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 55, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(61, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 56, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(62, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 57, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(63, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 58, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(64, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 59, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(65, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 60, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(66, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 61, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(67, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 63, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(68, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 64, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(69, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 65, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(70, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 66, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(71, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 67, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(72, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 69, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(73, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 70, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(74, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'BSH', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 71, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(75, 'TK001685', 'SHAQUEENA GISKA SUGIARTO', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 72, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(76, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 73, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(77, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 75, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(78, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 76, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19'),
(79, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'BSB', 'Larangan Makan Sambil Berdiri', 'TK A', 'Tengah', 77, 1, 2, 5, 4, 115, 1, '2022-10-03 07:29:19', '2022-10-03 07:29:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_ibadah`
--

CREATE TABLE `nilai_ibadah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `areas_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `indicators_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_ibadah`
--

INSERT INTO `nilai_ibadah` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(2, 'TK001722', 'ALARIC  RASYID ARDIANTO', 'B3', 'BSH', 'Do\'a Ruku\'', 'TK B', 'Tengah', 154, 6, 1, 3, 2, 30, 1, '2022-09-26 06:49:42', '2022-09-26 06:49:42'),
(3, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 131, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(4, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 132, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(5, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 133, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(6, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 134, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(7, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 135, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(8, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 136, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(9, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 137, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(10, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 138, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(11, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 139, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(12, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 140, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(13, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 141, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(14, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 142, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(15, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 143, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(16, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 144, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(17, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 145, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(18, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 146, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(19, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 147, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(20, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 148, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(21, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 149, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(22, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 150, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(23, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 151, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(24, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Takbiratul Ihram', 'TK B', 'Tengah', 152, 5, 1, 3, 2, 128, 1, '2022-09-28 05:38:18', '2022-09-28 05:38:18'),
(25, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'MB', 'Do\'a Iftitah', 'TK B', 'Tengah', 131, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(26, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 132, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(27, 'TK001618', 'SYIFA NUR AINI', 'B2', 'BSH', 'Do\'a Iftitah', 'TK B', 'Tengah', 133, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(28, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 134, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(29, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 135, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(30, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 136, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(31, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'MB', 'Do\'a Iftitah', 'TK B', 'Tengah', 137, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(32, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 138, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(33, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 139, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(34, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 140, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(35, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'MB', 'Do\'a Iftitah', 'TK B', 'Tengah', 141, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(36, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'MB', 'Do\'a Iftitah', 'TK B', 'Tengah', 142, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(37, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 143, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(38, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'MB', 'Do\'a Iftitah', 'TK B', 'Tengah', 144, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(39, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 145, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(40, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 146, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(41, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 147, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(42, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'MB', 'Do\'a Iftitah', 'TK B', 'Tengah', 148, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(43, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 149, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(44, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 150, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(45, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'BSH', 'Do\'a Iftitah', 'TK B', 'Tengah', 151, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(46, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'BSB', 'Do\'a Iftitah', 'TK B', 'Tengah', 152, 5, 1, 3, 2, 129, 1, '2022-09-28 05:41:17', '2022-09-28 05:41:17'),
(47, 'TK001625', 'AL BARR MUHAMMAD RAFASYA', 'B3', 'BSH', 'Do\'a Ruku\'', 'TK B', 'Tengah', 153, 6, 1, 3, 2, 30, 1, '2022-09-28 08:13:58', '2022-09-28 08:13:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_perkembangan`
--

CREATE TABLE `nilai_perkembangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_perkembangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `master_kategori_id` bigint(20) UNSIGNED NOT NULL,
  `master_perkembangan_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_perkembangan`
--

INSERT INTO `nilai_perkembangan` (`id`, `nis`, `nama`, `kelas`, `master_kategori`, `master_perkembangan`, `nilai`, `periode_keterangan`, `semester`, `tahunajaran`, `murid_id`, `kelas_id`, `jenjang_id`, `master_kategori_id`, `master_perkembangan_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'Berat badan', 'Kesehatan', '100', 'Tengah', 'Semester 1', '2022/2023', 131, 5, 1, 1, 1, 1, '2022-11-23 19:54:13', '2022-11-23 19:54:13'),
(2, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'Kesehatan Mata', 'Kesehatan', '70', 'Tengah', 'Semester 1', '2022/2023', 131, 5, 1, 1, 4, 1, '2022-11-23 19:54:13', '2022-11-23 19:54:13'),
(3, 'TK001618', 'SYIFA NUR AINI', 'B2', 'Berat badan', 'Kesehatan', '60', 'Tengah', 'Semester 1', '2022/2023', 133, 5, 1, 1, 1, 1, '2022-11-23 20:24:59', '2022-11-23 20:24:59'),
(4, 'TK001618', 'SYIFA NUR AINI', 'B2', 'Kebersihan Gigi dan Mulut', 'Kebersihan', '50', 'Tengah', 'Semester 1', '2022/2023', 133, 5, 1, 6, 6, 1, '2022-11-23 20:24:59', '2022-11-23 20:24:59'),
(5, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'Tinggi Badan', 'Kesehatan', '90', 'Tengah', 'Semester 1', '2022/2023', 131, 5, 1, 1, 2, 1, '2022-11-23 20:40:19', '2022-11-23 20:40:19'),
(6, 'TK001618', 'SYIFA NUR AINI', 'B2', 'Telinga', 'Kebersihan', '100', 'Tengah', 'Semester 1', '2022/2023', 133, 5, 1, 6, 7, 1, '2022-11-23 20:45:11', '2022-11-23 20:45:11'),
(7, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'Lingkar Kepala', 'Kesehatan', '10', 'Tengah', 'Semester 1', '2022/2023', 136, 5, 1, 1, 3, 1, '2022-11-23 20:45:25', '2022-11-23 20:45:25'),
(8, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'Kebersihan Rambut dan Kuku', 'Kebersihan', '20', 'Tengah', 'Semester 1', '2022/2023', 136, 5, 1, 6, 5, 1, '2022-11-23 20:45:25', '2022-11-23 20:45:25'),
(9, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'Kebersihan Gigi dan Mulut', 'Kebersihan', '30', 'Tengah', 'Semester 1', '2022/2023', 136, 5, 1, 6, 6, 1, '2022-11-23 20:45:40', '2022-11-23 20:45:40'),
(10, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'Kebersihan Gigi dan Mulut', 'Kebersihan', '80', 'Tengah', 'Semester 1', '2022/2023', 131, 5, 1, 6, 6, 1, '2022-11-23 20:45:58', '2022-11-23 20:45:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_studentprofile`
--

CREATE TABLE `nilai_studentprofile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_studentprofile`
--

INSERT INTO `nilai_studentprofile` (`id`, `nis`, `nama`, `kelas`, `periode_keterangan`, `semester`, `tahunajaran`, `murid_id`, `kelas_id`, `jenjang_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'Tengah', 'Semester 1', '2022/2023', 131, 5, 1, 1, '2022-11-25 00:11:56', '2022-11-25 00:11:56'),
(2, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'Tengah', 'Semester 1', '2022/2023', 132, 5, 1, 1, '2022-11-25 00:11:56', '2022-11-25 00:11:56'),
(3, 'TK001618', 'SYIFA NUR AINI', 'B2', 'Tengah', 'Semester 1', '2022/2023', 133, 5, 1, 1, '2022-11-25 00:11:56', '2022-11-25 00:11:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_studentprofile_detail`
--

CREATE TABLE `nilai_studentprofile_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indikator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` enum('vg','g','s','ni') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `master_indikator_studentprofile_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_studentprofile_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_studentprofile_detail`
--

INSERT INTO `nilai_studentprofile_detail` (`id`, `indikator`, `nilai`, `master_indikator_studentprofile_id`, `nilai_studentprofile_id`, `created_at`, `updated_at`) VALUES
(1, 'Taqwa', 'vg', 1, 131, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(2, 'Thinker ', 'g', 3, 131, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(3, 'Tough', 's', 5, 131, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(4, 'Visionary', 's', 2, 132, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(5, 'Responsibility', 'g', 4, 132, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(6, 'Taqwa', 'vg', 1, 133, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(7, 'Visionary', 'vg', 2, 133, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(8, 'Thinker ', 'g', 3, 133, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(9, 'Responsibility', 'g', 4, 133, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(10, 'Tough', 's', 5, 133, '2022-11-24 19:44:45', '2022-11-24 19:44:45'),
(11, 'Taqwa', 's', 1, 1, '2022-11-25 00:11:56', '2022-11-27 19:36:35'),
(12, 'Thinker ', 's', 3, 1, '2022-11-25 00:11:56', '2022-11-27 19:36:35'),
(13, 'Tough', 's', 5, 1, '2022-11-25 00:11:56', '2022-11-25 00:11:56'),
(14, 'Visionary', 'g', 2, 2, '2022-11-25 00:11:56', '2022-11-25 00:11:56'),
(15, 'Responsibility', 's', 4, 2, '2022-11-25 00:11:56', '2022-11-25 00:11:56'),
(16, 'Taqwa', 'vg', 1, 3, '2022-11-25 00:11:56', '2022-11-25 00:11:56'),
(17, 'Visionary', 'vg', 2, 3, '2022-11-25 00:11:56', '2022-11-25 00:11:56'),
(18, 'Thinker ', 'vg', 3, 3, '2022-11-25 00:11:56', '2022-11-27 19:36:35'),
(19, 'Responsibility', 'vg', 4, 3, '2022-11-25 00:11:56', '2022-11-27 19:36:35'),
(20, 'Tough', 'vg', 5, 3, '2022-11-25 00:11:56', '2022-11-27 19:36:35'),
(21, 'Visionary', 's', 2, 1, '2022-11-27 19:35:54', '2022-11-27 19:35:54'),
(22, 'Responsibility', 's', 4, 1, '2022-11-27 19:35:54', '2022-11-27 19:36:35'),
(23, 'Taqwa', 'ni', 1, 2, '2022-11-27 19:36:35', '2022-11-27 19:36:35'),
(24, 'Thinker ', 's', 3, 2, '2022-11-27 19:36:35', '2022-11-27 19:36:35'),
(25, 'Tough', 'ni', 5, 2, '2022-11-27 19:36:35', '2022-11-27 19:36:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_tahfidz`
--

CREATE TABLE `nilai_tahfidz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `areas_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `indicators_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_tahfidz`
--

INSERT INTO `nilai_tahfidz` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi', 'Al-Qari\'ah', 'TK B', 'Tengah', 131, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(2, 'TK001653', 'ADONIA KIMBERLY ELEANA SHEEVA', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 132, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(3, 'TK001618', 'SYIFA NUR AINI', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 133, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(4, 'TK001651', 'ARINDA AURORA WINTANG ZULFATILLAH', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 134, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(5, 'TK001639', 'AULIYA ADILA BILQIS', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 135, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(6, 'TK001636', 'AZANANDRA PUTRA BAGASKARA', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 136, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(7, 'TK001648', 'AZKIA SHINTA NURAINI', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi', 'Al-Qari\'ah', 'TK B', 'Tengah', 137, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(8, 'TK001607', 'CANTIKA KIRANA MAHESWARI', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 138, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(9, 'TK001605', 'DHIKA AHMAD AL ARKHAN', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar', 'Al-Qari\'ah', 'TK B', 'Tengah', 139, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(10, 'TK001641', 'DZAKIY ABDURRAHMAN MUTTAQIEN', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 140, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(11, 'TK001611', 'FALAHILMI AZKA TAUFIK', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi', 'Al-Qari\'ah', 'TK B', 'Tengah', 141, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(12, 'TK001598', 'HARIS AHMAD FAUDZAN', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi', 'Al-Qari\'ah', 'TK B', 'Tengah', 142, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(13, 'TK001642', 'KAYRA FALIHAH RAMADHANI HASAN', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar', 'Al-Qari\'ah', 'TK B', 'Tengah', 143, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(14, 'TK001575', 'KHANZA SHABIRA AZ ZAHRA', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 144, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(15, 'TK001538', 'KIANO KARIM RAMAZAN', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 145, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(16, 'TK001604', 'M. DAVIN FAEYZA MECCA FERNADO', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar', 'Al-Qari\'ah', 'TK B', 'Tengah', 146, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(17, 'TK001603', 'M. HATTA RAFSAN GHANI', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 147, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(18, 'TK001634', 'M. RAFFASYA DZAKKI ADINATA', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi', 'Al-Qari\'ah', 'TK B', 'Tengah', 148, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(19, 'TK001724', 'RADYANA ALESHA PRAMESTI', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 149, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(20, 'TK001616', 'VALERIE FIDELYA GIOVANI', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 150, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(21, 'TK001600', 'ZHAFRAN FARIZIL ABQORI', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 151, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(22, 'TK001638', 'ZIDNI HASSANAH QOLBU', 'B2', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar', 'Al-Qari\'ah', 'TK B', 'Tengah', 152, 5, 1, 6, 6, 91, 1, '2022-09-28 06:08:18', '2022-09-28 06:08:18'),
(25, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 79, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(26, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 80, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(27, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'An-Nas', 'TK A', 'Tengah', 81, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(28, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 82, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(29, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 83, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(30, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 84, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(31, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 85, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(32, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 86, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(33, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 87, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(34, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 88, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(35, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 89, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(36, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'An-Nas', 'TK A', 'Tengah', 90, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(37, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 91, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(38, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'An-Nas', 'TK A', 'Tengah', 92, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(39, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 93, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(40, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 94, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(41, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'An-Nas', 'TK A', 'Tengah', 95, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(42, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 96, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(43, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 97, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(44, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 98, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(45, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'An-Nas', 'TK A', 'Tengah', 99, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(46, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'An-Nas', 'TK A', 'Tengah', 100, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(47, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'An-Nas', 'TK A', 'Tengah', 101, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(48, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 102, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(49, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'An-Nas', 'TK A', 'Tengah', 103, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(50, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 104, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(51, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'An-Nas', 'TK A', 'Tengah', 105, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(52, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 106, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(53, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'An-Nas', 'TK A', 'Tengah', 107, 4, 2, 6, 6, 78, 1, '2022-09-29 07:52:41', '2022-09-29 07:52:41'),
(54, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 79, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(55, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 80, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(56, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Falaq', 'TK A', 'Tengah', 81, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(57, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 82, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(58, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 83, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(59, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 84, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(60, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 85, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(61, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 86, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(62, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 87, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(63, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 88, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(64, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 89, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(65, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Falaq', 'TK A', 'Tengah', 90, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(66, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 91, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(67, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'Al-Falaq', 'TK A', 'Tengah', 92, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(68, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 93, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(69, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'Al-Falaq', 'TK A', 'Tengah', 94, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(70, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Falaq', 'TK A', 'Tengah', 95, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(71, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 96, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(72, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 97, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(73, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 98, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(74, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'Al-Falaq', 'TK A', 'Tengah', 99, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(75, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Falaq', 'TK A', 'Tengah', 100, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(76, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'Al-Falaq', 'TK A', 'Tengah', 101, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(77, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 102, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(78, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Falaq', 'TK A', 'Tengah', 103, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(79, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 104, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(80, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Falaq', 'TK A', 'Tengah', 105, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(81, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 106, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(82, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Falaq', 'TK A', 'Tengah', 107, 4, 2, 6, 6, 79, 1, '2022-09-29 07:58:58', '2022-09-29 07:58:58'),
(83, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 79, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(84, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'Al-Ikhlas', 'TK A', 'Tengah', 80, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(85, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Ikhlas', 'TK A', 'Tengah', 81, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(86, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 82, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(87, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 83, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(88, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 84, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(89, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 85, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(90, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 86, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(91, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 87, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(92, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 88, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(93, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'Al-Ikhlas', 'TK A', 'Tengah', 89, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(94, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar.', 'Al-Ikhlas', 'TK A', 'Tengah', 90, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(95, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 91, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(96, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Ikhlas', 'TK A', 'Tengah', 92, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(97, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 93, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(98, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 94, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(99, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Ikhlas', 'TK A', 'Tengah', 95, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(100, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 96, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(101, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 97, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(102, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 98, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(103, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Ikhlas', 'TK A', 'Tengah', 99, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(104, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Ikhlas', 'TK A', 'Tengah', 100, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(105, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 101, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(106, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 102, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(107, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Ikhlas', 'TK A', 'Tengah', 103, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(108, 'TK001721', 'UMAIZA AZKADINA', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 104, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(109, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi, namun masih perlu muroja\'ah lagi.', 'Al-Ikhlas', 'TK A', 'Tengah', 105, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(110, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 106, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57'),
(111, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'Alhamdulillah ananda sudah bisa mengulangi yang ditalaqqi dengan benar dan lancar.', 'Al-Ikhlas', 'TK A', 'Tengah', 107, 4, 2, 6, 6, 80, 1, '2022-09-29 08:04:57', '2022-09-29 08:04:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_tilawah`
--

CREATE TABLE `nilai_tilawah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `areas_id` bigint(20) UNSIGNED NOT NULL,
  `development_id` bigint(20) UNSIGNED NOT NULL,
  `indicators_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_tilawah`
--

INSERT INTO `nilai_tilawah` (`id`, `nis`, `nama`, `kelas`, `nilai`, `indicators`, `jenjang`, `periode_keterangan`, `murid_id`, `kelas_id`, `jenjang_id`, `areas_id`, `development_id`, `indicators_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001630', 'HANIFA NAFIA ALMEERRA', 'B3', 'Tilawati 2 Halaman 41', 'Tilawati 2 halaman 11', 'TK B', 'Tengah', 159, 6, 1, 6, 5, 109, 1, '2022-09-26 07:16:52', '2022-09-26 07:16:52'),
(2, 'TK001683', 'ADHYASTHA KHAYRU PRATAMA', 'A3', 'Tilawati 2 halaman 3', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 79, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(3, 'TK001667', 'ADZKIYA FARADIBA MAHESWARI', 'A3', 'Tilawati 1 halaman 15', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 80, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(4, 'TK001688', 'AHMAD ALKHALIFI ZIKRI AL HAFIDZ', 'A3', 'Tilawati 1 halaman 3', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 81, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(5, 'TK001661', 'AISYAH RANIAH AZZAHRA', 'A3', 'Tilawati 2 halaman 5', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 82, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(6, 'TK001703', 'AKSA ADINATA NUGROHO', 'A3', 'Tilawati 1 halaman 21', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 83, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(7, 'TK001719', 'ARA ADZKIA HILYA', 'A3', 'Tilawati 1 halaman 16', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 84, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(8, 'TK001681', 'ARGANTARA KHALIF NUGROHO', 'A3', 'Tilawati 1 halaman 26', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 85, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(9, 'TK001705', 'ASYHAM WAFI ALFARISH', 'A3', 'Tilawati 1 halaman 16', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 86, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(10, 'TK001693', 'MUHAMMAD ARMAND JAYA TANDJUNG', 'A3', 'Tilawati 1 halaman 33', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 87, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(11, 'TK001663', 'AULIA FATMA ADIFA', 'A3', 'Tilawati 2 halaman 8', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 88, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(12, 'TK001677', 'CLESYA SHAFARA FERNADO', 'A3', 'Tilawati 1 halaman 18', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 89, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(13, 'TK001735', 'DASTAN ALFATHANI DHIROTSAHA', 'A3', 'Tilawati 1 halaman 6', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 90, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(14, 'TK001725', 'GIFA AUDIFARAH', 'A3', 'Tilawati 2 Halaman 10', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 91, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(15, 'TK001678', 'HAFIZ RAFI RABBANI', 'A3', 'Tilawati 1 halaman 10', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 92, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(16, 'TK001669', 'KAYLANAYA ARS ZHAFIRA', 'A3', 'Tilawati 1 halaman 30', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 93, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(17, 'TK001712', 'MUHAMMAD HANIF SYAM', 'A3', 'Tilawati 1 halaman 44', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 94, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(18, 'TK001732', 'MARSHA ORLIN AZ-ZAHRA', 'A3', 'Tilawati 1 halaman 3', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 95, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(19, 'TK001657', 'MUHAMMAD MALIQ FATURAHMAN', 'A3', 'Tilawati 1 halaman 27', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 96, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(20, 'TK001666', 'MUSTHAFA MALIK ATHAR AL FARIZI', 'A3', 'Tilawati 1 halaman 25', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 97, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(21, 'TK001729', 'NAYAKA ALDEN VERLANGGA', 'A3', 'Tilawati 1 halaman 34', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 98, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(22, 'TK001720', 'NOURA RAYA SASHIKIRANA', 'A3', 'Tilawati 1 halaman 12', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 99, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(23, 'TK001701', 'RAFANIA SHAKILLA HERSYA PUTRI', 'A3', 'Tilawati 1 halaman 7', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 100, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(24, 'TK001665', 'RAFFAZA ZEYNDIO INDRALAKSONO', 'A3', 'Tilawati 1 halaman 20', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 101, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(25, 'TK001730', 'SADJIWO DAMAR KHAISANU', 'A3', 'Tilawati 1 halaman 35', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 102, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(26, 'TK001731', 'TSAQIF HAUFANHAZZA BACHTIAR', 'A3', 'Tilawati 1 halaman 7', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 103, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(27, 'TK001745', 'AKIO MANDANI FATHAAN MULYONO', 'A3', 'Tilawati 1 halaman 1', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 105, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(28, 'TK001743', 'MUHAMMAD AHSAN ALFARIZQI', 'A3', 'Tilawati 1 halaman 20', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 106, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(29, 'TK001747', 'JAZAQILLAH ALANA MAWARDI', 'A3', 'Tilawati 1 halaman 9', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 107, 4, 2, 6, 5, 105, 1, '2022-09-29 08:20:10', '2022-09-29 08:20:10'),
(30, 'TK001696', 'ABYAZ DAMAR RAYYANKA', 'A2', 'Tilawati 1 halaman 13.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 50, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(31, 'TK001695', 'ALMEERA HANIN AFFATHANISSA', 'A2', 'Tilawati 1 halaman 12.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 51, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(32, 'TK001709', 'AQLAN NAZEL DAYYAN AL KAYSAN', 'A2', 'Tilawati 1 halaman 19.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 52, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(33, 'TK001698', 'ARKANA RAYYAN SAFARAZ', 'A2', 'Tilawati 1 halaman 33.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 53, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(34, 'TK001733', 'ARSENIO SHAQUILLE AR RAFIF', 'A2', 'Tilawati 1 halaman 22.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 54, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(35, 'TK001706', 'ASSYFA PUTRI PURWANTO', 'A2', 'Tilawati 1 halaman 18.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 55, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(36, 'TK001699', 'AZKADINA KIREI MUFIA', 'A2', 'Tilawati 1 halaman 33.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 56, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(37, 'TK001686', 'DAFFA ATALLAH ATHAFAEYZA', 'A2', 'Tilawati 1 halaman 20.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 57, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(38, 'TK001680', 'DIEN AYU AISYAH NASHRUDDIN', 'A2', 'Tilawati 1 halaman 20.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 58, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(39, 'TK001697', 'ELVIRA PRATISTA WINDYASWARI', 'A2', 'Tilawati 1 halaman 15.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 59, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(40, 'TK001717', 'GALANG AZKA NARENDRA', 'A2', 'Tilawati 1 halaman 4.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 60, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(41, 'TK001707', 'GENEVIEVE NABILA RAHMA', 'A2', 'Tilawati 1 halaman 5.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 61, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(42, 'TK001715', 'HANUM NABILA JATMIKO', 'A2', 'Tilawati 1 halaman 4.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 62, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(43, 'TK001726', 'IBRAHIM SIDDIQ AL FARISI', 'A2', 'Tilawati 1 halaman 9.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 63, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(44, 'TK001675', 'JANUWENDRA SATRIA ABHINAYA', 'A2', 'Tilawati 1 halaman 20.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 64, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(45, 'TK001727', 'KEANO IBRAHIMOVIC EL AZAFA', 'A2', 'Tilawati 1 halaman 17.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 65, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(46, 'TK001716', 'MARYAM AZZAHRA QONITA ISLAMIANANDA ARIFIN', 'A2', 'Tilawati 1 halaman 8.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 66, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(47, 'TK001672', 'MUHAMMAD AZLAN SYARAHIL AZHARI', 'A2', 'Tilawati 1 halaman 14.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 67, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(48, 'TK001668', 'MUHAMMAD QOSIM JUNAIDY', 'A2', 'Tilawati 2 halaman 13.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 69, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(49, 'TK001710', 'MUHAMMAD RAFFASYA ABIDZAR KURNIAWAN', 'A2', 'Tilawati 1 halaman 22.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 70, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(50, 'TK001702', 'RAFANDA PRASETYA HERSYA PUTRA', 'A2', 'Tilawati 1 halaman 3.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 71, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(51, 'TK001673', 'SRIKANDI PUTRI UTAMI', 'A2', 'Tilawati 1 halaman 6.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 73, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(52, 'TK001737', 'ALIYA ANJANI AKHYAR', 'A2', 'Tilawati 1 halaman 5.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 75, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(53, 'TK001742', 'AIRIN AZKA MUMTAZA', 'A2', 'Tilawati 1 halaman 8.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 76, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09'),
(54, 'TK001744', 'TAQIYA ALESHA MAHIRA', 'A2', 'Tilawati 1 halaman 10.', 'Tilawati 1 halaman 11', 'TK A', 'Tengah', 77, 1, 2, 6, 5, 105, 1, '2022-10-03 07:35:09', '2022-10-03 07:35:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkembangan`
--

CREATE TABLE `perkembangan` (
  `id_perkembangan` int(10) NOT NULL,
  `id_areas_dev` int(10) NOT NULL,
  `id_dev_achiev` int(10) NOT NULL,
  `id_indikator` int(10) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `nama_pelajaran` varchar(20) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_akademik`
--

CREATE TABLE `rekap_akademik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `narasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saran_tema` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saran_ortu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode_keterangan` enum('Tengah','Akhir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekap_akademik`
--

INSERT INTO `rekap_akademik` (`id`, `nis`, `nama`, `kelas`, `jenjang`, `cp`, `narasi`, `saran_tema`, `saran_ortu`, `periode_keterangan`, `tahunajaran`, `murid_id`, `kelas_id`, `periode_id`, `created_at`, `updated_at`) VALUES
(1, 'TK001632', 'ABRAR DAYYAN HAYDAR ALHANAN', 'B2', 'TK B', 'Nilai Agama dan Budi Pekerti||Jati Diri||Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Alhamdulillah, ABRAR DAYYAN HAYDAR ALHANAN sudah dapat Menghafal  syahadat berserta artinya Mengenal alam semesta dan isinya sebagai ciptaan Allah Menyayangi hewan (misal: memberi makan/ merawat) Mengenal dan Berlatih puasa Ramadhan Mengetahui, memahami, memaknai, dan mengambil pelajaran dari hari besar agama islam (Hari raya Idul Fitri, Idul Adha, Isra\' Mi\'raj, maulid Nabi, tahun baru hijriyah)||Alhamdulillah, ABRAR DAYYAN HAYDAR ALHANAN sudah dapat mampu berteman dan bekerjasama dengan orang lain Melakukan permainan fisik dengan aturan||Alhamdulillah, ABRAR DAYYAN HAYDAR ALHANAN sudah dapat Menghargai penampilan karya seni anak lain Melakukan kegiatan dengan menggunakan alat teknologi sederhana sesuai fungsinya secara aman dan bertanggung jawab', 'Saran Tema Selanjutnya Nilai Agama dan Budi Pekerti||Saran Tema Selanjutnya Jati Diri||Saran Tema Selanjutnya Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Saran Untuk Ortu di Rumah Nilai Agama dan Budi Pekerti||Saran Untuk Ortu di Rumah Jati Diri||Saran Untuk Ortu di Rumah Dasar-dasar Literasi, Matematika, Sains, Teknologi, Rekayasa, dan Seni', 'Tengah', '2022/2023', 131, 5, 1, '2022-11-27 23:59:35', '2022-11-27 23:59:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(5) NOT NULL,
  `mulai` varchar(20) NOT NULL,
  `selesai` varchar(10) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `mulai`, `selesai`, `tahun_ajaran`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020', '2021', '2020/2021', 'Aktif', '2022-08-24 12:48:47', '2022-08-24 12:57:47'),
(2, '2021', '2022', '2021/2022', 'Aktif', '2022-08-24 12:58:02', '2022-08-24 12:58:02'),
(3, '2022', '2023', '2022/2023', 'Aktif', '2022-08-31 20:36:09', '2022-08-31 20:36:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ni` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` bigint(10) NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ni`, `nama`, `password`, `data_id`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admintk', 'Admin', '$2y$10$D2mnwEjx6OdD3IHI1pAav.hW.oNSzYItqNf549/WcFTFkkLFhdjz2', 0, 'Admin', 'Aktif', NULL, '2022-09-18 14:31:29', '2022-09-18 14:31:47'),
(4, '1492.03241', 'Kiki Febrianti, S.Pd.I.AUD', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 1, 'Guru', 'Aktif', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '1692.03265', 'Wellya Dian Pratiwi, S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 2, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '1179.03199', 'Atiek Dianasari, ST.S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 3, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '9976.03005', 'Luluk Isfiyah, S.Pd.I, S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 4, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '1383.03230', 'Dyah Ayu Wulandari, S.HI.S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 5, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '0371.03017', 'Suryaningsih, S.Pd.I.S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 6, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '1689.03264', 'Lia Maf\'ula, S.Pd.AUD', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 7, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '1392.03238', 'Wenny Ratnasari Agustin', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 8, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '1688.03263', 'Novidatul Faliyah, S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 9, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '0074.03009', 'Anis Darwati, S.Pd.I.S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 10, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '0687.03064', 'Wara Rina Wahyuni, S.E.S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 11, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '0988.01124', 'Ellin Suhendra, S.Pd.I', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 12, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '0985.03155', 'Nur Laila Wardah, S.Pd.I.S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 13, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '0477.03025', 'Anisah Rahmayanti, S.E.S.Pd', '$2y$10$pb4nYv1QUT/RMY7jW90YGOaAu1Oz/3UYnhJXJDMfI0ZiA.JGNF34m', 14, 'Guru', 'Aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `nip` int(10) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_indicators`
--
ALTER TABLE `data_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_murid`
--
ALTER TABLE `data_murid`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pengajar`
--
ALTER TABLE `data_pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_walikelas`
--
ALTER TABLE `data_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `master_akun`
--
ALTER TABLE `master_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_areas_dev`
--
ALTER TABLE `master_areas_dev`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_cbi`
--
ALTER TABLE `master_cbi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_c_p_s`
--
ALTER TABLE `master_c_p_s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_dev_achiev`
--
ALTER TABLE `master_dev_achiev`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_doa_harian`
--
ALTER TABLE `master_doa_harian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_ekstra`
--
ALTER TABLE `master_ekstra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_elemen_cp`
--
ALTER TABLE `master_elemen_cp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_gurus`
--
ALTER TABLE `master_gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_hadist`
--
ALTER TABLE `master_hadist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_indikator_studentprofile`
--
ALTER TABLE `master_indikator_studentprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_jenjang`
--
ALTER TABLE `master_jenjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_kategoris`
--
ALTER TABLE `master_kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_kelas`
--
ALTER TABLE `master_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_periode`
--
ALTER TABLE `master_periode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_perkembangan`
--
ALTER TABLE `master_perkembangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_predikat`
--
ALTER TABLE `master_predikat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_semesters`
--
ALTER TABLE `master_semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_siswa`
--
ALTER TABLE `master_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_siswa_nis_unique` (`nis`);

--
-- Indeks untuk tabel `master_skill_value`
--
ALTER TABLE `master_skill_value`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tahfidz`
--
ALTER TABLE `master_tahfidz`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tema`
--
ALTER TABLE `master_tema`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tilawah`
--
ALTER TABLE `master_tilawah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_t_k_s`
--
ALTER TABLE `master_t_k_s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_id` (`tp_id`),
  ADD KEY `cp_id` (`cp_id`);

--
-- Indeks untuk tabel `master_t_p_s`
--
ALTER TABLE `master_t_p_s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cp_id` (`cp_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_akademik`
--
ALTER TABLE `nilai_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_cbi`
--
ALTER TABLE `nilai_cbi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_development`
--
ALTER TABLE `nilai_development`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `nilai_doa_harian`
--
ALTER TABLE `nilai_doa_harian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_ekstra`
--
ALTER TABLE `nilai_ekstra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_hadist`
--
ALTER TABLE `nilai_hadist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_ibadah`
--
ALTER TABLE `nilai_ibadah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_perkembangan`
--
ALTER TABLE `nilai_perkembangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_studentprofile`
--
ALTER TABLE `nilai_studentprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_studentprofile_detail`
--
ALTER TABLE `nilai_studentprofile_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_tahfidz`
--
ALTER TABLE `nilai_tahfidz`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_tilawah`
--
ALTER TABLE `nilai_tilawah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `perkembangan`
--
ALTER TABLE `perkembangan`
  ADD PRIMARY KEY (`id_perkembangan`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `rekap_akademik`
--
ALTER TABLE `rekap_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `data_indicators`
--
ALTER TABLE `data_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT untuk tabel `data_murid`
--
ALTER TABLE `data_murid`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT untuk tabel `data_pengajar`
--
ALTER TABLE `data_pengajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `data_walikelas`
--
ALTER TABLE `data_walikelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_areas_dev`
--
ALTER TABLE `master_areas_dev`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_cbi`
--
ALTER TABLE `master_cbi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `master_c_p_s`
--
ALTER TABLE `master_c_p_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_dev_achiev`
--
ALTER TABLE `master_dev_achiev`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `master_doa_harian`
--
ALTER TABLE `master_doa_harian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `master_ekstra`
--
ALTER TABLE `master_ekstra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `master_elemen_cp`
--
ALTER TABLE `master_elemen_cp`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `master_gurus`
--
ALTER TABLE `master_gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `master_hadist`
--
ALTER TABLE `master_hadist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_indikator_studentprofile`
--
ALTER TABLE `master_indikator_studentprofile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `master_jenjang`
--
ALTER TABLE `master_jenjang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_kategoris`
--
ALTER TABLE `master_kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_kelas`
--
ALTER TABLE `master_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `master_periode`
--
ALTER TABLE `master_periode`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_perkembangan`
--
ALTER TABLE `master_perkembangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `master_predikat`
--
ALTER TABLE `master_predikat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `master_semesters`
--
ALTER TABLE `master_semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_siswa`
--
ALTER TABLE `master_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT untuk tabel `master_skill_value`
--
ALTER TABLE `master_skill_value`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_tahfidz`
--
ALTER TABLE `master_tahfidz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `master_tema`
--
ALTER TABLE `master_tema`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_tilawah`
--
ALTER TABLE `master_tilawah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `master_t_k_s`
--
ALTER TABLE `master_t_k_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT untuk tabel `master_t_p_s`
--
ALTER TABLE `master_t_p_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `nilai_akademik`
--
ALTER TABLE `nilai_akademik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `nilai_cbi`
--
ALTER TABLE `nilai_cbi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nilai_development`
--
ALTER TABLE `nilai_development`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_doa_harian`
--
ALTER TABLE `nilai_doa_harian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT untuk tabel `nilai_ekstra`
--
ALTER TABLE `nilai_ekstra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `nilai_hadist`
--
ALTER TABLE `nilai_hadist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `nilai_ibadah`
--
ALTER TABLE `nilai_ibadah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `nilai_perkembangan`
--
ALTER TABLE `nilai_perkembangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `nilai_studentprofile`
--
ALTER TABLE `nilai_studentprofile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nilai_studentprofile_detail`
--
ALTER TABLE `nilai_studentprofile_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `nilai_tahfidz`
--
ALTER TABLE `nilai_tahfidz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT untuk tabel `nilai_tilawah`
--
ALTER TABLE `nilai_tilawah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `perkembangan`
--
ALTER TABLE `perkembangan`
  MODIFY `id_perkembangan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rekap_akademik`
--
ALTER TABLE `rekap_akademik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `nip` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
