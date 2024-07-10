-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2021 pada 06.02
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendataan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bhaji`
--

CREATE TABLE `bhaji` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` double NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bhaji`
--

INSERT INTO `bhaji` (`id`, `kode`, `kecamatan`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 10, 'Kalipare', 2016, 23, NULL, '2021-10-26 21:17:25'),
(3, 20, 'Kalipare', 2020, 9, NULL, '2021-10-26 21:17:46'),
(5, 30, 'Pagak', 2016, 31, NULL, NULL),
(6, 40, 'Bantur', 2016, 39, NULL, NULL),
(7, 50, 'Gedangan', 2016, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` double NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `kode`, `tahun`, `bulan`, `kecamatan`, `jumlah`, `created_at`, `updated_at`) VALUES
(37, 10, 2020, 'Januari', 'Donomulyo', 42, NULL, NULL),
(38, 20, 2020, 'Januari', 'Kalipare', 38, NULL, NULL),
(39, 30, 2020, 'Januari', 'Pagak', 24, NULL, NULL),
(40, 40, 2020, 'Januari', 'Bantur', 29, NULL, NULL),
(41, 50, 2020, 'Januari', 'Gedangan', 33, NULL, NULL),
(42, 60, 2020, 'Januari', 'Sumbermanjing', 46, NULL, NULL),
(43, 70, 2020, 'Januari', 'Dampit', 92, NULL, NULL),
(44, 80, 2020, 'Januari', 'Tirtoyudo', 26, NULL, NULL),
(45, 90, 2020, 'Januari', 'Ampelading', 50, NULL, NULL),
(46, 100, 2020, 'Januari', 'Poncokusumo', 76, NULL, NULL),
(47, 110, 2020, 'Januari', 'Wajak', 61, NULL, NULL),
(48, 120, 2020, 'Januari', 'Turen', 63, NULL, NULL),
(49, 130, 2020, 'Januari', 'Bululawang', 29, NULL, NULL),
(50, 140, 2020, 'Januari', 'Gondanglegi', 49, NULL, NULL),
(51, 150, 2020, 'Januari', 'Pagelaran', 28, NULL, NULL);

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
-- Struktur dari tabel `ibadah`
--

CREATE TABLE `ibadah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` int(11) NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `masjid` int(11) NOT NULL,
  `musholla` int(11) NOT NULL,
  `gereja_protestant` int(11) NOT NULL,
  `gereja_katholik` int(11) NOT NULL,
  `pura` int(11) NOT NULL,
  `vihara` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ibadah`
--

INSERT INTO `ibadah` (`id`, `kode`, `kecamatan`, `tahun`, `masjid`, `musholla`, `gereja_protestant`, `gereja_katholik`, `pura`, `vihara`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 10, 'Donomulyo', 2020, 136, 353, 7, 16, 1, 0, 513, NULL, '2021-10-26 20:27:33'),
(2, 20, 'Kalipare', 2020, 72, 359, 7, 10, 5, 0, 453, NULL, '2021-10-26 20:28:18'),
(3, 30, 'Pagak', 2020, 84, 365, 4, 0, 2, 0, 455, NULL, '2021-10-26 20:29:42'),
(4, 40, 'Bantur', 2020, 104, 492, 3, 1, 0, 0, 600, NULL, '2021-10-26 20:30:13'),
(7, 50, 'Gedangan', 2020, 134, 342, 9, 0, 4, 1, 490, NULL, '2021-10-26 20:30:47'),
(8, 60, 'Sumbermanjing', 2020, 161, 578, 48, 2, 0, 0, 789, NULL, '2021-10-26 20:31:17'),
(9, 70, 'Dampit', 2020, 116, 647, 24, 2, 0, 1, 790, NULL, '2021-10-26 20:31:46'),
(10, 80, 'Tirtoyudo', 2020, 93, 247, 31, 0, 0, 1, 372, NULL, '2021-10-26 20:32:15'),
(12, 90, 'Ampelading', 2020, 76, 354, 26, 0, 5, 1, 462, '2021-10-24 05:47:26', '2021-10-26 20:32:46'),
(13, 100, 'Poncokusumo', 2020, 67, 487, 0, 1, 2, 1, 558, '2021-10-24 18:58:36', '2021-10-26 20:33:14'),
(14, 110, 'Wajak', 2020, 88, 511, 3, 0, 0, 0, 602, '2021-10-24 19:54:33', '2021-10-26 20:33:38'),
(16, 120, 'Turen', 2020, 94, 592, 8, 1, 0, 0, 695, '2021-10-26 20:34:07', '2021-10-26 20:34:07'),
(17, 130, 'Bululawang', 2020, 61, 421, 10, 1, 0, 0, 493, '2021-10-26 20:34:32', '2021-10-26 20:34:32'),
(18, 140, 'Gondanglegi', 2020, 73, 686, 2, 2, 0, 0, 763, '2021-10-26 20:35:32', '2021-10-26 20:35:32'),
(19, 150, 'Pagelaran', 2020, 58, 502, 6, 1, 0, 0, 567, '2021-10-26 20:36:08', '2021-10-26 20:36:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurpen`
--

