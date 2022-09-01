-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Agu 2022 pada 16.11
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

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
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(10) NOT NULL,
  `nis` int(20) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time(6) NOT NULL,
  `jam_keluar` time(6) NOT NULL,
  `absen` varchar(15) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Struktur dari tabel `master_areas_dev`
--

CREATE TABLE `master_areas_dev` (
  `id` bigint(10) NOT NULL,
  `nama_area` varchar(30) NOT NULL,
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
(3, 'Mampu beribadah  dengan benar', 'Tidak Aktif', '2022-08-29 06:01:47', '2022-08-29 06:09:53');

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
(6, 'Nilai Agama dan Budi Pekerti', 'Aktif', 'Aspek perkembangan Nilai agama dan moral', '2022-08-23 21:23:24', '2022-08-24 11:36:08');

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
(1, 1, 'Kegiatan Ekstrakurikuler', 'Aktif', '2022-08-29 06:39:05', '2022-08-29 07:11:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_ekstras`
--

CREATE TABLE `master_ekstras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ekstra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 6, 'Anak percaya kepada Tuhan Yang Maha Esa, mulai mengenal dan mempraktikkan ajaran pokok sesuai dengan agama dan kepercayaanNya.', 'Anak percaya kepada Tuhan Yang Maha Esa, mulai mengenal dan mempraktikkan ajaran pokok sesuai dengan agama dan kepercayaanNya.', 'Aktif', '2022-08-28 19:42:57', '2022-08-28 19:42:57'),
(2, 6, 'Anak berpartisipasi aktif dalam menjaga kebersihan, kesehatan dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'Anak berpartisipasi aktif dalam menjaga kebersihan, kesehatan dan keselamatan diri sebagai bentuk rasa sayang terhadap dirinya dan rasa syukur pada Tuhan Yang Maha Esa.', 'Aktif', '2022-08-28 19:51:50', '2022-08-28 20:00:41'),
(3, 6, 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Anak menghargai alam dengan cara merawatnya dan menunjukkan rasa sayang terhadap makhluk hidup yang merupakan ciptaan Tuhan Yang Maha Esa.', 'Aktif', '2022-08-28 19:52:25', '2022-08-28 19:52:25');

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
(1, '1234567890', 'Fadhil Husaini', 'Aktif', '2022-08-24 22:38:36', '2022-08-24 22:38:36'),
(2, '094321', 'Tiar Ade Perdana Putra', 'Aktif', '2022-08-24 22:42:11', '2022-08-24 22:45:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_indikator`
--

CREATE TABLE `master_indikator` (
  `id` bigint(10) NOT NULL,
  `nama_indikator` varchar(20) NOT NULL,
  `devac_id` bigint(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_indikator`
--

INSERT INTO `master_indikator` (`id`, `nama_indikator`, `devac_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Karate', 1, 'Aktif a', '2022-08-29 07:09:12', '2022-08-29 07:09:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jenjang`
--

CREATE TABLE `master_jenjang` (
  `id` int(5) NOT NULL,
  `nama_jenjang` varchar(30) NOT NULL,
  `status_aktif` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_jenjang`
--

INSERT INTO `master_jenjang` (`id`, `nama_jenjang`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'TK B', 'Aktif', '2022-08-24 13:15:21', '2022-08-24 13:21:11');

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
  `id` bigint(10) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_kelas`
--

INSERT INTO `master_kelas` (`id`, `nama_kelas`, `jenjang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TK BESAR', 'TK B', 'Non Aktif', '2022-08-24 21:28:41', '2022-08-24 21:36:37');

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
(1, 'Lingkar kepala', 3, 'Aktif', '2022-08-25 00:10:38', '2022-08-29 06:02:23');

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
-- Struktur dari tabel `master_siswas`
--

CREATE TABLE `master_siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `nama_siswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_masuk` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_keluar` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_siswas`
--

INSERT INTO `master_siswas` (`id`, `nis`, `nik`, `nama_siswa`, `status`, `tahun_masuk`, `tahun_keluar`, `created_at`, `updated_at`) VALUES
(1, 123456, 9876, 'Tiar', 'Aktif', '2021/2022', '2023/2024', '2022-08-24 11:06:28', '2022-08-24 11:12:28'),
(2, 12333, 222, 'Rendi', 'Aktif', '2021/2022', NULL, '2022-08-24 11:07:07', '2022-08-24 11:07:07');

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
-- Struktur dari tabel `master_t_k_s`
--

CREATE TABLE `master_t_k_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tp_id` bigint(10) NOT NULL,
  `kode_ref` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `narasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_t_k_s`
--

INSERT INTO `master_t_k_s` (`id`, `tp_id`, `kode_ref`, `nama_tk`, `narasi`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 1, 'LB.B1.1.1.1.2', 'Menirukan lafal syahadat dan artinya', 'Menirukan lafal syahadat dan artinya', 'Aktif', '2022-08-28 20:40:22', '2022-08-28 20:40:22'),
(2, 1, 'LB.B1.1.1.1.7', 'Mengenal dan melafalkan asmaul husna', 'Mengenal dan melafalkan asmaul husna', 'Aktif', '2022-08-28 20:51:20', '2022-08-28 20:53:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_t_p_s`
--

CREATE TABLE `master_t_p_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `elemen_id` bigint(10) NOT NULL,
  `nama_tp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `narasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_t_p_s`
--

INSERT INTO `master_t_p_s` (`id`, `elemen_id`, `nama_tp`, `narasi`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 1, 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Anak percaya bahwa Allah Tuhan Yang Maha Esa.', 'Aktif', '2022-08-28 20:09:20', '2022-08-28 20:09:20'),
(2, 1, 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'Anak mengenal dan mempraktikkan ajaran agama Islam.', 'Aktif', '2022-08-28 20:13:55', '2022-08-28 20:17:06');

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
(45, '2022_08_13_021919_create_master_siswas_table', 3),
(46, '2022_08_16_015003_create_master_kelas_table', 3),
(47, '2022_08_18_023528_create_master_gurus_table', 3),
(48, '2022_08_18_090031_create_master_t_k_s_table', 3),
(49, '2022_08_19_024354_create_master_t_p_s_table', 4),
(50, '2022_08_19_062418_create_master_c_p_s_table', 5),
(51, '2022_08_19_074733_create_master_semesters_table', 6),
(52, '2022_08_19_092215_create_master_kategoris_table', 7),
(53, '2022_08_20_030132_create_master_ekstras_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--

CREATE TABLE `murid` (
  `nis` int(20) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `nama_murid` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `jenjang` varchar(10) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_capai_perkembangan`
--

CREATE TABLE `nilai_capai_perkembangan` (
  `id_nilai` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_tp` int(10) NOT NULL,
  `id_cp` int(10) NOT NULL,
  `id_tk` int(10) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `narasi` varchar(30) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_capai_pertumbuhan`
--

CREATE TABLE `nilai_capai_pertumbuhan` (
  `id_pertumbuhan` int(10) NOT NULL,
  `id_tumbuh_kembang` int(10) NOT NULL,
  `nis` int(20) NOT NULL,
  `nilai` int(3) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Struktur dari tabel `nilai_student_profile`
--

CREATE TABLE `nilai_student_profile` (
  `id_nilai_sp` int(10) NOT NULL,
  `id_profile` int(10) NOT NULL,
  `nis` int(20) NOT NULL,
  `nilai` int(3) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id_pelajaran` int(10) NOT NULL,
  `id_cp` int(10) NOT NULL,
  `id_tp` int(10) NOT NULL,
  `id_tk` int(10) NOT NULL,
  `nama_pelajaran` varchar(20) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `no_induk_guru` int(20) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `nama_pelajaran` varchar(20) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(2, '2021', '2022', '2021/2022', 'Aktif', '2022-08-24 12:58:02', '2022-08-24 12:58:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `master_areas_dev`
--
ALTER TABLE `master_areas_dev`
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
-- Indeks untuk tabel `master_ekstras`
--
ALTER TABLE `master_ekstras`
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
-- Indeks untuk tabel `master_indikator`
--
ALTER TABLE `master_indikator`
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
-- Indeks untuk tabel `master_perkembangan`
--
ALTER TABLE `master_perkembangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_semesters`
--
ALTER TABLE `master_semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_siswas`
--
ALTER TABLE `master_siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_skill_value`
--
ALTER TABLE `master_skill_value`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_t_k_s`
--
ALTER TABLE `master_t_k_s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_t_p_s`
--
ALTER TABLE `master_t_p_s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `nilai_capai_perkembangan`
--
ALTER TABLE `nilai_capai_perkembangan`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `nilai_capai_pertumbuhan`
--
ALTER TABLE `nilai_capai_pertumbuhan`
  ADD PRIMARY KEY (`id_pertumbuhan`);

--
-- Indeks untuk tabel `nilai_development`
--
ALTER TABLE `nilai_development`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `nilai_student_profile`
--
ALTER TABLE `nilai_student_profile`
  ADD PRIMARY KEY (`id_nilai_sp`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indeks untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`no_induk_guru`);

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
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_c_p_s`
--
ALTER TABLE `master_c_p_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_dev_achiev`
--
ALTER TABLE `master_dev_achiev`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_ekstras`
--
ALTER TABLE `master_ekstras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_elemen_cp`
--
ALTER TABLE `master_elemen_cp`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_gurus`
--
ALTER TABLE `master_gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_indikator`
--
ALTER TABLE `master_indikator`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_jenjang`
--
ALTER TABLE `master_jenjang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_kategoris`
--
ALTER TABLE `master_kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_kelas`
--
ALTER TABLE `master_kelas`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_perkembangan`
--
ALTER TABLE `master_perkembangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_semesters`
--
ALTER TABLE `master_semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_siswas`
--
ALTER TABLE `master_siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_skill_value`
--
ALTER TABLE `master_skill_value`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_t_k_s`
--
ALTER TABLE `master_t_k_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_t_p_s`
--
ALTER TABLE `master_t_p_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `murid`
--
ALTER TABLE `murid`
  MODIFY `nis` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_capai_perkembangan`
--
ALTER TABLE `nilai_capai_perkembangan`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_capai_pertumbuhan`
--
ALTER TABLE `nilai_capai_pertumbuhan`
  MODIFY `id_pertumbuhan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_development`
--
ALTER TABLE `nilai_development`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_student_profile`
--
ALTER TABLE `nilai_student_profile`
  MODIFY `id_nilai_sp` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id_pelajaran` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `no_induk_guru` int(20) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `nip` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
