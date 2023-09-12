-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 03:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_keluarga`
--

CREATE TABLE `anggota_keluarga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kk_id` bigint(20) UNSIGNED NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status_pernikahan` varchar(255) NOT NULL,
  `status_hubungan` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL,
  `no_paspor` varchar(255) DEFAULT NULL,
  `no_kitas` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kartu_keluarga`
--

CREATE TABLE `kartu_keluarga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kepala_keluarga` varchar(255) NOT NULL,
  `no_kk` bigint(20) NOT NULL,
  `alamat` text DEFAULT NULL,
  `rt_rw` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT 'Ciomas',
  `kecamatan` varchar(255) DEFAULT 'Panjalu',
  `kabupaten` varchar(255) DEFAULT 'Ciamis',
  `kode_pos` int(11) DEFAULT 46264,
  `provinsi` varchar(255) DEFAULT 'Jawa Barat',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_08_131246_create_kartu_keluarga_table', 1),
(6, '2023_07_08_132130_create_anggota_keluarga_table', 1),
(7, '2023_07_11_131437_create_pengajuan_kk_table', 1),
(8, '2023_07_11_131450_create_pengajuan_ktp_table', 1),
(9, '2023_07_11_131514_create_pengajuan_sktm_table', 1),
(10, '2023_07_11_131527_create_pengajuan_akta_table', 1),
(11, '2023_07_11_131537_create_pengajuan_skm_table', 1),
(12, '2023_07_11_131550_create_pengajuan_skl_table', 1),
(13, '2023_07_11_131558_create_pengajuan_skw_table', 1),
(14, '2023_07_11_131615_create_pengajuan_skkb_table', 1),
(15, '2023_07_11_131629_create_pengajuan_skbm_table', 1),
(16, '2023_07_11_131642_create_pengajuan_skjd_table', 1),
(17, '2023_07_16_101352_create_surat_keluar_table', 1),
(18, '2023_07_16_101435_create_penolakan_table', 1),
(19, '2023_07_19_235018_create_pengaduan_table', 1),
(20, '2023_07_26_114731_create_kegiatan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `is_read` varchar(255) DEFAULT 'false',
  `pesan` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_akta`
--

CREATE TABLE `pengajuan_akta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `surat_bidan` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_kk`
--

CREATE TABLE `pengajuan_kk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_ktp`
--

CREATE TABLE `pengajuan_ktp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skbm`
--

CREATE TABLE `pengajuan_skbm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skjd`
--

CREATE TABLE `pengajuan_skjd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `cerai` varchar(255) NOT NULL,
  `nama_pasangan` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skkb`
--

CREATE TABLE `pengajuan_skkb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skl`
--

CREATE TABLE `pengajuan_skl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skm`
--

CREATE TABLE `pengajuan_skm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_pasangan` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_sktm`
--

CREATE TABLE `pengajuan_sktm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `penghasilan` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skw`
--

CREATE TABLE `pengajuan_skw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `nama_wali` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penolakan`
--

CREATE TABLE `penolakan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('admin','viewer') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin Desa', 'admin', 'admin', '$2y$10$aK.eOdrqYMjGLY1uSAcgNe5H4YltuqRuFjutcBq.1q4Nz8KxaVhC6', '2023-09-11 18:12:29', '2023-09-11 18:12:29'),
(2, 'Pengunjung', 'viewer', 'viewer', '$2y$10$Zz87nQLDa1vKChLeWuoTlO0xi1CDTA7NqxzPsSupoPOOjDnPJuJla', '2023-09-11 18:12:29', '2023-09-11 18:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anggota_keluarga_nik_unique` (`nik`),
  ADD KEY `anggota_keluarga_kk_id_foreign` (`kk_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kartu_keluarga_no_kk_unique` (`no_kk`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_akta`
--
ALTER TABLE `pengajuan_akta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_akta_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_akta_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_kk`
--
ALTER TABLE `pengajuan_kk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_kk_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_kk_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_ktp`
--
ALTER TABLE `pengajuan_ktp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_ktp_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_ktp_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skbm`
--
ALTER TABLE `pengajuan_skbm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skbm_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skbm_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skjd`
--
ALTER TABLE `pengajuan_skjd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skjd_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skjd_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skkb`
--
ALTER TABLE `pengajuan_skkb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skkb_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skkb_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skl`
--
ALTER TABLE `pengajuan_skl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skl_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skl_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skm`
--
ALTER TABLE `pengajuan_skm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skm_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skm_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_sktm`
--
ALTER TABLE `pengajuan_sktm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_sktm_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_sktm_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skw`
--
ALTER TABLE `pengajuan_skw`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skw_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skw_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `penolakan`
--
ALTER TABLE `penolakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_akta`
--
ALTER TABLE `pengajuan_akta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_kk`
--
ALTER TABLE `pengajuan_kk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_ktp`
--
ALTER TABLE `pengajuan_ktp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skbm`
--
ALTER TABLE `pengajuan_skbm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skjd`
--
ALTER TABLE `pengajuan_skjd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skkb`
--
ALTER TABLE `pengajuan_skkb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skl`
--
ALTER TABLE `pengajuan_skl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skm`
--
ALTER TABLE `pengajuan_skm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_sktm`
--
ALTER TABLE `pengajuan_sktm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skw`
--
ALTER TABLE `pengajuan_skw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penolakan`
--
ALTER TABLE `penolakan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  ADD CONSTRAINT `anggota_keluarga_kk_id_foreign` FOREIGN KEY (`kk_id`) REFERENCES `kartu_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_akta`
--
ALTER TABLE `pengajuan_akta`
  ADD CONSTRAINT `pengajuan_akta_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_kk`
--
ALTER TABLE `pengajuan_kk`
  ADD CONSTRAINT `pengajuan_kk_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_ktp`
--
ALTER TABLE `pengajuan_ktp`
  ADD CONSTRAINT `pengajuan_ktp_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skbm`
--
ALTER TABLE `pengajuan_skbm`
  ADD CONSTRAINT `pengajuan_skbm_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skjd`
--
ALTER TABLE `pengajuan_skjd`
  ADD CONSTRAINT `pengajuan_skjd_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skkb`
--
ALTER TABLE `pengajuan_skkb`
  ADD CONSTRAINT `pengajuan_skkb_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skl`
--
ALTER TABLE `pengajuan_skl`
  ADD CONSTRAINT `pengajuan_skl_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skm`
--
ALTER TABLE `pengajuan_skm`
  ADD CONSTRAINT `pengajuan_skm_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_sktm`
--
ALTER TABLE `pengajuan_sktm`
  ADD CONSTRAINT `pengajuan_sktm_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skw`
--
ALTER TABLE `pengajuan_skw`
  ADD CONSTRAINT `pengajuan_skw_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