CREATE TABLE `jurpen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurpen`
--

INSERT INTO `jurpen` (`id`, `nama`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'Ulama', 2016, 0, NULL, '2021-10-26 20:51:32'),
(3, 'Mubaligh', 2016, 0, NULL, '2021-10-26 20:51:46'),
(4, 'Khatib', 2016, 0, NULL, '2021-10-26 20:52:00'),
(5, 'Penyuluh Agama', 2016, 260, NULL, '2021-10-26 20:52:17'),
(6, 'Lainnya', 2016, 0, NULL, '2021-10-26 20:52:29'),
(7, 'Ulama', 2017, 1284, NULL, '2021-10-26 20:52:45'),
(8, 'Mubaligh', 2017, 1085, NULL, '2021-10-26 20:53:02'),
(9, 'Khatib', 2017, 6838, NULL, '2021-10-26 20:53:23'),
(10, 'Penyuluh Agama', 2017, 285, NULL, '2021-10-26 20:53:41'),
(11, 'Lainnya', 2017, 0, NULL, '2021-10-26 20:53:52'),
(12, 'Mubaligh', 2021, 2, NULL, NULL),
(13, 'Mubaligh', 2021, 2, NULL, NULL),
(14, 'Mubaligh', 2021, 4, NULL, NULL),
(15, 'Mubaligh', 2021, 4, NULL, NULL),
(16, 'Mubaligh', 2021, 4, NULL, NULL),
(17, 'Ulama', 2021, 2, NULL, NULL),
(18, 'Mubaligh', 2021, 5, NULL, NULL),
(19, 'Khatib', 2021, 5, NULL, NULL),
(20, 'Mubaligh', 2020, 4, NULL, NULL),
(21, 'Khatib', 2020, 6, NULL, NULL),
(22, 'Mubaligh', 2021, 4, NULL, NULL),
(23, 'Khatib', 2020, 9, NULL, NULL),
(24, 'Ulama', 2021, 12, NULL, NULL),
(25, 'Khatib', 2021, 12, NULL, NULL),
(26, 'Mubaligh', 2021, 5, NULL, NULL),
(27, 'Ulama', 2020, 3, NULL, NULL),
(28, 'Ulama', 2021, 5, NULL, NULL),
(29, 'Khatib', 2021, 3, NULL, NULL),
(30, 'Mubaligh', 2021, 15, NULL, NULL),
(31, 'Mubaligh', 2020, 5, NULL, NULL),
(32, 'Ulama', 2021, 6, NULL, NULL),
(33, 'Ulama', 2020, 4, NULL, NULL),
(34, 'Mubaligh', 2021, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ma`
--

CREATE TABLE `ma` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` int(11) NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berdasarkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ma`
--

INSERT INTO `ma` (`id`, `kode`, `kecamatan`, `berdasarkan`, `kategori`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 10, 'Donomulyo', 'Sekolah', 'Negeri', '2019/2020', 1, NULL, '2021-10-26 01:39:49'),
(4, 10, 'Donomulyo', 'Sekolah', 'Negeri', '2020/2021', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mi`
--

CREATE TABLE `mi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` int(11) NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berdasarkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mi`
--

INSERT INTO `mi` (`id`, `kode`, `kecamatan`, `berdasarkan`, `kategori`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 10, 'Donomulyo', 'Sekolah', 'Negeri', '2019/2020', 1, NULL, '2021-10-26 21:11:07'),
(4, 20, 'Kalipare', 'Sekolah', 'Negeri', '2019/2020', 1, NULL, NULL),
(5, 30, 'Pagak', 'Sekolah', 'Negeri', '2019/2020', 0, NULL, NULL),
(6, 40, 'Bantur', 'Sekolah', 'Negeri', '2019/2020', 0, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_20_011455_create_data', 1),
(6, '2021_10_05_022119_create_ibadah', 1),
(7, '2021_10_13_020824_create_perkembanganibadah', 2),
(8, '2021_10_13_022544_create_perkibadah', 3),
(9, '2021_10_13_063040_create_ponpes', 4),
(10, '2021_10_13_121900_create_jrpen', 5),
(11, '2021_10_13_122634_create_jurpen', 6),
(12, '2021_10_19_053924_create_pns1', 7),
(13, '2021_10_19_053949_create_pns2', 7),
(14, '2021_10_19_053958_create_pns3', 7),
(15, '2021_10_19_083739_add_tahun_to_pns1_table', 8),
(16, '2021_10_19_110501_create_ra', 9),
(17, '2021_10_19_110529_create_mi', 9),
(18, '2021_10_19_110542_create_mts', 9),
(19, '2021_10_19_110553_create_ma', 9),
(20, '2021_10_19_123606_create_mi', 10),
(21, '2021_10_19_123614_create_mts', 10),
(22, '2021_10_19_123620_create_ma', 10),
(23, '2021_10_19_143401_create_phaji', 11),
(24, '2021_10_19_143412_create_bhaji', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mts`
--

CREATE TABLE `mts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` int(11) NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berdasarkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mts`
--

INSERT INTO `mts` (`id`, `kode`, `kecamatan`, `berdasarkan`, `kategori`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 10, 'Donomulyo', 'Sekolah', 'Negeri', '2019/2020', 1, NULL, '2021-10-26 21:13:21'),
(4, 20, 'Kalipare', 'Sekolah', 'Negeri', '2019/2020', 0, NULL, NULL);

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
-- Struktur dari tabel `perkibadah`
--

CREATE TABLE `perkibadah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tempatperibadatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `perkibadah`
--

INSERT INTO `perkibadah` (`id`, `tempatperibadatan`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 'Masjid', 2016, 2338, NULL, '2021-10-12 20:23:02'),
(3, 'Musholla', 2016, 10791, NULL, NULL),
(4, 'Gereja Kristen/Church', 2016, 367, NULL, NULL),
(5, 'Gereja Katolik/Kapel', 2016, 63, NULL, NULL),
(6, 'Pura/Shrine', 2016, 48, NULL, '2021-10-26 20:38:21'),
(7, 'Sanggar', 2016, 18, NULL, '2021-10-26 20:38:33'),
(10, 'Vihara/Nunnery', 2016, 14, NULL, '2021-10-26 20:38:50'),
(11, 'Masjid', 2017, 2348, NULL, NULL),
(12, 'Musholla', 2017, 10791, NULL, NULL),
(13, 'Gereja Kristen/Church', 2017, 367, NULL, NULL),
(14, 'Gereja Katolik/Kapel', 2017, 63, NULL, NULL),
(15, 'Pura/Shrine', 2017, 48, NULL, NULL),
(16, 'Sanggar', 2017, 18, NULL, NULL),
(17, 'Vihara/Nunnery', 2017, 13, NULL, NULL),
(18, 'Masjid', 2018, 2348, NULL, NULL),
(19, 'Musholla', 2018, 10791, NULL, NULL),
(20, 'Gereja Kristen/Church', 2018, 367, NULL, NULL),
(21, 'Gereja Katolik/Kapel', 2018, 63, NULL, NULL),
(22, 'Pura/Shrine', 2018, 48, NULL, NULL),
(23, 'Sanggar', 2018, 18, NULL, NULL),
(24, 'Vihara/Nunnery', 2018, 13, NULL, NULL);

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
-- Struktur dari tabel `phaji`
--

CREATE TABLE `phaji` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `laki` int(11) NOT NULL,
  `wanita` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `phaji`
--

INSERT INTO `phaji` (`id`, `kecamatan`, `tahun`, `bulan`, `laki`, `wanita`, `jumlah`, `created_at`, `updated_at`) VALUES
(5, 'Donomulyo', 2020, 'Januari', 2, 2, 4, NULL, '2021-10-26 21:15:20'),
(6, 'Kalipare', 2020, 'Januari', 4, 4, 8, NULL, '2021-10-26 21:15:44'),
(8, 'Pagak', 2020, 'Januari', 3, 3, 6, NULL, NULL),
(9, 'Bantur', 2020, 'Januari', 5, 5, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pns1`
--

CREATE TABLE `pns1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pns1`
--

INSERT INTO `pns1` (`id`, `tahun`, `instansi`, `golongan`, `jumlah`, `created_at`, `updated_at`) VALUES
(8, 2020, 'Kementrian Agama', 'I', 3, NULL, '2021-10-26 20:55:27'),
(9, 2020, 'Kementrian Agama', 'II', 62, NULL, '2021-10-26 20:55:40'),
(10, 2020, 'Kementrian Agama', 'III', 663, NULL, '2021-10-26 20:55:46'),
(11, 2020, 'Kementrian Agama', 'IV', 144, NULL, '2021-10-26 20:55:53'),
(12, 2020, 'Kementrian Agama', 'Honorer/Kontrak', 594, NULL, '2021-10-26 20:56:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pns2`
--

CREATE TABLE `pns2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pns2`
--

INSERT INTO `pns2` (`id`, `tahun`, `instansi`, `golongan`, `jk`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 2020, 'Kementrian Agama', 'ASN', 'Laki-laki', 450, NULL, '2021-10-26 20:57:48'),
(3, 2020, 'Kementrian Agama', 'ASN', 'Perempuan', 422, NULL, '2021-10-26 20:58:00'),
(5, 2020, 'Kementrian Agama', 'Honorer/Kontrak', 'Laki-laki', 410, NULL, NULL),
(6, 2020, 'Kementrian Agama', 'Honorer/Kontrak', 'Perempuan', 184, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pns3`
--

CREATE TABLE `pns3` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pns3`
--

INSERT INTO `pns3` (`id`, `tahun`, `instansi`, `tp`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 2020, 'Kementrian Agama', '<=SMA(I)', 79, NULL, '2021-10-26 21:00:09'),
(3, 2020, 'Kementrian Agama', 'D3(II)', 6, NULL, '2021-10-26 21:00:28'),
(4, 2020, 'Kementrian Agama', 'D4/S1(III)', 707, NULL, NULL),
(5, 2020, 'Kementrian Agama', 'S2(IV)', 75, NULL, NULL),
(6, 2020, 'Kementrian Agama', 'S3(V)', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ponpes`
--

CREATE TABLE `ponpes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` int(11) NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ponpes`
--

INSERT INTO `ponpes` (`id`, `kode`, `kecamatan`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 10, 'Donomulyo', 2016, 12, NULL, '2021-10-26 20:46:06'),
(3, 20, 'Kalipare', 2016, 11, NULL, '2021-10-26 20:46:20'),
(4, 30, 'Pagak', 2016, 13, NULL, '2021-10-26 20:46:33'),
(5, 40, 'Bantur', 2016, 27, NULL, '2021-10-26 20:47:14'),
(6, 50, 'Gedangan', 2016, 11, NULL, '2021-10-26 20:47:37'),
(7, 60, 'Sumbermanjing', 2016, 12, NULL, '2021-10-26 20:47:52'),
(8, 70, 'Dampit', 2016, 19, NULL, '2021-10-26 20:48:05'),
(9, 80, 'Tirtoyudo', 2016, 3, NULL, '2021-10-26 20:48:19'),
(10, 90, 'Ampelading', 2016, 7, NULL, NULL),
(11, 100, 'Poncokusumo', 2016, 36, NULL, NULL),
(12, 110, 'Wajak', 2016, 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ra`
--

CREATE TABLE `ra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` int(11) NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berdasarkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ra`
--

INSERT INTO `ra` (`id`, `kode`, `kecamatan`, `berdasarkan`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 10, 'Donomulyo', 'Sekolah', '2019/2020', 9, NULL, '2021-10-26 21:07:37'),
(2, 20, 'Kalipare', 'Sekolah', '2019/2020', 10, NULL, '2021-11-01 18:17:40'),
(3, 30, 'Pagak', 'Sekolah', '2019/2020', 10, NULL, '2021-11-01 18:18:00'),
(4, 40, 'Bantur', 'Sekolah', '2019/2020', 22, NULL, '2021-11-01 18:18:22'),
(6, 50, 'Gedangan', 'Sekolah', '2019/2020', 18, NULL, '2021-11-01 18:18:37'),
(7, 60, 'Sumbermanjing', 'Sekolah', '2019/2020', 17, NULL, '2021-11-01 18:18:58'),
(8, 70, 'Dampit', 'Sekolah', '2019/2020', 16, NULL, NULL),
(9, 80, 'Tirtoyudo', 'Sekolah', '2019/2020', 10, NULL, NULL),
(10, 90, 'Ampelading', 'Sekolah', '2019/2020', 6, NULL, NULL),
(11, 100, 'Poncokusumo', 'Sekolah', '2019/2020', 25, NULL, NULL),
(12, 110, 'Wajak', 'Sekolah', '2019/2020', 19, NULL, NULL),
(13, 120, 'Turen', 'Sekolah', '2019/2020', 12, NULL, NULL),
(14, 130, 'Bululawang', 'Sekolah', '2019/2020', 10, NULL, NULL),
(15, 140, 'Gondanglegi', 'Sekolah', '2019/2020', 26, NULL, NULL),
(16, 150, 'Pagelaran', 'Sekolah', '2019/2020', 12, NULL, NULL),
(17, 160, 'Kepanjen', 'Sekolah', '2019/2020', 9, NULL, NULL),
(18, 170, 'Sumberpucung', 'Sekolah', '2019/2020', 2, NULL, '2021-11-01 18:23:36'),
(19, 180, 'Kromengan', 'Sekolah', '2019/2020', 0, NULL, NULL),
(20, 190, 'Ngajum', 'Sekolah', '2019/2020', 15, NULL, NULL),
(21, 200, 'Wonosari', 'Sekolah', '2019/2020', 6, NULL, NULL),
(22, 210, 'Wagir', 'Sekolah', '2019/2020', 5, NULL, NULL),
(23, 220, 'Pakisaji', 'Sekolah', '2019/2020', 13, NULL, NULL),
(24, 230, 'Tajinan', 'Sekolah', '2019/2020', 9, NULL, NULL),
(25, 240, 'Tumpang', 'Sekolah', '2019/2020', 9, NULL, NULL),
(26, 250, 'Pakis', 'Sekolah', '2019/2020', 9, NULL, NULL),
(27, 260, 'Jabung', 'Sekolah', '2019/2020', 10, NULL, NULL),
(28, 270, 'Lawang', 'Sekolah', '2019/2020', 6, NULL, NULL),
(29, 280, 'Singosari', 'Sekolah', '2019/2020', 15, NULL, NULL),
(30, 290, 'Karangploso', 'Sekolah', '2019/2020', 18, NULL, NULL),
(31, 300, 'Dau', 'Sekolah', '2019/2020', 15, NULL, NULL),
(32, 310, 'Pujon', 'Sekolah', '2019/2020', 15, NULL, NULL),
(33, 320, 'Ngantang', 'Sekolah', '2019/2020', 10, NULL, '2021-11-01 18:28:51'),
(34, 330, 'Kasembon', 'Sekolah', '2019/2020', 16, NULL, '2021-11-01 18:29:01'),
(35, 10, 'Donomulyo', 'Guru', '2019/2020', 9, NULL, NULL),
(36, 20, 'Kalipare', 'Guru', '2019/2020', 10, NULL, NULL),
(37, 10, 'Donomulyo', 'Murid', '2019/2020', 501, NULL, NULL),
(38, 20, 'Kalipare', 'Murid', '2019/2020', 409, NULL, NULL),
(39, 10, 'Donomulyo', 'Sekolah', '2020/2021', 9, NULL, NULL),
(40, 10, 'Donomulyo', 'Sekolah', '2020/2021', 9, NULL, NULL);

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
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-10-06 21:11:55', '$2y$10$c5AxUtZsSZ.Gp8aUv1tgwOgRU6dTB.qJ7ASzhmHIULsER1Ew6/6jm', NULL, 'admin', '2021-10-06 21:11:55', NULL),
(2, 'User', 'user@gmail.com', '2021-10-06 21:11:55', '$2y$10$UuLasNikWPhNvqgGOdVyae6XZ4mJf7OV7wFOGpWZl8GSmIKJWNBt.', NULL, 'user', '2021-10-06 21:11:55', NULL),
(3, 'Ilham Wahyudi', 'ilham@gmail.com', NULL, '$2y$10$Ep7JFzBs6jiv8UJJH/V6DOLJ3phAmN2yNiYvHgPJR6i7/HUCpUJha', NULL, 'admin', '2021-10-24 04:54:33', '2021-10-24 04:54:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bhaji`
--
ALTER TABLE `bhaji`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `ibadah`
--
ALTER TABLE `ibadah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurpen`
--
ALTER TABLE `jurpen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ma`
--
ALTER TABLE `ma`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mi`
--
ALTER TABLE `mi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mts`
--
ALTER TABLE `mts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `perkibadah`
--
ALTER TABLE `perkibadah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `phaji`
--
ALTER TABLE `phaji`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pns1`
--
ALTER TABLE `pns1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pns2`
--
ALTER TABLE `pns2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pns3`
--
ALTER TABLE `pns3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ponpes`
--
ALTER TABLE `ponpes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ra`
--
ALTER TABLE `ra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bhaji`
--
ALTER TABLE `bhaji`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ibadah`
--
ALTER TABLE `ibadah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `jurpen`
--
ALTER TABLE `jurpen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `ma`
--
ALTER TABLE `ma`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mi`
--
ALTER TABLE `mi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `mts`
--
ALTER TABLE `mts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `perkibadah`
--
ALTER TABLE `perkibadah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `phaji`
--
ALTER TABLE `phaji`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pns1`
--
ALTER TABLE `pns1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pns2`
--
ALTER TABLE `pns2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pns3`
--
ALTER TABLE `pns3`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ponpes`
--
ALTER TABLE `ponpes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `ra`
--
ALTER TABLE `ra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
