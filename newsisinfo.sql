-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2021 pada 05.49
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisinfo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_sessions`
--

CREATE TABLE `academic_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `academic_sessions`
--

INSERT INTO `academic_sessions` (`id`, `name`, `start_date`, `end_date`, `is_default`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'TA 2021-2022', '2021-04-07', '2022-12-31', 1, 'Tahun Pelajaran 2021-2022', '{\"transfer_certificate_format\":\"cbse1819\",\"exam_report_analysis\":0,\"exam_report_analysis_student_token\":null,\"exam_report_analysis_staff_token\":null}', '2021-09-18 00:34:59', '2021-09-18 00:34:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `account_transfers`
--

CREATE TABLE `account_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_account_transfer` date DEFAULT NULL,
  `amount` decimal(25,5) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `options`, `created_at`, `updated_at`) VALUES
(1, 'user_preference', 'created', 1, 'App\\UserPreference', NULL, NULL, '{\"attributes\":{\"color_theme\":null,\"sidebar\":null,\"locale\":null,\"direction\":null,\"academic_session_id\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-17 18:58:02', '2021-09-17 18:58:02'),
(2, 'user_preference', 'updated', 1, 'App\\UserPreference', 1, 'App\\User', '{\"attributes\":{\"color_theme\":\"blue\",\"sidebar\":\"mini\",\"locale\":\"en\",\"direction\":\"ltr\"},\"old\":{\"color_theme\":null,\"sidebar\":null,\"locale\":null,\"direction\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:28:30', '2021-09-18 00:28:30'),
(3, 'login', 'login', NULL, NULL, 1, 'App\\User', '{\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:28:30', '2021-09-18 00:28:30'),
(4, 'config', 'updated', 66, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"institute_name\":\"SMASK St. John Paul II Maumere\"},\"old\":{\"institute_name\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:29:59', '2021-09-18 00:29:59'),
(5, 'config', 'updated', 71, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"address_line_1\":\"Jl. Anggrek no.10\"},\"old\":{\"address_line_1\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(6, 'config', 'updated', 72, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"address_line_2\":\"Kel. Kabor Kec. Alok\"},\"old\":{\"address_line_2\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(7, 'config', 'updated', 73, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"city\":\"Maumere\"},\"old\":{\"city\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(8, 'config', 'updated', 74, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"state\":\"NTT\"},\"old\":{\"state\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(9, 'config', 'updated', 75, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"zipcode\":\"86112\"},\"old\":{\"zipcode\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(10, 'config', 'updated', 76, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"country\":\"Indonesia\"},\"old\":{\"country\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(11, 'config', 'updated', 77, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"phone\":\"+6283848553527\"},\"old\":{\"phone\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(12, 'config', 'updated', 78, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"fax\":\"6283848553527\"},\"old\":{\"fax\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(13, 'config', 'updated', 79, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"email\":\"developmtc@gmail.com\"},\"old\":{\"email\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(14, 'config', 'updated', 80, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"website\":\"smaskstjohnpaul2maumere.sch.id\"},\"old\":{\"website\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:30:00', '2021-09-18 00:30:00'),
(15, 'config', 'updated', 3, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"color_theme\":\"megna\"},\"old\":{\"color_theme\":\"blue\"},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:31', '2021-09-18 00:31:31'),
(16, 'config', 'updated', 83, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"https\":\"0\"},\"old\":{\"https\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:32', '2021-09-18 00:31:32'),
(17, 'config', 'updated', 84, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"error_display\":\"0\"},\"old\":{\"error_display\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:32', '2021-09-18 00:31:32'),
(18, 'config', 'updated', 30, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"online_registration\":\"0\"},\"old\":{\"online_registration\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:32', '2021-09-18 00:31:32'),
(19, 'config', 'updated', 32, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"backup\":\"0\"},\"old\":{\"backup\":1},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:32', '2021-09-18 00:31:32'),
(20, 'config', 'updated', 85, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"maintenance_mode\":\"0\"},\"old\":{\"maintenance_mode\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:32', '2021-09-18 00:31:32'),
(21, 'config', 'updated', 87, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"online_registration_header\":\"Selamat Datang\"},\"old\":{\"online_registration_header\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:32', '2021-09-18 00:31:32'),
(22, 'config', 'updated', 88, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"online_registration_success_message\":\"Berhasil\"},\"old\":{\"online_registration_success_message\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:31:33', '2021-09-18 00:31:33'),
(23, 'config', 'updated', 14, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"driver\":\"mail\"},\"old\":{\"driver\":\"log\"},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:33:15', '2021-09-18 00:33:15'),
(24, 'config', 'updated', 16, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"from_name\":\"John Paul II Mof\"},\"old\":{\"from_name\":\"Hello\"},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:33:15', '2021-09-18 00:33:15'),
(25, 'config', 'updated', 15, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"from_address\":\"jpserver829@gmail.com\"},\"old\":{\"from_address\":\"hello@example.com\"},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:33:15', '2021-09-18 00:33:15'),
(26, 'frontend_menu', 'created', 1, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"name\":\"Home\",\"slug\":null,\"type\":null,\"parent_id\":null,\"position\":0,\"frontend_page_id\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(27, 'frontend_menu', 'updated', 1, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"slug\":\"home\",\"type\":\"header\",\"position\":0,\"options\":{\"is_default\":1}},\"old\":{\"slug\":null,\"type\":null,\"position\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(28, 'frontend_page', 'created', 1, 'App\\Models\\Frontend\\Page', 1, 'App\\User', '{\"attributes\":{\"title\":\"Home\",\"body\":null,\"is_draft\":0,\"options\":[]},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(29, 'frontend_menu', 'updated', 1, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"position\":0,\"frontend_page_id\":1},\"old\":{\"position\":null,\"frontend_page_id\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(30, 'frontend_menu', 'created', 2, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"name\":\"Contact\",\"slug\":null,\"type\":null,\"parent_id\":null,\"position\":0,\"frontend_page_id\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(31, 'frontend_menu', 'updated', 2, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"slug\":\"contact\",\"type\":\"header\",\"position\":0,\"options\":{\"is_default\":1}},\"old\":{\"slug\":null,\"type\":null,\"position\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(32, 'frontend_page', 'created', 2, 'App\\Models\\Frontend\\Page', 1, 'App\\User', '{\"attributes\":{\"title\":\"Contact\",\"body\":null,\"is_draft\":0,\"options\":[]},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(33, 'frontend_menu', 'updated', 2, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"position\":0,\"frontend_page_id\":2},\"old\":{\"position\":null,\"frontend_page_id\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(34, 'frontend_menu', 'created', 3, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"name\":\"Events\",\"slug\":null,\"type\":null,\"parent_id\":null,\"position\":0,\"frontend_page_id\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(35, 'frontend_menu', 'updated', 3, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"slug\":\"events\",\"type\":\"header\",\"position\":0,\"options\":{\"is_default\":1}},\"old\":{\"slug\":null,\"type\":null,\"position\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(36, 'frontend_page', 'created', 3, 'App\\Models\\Frontend\\Page', 1, 'App\\User', '{\"attributes\":{\"title\":\"Events\",\"body\":null,\"is_draft\":0,\"options\":[]},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(37, 'frontend_menu', 'updated', 3, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"position\":0,\"frontend_page_id\":3},\"old\":{\"position\":null,\"frontend_page_id\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(38, 'frontend_menu', 'created', 4, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"name\":\"Articles\",\"slug\":null,\"type\":null,\"parent_id\":null,\"position\":0,\"frontend_page_id\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(39, 'frontend_menu', 'updated', 4, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"slug\":\"articles\",\"type\":\"header\",\"position\":0,\"options\":{\"is_default\":1}},\"old\":{\"slug\":null,\"type\":null,\"position\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(40, 'frontend_page', 'created', 4, 'App\\Models\\Frontend\\Page', 1, 'App\\User', '{\"attributes\":{\"title\":\"Articles\",\"body\":null,\"is_draft\":0,\"options\":[]},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(41, 'frontend_menu', 'updated', 4, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"position\":0,\"frontend_page_id\":4},\"old\":{\"position\":null,\"frontend_page_id\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(42, 'frontend_menu', 'created', 5, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"name\":\"Teachers\",\"slug\":null,\"type\":null,\"parent_id\":null,\"position\":0,\"frontend_page_id\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(43, 'frontend_menu', 'updated', 5, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"slug\":\"teachers\",\"type\":\"header\",\"position\":0,\"options\":{\"is_default\":1}},\"old\":{\"slug\":null,\"type\":null,\"position\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(44, 'frontend_page', 'created', 5, 'App\\Models\\Frontend\\Page', 1, 'App\\User', '{\"attributes\":{\"title\":\"Teachers\",\"body\":null,\"is_draft\":0,\"options\":[]},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(45, 'frontend_menu', 'updated', 5, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"position\":0,\"frontend_page_id\":5},\"old\":{\"position\":null,\"frontend_page_id\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(46, 'frontend_menu', 'created', 6, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"name\":\"Calendar\",\"slug\":null,\"type\":null,\"parent_id\":null,\"position\":0,\"frontend_page_id\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(47, 'frontend_menu', 'updated', 6, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"slug\":\"calendar\",\"type\":\"header\",\"position\":0,\"options\":{\"is_default\":1}},\"old\":{\"slug\":null,\"type\":null,\"position\":null,\"options\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(48, 'frontend_page', 'created', 6, 'App\\Models\\Frontend\\Page', 1, 'App\\User', '{\"attributes\":{\"title\":\"Calendar\",\"body\":null,\"is_draft\":0,\"options\":[]},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(49, 'frontend_menu', 'updated', 6, 'App\\Models\\Frontend\\Menu', 1, 'App\\User', '{\"attributes\":{\"position\":0,\"frontend_page_id\":6},\"old\":{\"position\":null,\"frontend_page_id\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(50, 'logo', 'uploaded', 17, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"logo\":\"storage\\/logo\\/hzB81OvDCd0gJm9Deao8a4BJG8UmTaDPIeptqdlo.png\"},\"old\":{\"logo\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:48:22', '2021-09-18 00:48:22'),
(51, 'icon', 'uploaded', 18, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"icon\":\"storage\\/icon\\/sYVP9gnNKZpKtK0yEJvZq3MoG5R6bfjDNZh0e9gq.png\"},\"old\":{\"icon\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:48:34', '2021-09-18 00:48:34'),
(52, 'config', 'updated', 79, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"email\":\"johnpaul2maumere@gmail.com\"},\"old\":{\"email\":\"developmtc@gmail.com\"},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:49:02', '2021-09-18 00:49:02'),
(53, 'logout', 'logout', NULL, NULL, 1, 'App\\User', '{\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:51:50', '2021-09-18 00:51:50'),
(54, 'user_preference', 'updated', 1, 'App\\UserPreference', 1, 'App\\User', '{\"attributes\":{\"academic_session_id\":1},\"old\":{\"academic_session_id\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:52:56', '2021-09-18 00:52:56'),
(55, 'login', 'login', NULL, NULL, 1, 'App\\User', '{\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:52:56', '2021-09-18 00:52:56'),
(56, 'config', 'updated', 67, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"institute_running_body\":\"SANPUKAT\"},\"old\":{\"institute_running_body\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:59:14', '2021-09-18 00:59:14'),
(57, 'config', 'updated', 68, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"institute_recognition_number\":\"50302314\"},\"old\":{\"institute_recognition_number\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:59:14', '2021-09-18 00:59:14'),
(58, 'config', 'updated', 69, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"institute_recognition_body\":\"YAYASAN PERSEKOLAHAN UMAT KATOLIK\"},\"old\":{\"institute_recognition_body\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 00:59:14', '2021-09-18 00:59:14'),
(59, 'logout', 'logout', NULL, NULL, 1, 'App\\User', '{\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 01:00:44', '2021-09-18 01:00:44'),
(60, 'login', 'login', NULL, NULL, 1, 'App\\User', '{\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 01:14:29', '2021-09-18 01:14:29'),
(61, 'config', 'updated', 102, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"show_teacher_contact_number\":\"1\"},\"old\":{\"show_teacher_contact_number\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 01:17:56', '2021-09-18 01:17:56'),
(62, 'config', 'updated', 103, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"show_teacher_email\":\"1\"},\"old\":{\"show_teacher_email\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 01:17:56', '2021-09-18 01:17:56'),
(63, 'config', 'updated', 104, 'App\\Models\\Configuration\\Configuration', 1, 'App\\User', '{\"attributes\":{\"show_teacher_date_of_joining\":\"1\"},\"old\":{\"show_teacher_date_of_joining\":null},\"ip\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.63 Safari\\/537.36\"}', NULL, '2021-09-18 01:17:56', '2021-09-18 01:17:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admissions`
--

CREATE TABLE `admissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `registration_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `admission_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_article` date DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_types`
--

CREATE TABLE `article_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `article_types`
--

INSERT INTO `article_types` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Circular', '', '[]', NULL, NULL),
(2, 'News', '', '[]', NULL, NULL),
(3, 'Blog', '', '[]', NULL, NULL),
(4, 'Media', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_assignment` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_observation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `next_service_date` date DEFAULT NULL,
  `reference_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tnc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subtotal_discount` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `subtotal_tax` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `subtotal_handling` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `subtotal_total` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bill_items`
--

CREATE TABLE `bill_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `custom_item_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `unit_price` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `discount` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `tax` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `amount` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'O-', '', '[]', NULL, NULL),
(2, 'O+', '', '[]', NULL, NULL),
(3, 'A-', '', '[]', NULL, NULL),
(4, 'A+', '', '[]', NULL, NULL),
(5, 'B-', '', '[]', NULL, NULL),
(6, 'B+', '', '[]', NULL, NULL),
(7, 'AB-', '', '[]', NULL, NULL),
(8, 'AB+', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `book_publisher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `book_topic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `book_language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_authors`
--

CREATE TABLE `book_authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_authors`
--

INSERT INTO `book_authors` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'William Shakespeare', '', '[]', NULL, NULL),
(2, 'J.D. Salinger', '', '[]', NULL, NULL),
(3, 'William Golding', '', '[]', NULL, NULL),
(4, 'John Steinbeck', '', '[]', NULL, NULL),
(5, 'Paulo Coelho', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_conditions`
--

CREATE TABLE `book_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_conditions`
--

INSERT INTO `book_conditions` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'New', '', '[]', NULL, NULL),
(2, 'Good', '', '[]', NULL, NULL),
(3, 'Fair', '', '[]', NULL, NULL),
(4, 'Old', '', '[]', NULL, NULL),
(5, 'Poor', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_languages`
--

CREATE TABLE `book_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_languages`
--

INSERT INTO `book_languages` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'English', '', '[]', NULL, NULL),
(2, 'Hindi', '', '[]', NULL, NULL),
(3, 'Urdu', '', '[]', NULL, NULL),
(4, 'French', '', '[]', NULL, NULL),
(5, 'German', '', '[]', NULL, NULL),
(6, 'Spanish', '', '[]', NULL, NULL),
(7, 'Sanskrit', '', '[]', NULL, NULL),
(8, 'Tamil', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_logs`
--

CREATE TABLE `book_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `issue_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `late_fee_applicable` tinyint(1) NOT NULL DEFAULT 0,
  `late_fee_frequency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_fee_charge` int(11) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_log_details`
--

CREATE TABLE `book_log_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_log_id` bigint(20) UNSIGNED DEFAULT NULL,
  `book_post_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_return` date DEFAULT NULL,
  `return_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_non_returnable` tinyint(1) NOT NULL DEFAULT 0,
  `non_returnable_charge` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_returnable_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_returnable_at` datetime DEFAULT NULL,
  `late_fee` int(11) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_posts`
--

CREATE TABLE `book_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_addition` date DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_post_details`
--

CREATE TABLE `book_post_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_not_available` tinyint(1) NOT NULL DEFAULT 0,
  `book_condition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_publishers`
--

CREATE TABLE `book_publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_publishers`
--

INSERT INTO `book_publishers` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Penguin Random House', '', '[]', NULL, NULL),
(2, 'Hachette Livre', '', '[]', NULL, NULL),
(3, 'HarperCollins', '', '[]', NULL, NULL),
(4, 'Pan Macmillan', '', '[]', NULL, NULL),
(5, 'Oxford University Press', '', '[]', NULL, NULL),
(6, 'Pearson Education', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_topics`
--

CREATE TABLE `book_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_topics`
--

INSERT INTO `book_topics` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Academic', '', '[]', NULL, NULL),
(2, 'Philosophy', '', '[]', NULL, NULL),
(3, 'Communication', '', '[]', NULL, NULL),
(4, 'History', '', '[]', NULL, NULL),
(5, 'Life Science', '', '[]', NULL, NULL),
(6, 'Science & Technology', '', '[]', NULL, NULL),
(7, 'Fiction', '', '[]', NULL, NULL),
(8, 'Mythological & Religious', '', '[]', NULL, NULL),
(9, 'Encyclopedia & Dictionary', '', '[]', NULL, NULL),
(10, 'Literature', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buildings`
--

CREATE TABLE `buildings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `calling_purposes`
--

CREATE TABLE `calling_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `calling_purposes`
--

INSERT INTO `calling_purposes` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Study', '', '[]', NULL, NULL),
(2, 'Fee Reminder', '', '[]', NULL, NULL),
(3, 'Trasport', '', '[]', NULL, NULL),
(4, 'Circular', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `call_logs`
--

CREATE TABLE `call_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calling_purpose_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incoming_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outgoing_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `castes`
--

CREATE TABLE `castes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_certificate` date DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `certificate_templates`
--

CREATE TABLE `certificate_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_teachers`
--

CREATE TABLE `class_teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_effective` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_timings`
--

CREATE TABLE `class_timings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_timing_sessions`
--

CREATE TABLE `class_timing_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_timing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `is_a_break` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `communications`
--

CREATE TABLE `communications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_numbers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_emails` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_count` int(11) DEFAULT NULL,
  `audience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `included_numbers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `included_emails` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excluded_numbers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excluded_emails` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `communication_batch`
--

CREATE TABLE `communication_batch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `communication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `communication_course`
--

CREATE TABLE `communication_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `communication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `communication_department`
--

CREATE TABLE `communication_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `communication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `communication_employee`
--

CREATE TABLE `communication_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `communication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `communication_employee_category`
--

CREATE TABLE `communication_employee_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `communication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `communication_student_record`
--

CREATE TABLE `communication_student_record` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `communication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaint_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `complainant_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complainant_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complainant_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_complaint` date DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_resolution` date DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `complaint_types`
--

CREATE TABLE `complaint_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `complaint_types`
--

INSERT INTO `complaint_types` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Study', '', '[]', NULL, NULL),
(2, 'Fee', '', '[]', NULL, NULL),
(3, 'Trasport', '', '[]', NULL, NULL),
(4, 'Uniform', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE `config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric_value` bigint(20) DEFAULT NULL,
  `text_value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id`, `name`, `numeric_value`, `text_value`, `is_private`) VALUES
(1, 'menu', NULL, 'institute_document,reception,enquiry,visitor_log,call_log,postal_record,complaint,gate_pass,visitor_message,academic,academic_session,course,batch,class_teacher,subject,subject_teacher,class_timing,timetable,certificate,student,student_import,registration,student_list,roll_number,student_id_card,student_image_upload,student_attendance,promotion,termination,student_parent,student_login,employee,employee_import,employee_list,employee_id_card,employee_attendance,employee_leave,employee_payroll,exam,exam_schedule,exam_record_mark,exam_report_card,exam_topper_report,online_exam,finance,fee_group,fee_head,transport_fee,fee_concession,fee_allocation,account,income,expense,account_transfer,finance_report,transport,transport_route,vehicle,vehicle_incharge,vehicle_document,vehicle_fuel,vehicle_log,vehicle_service_record,transport_report,calendar,holiday,event,celebration,resource,assignment,notes,lesson_plan,syllabus,library,book,issue_book,return_book,inventory,stock_category,stock_item,vendor,stock_purchase,stock_transfer,post,post_feed,article,communication,meeting,my_meeting,communication_history,my_notification,send_sms,send_email,send_push_notification,frontend,frontend_page,frontend_menu,frontend_block,utility,todo,backup,ip_filter', 0),
(2, 'setup_wizard', 0, NULL, 0),
(3, 'color_theme', NULL, 'megna', 0),
(4, 'direction', NULL, 'ltr', 0),
(5, 'sidebar', NULL, 'mini', 0),
(6, 'locale', NULL, 'en', 0),
(7, 'timezone', NULL, 'Asia/Kolkata', 0),
(8, 'first_day_of_week', NULL, 'monday', 0),
(9, 'notification_position', NULL, 'toast-bottom-right', 0),
(10, 'date_format', NULL, 'DD-MM-YYYY', 0),
(11, 'time_format', NULL, 'H:mm', 0),
(12, 'page_length', 10, NULL, 0),
(13, 'currency', NULL, 'USD', 0),
(14, 'driver', NULL, 'mail', 0),
(15, 'from_address', NULL, 'jpserver829@gmail.com', 0),
(16, 'from_name', NULL, 'John Paul II Mof', 0),
(17, 'logo', NULL, 'storage/logo/hzB81OvDCd0gJm9Deao8a4BJG8UmTaDPIeptqdlo.png', 0),
(18, 'icon', NULL, 'storage/icon/sYVP9gnNKZpKtK0yEJvZq3MoG5R6bfjDNZh0e9gq.png', 0),
(19, 'token_lifetime', 1440, NULL, 0),
(20, 'mobile_token_lifetime', 43200, NULL, 0),
(21, 'reset_password_token_lifetime', 30, NULL, 0),
(22, 'activity_log', 1, NULL, 0),
(23, 'email_log', 1, NULL, 0),
(24, 'reset_password', 1, NULL, 0),
(25, 'login_with_otp', 0, NULL, 0),
(26, 'footer_credit', NULL, 'InstiKit by ScriptMint', 0),
(27, 'multilingual', 1, NULL, 0),
(28, 'ip_filter', 1, NULL, 0),
(29, 'email_template', 1, NULL, 0),
(30, 'online_registration', 0, NULL, 0),
(31, 'message', 1, NULL, 0),
(32, 'backup', 0, NULL, 0),
(33, 'todo', 1, NULL, 0),
(34, 'frontend_website', 1, NULL, 0),
(35, 'designation_subordinate_level', 1, NULL, 0),
(36, 'default_attendance_type', NULL, 'daily', 0),
(37, 'student_late_attendance_time', NULL, 'daily', 0),
(38, 'enable_registration', 0, NULL, 0),
(39, 'enable_registration_fee', 0, NULL, 0),
(40, 'default_max_strength_per_batch', 30, NULL, 0),
(41, 'default_roll_number_prefix', NULL, NULL, 0),
(42, 'system_admin_designation', NULL, 'System Admin', 0),
(43, 'system_admin_employee_category', NULL, 'System Admin', 0),
(44, 'employee_code_digit', 3, NULL, 0),
(45, 'transfer_certificate_digit', 3, NULL, 0),
(46, 'vehicle_fuel_quantity_decimal_place', 2, NULL, 0),
(47, 'library_max_book_issue_to_student', 4, NULL, 0),
(48, 'library_max_book_issue_to_employee', 6, NULL, 0),
(49, 'library_return_due_day_for_student', 15, NULL, 0),
(50, 'library_return_due_day_for_employee', 30, NULL, 0),
(51, 'library_late_fee_frequency_student', NULL, 'daily', 0),
(52, 'library_late_fee_frequency_employee', NULL, 'daily', 0),
(53, 'library_late_fee_applicable_student', 0, NULL, 0),
(54, 'library_late_fee_applicable_employee', 0, NULL, 0),
(55, 'library_late_fee_charge_student', 5, NULL, 0),
(56, 'library_late_fee_charge_employee', 5, NULL, 0),
(57, 'allow_to_modify_student_attendance', 0, NULL, 0),
(58, 'days_allowed_to_modify_student_attendance', 0, NULL, 0),
(59, 'allow_to_mark_student_advance_attendance', 0, NULL, 0),
(60, 'days_allowed_to_mark_student_advance_attendance', 0, NULL, 0),
(61, 'max_sms_per_chunk', 100, NULL, 0),
(62, 'max_push_notification_per_chunk', 500, NULL, 0),
(63, 'admission_number_digit', 3, NULL, 0),
(64, 'leave_holiday_calculation_mode', NULL, 'ignore', 0),
(65, 'per_day_salary_calculation_basis', NULL, 'calendar_period', 0),
(66, 'institute_name', NULL, 'SMASK St. John Paul II Maumere', 0),
(67, 'institute_running_body', NULL, 'SANPUKAT', 0),
(68, 'institute_recognition_number', 50302314, NULL, 0),
(69, 'institute_recognition_body', NULL, 'YAYASAN PERSEKOLAHAN UMAT KATOLIK', 0),
(70, 'institute_foundation_date', NULL, NULL, 0),
(71, 'address_line_1', NULL, 'Jl. Anggrek no.10', 0),
(72, 'address_line_2', NULL, 'Kel. Kabor Kec. Alok', 0),
(73, 'city', NULL, 'Maumere', 0),
(74, 'state', NULL, 'NTT', 0),
(75, 'zipcode', 86112, NULL, 0),
(76, 'country', NULL, 'Indonesia', 0),
(77, 'phone', 6283848553527, NULL, 0),
(78, 'fax', 6283848553527, NULL, 0),
(79, 'email', NULL, 'johnpaul2maumere@gmail.com', 0),
(80, 'website', NULL, 'smaskstjohnpaul2maumere.sch.id', 0),
(81, 'biometric_auth_token', NULL, NULL, 0),
(82, 'pusher_auth_token', NULL, NULL, 0),
(83, 'https', 0, NULL, 0),
(84, 'error_display', 0, NULL, 0),
(85, 'maintenance_mode', 0, NULL, 0),
(86, 'maintenance_mode_message', NULL, NULL, 0),
(87, 'online_registration_header', NULL, 'Selamat Datang', 0),
(88, 'online_registration_success_message', NULL, 'Berhasil', 0),
(89, 'smtp_host', NULL, NULL, 0),
(90, 'smtp_port', NULL, NULL, 0),
(91, 'smtp_username', NULL, NULL, 1),
(92, 'smtp_password', NULL, NULL, 1),
(93, 'smtp_encryption', NULL, NULL, 0),
(94, 'mailgun_host', NULL, NULL, 0),
(95, 'mailgun_port', NULL, NULL, 0),
(96, 'mailgun_username', NULL, NULL, 1),
(97, 'mailgun_password', NULL, NULL, 1),
(98, 'mailgun_encryption', NULL, NULL, 0),
(99, 'mailgun_domain', NULL, NULL, 0),
(100, 'mailgun_secret', NULL, NULL, 1),
(101, 'mandrill_secret', NULL, NULL, 1),
(102, 'show_teacher_contact_number', 1, NULL, 0),
(103, 'show_teacher_email', 1, NULL, 0),
(104, 'show_teacher_date_of_joining', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_groups`
--

CREATE TABLE `course_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Administration Department', '', '[]', NULL, NULL),
(2, 'Academic Department', '', '[]', NULL, NULL),
(3, 'HR Department', '', '[]', NULL, NULL),
(4, 'IT & Networking Department', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_teaching_employee` tinyint(1) NOT NULL DEFAULT 0,
  `top_designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `designations`
--

INSERT INTO `designations` (`id`, `employee_category_id`, `name`, `is_teaching_employee`, `top_designation_id`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, NULL, NULL, NULL, '2021-09-17 18:58:01', '2021-09-17 18:58:01'),
(2, 2, 'Director', 0, NULL, NULL, '[]', '2021-09-17 18:58:02', '2021-09-17 18:58:02'),
(3, 2, 'Manager', 0, 2, NULL, '[]', '2021-09-17 18:58:02', '2021-09-17 18:58:05'),
(4, 2, 'Principal', 1, 3, NULL, '[]', '2021-09-17 18:58:03', '2021-09-17 18:58:05'),
(5, 3, 'School Coordinator', 1, 4, NULL, '[]', '2021-09-17 18:58:03', '2021-09-17 18:58:05'),
(6, 3, 'Post Graduate Teacher', 1, 4, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(7, 3, 'Trained Graduate Teacher', 1, 4, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(8, 3, 'Primary Teacher', 1, 4, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(9, 3, 'Nursery Trained Teacher', 1, 4, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(10, 4, 'Account Manager', 0, 3, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(11, 4, 'Accountant', 0, 10, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(12, 4, 'Cashier', 0, 10, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(13, 5, 'Library Manager', 0, 3, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(14, 5, 'Librarian', 0, 13, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(15, 6, 'Hostel Manager', 0, 3, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(16, 6, 'Warden', 0, 15, NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:05'),
(17, 7, 'Transport Manager', 0, 3, NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05'),
(18, 7, 'Driver', 0, 17, NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05'),
(19, 7, 'Conductor', 0, 17, NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05'),
(20, 8, 'Supervisor', 0, 3, NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05'),
(21, 8, 'Security Guard', 0, 20, NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05'),
(22, 8, 'Cleaning Staff', 0, 20, NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05'),
(23, 8, 'Sweeper', 0, 20, NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `is_default`, `name`, `slug`, `category`, `subject`, `body`, `options`, `created_at`, `updated_at`) VALUES
(1, 1, 'Welcome Email User', 'welcome-email-user', 'user', 'Welcome Email User | [COMPANY_NAME]', '<div style=\"margin:0px; background: #f8f8f8; \">\n  <div width=\"100%\" style=\"background: #f8f8f8; padding: 0px 0px; font-family:arial; line-height:28px; height:100%;  width: 100%; color: #514d6a;\">\n    <div style=\"max-width: 700px; padding:50px 0;  margin: 0px auto; font-size: 14px\">\n      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%; margin-bottom: 20px\">\n        <tbody>\n          <tr>\n            <td style=\"vertical-align: top; padding-bottom:30px;\" align=\"center\">[COMPANY_LOGO]</td>\n          </tr>\n          <tr>\n            <td><h5 style=\"text-align:center;\">Account Created</h5></td>\n          </tr>\n        </tbody>\n      </table>\n      <div style=\"padding: 40px; background: #fff;\">\n        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%;\">\n          <tbody>\n            <tr>\n              <td style=\"border-bottom:1px solid #f6f6f6;\"><h1 style=\"font-size:14px; font-family:arial; margin:0px; font-weight:bold;\">Dear [NAME],</h1>\n                <p style=\"margin-top:0px; color:#bbbbbb;\">Welcome to our company. Your account has been created. Please use below credentials to log into your account:</p><table class=\"table table-bordered\"><tbody><tr><td>Email</td><td>[EMAIL]</td></tr><tr><td>Password</td><td>[PASSWORD]</td></tr></tbody></table><p style=\"margin-top:0px; color:#bbbbbb;\"><br></p></td>\n            </tr>\n            <tr>\n              <td style=\"padding:10px 0 30px 0;\"><p>Have a Good Day!</p>\n                <b>- Best Wishes ([COMPANY_NAME])</b> </td>\n            </tr>\n          </tbody>\n        </table>\n      </div>\n      <div style=\"text-align: center; font-size: 12px; color: #b2b2b5; margin-top: 20px\">\n        <p> [COMPANY_NAME] <br>\n        [COMPANY_EMAIL] | [COMPANY_PHONE] | [COMPANY_WEBSITE]</p>\n      </div>\n    </div>\n  </div>\n</div>\n', NULL, NULL, NULL),
(2, 1, 'Anniversary Email User', 'anniversary-email-user', 'user', 'Wish You a Very Happy Anniversary [NAME] | [COMPANY_NAME]', '<div style=\"margin:0px; background: #f8f8f8; \">\n  <div width=\"100%\" style=\"background: #f8f8f8; padding: 0px 0px; font-family:arial; line-height:28px; height:100%;  width: 100%; color: #514d6a;\">\n    <div style=\"max-width: 700px; padding:50px 0;  margin: 0px auto; font-size: 14px\">\n      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%; margin-bottom: 20px\">\n        <tbody>\n          <tr>\n            <td style=\"vertical-align: top; padding-bottom:30px;\" align=\"center\">[COMPANY_LOGO]</td>\n          </tr>\n          <tr>\n            <td><h5 style=\"text-align:center;\">Happy Anniversary</h5></td>\n          </tr>\n        </tbody>\n      </table>\n      <div style=\"padding: 40px; background: #fff;\">\n        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%;\">\n          <tbody>\n            <tr>\n              <td style=\"border-bottom:1px solid #f6f6f6;\"><h1 style=\"font-size:14px; font-family:arial; margin:0px; font-weight:bold;\">Dear [NAME],</h1>\n                <p style=\"margin-top:0px; color:#bbbbbb;\">We wish you a Very Happy Anniversary.</p></td>\n            </tr>\n            <tr>\n              <td style=\"padding:10px 0 30px 0;\"><p>Have a Good Day!</p>\n                <b>- Best Wishes ([COMPANY_NAME])</b> </td>\n            </tr>\n          </tbody>\n        </table>\n      </div>\n      <div style=\"text-align: center; font-size: 12px; color: #b2b2b5; margin-top: 20px\">\n        <p> [COMPANY_NAME] <br>\n        [COMPANY_EMAIL] | [COMPANY_PHONE] | [COMPANY_WEBSITE]</p>\n      </div>\n    </div>\n  </div>\n</div>\n', NULL, NULL, NULL),
(3, 1, 'Birthday Email User', 'birthday-email-user', 'user', 'Happy Birthday [NAME] | [COMPANY_NAME]', '<div style=\"margin:0px; background: #f8f8f8; \">\n  <div width=\"100%\" style=\"background: #f8f8f8; padding: 0px 0px; font-family:arial; line-height:28px; height:100%;  width: 100%; color: #514d6a;\">\n    <div style=\"max-width: 700px; padding:50px 0;  margin: 0px auto; font-size: 14px\">\n      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%; margin-bottom: 20px\">\n        <tbody>\n          <tr>\n            <td style=\"vertical-align: top; padding-bottom:30px;\" align=\"center\">[COMPANY_LOGO]</td>\n          </tr>\n          <tr>\n            <td><h5 style=\"text-align:center;\">Happy Birthday</h5></td>\n          </tr>\n        </tbody>\n      </table>\n      <div style=\"padding: 40px; background: #fff;\">\n        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%;\">\n          <tbody>\n            <tr>\n              <td style=\"border-bottom:1px solid #f6f6f6;\"><h1 style=\"font-size:14px; font-family:arial; margin:0px; font-weight:bold;\">Dear [NAME],</h1>\n                <p style=\"margin-top:0px; color:#bbbbbb;\">We wish you a Very Happy Birthday.</p></td>\n            </tr>\n            <tr>\n              <td style=\"padding:10px 0 30px 0;\"><p>Have a Good Day!</p>\n                <b>- Best Wishes ([COMPANY_NAME])</b> </td>\n            </tr>\n          </tbody>\n        </table>\n      </div>\n      <div style=\"text-align: center; font-size: 12px; color: #b2b2b5; margin-top: 20px\">\n        <p> [COMPANY_NAME] <br>\n        [COMPANY_EMAIL] | [COMPANY_PHONE] | [COMPANY_WEBSITE]</p>\n      </div>\n    </div>\n  </div>\n</div>\n', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_contact_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `caste_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_identification_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `same_as_present_address` tinyint(1) NOT NULL DEFAULT 0,
  `permanent_address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `uuid`, `prefix`, `user_id`, `code`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_of_anniversary`, `gender`, `marital_status`, `contact_number`, `alternate_contact_number`, `email`, `alternate_email`, `nationality`, `blood_group_id`, `religion_id`, `category_id`, `caste_id`, `photo`, `mother_tongue`, `unique_identification_number`, `father_name`, `mother_name`, `spouse_name`, `emergency_contact_name`, `emergency_contact_number`, `present_address_line_1`, `present_address_line_2`, `present_city`, `present_state`, `present_zipcode`, `present_country`, `same_as_present_address`, `permanent_address_line_1`, `permanent_address_line_2`, `permanent_city`, `permanent_state`, `permanent_zipcode`, `permanent_country`, `options`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 0, 'Develop', NULL, 'Mtc', NULL, NULL, NULL, NULL, '081353233825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-17 18:58:01', '2021-09-17 18:58:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_accounts`
--

CREATE TABLE `employee_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_attendance` date DEFAULT NULL,
  `employee_attendance_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_attendance_details`
--

CREATE TABLE `employee_attendance_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_attendance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_attendance_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` decimal(25,5) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_attendance_types`
--

CREATE TABLE `employee_attendance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_categories`
--

CREATE TABLE `employee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employee_categories`
--

INSERT INTO `employee_categories` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '2021-09-17 18:58:01', '2021-09-17 18:58:01'),
(2, 'Administrative Staff', NULL, '[]', '2021-09-17 18:58:02', '2021-09-17 18:58:02'),
(3, 'Teaching Staff', NULL, '[]', '2021-09-17 18:58:03', '2021-09-17 18:58:03'),
(4, 'Accounting Staff', NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:04'),
(5, 'Library Staff', NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:04'),
(6, 'Hostel Staff', NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:04'),
(7, 'Transport Staff', NULL, '[]', '2021-09-17 18:58:04', '2021-09-17 18:58:04'),
(8, 'Non Teaching Staff', NULL, '[]', '2021-09-17 18:58:05', '2021-09-17 18:58:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_designations`
--

CREATE TABLE `employee_designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_term_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_effective` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_document_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_document_types`
--

CREATE TABLE `employee_document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employee_document_types`
--

INSERT INTO `employee_document_types` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Birth Certificate', '', '[]', NULL, NULL),
(2, 'Salary Certificate', '', '[]', NULL, NULL),
(3, 'Marksheet', '', '[]', NULL, NULL),
(4, 'Experience Certificate', '', '[]', NULL, NULL),
(5, 'Bank Documents', '', '[]', NULL, NULL),
(6, 'Passport', '', '[]', NULL, NULL),
(7, 'Driving License', '', '[]', NULL, NULL),
(8, 'Miscellaneous', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_groups`
--

CREATE TABLE `employee_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employee_groups`
--

INSERT INTO `employee_groups` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Regular Employee', '', '[]', NULL, NULL),
(2, 'Adhoc Employee', '', '[]', NULL, NULL),
(3, 'Probation Employee', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_group_collection`
--

CREATE TABLE `employee_group_collection` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_group_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_leave_allocations`
--

CREATE TABLE `employee_leave_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_leave_allocation_details`
--

CREATE TABLE `employee_leave_allocation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_leave_allocation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_leave_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `allotted` int(11) NOT NULL DEFAULT 0,
  `used` int(11) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_leave_requests`
--

CREATE TABLE `employee_leave_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_leave_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requester_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_leave_request_details`
--

CREATE TABLE `employee_leave_request_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_leave_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_action` date DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_leave_types`
--

CREATE TABLE `employee_leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_qualifications`
--

CREATE TABLE `employee_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `standard` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_effective` date DEFAULT NULL,
  `net_salary` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_salary_details`
--

CREATE TABLE `employee_salary_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_salary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_template_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_terms`
--

CREATE TABLE `employee_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `joining_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaving_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_contact_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_enquiry` date DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enquiry_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enquiry_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `enquiry_details`
--

CREATE TABLE `enquiry_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enquiry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `institute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_admitted` tinyint(1) NOT NULL DEFAULT 0,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `enquiry_follow_ups`
--

CREATE TABLE `enquiry_follow_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enquiry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_follow_up` date DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_next_follow_up` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `enquiry_sources`
--

CREATE TABLE `enquiry_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `enquiry_sources`
--

INSERT INTO `enquiry_sources` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Parents', '', '[]', NULL, NULL),
(2, 'Social Media', '', '[]', NULL, NULL),
(3, 'Local Advertisement', '', '[]', NULL, NULL),
(4, 'Others', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `enquiry_types`
--

INSERT INTO `enquiry_types` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Self Enquiry', '', '[]', NULL, NULL),
(2, 'Force Enquiry', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_batch`
--

CREATE TABLE `event_batch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_course`
--

CREATE TABLE `event_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_department`
--

CREATE TABLE `event_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_employee_category`
--

CREATE TABLE `event_employee_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_types`
--

CREATE TABLE `event_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'In House Event', '', '[]', NULL, NULL),
(2, 'Inter School Events', '', '[]', NULL, NULL),
(3, 'State Level Events', '', '[]', NULL, NULL),
(4, 'National Level Events', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_term_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_assessments`
--

CREATE TABLE `exam_assessments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_assessment_details`
--

CREATE TABLE `exam_assessment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_assessment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `max_mark` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `pass_percentage` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_grades`
--

CREATE TABLE `exam_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_grade_details`
--

CREATE TABLE `exam_grade_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `min_percentage` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `max_percentage` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_observations`
--

CREATE TABLE `exam_observations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_observation_details`
--

CREATE TABLE `exam_observation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_observation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `max_mark` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_records`
--

CREATE TABLE `exam_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_schedule_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start` time DEFAULT NULL,
  `time` time DEFAULT NULL,
  `marks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_assessment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `observation_marks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_terms`
--

CREATE TABLE `exam_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_expense` date DEFAULT NULL,
  `amount` decimal(25,5) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_allocations`
--

CREATE TABLE `fee_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_allocation_groups`
--

CREATE TABLE `fee_allocation_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_allocation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_concessions`
--

CREATE TABLE `fee_concessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_concession_details`
--

CREATE TABLE `fee_concession_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_concession_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_heads`
--

CREATE TABLE `fee_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_installments`
--

CREATE TABLE `fee_installments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_allocation_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transport_fee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `late_fee_applicable` tinyint(1) NOT NULL DEFAULT 0,
  `late_fee_frequency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_fee` int(11) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_installment_details`
--

CREATE TABLE `fee_installment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_installment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_optional` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_blocks`
--

CREATE TABLE `frontend_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontend_menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_draft` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_menus`
--

CREATE TABLE `frontend_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `frontend_page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `frontend_menus`
--

INSERT INTO `frontend_menus` (`id`, `name`, `slug`, `type`, `position`, `parent_id`, `frontend_page_id`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', 'header', 0, NULL, 1, '{\"is_default\":1}', '2021-09-18 00:36:10', '2021-09-18 00:36:11'),
(2, 'Contact', 'contact', 'header', 0, NULL, 2, '{\"is_default\":1}', '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(3, 'Events', 'events', 'header', 0, NULL, 3, '{\"is_default\":1}', '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(4, 'Articles', 'articles', 'header', 0, NULL, 4, '{\"is_default\":1}', '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(5, 'Teachers', 'teachers', 'header', 0, NULL, 5, '{\"is_default\":1}', '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(6, 'Calendar', 'calendar', 'header', 0, NULL, 6, '{\"is_default\":1}', '2021-09-18 00:36:12', '2021-09-18 00:36:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_pages`
--

CREATE TABLE `frontend_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_draft` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `frontend_pages`
--

INSERT INTO `frontend_pages` (`id`, `uuid`, `title`, `body`, `is_draft`, `upload_token`, `options`, `created_at`, `updated_at`) VALUES
(1, 'db2ca6ae-001b-4e6d-8faa-e8910b43ebb9', 'Home', NULL, 0, 'bc426be5-4854-4285-b898-24bad86bcf3f', '[]', '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(2, '4506be3c-f3cc-41ed-87f0-9c6e13c9cbe9', 'Contact', NULL, 0, 'b038ccbc-8ed5-4bd5-8c41-a177a6d6404f', '[]', '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(3, '1c1d0cef-2bf9-473d-9814-f9085c6e48f8', 'Events', NULL, 0, '2048db21-3294-4998-b0c0-71b30144da8b', '[]', '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(4, 'cb6e3fbd-bb26-4fdd-8dba-36fd71e54998', 'Articles', NULL, 0, '86461fd4-c161-4fd4-890a-c8653539223b', '[]', '2021-09-18 00:36:11', '2021-09-18 00:36:11'),
(5, '9a06957c-2cec-4d4f-9ccd-1e3f55085051', 'Teachers', NULL, 0, '9eda7a5e-4682-4b18-9864-87ea9b27b130', '[]', '2021-09-18 00:36:12', '2021-09-18 00:36:12'),
(6, '2cb99247-5676-49f3-b5fd-f7349fd6b50b', 'Calendar', NULL, 0, '7ae101a0-3907-46f3-8c84-80138e008ba6', '[]', '2021-09-18 00:36:12', '2021-09-18 00:36:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gate_passes`
--

CREATE TABLE `gate_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `id_card_templates`
--

CREATE TABLE `id_card_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_income` date DEFAULT NULL,
  `amount` decimal(25,5) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `institutes`
--

CREATE TABLE `institutes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_contact_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `principal_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `institute_documents`
--

CREATE TABLE `institute_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ip_filters`
--

CREATE TABLE `ip_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lesson_plans`
--

CREATE TABLE `lesson_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `topic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lesson_plan_details`
--

CREATE TABLE `lesson_plan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `locales`
--

CREATE TABLE `locales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `locales`
--

INSERT INTO `locales` (`id`, `name`, `locale`, `options`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, '2021-09-17 18:58:01', '2021-09-17 18:58:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `meeting_batch`
--

CREATE TABLE `meeting_batch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `meeting_course`
--

CREATE TABLE `meeting_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `meeting_department`
--

CREATE TABLE `meeting_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `meeting_employee`
--

CREATE TABLE `meeting_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_attendee` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `meeting_employee_category`
--

CREATE TABLE `meeting_employee_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `meeting_student_record`
--

CREATE TABLE `meeting_student_record` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_attendee` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_27_053833_create_permission_tables', 1),
(4, '2017_10_27_074549_create_config_table', 1),
(5, '2017_10_27_074635_create_locales_table', 1),
(6, '2017_10_27_074811_create_backups_table', 1),
(7, '2017_10_27_110555_create_todos_table', 1),
(8, '2017_10_27_121507_create_email_logs_table', 1),
(9, '2017_10_27_121726_create_ip_filters_table', 1),
(10, '2017_10_27_122805_create_jobs_table', 1),
(11, '2017_11_03_035042_create_uploads_table', 1),
(12, '2017_11_13_100342_create_email_templates_table', 1),
(13, '2018_06_01_095756_create_academic_sessions_table', 1),
(14, '2018_06_01_096426_create_user_preferences_table', 1),
(15, '2018_06_01_100630_create_course_groups_table', 1),
(16, '2018_06_01_100638_create_courses_table', 1),
(17, '2018_06_01_101317_create_batches_table', 1),
(18, '2018_06_01_101320_create_subjects_table', 1),
(19, '2018_06_01_103214_create_categories_table', 1),
(20, '2018_06_01_103403_create_religions_table', 1),
(21, '2018_06_01_104450_create_castes_table', 1),
(22, '2018_06_01_104516_create_student_document_types_table', 1),
(23, '2018_06_01_104523_create_blood_groups_table', 1),
(24, '2018_06_01_104535_create_student_parents_table', 1),
(25, '2018_06_01_104540_create_institutes_table', 1),
(26, '2018_06_01_104540_create_students_table', 1),
(27, '2018_06_01_104545_create_registrations_table', 1),
(28, '2018_06_01_104550_create_admissions_table', 1),
(29, '2018_06_01_104619_create_student_accounts_table', 1),
(30, '2018_06_01_111051_create_student_qualifications_table', 1),
(31, '2018_06_01_111128_create_student_siblings_table', 1),
(32, '2018_06_01_111225_create_student_documents_table', 1),
(33, '2018_06_01_111230_create_student_groups_table', 1),
(34, '2018_06_01_111458_create_fee_groups_table', 1),
(35, '2018_06_01_111534_create_fee_heads_table', 1),
(36, '2018_06_01_111540_create_fee_allocations_table', 1),
(37, '2018_06_01_111550_create_fee_allocation_groups_table', 1),
(38, '2018_06_01_111550_create_transport_circles_table', 1),
(39, '2018_06_01_111555_create_student_records_table', 1),
(40, '2018_06_01_111560_create_transport_fees_table', 1),
(41, '2018_06_01_111570_create_transport_fee_details_table', 1),
(42, '2018_06_01_111633_create_fee_installments_table', 1),
(43, '2018_06_01_111653_create_fee_installment_details_table', 1),
(44, '2018_06_01_111660_create_fee_concessions_table', 1),
(45, '2018_06_01_111670_create_fee_concession_details_table', 1),
(46, '2018_06_01_111680_create_student_fee_records_table', 1),
(47, '2018_06_01_111685_create_student_fee_record_details_table', 1),
(48, '2018_06_01_111690_create_student_optional_fee_records_table', 1),
(49, '2018_06_01_190930_create_employee_categories_table', 1),
(50, '2018_06_01_190941_create_departments_table', 1),
(51, '2018_06_01_191227_create_designations_table', 1),
(52, '2018_06_04_160829_create_accounts_table', 1),
(53, '2018_06_04_161234_create_transaction_categories_table', 1),
(54, '2018_06_04_161910_create_employee_document_types_table', 1),
(55, '2018_06_04_161913_create_employee_groups_table', 1),
(56, '2018_06_04_161913_create_employees_table', 1),
(57, '2018_06_04_163850_create_employee_terms_table', 1),
(58, '2018_06_04_163852_create_employee_designations_table', 1),
(59, '2018_06_04_164045_create_employee_accounts_table', 1),
(60, '2018_06_04_164507_create_employee_qualifications_table', 1),
(61, '2018_06_04_164924_create_employee_documents_table', 1),
(62, '2018_06_05_162431_create_vendors_table', 1),
(63, '2018_06_05_163900_create_activity_log_table', 1),
(64, '2018_06_08_144700_create_incomes_table', 1),
(65, '2018_06_08_144710_create_expenses_table', 1),
(66, '2018_06_08_144715_create_account_transfers_table', 1),
(67, '2018_06_08_144720_create_payment_methods_table', 1),
(68, '2018_06_12_160857_create_vehicles_table', 1),
(69, '2018_06_12_161341_create_vehicle_document_types_table', 1),
(70, '2018_06_12_161453_create_vehicle_documents_table', 1),
(71, '2018_06_12_161928_create_vehicle_fuel_types_table', 1),
(72, '2018_06_12_162023_create_vehicle_fuels_table', 1),
(73, '2018_06_12_162700_create_vehicle_logs_table', 1),
(74, '2018_06_12_162710_create_vehicle_service_records_table', 1),
(75, '2018_06_12_170017_create_stock_categories_table', 1),
(76, '2018_06_12_170327_create_stock_items_table', 1),
(77, '2018_06_12_173008_create_bills_table', 1),
(78, '2018_06_12_173100_create_bill_items_table', 1),
(79, '2018_06_19_052554_create_student_attendances_table', 1),
(80, '2018_06_19_061401_create_book_authors_table', 1),
(81, '2018_06_19_061412_create_book_publishers_table', 1),
(82, '2018_06_19_061480_create_book_topics_table', 1),
(83, '2018_06_19_061490_create_book_conditions_table', 1),
(84, '2018_06_19_061490_create_book_languages_table', 1),
(85, '2018_06_19_061500_create_books_table', 1),
(86, '2018_06_19_061510_create_book_posts_table', 1),
(87, '2018_06_19_063813_create_book_post_details_table', 1),
(88, '2018_06_19_063850_create_book_logs_table', 1),
(89, '2018_06_19_063855_create_book_log_details_table', 1),
(90, '2018_06_19_070120_create_buildings_table', 1),
(91, '2018_06_19_070312_create_rooms_table', 1),
(92, '2018_06_19_071510_create_stock_transfers_table', 1),
(93, '2018_06_19_075353_create_vendor_accounts_table', 1),
(94, '2018_06_19_081803_create_stock_transfer_details_table', 1),
(95, '2018_06_19_093819_create_class_timings_table', 1),
(96, '2018_06_19_094044_create_class_timing_sessions_table', 1),
(97, '2018_06_19_112313_create_timetables_table', 1),
(98, '2018_06_19_112520_create_timetable_allocations_table', 1),
(99, '2018_06_19_112658_create_timetable_allocation_details_table', 1),
(100, '2018_06_19_115345_create_lesson_plans_table', 1),
(101, '2018_06_19_120002_create_lesson_plan_details_table', 1),
(102, '2018_06_19_122400_create_class_teachers_table', 1),
(103, '2018_06_19_144802_create_transactions_table', 1),
(104, '2018_06_24_141707_create_subject_teachers_table', 1),
(105, '2018_06_24_150000_create_holidays_table', 1),
(106, '2018_07_16_140751_create_visiting_purposes_table', 1),
(107, '2018_07_16_140846_create_visitor_logs_table', 1),
(108, '2018_07_16_143941_create_enquiry_types_table', 1),
(109, '2018_07_16_144006_create_enquiry_sources_table', 1),
(110, '2018_07_16_144014_create_enquiries_table', 1),
(111, '2018_07_16_144015_create_enquiry_details_table', 1),
(112, '2018_07_16_144020_create_enquiry_follow_ups_table', 1),
(113, '2018_07_16_144056_create_event_types_table', 1),
(114, '2018_07_16_144105_create_events_table', 1),
(115, '2018_07_16_144110_create_event_batch_table', 1),
(116, '2018_07_16_144110_create_event_course_table', 1),
(117, '2018_07_16_144110_create_event_department_table', 1),
(118, '2018_07_16_144110_create_event_employee_category_table', 1),
(119, '2018_07_18_113741_create_article_types_table', 1),
(120, '2018_07_18_113741_create_articles_table', 1),
(121, '2018_07_26_075729_create_student_group_collection_table', 1),
(122, '2018_07_26_075740_create_employee_group_collection_table', 1),
(123, '2018_08_08_100000_create_telescope_entries_table', 1),
(124, '2018_08_15_091623_create_frontend_pages_table', 1),
(125, '2018_08_15_120927_create_frontend_menus_table', 1),
(126, '2018_08_16_074537_create_frontend_blocks_table', 1),
(127, '2018_08_17_133859_create_visitor_messages_table', 1),
(128, '2018_08_30_131336_update_transactions_table_with_online_payment_column', 1),
(129, '2018_08_31_051120_update_student_fee_records_table_with_late_fee_column', 1),
(130, '2018_08_31_180936_update_student_fee_record_details_table_with_transaction', 1),
(131, '2018_09_05_072431_update_vehicles_table_with_fuel_type_column', 1),
(132, '2018_09_05_072514_create_vehicle_performance_criterias_table', 1),
(133, '2018_09_06_061309_create_certificate_templates_table', 1),
(134, '2018_09_06_062159_create_certificates_table', 1),
(135, '2018_09_06_131829_create_assignments_table', 1),
(136, '2018_09_06_133439_create_notes_table', 1),
(137, '2018_09_06_134800_update_lesson_plans_table', 1),
(138, '2018_09_06_134809_update_lesson_plan_details_table', 1),
(139, '2018_09_06_135801_create_syllabuses_table', 1),
(140, '2018_09_06_135814_create_syllabus_details_table', 1),
(141, '2018_09_06_140116_create_syllabus_topics_table', 1),
(142, '2018_09_16_070254_update_admissions_table_with_prefix_column', 1),
(143, '2018_09_20_092116_update_vehicle_fuel_table_with_log_column', 1),
(144, '2018_09_20_154644_update_employees_table_with_prefix_column', 1),
(145, '2018_09_21_093033_create_employee_leave_types_table', 1),
(146, '2018_09_21_093232_create_employee_leave_allocations_table', 1),
(147, '2018_09_21_093247_create_employee_leave_allocation_details_table', 1),
(148, '2018_09_21_095109_create_employee_leave_requests_table', 1),
(149, '2018_09_21_095612_create_employee_leave_request_details_table', 1),
(150, '2018_09_21_095848_create_employee_attendance_types_table', 1),
(151, '2018_09_21_150141_create_employee_attendances_table', 1),
(152, '2018_09_21_150817_create_employee_attendance_details_table', 1),
(153, '2018_09_21_151437_create_pay_heads_table', 1),
(154, '2018_09_21_152416_create_payroll_templates_table', 1),
(155, '2018_09_21_152429_create_payroll_template_details_table', 1),
(156, '2018_09_21_153042_create_employee_salaries_table', 1),
(157, '2018_09_21_153054_create_employee_salary_details_table', 1),
(158, '2018_09_21_154223_create_payrolls_table', 1),
(159, '2018_09_21_154839_create_payroll_details_table', 1),
(160, '2018_10_07_054747_update_transactions_table_with_payroll_column', 1),
(161, '2018_10_10_133527_update_users_table_with_username_column', 1),
(162, '2018_11_18_112445_update_subjects_table_with_position_column', 1),
(163, '2018_11_18_182433_create_exam_terms_table', 1),
(164, '2018_11_19_053609_create_exam_assessments_table', 1),
(165, '2018_11_19_053700_create_exam_observations_table', 1),
(166, '2018_11_19_053718_create_exam_assessment_details_table', 1),
(167, '2018_11_19_053735_create_exam_grades_table', 1),
(168, '2018_11_19_053800_create_exam_observation_details_table', 1),
(169, '2018_11_19_053930_create_exam_grade_details_table', 1),
(170, '2018_11_19_061843_create_exams_table', 1),
(171, '2018_11_19_075929_create_exam_schedules_table', 1),
(172, '2018_11_19_080256_create_exam_records_table', 1),
(173, '2018_11_25_165034_update_batch_table_with_exam_columns', 1),
(174, '2018_11_29_055927_update_subject_table_with_shortcode_column', 1),
(175, '2019_02_07_174144_update_book_post_details_table', 1),
(176, '2019_02_10_122103_create_transport_routes_table', 1),
(177, '2019_02_10_122139_create_transport_stoppages_table', 1),
(178, '2019_02_10_122150_create_transport_route_details_table', 1),
(179, '2019_02_10_122234_create_transport_route_students_table', 1),
(180, '2019_05_27_120924_update_vehicle_document_type_table_with_insurance_column', 1),
(181, '2019_05_27_141520_create_vehicle_incharges_table', 1),
(182, '2019_05_28_102641_create_transfer_certificates_table', 1),
(183, '2019_06_05_115802_create_vehicle_service_centers_table', 1),
(184, '2019_06_05_120503_update_service_records_with_service_center_column', 1),
(185, '2019_08_07_041647_update_employee_designations_table_with_correct_foreign_key', 1),
(186, '2019_09_23_173539_create_id_card_templates_table', 1),
(187, '2019_09_24_100632_update_registration_table_with_online_column', 1),
(188, '2019_09_24_110632_create_calling_purposes_table', 1),
(189, '2019_09_24_173038_create_call_logs_table', 1),
(190, '2019_09_25_091954_create_postal_records_table', 1),
(191, '2019_09_25_093007_create_complaint_types_table', 1),
(192, '2019_09_25_093055_create_complaints_table', 1),
(193, '2019_09_25_094116_create_gate_passes_table', 1),
(194, '2019_10_02_162232_update_stock_items_table_with_quantity_column', 1),
(195, '2019_10_04_101405_create_stock_purchases_table', 1),
(196, '2019_10_04_101621_create_stock_purchase_details_table', 1),
(197, '2019_10_05_042602_update_stock_transfer_table_with_user_column', 1),
(198, '2019_10_05_094706_create_stock_transfer_returns_table', 1),
(199, '2019_11_10_132707_create_custom_fields_table', 1),
(200, '2019_11_12_084551_create_communications_table', 1),
(201, '2019_11_12_084605_create_communication_batch_table', 1),
(202, '2019_11_12_084612_create_communication_course_table', 1),
(203, '2019_11_12_084621_create_communication_department_table', 1),
(204, '2019_11_12_084634_create_communication_employee_category_table', 1),
(205, '2019_11_13_165626_create_tags_table', 1),
(206, '2019_11_13_165654_create_taggables_table', 1),
(207, '2019_11_13_165942_create_institute_documents_table', 1),
(208, '2019_11_21_100148_update_student_attendance_table_with_session_column', 1),
(209, '2019_11_24_055745_create_online_exams_table', 1),
(210, '2019_11_24_055817_create_online_exam_questions_table', 1),
(211, '2019_11_25_171718_create_online_exam_records_table', 1),
(212, '2019_11_27_054829_update_exam_terms_with_course_group_column', 1),
(213, '2019_11_29_160215_update_student_records_with_upload_token', 1),
(214, '2019_11_29_160226_update_registrations_table_with_upload_token', 1),
(215, '2020_01_12_035115_update_relations_column', 1),
(216, '2020_03_29_030950_create_user_push_tokens_table', 1),
(217, '2020_03_29_103112_create_communication_student_record_table', 1),
(218, '2020_03_29_103119_create_communication_employee_table', 1),
(219, '2020_04_09_061541_create_failed_jobs_table', 1),
(220, '2020_04_24_054611_create_meetings_table', 1),
(221, '2020_04_24_074947_create_meeting_course_table', 1),
(222, '2020_04_24_075003_create_meeting_batch_table', 1),
(223, '2020_04_24_075014_create_meeting_department_table', 1),
(224, '2020_04_24_075027_create_meeting_employee_category_table', 1),
(225, '2020_04_24_075047_create_meeting_student_record_table', 1),
(226, '2020_04_24_075058_create_meeting_employee_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `online_exams`
--

CREATE TABLE `online_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `passing_percentage` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `max_mark` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `is_negative_mark_applicable` tinyint(1) NOT NULL DEFAULT 0,
  `negative_mark_percentage_per_question` decimal(8,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `online_exam_questions`
--

CREATE TABLE `online_exam_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `answers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `online_exam_records`
--

CREATE TABLE `online_exam_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `answers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obtained_mark` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '', '[]', NULL, NULL),
(2, 'Cheque', '', '{\"requires_instrument_number\": true,\"requires_instrument_date\": true,\"requires_instrument_clearing_date\": true,\"requires_instrument_bank_detail\": true,\"requires_reference_number\": false}', NULL, NULL),
(3, 'Internet Banking', '', '{\"requires_reference_number\": false}', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_salary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `period` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_detail` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `per_day_calculation_basis` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_defined_days` int(11) NOT NULL DEFAULT 0,
  `total` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `paid` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll_details`
--

CREATE TABLE `payroll_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pay_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll_templates`
--

CREATE TABLE `payroll_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll_template_details`
--

CREATE TABLE `payroll_template_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pay_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_attendance_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `computation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pay_heads`
--

CREATE TABLE `pay_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'access-configuration', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(2, 'enable-login', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(3, 'import-previous-session-data', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(4, 'send-sms', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(5, 'send-email', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(6, 'send-push-notification', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(7, 'delete-communication-history', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(8, 'create-meeting', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(9, 'list-meeting', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(10, 'edit-meeting', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(11, 'delete-meeting', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(12, 'create-institute-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(13, 'edit-institute-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(14, 'list-institute-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(15, 'delete-institute-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(16, 'access-todo', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(17, 'list-academic-session', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(18, 'create-academic-session', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(19, 'edit-academic-session', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(20, 'change-academic-session', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(21, 'delete-academic-session', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(22, 'list-course', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(23, 'create-course', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(24, 'edit-course', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(25, 'delete-course', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(26, 'list-batch', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(27, 'create-batch', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(28, 'edit-batch', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(29, 'delete-batch', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(30, 'list-subject', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(31, 'create-subject', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(32, 'edit-subject', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(33, 'delete-subject', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(34, 'list-class-teacher', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(35, 'store-class-teacher', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(36, 'delete-class-teacher', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(37, 'list-subject-teacher', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(38, 'store-subject-teacher', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(39, 'delete-subject-teacher', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(40, 'list-class-timing', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(41, 'create-class-timing', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(42, 'edit-class-timing', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(43, 'delete-class-timing', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(44, 'list-timetable', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(45, 'create-timetable', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(46, 'edit-timetable', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(47, 'delete-timetable', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(48, 'list-certificate', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(49, 'create-certificate', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(50, 'edit-certificate', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(51, 'delete-certificate', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(52, 'new-registration', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(53, 'edit-registration', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(54, 'list-registration', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(55, 'delete-registration', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(56, 'list-student', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(57, 'list-student-fee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(58, 'list-class-teacher-wise-student', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(59, 'edit-student', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(60, 'promote-student', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(61, 'terminate-student', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(62, 'make-registration-fee-payment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(63, 'change-registration-status', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(64, 'set-fee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(65, 'make-fee-payment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(66, 'make-partial-fee-payment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(67, 'customize-fee-date', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(68, 'customize-late-fee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(69, 'cancel-fee-payment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(70, 'edit-roll-number', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(71, 'generate-student-id-card', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(72, 'list-student-attendance', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(73, 'mark-student-attendance', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(74, 'import-student', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(75, 'mark-class-teacher-wise-student-attendance', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(76, 'list-account', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(77, 'create-account', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(78, 'edit-account', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(79, 'delete-account', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(80, 'list-fee-group', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(81, 'create-fee-group', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(82, 'edit-fee-group', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(83, 'delete-fee-group', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(84, 'list-fee-concession', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(85, 'create-fee-concession', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(86, 'edit-fee-concession', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(87, 'delete-fee-concession', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(88, 'list-fee-head', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(89, 'create-fee-head', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(90, 'edit-fee-head', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(91, 'delete-fee-head', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(92, 'list-fee-allocation', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(93, 'create-fee-allocation', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(94, 'edit-fee-allocation', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(95, 'delete-fee-allocation', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(96, 'list-income', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(97, 'create-income', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(98, 'edit-income', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(99, 'cancel-income', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(100, 'list-expense', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(101, 'create-expense', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(102, 'edit-expense', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(103, 'cancel-expense', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(104, 'list-account-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(105, 'create-account-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(106, 'edit-account-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(107, 'cancel-account-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(108, 'access-fee-report', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(109, 'access-transaction-report', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(110, 'list-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(111, 'create-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(112, 'edit-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(113, 'delete-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(114, 'list-exam-schedule', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(115, 'create-exam-schedule', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(116, 'edit-exam-schedule', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(117, 'delete-exam-schedule', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(118, 'list-exam-mark', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(119, 'store-exam-mark', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(120, 'store-class-teacher-wise-exam-mark', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(121, 'store-subject-teacher-wise-exam-mark', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(122, 'access-exam-report', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(123, 'access-class-teacher-wise-exam-report', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(124, 'list-online-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(125, 'create-online-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(126, 'edit-online-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(127, 'delete-online-exam', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(128, 'list-transport-circle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(129, 'create-transport-circle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(130, 'edit-transport-circle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(131, 'delete-transport-circle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(132, 'list-transport-fee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(133, 'create-transport-fee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(134, 'edit-transport-fee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(135, 'delete-transport-fee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(136, 'list-vehicle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(137, 'create-vehicle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(138, 'edit-vehicle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(139, 'delete-vehicle', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(140, 'list-vehicle-fuel', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(141, 'create-vehicle-fuel', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(142, 'edit-vehicle-fuel', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(143, 'delete-vehicle-fuel', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(144, 'list-vehicle-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(145, 'create-vehicle-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(146, 'edit-vehicle-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(147, 'delete-vehicle-document', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(148, 'list-vehicle-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(149, 'create-vehicle-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(150, 'edit-vehicle-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(151, 'delete-vehicle-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(152, 'list-vehicle-service-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(153, 'create-vehicle-service-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(154, 'edit-vehicle-service-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(155, 'delete-vehicle-service-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(156, 'access-transport-report', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(157, 'list-transport-stoppage', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(158, 'create-transport-stoppage', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(159, 'edit-transport-stoppage', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(160, 'delete-transport-stoppage', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(161, 'list-transport-route', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(162, 'create-transport-route', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(163, 'edit-transport-route', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(164, 'delete-transport-route', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(165, 'assign-transport-route', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(166, 'list-vehicle-incharge', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(167, 'store-vehicle-incharge', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(168, 'delete-vehicle-incharge', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(169, 'access-all-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(170, 'access-subordinate-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(171, 'create-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(172, 'edit-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(173, 'list-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(174, 'delete-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(175, 'manage-leave-allocation', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(176, 'request-leave', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(177, 'request-leave-for-other-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(178, 'take-action-on-leave-request', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(179, 'mark-employee-attendance', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(180, 'list-employee-attendance', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(181, 'manage-payroll-template', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(182, 'define-employee-salary', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(183, 'list-payroll', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(184, 'generate-payroll', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(185, 'edit-payroll-amount', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(186, 'edit-payroll', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(187, 'delete-payroll', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(188, 'list-payroll-transaction', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(189, 'create-payroll-transaction', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(190, 'edit-payroll-transaction', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(191, 'cancel-payroll-transaction', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(192, 'generate-employee-id-card', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(193, 'import-employee', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(194, 'create-book', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(195, 'edit-book', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(196, 'list-book', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(197, 'delete-book', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(198, 'issue-book', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(199, 'return-book', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(200, 'create-holiday', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(201, 'edit-holiday', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(202, 'list-holiday', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(203, 'delete-holiday', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(204, 'create-event', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(205, 'edit-event', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(206, 'list-event', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(207, 'delete-event', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(208, 'list-birthday', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(209, 'list-anniversary', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(210, 'list-work-anniversary', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(211, 'create-article', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(212, 'edit-article', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(213, 'list-article', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(214, 'delete-article', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(215, 'create-visitor-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(216, 'edit-visitor-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(217, 'list-visitor-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(218, 'delete-visitor-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(219, 'create-postal-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(220, 'edit-postal-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(221, 'list-postal-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(222, 'delete-postal-record', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(223, 'create-call-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(224, 'edit-call-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(225, 'list-call-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(226, 'delete-call-log', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(227, 'create-complaint', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(228, 'edit-complaint', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(229, 'list-complaint', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(230, 'delete-complaint', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(231, 'create-gate-pass', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(232, 'edit-gate-pass', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(233, 'list-gate-pass', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(234, 'delete-gate-pass', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(235, 'create-enquiry', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(236, 'edit-enquiry', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(237, 'list-enquiry', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(238, 'delete-enquiry', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(239, 'list-visitor-message', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(240, 'delete-visitor-message', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(241, 'configure-frontend', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(242, 'list-assignment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(243, 'create-assignment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(244, 'edit-assignment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(245, 'delete-assignment', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(246, 'list-notes', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(247, 'create-notes', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(248, 'edit-notes', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(249, 'delete-notes', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(250, 'list-lesson-plan', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(251, 'create-lesson-plan', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(252, 'edit-lesson-plan', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(253, 'delete-lesson-plan', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(254, 'list-syllabus', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(255, 'create-syllabus', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(256, 'edit-syllabus', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(257, 'delete-syllabus', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(258, 'list-vendor', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(259, 'create-vendor', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(260, 'edit-vendor', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(261, 'delete-vendor', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(262, 'list-stock-category', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(263, 'create-stock-category', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(264, 'edit-stock-category', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(265, 'delete-stock-category', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(266, 'list-stock-item', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(267, 'create-stock-item', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(268, 'edit-stock-item', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(269, 'delete-stock-item', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(270, 'list-stock-purchase', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(271, 'create-stock-purchase', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(272, 'edit-stock-purchase', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(273, 'delete-stock-purchase', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(274, 'list-stock-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(275, 'create-stock-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(276, 'edit-stock-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(277, 'delete-stock-transfer', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `postal_records`
--

CREATE TABLE `postal_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_confidential` tinyint(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_registration` date DEFAULT NULL,
  `registration_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_fee` int(11) NOT NULL DEFAULT 0,
  `registration_fee_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT 0,
  `registration_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejection_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_institute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `religions`
--

INSERT INTO `religions` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Hindu', '', '[]', NULL, NULL),
(2, 'Christian', '', '[]', NULL, NULL),
(3, 'Muslim', '', '[]', NULL, NULL),
(4, 'Sikh', '', '[]', NULL, NULL),
(5, 'Buddhist', '', '[]', NULL, NULL),
(6, 'Jews', '', '[]', NULL, NULL),
(7, 'Jainism', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(2, 'manager', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(3, 'principal', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(4, 'staff', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(5, 'librarian', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(6, 'accountant', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(7, 'student', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00'),
(8, 'parent', 'api', '2021-09-17 18:58:00', '2021-09-17 18:58:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(5, 6),
(6, 1),
(6, 2),
(6, 3),
(6, 6),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(21, 1),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(35, 1),
(35, 2),
(35, 3),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 2),
(39, 3),
(40, 1),
(40, 2),
(40, 3),
(41, 1),
(41, 2),
(41, 3),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(44, 3),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(53, 3),
(54, 1),
(54, 2),
(54, 3),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(56, 3),
(56, 6),
(56, 7),
(56, 8),
(57, 1),
(57, 2),
(57, 3),
(57, 6),
(57, 7),
(57, 8),
(58, 1),
(58, 4),
(59, 1),
(59, 2),
(59, 3),
(60, 1),
(60, 2),
(60, 3),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(62, 6),
(63, 1),
(63, 2),
(63, 3),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(65, 6),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(69, 6),
(70, 1),
(70, 2),
(70, 3),
(70, 4),
(71, 1),
(71, 2),
(71, 3),
(71, 4),
(72, 1),
(72, 2),
(72, 3),
(72, 4),
(73, 1),
(73, 2),
(73, 3),
(73, 4),
(74, 1),
(74, 2),
(75, 1),
(75, 4),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(96, 1),
(96, 2),
(96, 6),
(97, 1),
(97, 2),
(97, 6),
(98, 1),
(98, 2),
(98, 6),
(99, 1),
(99, 2),
(99, 6),
(100, 1),
(100, 2),
(100, 6),
(101, 1),
(101, 2),
(101, 6),
(102, 1),
(102, 2),
(102, 6),
(103, 1),
(103, 2),
(103, 6),
(104, 1),
(104, 2),
(104, 6),
(105, 1),
(105, 2),
(105, 6),
(106, 1),
(106, 2),
(106, 6),
(107, 1),
(107, 2),
(107, 6),
(108, 1),
(108, 2),
(108, 3),
(108, 6),
(109, 1),
(109, 2),
(109, 6),
(110, 1),
(110, 2),
(110, 3),
(111, 1),
(111, 2),
(111, 3),
(112, 1),
(112, 2),
(113, 1),
(113, 2),
(114, 1),
(114, 2),
(114, 3),
(114, 4),
(114, 7),
(114, 8),
(115, 1),
(115, 2),
(115, 3),
(116, 1),
(116, 2),
(117, 1),
(117, 2),
(118, 1),
(118, 2),
(118, 3),
(118, 4),
(119, 1),
(119, 2),
(119, 3),
(120, 1),
(121, 1),
(122, 1),
(122, 2),
(122, 3),
(122, 7),
(122, 8),
(123, 1),
(123, 2),
(123, 3),
(123, 4),
(124, 1),
(124, 2),
(124, 3),
(125, 1),
(125, 2),
(125, 3),
(126, 1),
(126, 2),
(127, 1),
(127, 2),
(128, 1),
(128, 2),
(129, 1),
(129, 2),
(130, 1),
(130, 2),
(131, 1),
(132, 1),
(132, 2),
(133, 1),
(133, 2),
(134, 1),
(134, 2),
(135, 1),
(136, 1),
(136, 2),
(137, 1),
(137, 2),
(138, 1),
(138, 2),
(139, 1),
(140, 1),
(140, 2),
(141, 1),
(141, 2),
(142, 1),
(142, 2),
(143, 1),
(143, 2),
(144, 1),
(144, 2),
(145, 1),
(145, 2),
(146, 1),
(146, 2),
(147, 1),
(147, 2),
(148, 1),
(148, 2),
(149, 1),
(149, 2),
(150, 1),
(150, 2),
(151, 1),
(151, 2),
(152, 1),
(152, 2),
(153, 1),
(153, 2),
(154, 1),
(154, 2),
(155, 1),
(155, 2),
(156, 1),
(156, 2),
(156, 3),
(157, 1),
(157, 2),
(158, 1),
(158, 2),
(159, 1),
(159, 2),
(160, 1),
(161, 1),
(161, 2),
(162, 1),
(162, 2),
(163, 1),
(163, 2),
(164, 1),
(165, 1),
(165, 2),
(166, 1),
(166, 2),
(167, 1),
(167, 2),
(168, 1),
(168, 2),
(169, 1),
(170, 1),
(170, 2),
(170, 3),
(170, 4),
(171, 1),
(171, 2),
(171, 3),
(172, 1),
(172, 2),
(172, 3),
(173, 1),
(173, 2),
(173, 3),
(173, 4),
(174, 1),
(175, 1),
(175, 2),
(176, 1),
(176, 2),
(176, 3),
(176, 4),
(176, 5),
(176, 6),
(177, 1),
(177, 2),
(178, 1),
(178, 2),
(178, 3),
(179, 1),
(179, 2),
(179, 3),
(180, 1),
(180, 2),
(180, 3),
(180, 4),
(180, 5),
(180, 6),
(181, 1),
(181, 2),
(182, 1),
(182, 2),
(182, 3),
(183, 1),
(183, 2),
(183, 3),
(183, 4),
(183, 5),
(183, 6),
(184, 1),
(184, 2),
(184, 3),
(185, 1),
(185, 2),
(186, 1),
(186, 2),
(187, 1),
(187, 2),
(188, 1),
(188, 2),
(188, 3),
(188, 4),
(188, 5),
(188, 6),
(189, 1),
(189, 2),
(189, 3),
(190, 1),
(190, 2),
(191, 1),
(191, 2),
(192, 1),
(192, 2),
(192, 3),
(193, 1),
(193, 2),
(194, 1),
(194, 2),
(194, 5),
(195, 1),
(195, 2),
(195, 5),
(196, 1),
(196, 2),
(196, 5),
(197, 1),
(198, 1),
(198, 2),
(198, 5),
(199, 1),
(199, 2),
(199, 5),
(200, 1),
(200, 2),
(200, 3),
(201, 1),
(201, 2),
(201, 3),
(202, 1),
(202, 2),
(202, 3),
(202, 4),
(202, 5),
(202, 6),
(202, 7),
(202, 8),
(203, 1),
(203, 2),
(203, 3),
(204, 1),
(204, 2),
(204, 3),
(205, 1),
(205, 2),
(205, 3),
(206, 1),
(206, 2),
(206, 3),
(206, 4),
(206, 5),
(206, 6),
(206, 7),
(206, 8),
(207, 1),
(207, 2),
(208, 1),
(208, 2),
(208, 3),
(208, 4),
(208, 5),
(208, 6),
(209, 1),
(209, 2),
(209, 3),
(209, 4),
(209, 5),
(209, 6),
(210, 1),
(210, 2),
(210, 3),
(210, 4),
(210, 5),
(210, 6),
(211, 1),
(211, 2),
(211, 3),
(212, 1),
(212, 2),
(212, 3),
(213, 1),
(213, 2),
(213, 3),
(213, 4),
(213, 5),
(213, 6),
(213, 7),
(213, 8),
(214, 1),
(214, 2),
(215, 1),
(215, 2),
(216, 1),
(216, 2),
(217, 1),
(217, 2),
(218, 1),
(218, 2),
(219, 1),
(219, 2),
(219, 3),
(220, 1),
(220, 2),
(220, 3),
(221, 1),
(221, 2),
(221, 3),
(222, 1),
(222, 2),
(222, 3),
(223, 1),
(223, 2),
(223, 3),
(224, 1),
(224, 2),
(224, 3),
(225, 1),
(225, 2),
(225, 3),
(226, 1),
(226, 2),
(226, 3),
(227, 1),
(227, 2),
(228, 1),
(228, 2),
(229, 1),
(229, 2),
(230, 1),
(230, 2),
(231, 1),
(231, 2),
(231, 3),
(232, 1),
(232, 2),
(232, 3),
(233, 1),
(233, 2),
(233, 3),
(234, 1),
(234, 2),
(234, 3),
(235, 1),
(235, 2),
(235, 3),
(236, 1),
(236, 2),
(236, 3),
(237, 1),
(237, 2),
(237, 3),
(238, 1),
(238, 2),
(239, 1),
(239, 2),
(239, 3),
(240, 1),
(240, 2),
(240, 3),
(241, 1),
(241, 2),
(242, 1),
(242, 2),
(242, 3),
(242, 4),
(242, 7),
(242, 8),
(243, 1),
(243, 2),
(243, 3),
(243, 4),
(244, 1),
(244, 2),
(244, 3),
(244, 4),
(245, 1),
(245, 2),
(245, 3),
(245, 4),
(246, 1),
(246, 2),
(246, 3),
(246, 4),
(246, 7),
(246, 8),
(247, 1),
(247, 2),
(247, 3),
(247, 4),
(248, 1),
(248, 2),
(248, 3),
(248, 4),
(249, 1),
(249, 2),
(249, 3),
(249, 4),
(250, 1),
(250, 2),
(250, 3),
(250, 4),
(250, 7),
(250, 8),
(251, 1),
(251, 2),
(251, 3),
(251, 4),
(252, 1),
(252, 2),
(252, 3),
(252, 4),
(253, 1),
(253, 2),
(253, 3),
(253, 4),
(254, 1),
(254, 2),
(254, 3),
(254, 4),
(254, 7),
(254, 8),
(255, 1),
(255, 2),
(255, 3),
(255, 4),
(256, 1),
(256, 2),
(256, 3),
(256, 4),
(257, 1),
(257, 2),
(257, 3),
(257, 4),
(258, 1),
(258, 2),
(258, 3),
(259, 1),
(259, 2),
(259, 3),
(260, 1),
(260, 2),
(260, 3),
(261, 1),
(261, 2),
(262, 1),
(262, 2),
(262, 3),
(263, 1),
(263, 2),
(263, 3),
(264, 1),
(264, 2),
(264, 3),
(265, 1),
(265, 2),
(266, 1),
(266, 2),
(266, 3),
(267, 1),
(267, 2),
(267, 3),
(268, 1),
(268, 2),
(268, 3),
(269, 1),
(269, 2),
(270, 1),
(270, 2),
(270, 3),
(271, 1),
(271, 2),
(271, 3),
(272, 1),
(272, 2),
(272, 3),
(273, 1),
(273, 2),
(274, 1),
(274, 2),
(274, 3),
(275, 1),
(275, 2),
(275, 3),
(276, 1),
(276, 2),
(276, 3),
(277, 1),
(277, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `building_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_number` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_categories`
--

CREATE TABLE `stock_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_items`
--

CREATE TABLE `stock_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_quantity` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `stock_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_purchases`
--

CREATE TABLE `stock_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_purchase_details`
--

CREATE TABLE `stock_purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `unit_price` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_transfers`
--

CREATE TABLE `stock_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `return_due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_transfer_details`
--

CREATE TABLE `stock_transfer_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `custom_item_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_consumable` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `return_quantity` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_transfer_returns`
--

CREATE TABLE `stock_transfer_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `quantity` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `birth_place` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `caste_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_identification_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `same_as_present_address` tinyint(1) NOT NULL DEFAULT 0,
  `permanent_address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_accounts`
--

CREATE TABLE `student_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date_of_attendance` date DEFAULT NULL,
  `attendance` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_documents`
--

CREATE TABLE `student_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_document_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_document_types`
--

CREATE TABLE `student_document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `student_document_types`
--

INSERT INTO `student_document_types` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Birth Certificate', '', '[]', NULL, NULL),
(2, 'Transfer Certificate', '', '[]', NULL, NULL),
(3, 'Marksheet', '', '[]', NULL, NULL),
(4, 'Miscellaneous', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_fee_records`
--

CREATE TABLE `student_fee_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee_installment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transport_circle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transport_fee` int(11) NOT NULL DEFAULT 0,
  `fee_concession_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `late_fee_applicable` int(11) DEFAULT NULL,
  `late_fee_frequency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_fee` int(11) NOT NULL DEFAULT 0,
  `late_fee_charged` int(11) NOT NULL DEFAULT 0,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_fee_record_details`
--

CREATE TABLE `student_fee_record_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_fee_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Staff Child', '', '[]', NULL, NULL),
(2, 'Student w/o Transport', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_group_collection`
--

CREATE TABLE `student_group_collection` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_group_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_optional_fee_records`
--

CREATE TABLE `student_optional_fee_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_fee_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_parents`
--

CREATE TABLE `student_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_date_of_birth` date DEFAULT NULL,
  `first_guardian_qualification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_annual_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_contact_number_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_contact_number_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_guardian_unique_identification_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_date_of_birth` date DEFAULT NULL,
  `second_guardian_qualification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_annual_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_contact_number_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_contact_number_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_guardian_unique_identification_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_qualifications`
--

CREATE TABLE `student_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `standard` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_records`
--

CREATE TABLE `student_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_promoted` tinyint(1) NOT NULL DEFAULT 0,
  `fee_allocation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `roll_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_entry` date DEFAULT NULL,
  `entry_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_exit` date DEFAULT NULL,
  `exit_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termination_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_siblings`
--

CREATE TABLE `student_siblings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sibling_student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_elective` tinyint(1) NOT NULL DEFAULT 0,
  `has_no_exam` tinyint(1) NOT NULL DEFAULT 0,
  `max_class_per_week` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject_teachers`
--

CREATE TABLE `subject_teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_effective` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `syllabus_details`
--

CREATE TABLE `syllabus_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `syllabus_topics`
--

CREATE TABLE `syllabus_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `timetables`
--

CREATE TABLE `timetables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_effective` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `timetable_allocations`
--

CREATE TABLE `timetable_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timetable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_timing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `timetable_allocation_details`
--

CREATE TABLE `timetable_allocation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timetable_allocation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_timing_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `head` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_fee_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_advance_salary` tinyint(1) NOT NULL DEFAULT 0,
  `book_log_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `instrument_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instrument_bank_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_online_payment` tinyint(1) NOT NULL DEFAULT 0,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_detail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handling_fee` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `instrument_date` date DEFAULT NULL,
  `instrument_clearing_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_of_reconciliation` date DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_categories`
--

CREATE TABLE `transaction_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_categories`
--

INSERT INTO `transaction_categories` (`id`, `name`, `type`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Donation', 'income', '', '[]', NULL, NULL),
(2, 'Loan', 'income', '', '[]', NULL, NULL),
(3, 'Others', 'income', '', '[]', NULL, NULL),
(4, 'Stationary', 'expense', '', '[]', NULL, NULL),
(5, 'Transportation', 'expense', '', '[]', NULL, NULL),
(6, 'Others', 'expense', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer_certificates`
--

CREATE TABLE `transfer_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_application` date DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_circles`
--

CREATE TABLE `transport_circles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_fees`
--

CREATE TABLE `transport_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_fee_details`
--

CREATE TABLE `transport_fee_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transport_fee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transport_circle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_routes`
--

CREATE TABLE `transport_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_route_details`
--

CREATE TABLE `transport_route_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `transport_route_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transport_stoppage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_route_students`
--

CREATE TABLE `transport_route_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transport_route_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_stoppages`
--

CREATE TABLE `transport_stoppages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_temp_delete` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `email`, `username`, `password`, `activation_token`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '118aa247-84bf-47fc-8aef-8102d655c9c5', 'developmtc@gmail.com', 'evan', '$2y$10$DgwT4uhaC8QxWbYRHKa26.LAJT5ljG/3.V2DQeLRaujbnAehbDPsS', '7bedc26e-f3c6-4ca6-a712-61a301e6f193', 'activated', NULL, '2021-09-17 18:58:01', '2021-09-17 18:58:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_theme` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `locale`, `sidebar`, `direction`, `color_theme`, `academic_session_id`, `options`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'mini', 'ltr', 'blue', 1, NULL, '2021-09-17 18:58:02', '2021-09-18 00:52:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_push_tokens`
--

CREATE TABLE `user_push_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `make` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_seating_capacity` int(11) NOT NULL DEFAULT 0,
  `max_allowed` int(11) NOT NULL DEFAULT 0,
  `is_owned` tinyint(1) NOT NULL DEFAULT 0,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_fuel_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `max_fuel_capacity` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_documents`
--

CREATE TABLE `vehicle_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_document_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_document_types`
--

CREATE TABLE `vehicle_document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_expiry_date` tinyint(1) NOT NULL DEFAULT 0,
  `is_insurance_document` tinyint(1) DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vehicle_document_types`
--

INSERT INTO `vehicle_document_types` (`id`, `name`, `description`, `has_expiry_date`, `is_insurance_document`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Registration Certificate', '', 0, NULL, '[]', NULL, NULL),
(2, 'Fitness Certificate', '', 0, NULL, '[]', NULL, NULL),
(3, 'Insurance Certificate', '', 0, NULL, '[]', NULL, NULL),
(4, 'Others', '', 0, NULL, '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_fuels`
--

CREATE TABLE `vehicle_fuels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `price_per_unit` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `vehicle_fuel_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_fueling` date DEFAULT NULL,
  `log` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_fuel_types`
--

CREATE TABLE `vehicle_fuel_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vehicle_fuel_types`
--

INSERT INTO `vehicle_fuel_types` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Diesel', '', '[]', NULL, NULL),
(2, 'Petrol', '', '[]', NULL, NULL),
(3, 'CNG', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_incharges`
--

CREATE TABLE `vehicle_incharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_effective` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_logs`
--

CREATE TABLE `vehicle_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `log` int(11) NOT NULL DEFAULT 0,
  `date_of_log` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_performance_criterias`
--

CREATE TABLE `vehicle_performance_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_effective` date DEFAULT NULL,
  `min_mileage` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `max_mileage` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `min_service_charge` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `max_service_charge` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `min_run` int(11) NOT NULL DEFAULT 0,
  `max_run` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_service_centers`
--

CREATE TABLE `vehicle_service_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_service_records`
--

CREATE TABLE `vehicle_service_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_service_center_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_service` date DEFAULT NULL,
  `amount` decimal(25,5) NOT NULL DEFAULT 0.00000,
  `log` int(11) NOT NULL DEFAULT 0,
  `next_due_date` date DEFAULT NULL,
  `next_due_log` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_accounts`
--

CREATE TABLE `vendor_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visiting_purposes`
--

CREATE TABLE `visiting_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visiting_purposes`
--

INSERT INTO `visiting_purposes` (`id`, `name`, `description`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Enquiry', '', '[]', NULL, NULL),
(2, 'Admission', '', '[]', NULL, NULL),
(3, 'Transfer Certificate', '', '[]', NULL, NULL),
(4, 'Fee Payment', '', '[]', NULL, NULL),
(5, 'Parents Meeting', '', '[]', NULL, NULL),
(6, 'Complaint', '', '[]', NULL, NULL),
(7, 'Business', '', '[]', NULL, NULL),
(8, 'Others', '', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visiting_purpose_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_with_student` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_count` int(11) DEFAULT NULL,
  `date_of_visit` date DEFAULT NULL,
  `entry_time` time DEFAULT NULL,
  `exit_time` time DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_token` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor_messages`
--

CREATE TABLE `visitor_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `academic_sessions`
--
ALTER TABLE `academic_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `account_transfers`
--
ALTER TABLE `account_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transfers_from_account_id_foreign` (`from_account_id`),
  ADD KEY `account_transfers_to_account_id_foreign` (`to_account_id`),
  ADD KEY `account_transfers_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indeks untuk tabel `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admissions_registration_id_foreign` (`registration_id`),
  ADD KEY `admissions_batch_id_foreign` (`batch_id`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_article_type_id_foreign` (`article_type_id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `article_types`
--
ALTER TABLE `article_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_subject_id_foreign` (`subject_id`),
  ADD KEY `assignments_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backups_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batches_course_id_foreign` (`course_id`),
  ADD KEY `batches_exam_grade_id_foreign` (`exam_grade_id`),
  ADD KEY `batches_exam_observation_id_foreign` (`exam_observation_id`);

--
-- Indeks untuk tabel `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_vendor_id_foreign` (`vendor_id`),
  ADD KEY `bills_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `bills_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_items_bill_id_foreign` (`bill_id`),
  ADD KEY `bill_items_stock_item_id_foreign` (`stock_item_id`);

--
-- Indeks untuk tabel `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_book_author_id_foreign` (`book_author_id`),
  ADD KEY `books_book_publisher_id_foreign` (`book_publisher_id`),
  ADD KEY `books_book_topic_id_foreign` (`book_topic_id`),
  ADD KEY `books_book_language_id_foreign` (`book_language_id`);

--
-- Indeks untuk tabel `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_conditions`
--
ALTER TABLE `book_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_languages`
--
ALTER TABLE `book_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_logs`
--
ALTER TABLE `book_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_logs_student_record_id_foreign` (`student_record_id`),
  ADD KEY `book_logs_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `book_log_details`
--
ALTER TABLE `book_log_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_log_details_book_log_id_foreign` (`book_log_id`),
  ADD KEY `book_log_details_book_post_detail_id_foreign` (`book_post_detail_id`);

--
-- Indeks untuk tabel `book_posts`
--
ALTER TABLE `book_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_posts_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `book_post_details`
--
ALTER TABLE `book_post_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_post_details_book_post_id_foreign` (`book_post_id`),
  ADD KEY `book_post_details_book_condition_id_foreign` (`book_condition_id`);

--
-- Indeks untuk tabel `book_publishers`
--
ALTER TABLE `book_publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_topics`
--
ALTER TABLE `book_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `calling_purposes`
--
ALTER TABLE `calling_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `call_logs`
--
ALTER TABLE `call_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `call_logs_calling_purpose_id_foreign` (`calling_purpose_id`),
  ADD KEY `call_logs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `castes`
--
ALTER TABLE `castes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_certificate_template_id_foreign` (`certificate_template_id`),
  ADD KEY `certificates_student_record_id_foreign` (`student_record_id`),
  ADD KEY `certificates_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_teachers_batch_id_foreign` (`batch_id`),
  ADD KEY `class_teachers_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `class_timings`
--
ALTER TABLE `class_timings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_timings_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `class_timing_sessions`
--
ALTER TABLE `class_timing_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_timing_sessions_class_timing_id_foreign` (`class_timing_id`);

--
-- Indeks untuk tabel `communications`
--
ALTER TABLE `communications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communications_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `communication_batch`
--
ALTER TABLE `communication_batch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communication_batch_communication_id_foreign` (`communication_id`),
  ADD KEY `communication_batch_batch_id_foreign` (`batch_id`);

--
-- Indeks untuk tabel `communication_course`
--
ALTER TABLE `communication_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communication_course_communication_id_foreign` (`communication_id`),
  ADD KEY `communication_course_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `communication_department`
--
ALTER TABLE `communication_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communication_department_communication_id_foreign` (`communication_id`),
  ADD KEY `communication_department_department_id_foreign` (`department_id`);

--
-- Indeks untuk tabel `communication_employee`
--
ALTER TABLE `communication_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ce_communication_id` (`communication_id`),
  ADD KEY `ce_employee_id` (`employee_id`);

--
-- Indeks untuk tabel `communication_employee_category`
--
ALTER TABLE `communication_employee_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communication_employee_category_communication_id_foreign` (`communication_id`),
  ADD KEY `communication_employee_category_employee_category_id_foreign` (`employee_category_id`);

--
-- Indeks untuk tabel `communication_student_record`
--
ALTER TABLE `communication_student_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `csr_communication_id` (`communication_id`),
  ADD KEY `csr_student_record_id` (`student_record_id`);

--
-- Indeks untuk tabel `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_complaint_type_id_foreign` (`complaint_type_id`),
  ADD KEY `complaints_employee_id_foreign` (`employee_id`),
  ADD KEY `complaints_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `complaint_types`
--
ALTER TABLE `complaint_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_academic_session_id_foreign` (`academic_session_id`),
  ADD KEY `courses_course_group_id_foreign` (`course_group_id`);

--
-- Indeks untuk tabel `course_groups`
--
ALTER TABLE `course_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_groups_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_employee_category_id_foreign` (`employee_category_id`),
  ADD KEY `designations_top_designation_id_foreign` (`top_designation_id`);

--
-- Indeks untuk tabel `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_user_id_foreign` (`user_id`),
  ADD KEY `employees_blood_group_id_foreign` (`blood_group_id`),
  ADD KEY `employees_religion_id_foreign` (`religion_id`),
  ADD KEY `employees_category_id_foreign` (`category_id`),
  ADD KEY `employees_caste_id_foreign` (`caste_id`);

--
-- Indeks untuk tabel `employee_accounts`
--
ALTER TABLE `employee_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_accounts_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ea_employee_id_foreign` (`employee_id`),
  ADD KEY `ea_employee_attendance_type_id_foreign` (`employee_attendance_type_id`);

--
-- Indeks untuk tabel `employee_attendance_details`
--
ALTER TABLE `employee_attendance_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ead_employee_attendance_id_foreign` (`employee_attendance_id`),
  ADD KEY `ead_employee_attendance_type_id_foreign` (`employee_attendance_type_id`);

--
-- Indeks untuk tabel `employee_attendance_types`
--
ALTER TABLE `employee_attendance_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_categories`
--
ALTER TABLE `employee_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_designations`
--
ALTER TABLE `employee_designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_designations_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_designations_designation_id_foreign` (`designation_id`),
  ADD KEY `employee_designations_employee_term_id_foreign` (`employee_term_id`),
  ADD KEY `employee_designations_department_id_foreign` (`department_id`);

--
-- Indeks untuk tabel `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_documents_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_documents_employee_document_type_id_foreign` (`employee_document_type_id`);

--
-- Indeks untuk tabel `employee_document_types`
--
ALTER TABLE `employee_document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_groups`
--
ALTER TABLE `employee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_group_collection`
--
ALTER TABLE `employee_group_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_group_collection_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_group_collection_employee_group_id_foreign` (`employee_group_id`);

--
-- Indeks untuk tabel `employee_leave_allocations`
--
ALTER TABLE `employee_leave_allocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ela_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `employee_leave_allocation_details`
--
ALTER TABLE `employee_leave_allocation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elad_employee_leave_allocation_id_foreign` (`employee_leave_allocation_id`),
  ADD KEY `elad_employee_leave_type_id_foreign` (`employee_leave_type_id`);

--
-- Indeks untuk tabel `employee_leave_requests`
--
ALTER TABLE `employee_leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elr_employee_id_foreign` (`employee_id`),
  ADD KEY `elr_employee_leave_type_id_foreign` (`employee_leave_type_id`),
  ADD KEY `elr_requester_user_id_foreign` (`requester_user_id`);

--
-- Indeks untuk tabel `employee_leave_request_details`
--
ALTER TABLE `employee_leave_request_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elrd_employee_leave_request_id_foreign` (`employee_leave_request_id`),
  ADD KEY `elrd_designation_id_foreign` (`designation_id`),
  ADD KEY `elrd_approver_user_id_foreign` (`approver_user_id`);

--
-- Indeks untuk tabel `employee_leave_types`
--
ALTER TABLE `employee_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_qualifications`
--
ALTER TABLE `employee_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_qualifications_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `es_employee_id_foreign` (`employee_id`),
  ADD KEY `es_payroll_template_id_foreign` (`payroll_template_id`);

--
-- Indeks untuk tabel `employee_salary_details`
--
ALTER TABLE `employee_salary_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `esd_employee_salary_id_foreign` (`employee_salary_id`),
  ADD KEY `esd_payroll_template_detail_id_foreign` (`payroll_template_detail_id`);

--
-- Indeks untuk tabel `employee_terms`
--
ALTER TABLE `employee_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_terms_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiries_enquiry_type_id_foreign` (`enquiry_type_id`),
  ADD KEY `enquiries_enquiry_source_id_foreign` (`enquiry_source_id`),
  ADD KEY `enquiries_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `enquiry_details`
--
ALTER TABLE `enquiry_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiry_details_enquiry_id_foreign` (`enquiry_id`),
  ADD KEY `enquiry_details_course_id_foreign` (`course_id`),
  ADD KEY `enquiry_details_institute_id_foreign` (`institute_id`);

--
-- Indeks untuk tabel `enquiry_follow_ups`
--
ALTER TABLE `enquiry_follow_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiry_follow_ups_enquiry_id_foreign` (`enquiry_id`),
  ADD KEY `enquiry_follow_ups_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `enquiry_sources`
--
ALTER TABLE `enquiry_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_event_type_id_foreign` (`event_type_id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `event_batch`
--
ALTER TABLE `event_batch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_batch_event_id_foreign` (`event_id`),
  ADD KEY `event_batch_batch_id_foreign` (`batch_id`);

--
-- Indeks untuk tabel `event_course`
--
ALTER TABLE `event_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_course_event_id_foreign` (`event_id`),
  ADD KEY `event_course_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `event_department`
--
ALTER TABLE `event_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_department_event_id_foreign` (`event_id`),
  ADD KEY `event_department_department_id_foreign` (`department_id`);

--
-- Indeks untuk tabel `event_employee_category`
--
ALTER TABLE `event_employee_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_employee_category_event_id_foreign` (`event_id`),
  ADD KEY `event_employee_category_employee_category_id_foreign` (`employee_category_id`);

--
-- Indeks untuk tabel `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_academic_session_id_foreign` (`academic_session_id`),
  ADD KEY `exams_exam_term_id_foreign` (`exam_term_id`);

--
-- Indeks untuk tabel `exam_assessments`
--
ALTER TABLE `exam_assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ea_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `exam_assessment_details`
--
ALTER TABLE `exam_assessment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ead_exam_assessment_id_foreign` (`exam_assessment_id`);

--
-- Indeks untuk tabel `exam_grades`
--
ALTER TABLE `exam_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eg_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `exam_grade_details`
--
ALTER TABLE `exam_grade_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egd_exam_grade_id_foreign` (`exam_grade_id`);

--
-- Indeks untuk tabel `exam_observations`
--
ALTER TABLE `exam_observations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eo_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `exam_observation_details`
--
ALTER TABLE `exam_observation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eod_exam_observation_id_foreign` (`exam_observation_id`);

--
-- Indeks untuk tabel `exam_records`
--
ALTER TABLE `exam_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `er_exam_schedule_id_foreign` (`exam_schedule_id`),
  ADD KEY `er_subject_id_foreign` (`subject_id`);

--
-- Indeks untuk tabel `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `es_exam_id_foreign` (`exam_id`),
  ADD KEY `es_batch_id_foreign` (`batch_id`),
  ADD KEY `es_exam_grade_id_foreign` (`exam_grade_id`),
  ADD KEY `es_exam_assessment_id_foreign` (`exam_assessment_id`);

--
-- Indeks untuk tabel `exam_terms`
--
ALTER TABLE `exam_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `et_academic_session_id_foreign` (`academic_session_id`),
  ADD KEY `exam_terms_course_group_id_foreign` (`course_group_id`);

--
-- Indeks untuk tabel `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_transaction_category_id_foreign` (`transaction_category_id`),
  ADD KEY `expenses_student_record_id_foreign` (`student_record_id`),
  ADD KEY `expenses_employee_id_foreign` (`employee_id`),
  ADD KEY `expenses_vendor_id_foreign` (`vendor_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fee_allocations`
--
ALTER TABLE `fee_allocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_allocations_batch_id_foreign` (`batch_id`),
  ADD KEY `fee_allocations_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `fee_allocation_groups`
--
ALTER TABLE `fee_allocation_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_allocation_groups_fee_allocation_id_foreign` (`fee_allocation_id`),
  ADD KEY `fee_allocation_groups_fee_group_id_foreign` (`fee_group_id`);

--
-- Indeks untuk tabel `fee_concessions`
--
ALTER TABLE `fee_concessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_concessions_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `fee_concession_details`
--
ALTER TABLE `fee_concession_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_concession_details_fee_concession_id_foreign` (`fee_concession_id`),
  ADD KEY `fee_concession_details_fee_head_id_foreign` (`fee_head_id`);

--
-- Indeks untuk tabel `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_heads_fee_group_id_foreign` (`fee_group_id`);

--
-- Indeks untuk tabel `fee_installments`
--
ALTER TABLE `fee_installments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_installments_fee_allocation_group_id_foreign` (`fee_allocation_group_id`),
  ADD KEY `fee_installments_transport_fee_id_foreign` (`transport_fee_id`);

--
-- Indeks untuk tabel `fee_installment_details`
--
ALTER TABLE `fee_installment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_installment_details_fee_installment_id_foreign` (`fee_installment_id`),
  ADD KEY `fee_installment_details_fee_head_id_foreign` (`fee_head_id`);

--
-- Indeks untuk tabel `frontend_blocks`
--
ALTER TABLE `frontend_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_blocks_frontend_menu_id_foreign` (`frontend_menu_id`);

--
-- Indeks untuk tabel `frontend_menus`
--
ALTER TABLE `frontend_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_menus_parent_id_foreign` (`parent_id`),
  ADD KEY `frontend_menus_frontend_page_id_foreign` (`frontend_page_id`);

--
-- Indeks untuk tabel `frontend_pages`
--
ALTER TABLE `frontend_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gate_passes`
--
ALTER TABLE `gate_passes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gate_passes_student_id_foreign` (`student_id`),
  ADD KEY `gate_passes_employee_id_foreign` (`employee_id`),
  ADD KEY `gate_passes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `id_card_templates`
--
ALTER TABLE `id_card_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_transaction_category_id_foreign` (`transaction_category_id`),
  ADD KEY `incomes_student_record_id_foreign` (`student_record_id`),
  ADD KEY `incomes_employee_id_foreign` (`employee_id`),
  ADD KEY `incomes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `institute_documents`
--
ALTER TABLE `institute_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ip_filters`
--
ALTER TABLE `ip_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `lesson_plans`
--
ALTER TABLE `lesson_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_plans_subject_id_foreign` (`subject_id`),
  ADD KEY `lesson_plans_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `lesson_plan_details`
--
ALTER TABLE `lesson_plan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_plan_details_lesson_plan_id_foreign` (`lesson_plan_id`);

--
-- Indeks untuk tabel `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meetings_code_unique` (`code`),
  ADD KEY `meetings_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `meeting_batch`
--
ALTER TABLE `meeting_batch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_batch_meeting_id_foreign` (`meeting_id`),
  ADD KEY `meeting_batch_batch_id_foreign` (`batch_id`);

--
-- Indeks untuk tabel `meeting_course`
--
ALTER TABLE `meeting_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_course_meeting_id_foreign` (`meeting_id`),
  ADD KEY `meeting_course_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `meeting_department`
--
ALTER TABLE `meeting_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_department_meeting_id_foreign` (`meeting_id`),
  ADD KEY `meeting_department_department_id_foreign` (`department_id`);

--
-- Indeks untuk tabel `meeting_employee`
--
ALTER TABLE `meeting_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `me_meeting_id` (`meeting_id`),
  ADD KEY `me_employee_id` (`employee_id`);

--
-- Indeks untuk tabel `meeting_employee_category`
--
ALTER TABLE `meeting_employee_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mec_meeting_id_foreign` (`meeting_id`),
  ADD KEY `mec_employee_category_id_foreign` (`employee_category_id`);

--
-- Indeks untuk tabel `meeting_student_record`
--
ALTER TABLE `meeting_student_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msr_meeting_id` (`meeting_id`),
  ADD KEY `msr_student_record_id` (`student_record_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_subject_id_foreign` (`subject_id`),
  ADD KEY `notes_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `online_exams`
--
ALTER TABLE `online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oe_academic_session_id_foreign` (`academic_session_id`),
  ADD KEY `oe_batch_id_foreign` (`batch_id`),
  ADD KEY `oe_subject_id_foreign` (`subject_id`);

--
-- Indeks untuk tabel `online_exam_questions`
--
ALTER TABLE `online_exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oeq_online_exam_id_foreign` (`online_exam_id`);

--
-- Indeks untuk tabel `online_exam_records`
--
ALTER TABLE `online_exam_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oer_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `oer_student_record_id_foreign` (`student_record_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pr_employee_id_foreign` (`employee_id`),
  ADD KEY `pr_employee_salary_id_foreign` (`employee_salary_id`);

--
-- Indeks untuk tabel `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pd_payroll_id_foreign` (`payroll_id`),
  ADD KEY `pd_pay_head_id_foreign` (`pay_head_id`);

--
-- Indeks untuk tabel `payroll_templates`
--
ALTER TABLE `payroll_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payroll_template_details`
--
ALTER TABLE `payroll_template_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ptd_payroll_template_id_foreign` (`payroll_template_id`),
  ADD KEY `ptd_pay_head_id_foreign` (`pay_head_id`),
  ADD KEY `ptd_employee_attendance_type_id_foreign` (`employee_attendance_type_id`);

--
-- Indeks untuk tabel `pay_heads`
--
ALTER TABLE `pay_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `postal_records`
--
ALTER TABLE `postal_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_records_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_student_id_foreign` (`student_id`),
  ADD KEY `registrations_course_id_foreign` (`course_id`),
  ADD KEY `registrations_previous_institute_id_foreign` (`previous_institute_id`);

--
-- Indeks untuk tabel `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_building_id_foreign` (`building_id`);

--
-- Indeks untuk tabel `stock_categories`
--
ALTER TABLE `stock_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_items_stock_category_id_foreign` (`stock_category_id`);

--
-- Indeks untuk tabel `stock_purchases`
--
ALTER TABLE `stock_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_purchases_vendor_id_foreign` (`vendor_id`),
  ADD KEY `stock_purchases_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `stock_purchase_details`
--
ALTER TABLE `stock_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_purchase_details_stock_purchase_id_foreign` (`stock_purchase_id`),
  ADD KEY `stock_purchase_details_stock_item_id_foreign` (`stock_item_id`);

--
-- Indeks untuk tabel `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transfers_room_id_foreign` (`room_id`),
  ADD KEY `stock_transfers_employee_id_foreign` (`employee_id`),
  ADD KEY `stock_transfers_student_id_foreign` (`student_id`),
  ADD KEY `stock_transfers_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `stock_transfer_details`
--
ALTER TABLE `stock_transfer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transfer_details_stock_transfer_id_foreign` (`stock_transfer_id`),
  ADD KEY `stock_transfer_details_stock_item_id_foreign` (`stock_item_id`);

--
-- Indeks untuk tabel `stock_transfer_returns`
--
ALTER TABLE `stock_transfer_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transfer_returns_stock_transfer_id_foreign` (`stock_transfer_id`),
  ADD KEY `stock_transfer_returns_stock_item_id_foreign` (`stock_item_id`),
  ADD KEY `stock_transfer_returns_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_student_parent_id_foreign` (`student_parent_id`),
  ADD KEY `students_blood_group_id_foreign` (`blood_group_id`),
  ADD KEY `students_religion_id_foreign` (`religion_id`),
  ADD KEY `students_category_id_foreign` (`category_id`),
  ADD KEY `students_caste_id_foreign` (`caste_id`);

--
-- Indeks untuk tabel `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_accounts_student_id_foreign` (`student_id`);

--
-- Indeks untuk tabel `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_attendances_batch_id_foreign` (`batch_id`),
  ADD KEY `student_attendances_subject_id_foreign` (`subject_id`);

--
-- Indeks untuk tabel `student_documents`
--
ALTER TABLE `student_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_documents_student_id_foreign` (`student_id`),
  ADD KEY `student_documents_student_document_type_id_foreign` (`student_document_type_id`);

--
-- Indeks untuk tabel `student_document_types`
--
ALTER TABLE `student_document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student_fee_records`
--
ALTER TABLE `student_fee_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fee_records_student_record_id_foreign` (`student_record_id`),
  ADD KEY `student_fee_records_fee_installment_id_foreign` (`fee_installment_id`),
  ADD KEY `student_fee_records_transport_circle_id_foreign` (`transport_circle_id`),
  ADD KEY `student_fee_records_fee_concession_id_foreign` (`fee_concession_id`);

--
-- Indeks untuk tabel `student_fee_record_details`
--
ALTER TABLE `student_fee_record_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fee_record_details_student_fee_record_id_foreign` (`student_fee_record_id`),
  ADD KEY `student_fee_record_details_fee_head_id_foreign` (`fee_head_id`),
  ADD KEY `student_fee_record_details_transaction_id_foreign` (`transaction_id`);

--
-- Indeks untuk tabel `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student_group_collection`
--
ALTER TABLE `student_group_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_group_collection_student_id_foreign` (`student_id`),
  ADD KEY `student_group_collection_student_group_id_foreign` (`student_group_id`);

--
-- Indeks untuk tabel `student_optional_fee_records`
--
ALTER TABLE `student_optional_fee_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_optional_fee_records_student_fee_record_id_foreign` (`student_fee_record_id`),
  ADD KEY `student_optional_fee_records_fee_head_id_foreign` (`fee_head_id`);

--
-- Indeks untuk tabel `student_parents`
--
ALTER TABLE `student_parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_parents_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `student_qualifications`
--
ALTER TABLE `student_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_qualifications_student_id_foreign` (`student_id`);

--
-- Indeks untuk tabel `student_records`
--
ALTER TABLE `student_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_records_academic_session_id_foreign` (`academic_session_id`),
  ADD KEY `student_records_admission_id_foreign` (`admission_id`),
  ADD KEY `student_records_student_id_foreign` (`student_id`),
  ADD KEY `student_records_fee_allocation_id_foreign` (`fee_allocation_id`),
  ADD KEY `student_records_batch_id_foreign` (`batch_id`);

--
-- Indeks untuk tabel `student_siblings`
--
ALTER TABLE `student_siblings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_siblings_student_id_foreign` (`student_id`),
  ADD KEY `student_siblings_sibling_student_id_foreign` (`sibling_student_id`);

--
-- Indeks untuk tabel `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_batch_id_foreign` (`batch_id`);

--
-- Indeks untuk tabel `subject_teachers`
--
ALTER TABLE `subject_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_teachers_subject_id_foreign` (`subject_id`),
  ADD KEY `subject_teachers_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `syllabuses_subject_id_foreign` (`subject_id`),
  ADD KEY `syllabuses_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `syllabus_details`
--
ALTER TABLE `syllabus_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `syllabus_details_syllabus_id_foreign` (`syllabus_id`);

--
-- Indeks untuk tabel `syllabus_topics`
--
ALTER TABLE `syllabus_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `syllabus_topics_syllabus_id_foreign` (`syllabus_id`);

--
-- Indeks untuk tabel `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`);

--
-- Indeks untuk tabel `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indeks untuk tabel `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timetables_batch_id_foreign` (`batch_id`);

--
-- Indeks untuk tabel `timetable_allocations`
--
ALTER TABLE `timetable_allocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timetable_allocations_timetable_id_foreign` (`timetable_id`),
  ADD KEY `timetable_allocations_class_timing_id_foreign` (`class_timing_id`);

--
-- Indeks untuk tabel `timetable_allocation_details`
--
ALTER TABLE `timetable_allocation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timetable_allocation_details_timetable_allocation_id_foreign` (`timetable_allocation_id`),
  ADD KEY `timetable_allocation_details_class_timing_session_id_foreign` (`class_timing_session_id`),
  ADD KEY `timetable_allocation_details_subject_id_foreign` (`subject_id`);

--
-- Indeks untuk tabel `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_bill_id_foreign` (`bill_id`),
  ADD KEY `transactions_income_id_foreign` (`income_id`),
  ADD KEY `transactions_expense_id_foreign` (`expense_id`),
  ADD KEY `transactions_account_transfer_id_foreign` (`account_transfer_id`),
  ADD KEY `transactions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `transactions_account_id_foreign` (`account_id`),
  ADD KEY `transactions_registration_id_foreign` (`registration_id`),
  ADD KEY `transactions_student_fee_record_id_foreign` (`student_fee_record_id`),
  ADD KEY `transactions_book_log_detail_id_foreign` (`book_log_detail_id`),
  ADD KEY `transactions_transaction_group_id_foreign` (`transaction_group_id`),
  ADD KEY `transactions_employee_id_foreign` (`employee_id`),
  ADD KEY `transactions_payroll_id_foreign` (`payroll_id`);

--
-- Indeks untuk tabel `transaction_categories`
--
ALTER TABLE `transaction_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_certificates_student_record_id_foreign` (`student_record_id`);

--
-- Indeks untuk tabel `transport_circles`
--
ALTER TABLE `transport_circles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_circles_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `transport_fees`
--
ALTER TABLE `transport_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_fees_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `transport_fee_details`
--
ALTER TABLE `transport_fee_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_fee_details_transport_fee_id_foreign` (`transport_fee_id`),
  ADD KEY `transport_fee_details_transport_circle_id_foreign` (`transport_circle_id`);

--
-- Indeks untuk tabel `transport_routes`
--
ALTER TABLE `transport_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tr_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `transport_route_details`
--
ALTER TABLE `transport_route_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tr_transport_route_id_foreign` (`transport_route_id`),
  ADD KEY `trd_transport_stoppage_id_foreign` (`transport_stoppage_id`);

--
-- Indeks untuk tabel `transport_route_students`
--
ALTER TABLE `transport_route_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trs_transport_route_detail_id_foreign` (`transport_route_detail_id`),
  ADD KEY `trs_student_record_id_foreign` (`student_record_id`);

--
-- Indeks untuk tabel `transport_stoppages`
--
ALTER TABLE `transport_stoppages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ts_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_preferences_user_id_foreign` (`user_id`),
  ADD KEY `user_preferences_academic_session_id_foreign` (`academic_session_id`);

--
-- Indeks untuk tabel `user_push_tokens`
--
ALTER TABLE `user_push_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_push_tokens_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_vehicle_fuel_type_id_foreign` (`vehicle_fuel_type_id`);

--
-- Indeks untuk tabel `vehicle_documents`
--
ALTER TABLE `vehicle_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_documents_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `vehicle_documents_vehicle_document_type_id_foreign` (`vehicle_document_type_id`);

--
-- Indeks untuk tabel `vehicle_document_types`
--
ALTER TABLE `vehicle_document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vehicle_fuels`
--
ALTER TABLE `vehicle_fuels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_fuels_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `vehicle_fuels_vehicle_fuel_type_id_foreign` (`vehicle_fuel_type_id`);

--
-- Indeks untuk tabel `vehicle_fuel_types`
--
ALTER TABLE `vehicle_fuel_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vehicle_incharges`
--
ALTER TABLE `vehicle_incharges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_incharges_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `vehicle_incharges_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `vehicle_logs`
--
ALTER TABLE `vehicle_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_logs_vehicle_id_foreign` (`vehicle_id`);

--
-- Indeks untuk tabel `vehicle_performance_criterias`
--
ALTER TABLE `vehicle_performance_criterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_performance_criterias_vehicle_id_foreign` (`vehicle_id`);

--
-- Indeks untuk tabel `vehicle_service_centers`
--
ALTER TABLE `vehicle_service_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vehicle_service_records`
--
ALTER TABLE `vehicle_service_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_service_records_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `vehicle_service_records_employee_id_foreign` (`employee_id`),
  ADD KEY `vsr_vehicle_service_center_id_foreign` (`vehicle_service_center_id`);

--
-- Indeks untuk tabel `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_accounts_vendor_id_foreign` (`vendor_id`);

--
-- Indeks untuk tabel `visiting_purposes`
--
ALTER TABLE `visiting_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_logs_visiting_purpose_id_foreign` (`visiting_purpose_id`),
  ADD KEY `visitor_logs_student_id_foreign` (`student_id`),
  ADD KEY `visitor_logs_employee_id_foreign` (`employee_id`);

--
-- Indeks untuk tabel `visitor_messages`
--
ALTER TABLE `visitor_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `academic_sessions`
--
ALTER TABLE `academic_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `account_transfers`
--
ALTER TABLE `account_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `article_types`
--
ALTER TABLE `article_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book_authors`
--
ALTER TABLE `book_authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `book_conditions`
--
ALTER TABLE `book_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `book_languages`
--
ALTER TABLE `book_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `book_logs`
--
ALTER TABLE `book_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book_log_details`
--
ALTER TABLE `book_log_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book_posts`
--
ALTER TABLE `book_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book_post_details`
--
ALTER TABLE `book_post_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book_publishers`
--
ALTER TABLE `book_publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `book_topics`
--
ALTER TABLE `book_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `calling_purposes`
--
ALTER TABLE `calling_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `call_logs`
--
ALTER TABLE `call_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `castes`
--
ALTER TABLE `castes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `certificate_templates`
--
ALTER TABLE `certificate_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_teachers`
--
ALTER TABLE `class_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_timings`
--
ALTER TABLE `class_timings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_timing_sessions`
--
ALTER TABLE `class_timing_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `communications`
--
ALTER TABLE `communications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `communication_batch`
--
ALTER TABLE `communication_batch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `communication_course`
--
ALTER TABLE `communication_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `communication_department`
--
ALTER TABLE `communication_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `communication_employee`
--
ALTER TABLE `communication_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `communication_employee_category`
--
ALTER TABLE `communication_employee_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `communication_student_record`
--
ALTER TABLE `communication_student_record`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `complaint_types`
--
ALTER TABLE `complaint_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `config`
--
ALTER TABLE `config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `course_groups`
--
ALTER TABLE `course_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `employee_accounts`
--
ALTER TABLE `employee_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_attendance_details`
--
ALTER TABLE `employee_attendance_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_attendance_types`
--
ALTER TABLE `employee_attendance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_categories`
--
ALTER TABLE `employee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `employee_designations`
--
ALTER TABLE `employee_designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_document_types`
--
ALTER TABLE `employee_document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `employee_groups`
--
ALTER TABLE `employee_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `employee_group_collection`
--
ALTER TABLE `employee_group_collection`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_leave_allocations`
--
ALTER TABLE `employee_leave_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_leave_allocation_details`
--
ALTER TABLE `employee_leave_allocation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_leave_requests`
--
ALTER TABLE `employee_leave_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_leave_request_details`
--
ALTER TABLE `employee_leave_request_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_leave_types`
--
ALTER TABLE `employee_leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_qualifications`
--
ALTER TABLE `employee_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_salary_details`
--
ALTER TABLE `employee_salary_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_terms`
--
ALTER TABLE `employee_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `enquiry_details`
--
ALTER TABLE `enquiry_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `enquiry_follow_ups`
--
ALTER TABLE `enquiry_follow_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `enquiry_sources`
--
ALTER TABLE `enquiry_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `event_batch`
--
ALTER TABLE `event_batch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `event_course`
--
ALTER TABLE `event_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `event_department`
--
ALTER TABLE `event_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `event_employee_category`
--
ALTER TABLE `event_employee_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_assessments`
--
ALTER TABLE `exam_assessments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_assessment_details`
--
ALTER TABLE `exam_assessment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_grades`
--
ALTER TABLE `exam_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_grade_details`
--
ALTER TABLE `exam_grade_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_observations`
--
ALTER TABLE `exam_observations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_observation_details`
--
ALTER TABLE `exam_observation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam_terms`
--
ALTER TABLE `exam_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_allocations`
--
ALTER TABLE `fee_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_allocation_groups`
--
ALTER TABLE `fee_allocation_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_concessions`
--
ALTER TABLE `fee_concessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_concession_details`
--
ALTER TABLE `fee_concession_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_heads`
--
ALTER TABLE `fee_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_installments`
--
ALTER TABLE `fee_installments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fee_installment_details`
--
ALTER TABLE `fee_installment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `frontend_blocks`
--
ALTER TABLE `frontend_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `frontend_menus`
--
ALTER TABLE `frontend_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `frontend_pages`
--
ALTER TABLE `frontend_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `gate_passes`
--
ALTER TABLE `gate_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `id_card_templates`
--
ALTER TABLE `id_card_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `institute_documents`
--
ALTER TABLE `institute_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ip_filters`
--
ALTER TABLE `ip_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lesson_plans`
--
ALTER TABLE `lesson_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lesson_plan_details`
--
ALTER TABLE `lesson_plan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `locales`
--
ALTER TABLE `locales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `meeting_batch`
--
ALTER TABLE `meeting_batch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `meeting_course`
--
ALTER TABLE `meeting_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `meeting_department`
--
ALTER TABLE `meeting_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `meeting_employee`
--
ALTER TABLE `meeting_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `meeting_employee_category`
--
ALTER TABLE `meeting_employee_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `meeting_student_record`
--
ALTER TABLE `meeting_student_record`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `online_exams`
--
ALTER TABLE `online_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `online_exam_questions`
--
ALTER TABLE `online_exam_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `online_exam_records`
--
ALTER TABLE `online_exam_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payroll_details`
--
ALTER TABLE `payroll_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payroll_templates`
--
ALTER TABLE `payroll_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payroll_template_details`
--
ALTER TABLE `payroll_template_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pay_heads`
--
ALTER TABLE `pay_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT untuk tabel `postal_records`
--
ALTER TABLE `postal_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_categories`
--
ALTER TABLE `stock_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_purchases`
--
ALTER TABLE `stock_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_purchase_details`
--
ALTER TABLE `stock_purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_transfers`
--
ALTER TABLE `stock_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_transfer_details`
--
ALTER TABLE `stock_transfer_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_transfer_returns`
--
ALTER TABLE `stock_transfer_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_accounts`
--
ALTER TABLE `student_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_documents`
--
ALTER TABLE `student_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_document_types`
--
ALTER TABLE `student_document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `student_fee_records`
--
ALTER TABLE `student_fee_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_fee_record_details`
--
ALTER TABLE `student_fee_record_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `student_group_collection`
--
ALTER TABLE `student_group_collection`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_optional_fee_records`
--
ALTER TABLE `student_optional_fee_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_parents`
--
ALTER TABLE `student_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_qualifications`
--
ALTER TABLE `student_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_records`
--
ALTER TABLE `student_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `student_siblings`
--
ALTER TABLE `student_siblings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subject_teachers`
--
ALTER TABLE `subject_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `syllabus_details`
--
ALTER TABLE `syllabus_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `syllabus_topics`
--
ALTER TABLE `syllabus_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `timetable_allocations`
--
ALTER TABLE `timetable_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `timetable_allocation_details`
--
ALTER TABLE `timetable_allocation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaction_categories`
--
ALTER TABLE `transaction_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport_circles`
--
ALTER TABLE `transport_circles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport_fees`
--
ALTER TABLE `transport_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport_fee_details`
--
ALTER TABLE `transport_fee_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport_routes`
--
ALTER TABLE `transport_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport_route_details`
--
ALTER TABLE `transport_route_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport_route_students`
--
ALTER TABLE `transport_route_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport_stoppages`
--
ALTER TABLE `transport_stoppages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_push_tokens`
--
ALTER TABLE `user_push_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_documents`
--
ALTER TABLE `vehicle_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_document_types`
--
ALTER TABLE `vehicle_document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `vehicle_fuels`
--
ALTER TABLE `vehicle_fuels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_fuel_types`
--
ALTER TABLE `vehicle_fuel_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `vehicle_incharges`
--
ALTER TABLE `vehicle_incharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_logs`
--
ALTER TABLE `vehicle_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_performance_criterias`
--
ALTER TABLE `vehicle_performance_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_service_centers`
--
ALTER TABLE `vehicle_service_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_service_records`
--
ALTER TABLE `vehicle_service_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visiting_purposes`
--
ALTER TABLE `visiting_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visitor_messages`
--
ALTER TABLE `visitor_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `account_transfers`
--
ALTER TABLE `account_transfers`
  ADD CONSTRAINT `account_transfers_from_account_id_foreign` FOREIGN KEY (`from_account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_transfers_to_account_id_foreign` FOREIGN KEY (`to_account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_transfers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admissions_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_article_type_id_foreign` FOREIGN KEY (`article_type_id`) REFERENCES `article_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `backups`
--
ALTER TABLE `backups`
  ADD CONSTRAINT `backups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `batches`
--
ALTER TABLE `batches`
  ADD CONSTRAINT `batches_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `batches_exam_grade_id_foreign` FOREIGN KEY (`exam_grade_id`) REFERENCES `exam_grades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `batches_exam_observation_id_foreign` FOREIGN KEY (`exam_observation_id`) REFERENCES `exam_observations` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bills_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bills_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bill_items`
--
ALTER TABLE `bill_items`
  ADD CONSTRAINT `bill_items_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_items_stock_item_id_foreign` FOREIGN KEY (`stock_item_id`) REFERENCES `stock_items` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_book_author_id_foreign` FOREIGN KEY (`book_author_id`) REFERENCES `book_authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_book_language_id_foreign` FOREIGN KEY (`book_language_id`) REFERENCES `book_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_book_publisher_id_foreign` FOREIGN KEY (`book_publisher_id`) REFERENCES `book_publishers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_book_topic_id_foreign` FOREIGN KEY (`book_topic_id`) REFERENCES `book_topics` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_logs`
--
ALTER TABLE `book_logs`
  ADD CONSTRAINT `book_logs_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_logs_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_log_details`
--
ALTER TABLE `book_log_details`
  ADD CONSTRAINT `book_log_details_book_log_id_foreign` FOREIGN KEY (`book_log_id`) REFERENCES `book_logs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_log_details_book_post_detail_id_foreign` FOREIGN KEY (`book_post_detail_id`) REFERENCES `book_post_details` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_posts`
--
ALTER TABLE `book_posts`
  ADD CONSTRAINT `book_posts_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_post_details`
--
ALTER TABLE `book_post_details`
  ADD CONSTRAINT `book_post_details_book_condition_id_foreign` FOREIGN KEY (`book_condition_id`) REFERENCES `book_conditions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_post_details_book_post_id_foreign` FOREIGN KEY (`book_post_id`) REFERENCES `book_posts` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `call_logs`
--
ALTER TABLE `call_logs`
  ADD CONSTRAINT `call_logs_calling_purpose_id_foreign` FOREIGN KEY (`calling_purpose_id`) REFERENCES `calling_purposes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `call_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_certificate_template_id_foreign` FOREIGN KEY (`certificate_template_id`) REFERENCES `certificate_templates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD CONSTRAINT `class_teachers_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teachers_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `class_timings`
--
ALTER TABLE `class_timings`
  ADD CONSTRAINT `class_timings_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `class_timing_sessions`
--
ALTER TABLE `class_timing_sessions`
  ADD CONSTRAINT `class_timing_sessions_class_timing_id_foreign` FOREIGN KEY (`class_timing_id`) REFERENCES `class_timings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `communications`
--
ALTER TABLE `communications`
  ADD CONSTRAINT `communications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `communication_batch`
--
ALTER TABLE `communication_batch`
  ADD CONSTRAINT `communication_batch_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communication_batch_communication_id_foreign` FOREIGN KEY (`communication_id`) REFERENCES `communications` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `communication_course`
--
ALTER TABLE `communication_course`
  ADD CONSTRAINT `communication_course_communication_id_foreign` FOREIGN KEY (`communication_id`) REFERENCES `communications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communication_course_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `communication_department`
--
ALTER TABLE `communication_department`
  ADD CONSTRAINT `communication_department_communication_id_foreign` FOREIGN KEY (`communication_id`) REFERENCES `communications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communication_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `communication_employee`
--
ALTER TABLE `communication_employee`
  ADD CONSTRAINT `ce_communication_id` FOREIGN KEY (`communication_id`) REFERENCES `communications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ce_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `communication_employee_category`
--
ALTER TABLE `communication_employee_category`
  ADD CONSTRAINT `communication_employee_category_communication_id_foreign` FOREIGN KEY (`communication_id`) REFERENCES `communications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communication_employee_category_employee_category_id_foreign` FOREIGN KEY (`employee_category_id`) REFERENCES `employee_categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `communication_student_record`
--
ALTER TABLE `communication_student_record`
  ADD CONSTRAINT `csr_communication_id` FOREIGN KEY (`communication_id`) REFERENCES `communications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `csr_student_record_id` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_complaint_type_id_foreign` FOREIGN KEY (`complaint_type_id`) REFERENCES `complaint_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_course_group_id_foreign` FOREIGN KEY (`course_group_id`) REFERENCES `course_groups` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `course_groups`
--
ALTER TABLE `course_groups`
  ADD CONSTRAINT `course_groups_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_employee_category_id_foreign` FOREIGN KEY (`employee_category_id`) REFERENCES `employee_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `designations_top_designation_id_foreign` FOREIGN KEY (`top_designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_blood_group_id_foreign` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_caste_id_foreign` FOREIGN KEY (`caste_id`) REFERENCES `castes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `employee_accounts`
--
ALTER TABLE `employee_accounts`
  ADD CONSTRAINT `employee_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD CONSTRAINT `ea_employee_attendance_type_id_foreign` FOREIGN KEY (`employee_attendance_type_id`) REFERENCES `employee_attendance_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ea_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_attendance_details`
--
ALTER TABLE `employee_attendance_details`
  ADD CONSTRAINT `ead_employee_attendance_id_foreign` FOREIGN KEY (`employee_attendance_id`) REFERENCES `employee_attendances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ead_employee_attendance_type_id_foreign` FOREIGN KEY (`employee_attendance_type_id`) REFERENCES `employee_attendance_types` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_designations`
--
ALTER TABLE `employee_designations`
  ADD CONSTRAINT `employee_designations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_designations_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_designations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_designations_employee_term_id_foreign` FOREIGN KEY (`employee_term_id`) REFERENCES `employee_terms` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD CONSTRAINT `employee_documents_employee_document_type_id_foreign` FOREIGN KEY (`employee_document_type_id`) REFERENCES `employee_document_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_group_collection`
--
ALTER TABLE `employee_group_collection`
  ADD CONSTRAINT `employee_group_collection_employee_group_id_foreign` FOREIGN KEY (`employee_group_id`) REFERENCES `employee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_group_collection_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_leave_allocations`
--
ALTER TABLE `employee_leave_allocations`
  ADD CONSTRAINT `ela_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_leave_allocation_details`
--
ALTER TABLE `employee_leave_allocation_details`
  ADD CONSTRAINT `elad_employee_leave_allocation_id_foreign` FOREIGN KEY (`employee_leave_allocation_id`) REFERENCES `employee_leave_allocations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elad_employee_leave_type_id_foreign` FOREIGN KEY (`employee_leave_type_id`) REFERENCES `employee_leave_types` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_leave_requests`
--
ALTER TABLE `employee_leave_requests`
  ADD CONSTRAINT `elr_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elr_employee_leave_type_id_foreign` FOREIGN KEY (`employee_leave_type_id`) REFERENCES `employee_leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elr_requester_user_id_foreign` FOREIGN KEY (`requester_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_leave_request_details`
--
ALTER TABLE `employee_leave_request_details`
  ADD CONSTRAINT `elrd_approver_user_id_foreign` FOREIGN KEY (`approver_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elrd_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elrd_employee_leave_request_id_foreign` FOREIGN KEY (`employee_leave_request_id`) REFERENCES `employee_leave_requests` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_qualifications`
--
ALTER TABLE `employee_qualifications`
  ADD CONSTRAINT `employee_qualifications_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD CONSTRAINT `es_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `es_payroll_template_id_foreign` FOREIGN KEY (`payroll_template_id`) REFERENCES `payroll_templates` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_salary_details`
--
ALTER TABLE `employee_salary_details`
  ADD CONSTRAINT `esd_employee_salary_id_foreign` FOREIGN KEY (`employee_salary_id`) REFERENCES `employee_salaries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `esd_payroll_template_detail_id_foreign` FOREIGN KEY (`payroll_template_detail_id`) REFERENCES `payroll_template_details` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_terms`
--
ALTER TABLE `employee_terms`
  ADD CONSTRAINT `employee_terms_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `enquiries`
--
ALTER TABLE `enquiries`
  ADD CONSTRAINT `enquiries_enquiry_source_id_foreign` FOREIGN KEY (`enquiry_source_id`) REFERENCES `enquiry_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiries_enquiry_type_id_foreign` FOREIGN KEY (`enquiry_type_id`) REFERENCES `enquiry_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `enquiry_details`
--
ALTER TABLE `enquiry_details`
  ADD CONSTRAINT `enquiry_details_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `enquiry_details_enquiry_id_foreign` FOREIGN KEY (`enquiry_id`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_details_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `enquiry_follow_ups`
--
ALTER TABLE `enquiry_follow_ups`
  ADD CONSTRAINT `enquiry_follow_ups_enquiry_id_foreign` FOREIGN KEY (`enquiry_id`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_follow_ups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_event_type_id_foreign` FOREIGN KEY (`event_type_id`) REFERENCES `event_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `event_batch`
--
ALTER TABLE `event_batch`
  ADD CONSTRAINT `event_batch_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_batch_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `event_course`
--
ALTER TABLE `event_course`
  ADD CONSTRAINT `event_course_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_course_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `event_department`
--
ALTER TABLE `event_department`
  ADD CONSTRAINT `event_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_department_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `event_employee_category`
--
ALTER TABLE `event_employee_category`
  ADD CONSTRAINT `event_employee_category_employee_category_id_foreign` FOREIGN KEY (`employee_category_id`) REFERENCES `employee_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_employee_category_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_exam_term_id_foreign` FOREIGN KEY (`exam_term_id`) REFERENCES `exam_terms` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `exam_assessments`
--
ALTER TABLE `exam_assessments`
  ADD CONSTRAINT `ea_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_assessment_details`
--
ALTER TABLE `exam_assessment_details`
  ADD CONSTRAINT `ead_exam_assessment_id_foreign` FOREIGN KEY (`exam_assessment_id`) REFERENCES `exam_assessments` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_grades`
--
ALTER TABLE `exam_grades`
  ADD CONSTRAINT `eg_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_grade_details`
--
ALTER TABLE `exam_grade_details`
  ADD CONSTRAINT `egd_exam_grade_id_foreign` FOREIGN KEY (`exam_grade_id`) REFERENCES `exam_grades` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_observations`
--
ALTER TABLE `exam_observations`
  ADD CONSTRAINT `eo_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_observation_details`
--
ALTER TABLE `exam_observation_details`
  ADD CONSTRAINT `eod_exam_observation_id_foreign` FOREIGN KEY (`exam_observation_id`) REFERENCES `exam_observations` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_records`
--
ALTER TABLE `exam_records`
  ADD CONSTRAINT `er_exam_schedule_id_foreign` FOREIGN KEY (`exam_schedule_id`) REFERENCES `exam_schedules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `er_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `es_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `es_exam_assessment_id_foreign` FOREIGN KEY (`exam_assessment_id`) REFERENCES `exam_assessments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `es_exam_grade_id_foreign` FOREIGN KEY (`exam_grade_id`) REFERENCES `exam_grades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `es_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exam_terms`
--
ALTER TABLE `exam_terms`
  ADD CONSTRAINT `et_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_terms_course_group_id_foreign` FOREIGN KEY (`course_group_id`) REFERENCES `course_groups` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_transaction_category_id_foreign` FOREIGN KEY (`transaction_category_id`) REFERENCES `transaction_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_allocations`
--
ALTER TABLE `fee_allocations`
  ADD CONSTRAINT `fee_allocations_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_allocations_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_allocation_groups`
--
ALTER TABLE `fee_allocation_groups`
  ADD CONSTRAINT `fee_allocation_groups_fee_allocation_id_foreign` FOREIGN KEY (`fee_allocation_id`) REFERENCES `fee_allocations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_allocation_groups_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_concessions`
--
ALTER TABLE `fee_concessions`
  ADD CONSTRAINT `fee_concessions_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_concession_details`
--
ALTER TABLE `fee_concession_details`
  ADD CONSTRAINT `fee_concession_details_fee_concession_id_foreign` FOREIGN KEY (`fee_concession_id`) REFERENCES `fee_concessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_concession_details_fee_head_id_foreign` FOREIGN KEY (`fee_head_id`) REFERENCES `fee_heads` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD CONSTRAINT `fee_groups_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD CONSTRAINT `fee_heads_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_installments`
--
ALTER TABLE `fee_installments`
  ADD CONSTRAINT `fee_installments_fee_allocation_group_id_foreign` FOREIGN KEY (`fee_allocation_group_id`) REFERENCES `fee_allocation_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_installments_transport_fee_id_foreign` FOREIGN KEY (`transport_fee_id`) REFERENCES `transport_fees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fee_installment_details`
--
ALTER TABLE `fee_installment_details`
  ADD CONSTRAINT `fee_installment_details_fee_head_id_foreign` FOREIGN KEY (`fee_head_id`) REFERENCES `fee_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_installment_details_fee_installment_id_foreign` FOREIGN KEY (`fee_installment_id`) REFERENCES `fee_installments` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `frontend_blocks`
--
ALTER TABLE `frontend_blocks`
  ADD CONSTRAINT `frontend_blocks_frontend_menu_id_foreign` FOREIGN KEY (`frontend_menu_id`) REFERENCES `frontend_menus` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `frontend_menus`
--
ALTER TABLE `frontend_menus`
  ADD CONSTRAINT `frontend_menus_frontend_page_id_foreign` FOREIGN KEY (`frontend_page_id`) REFERENCES `frontend_pages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `frontend_menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `frontend_menus` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `gate_passes`
--
ALTER TABLE `gate_passes`
  ADD CONSTRAINT `gate_passes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gate_passes_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gate_passes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_transaction_category_id_foreign` FOREIGN KEY (`transaction_category_id`) REFERENCES `transaction_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lesson_plans`
--
ALTER TABLE `lesson_plans`
  ADD CONSTRAINT `lesson_plans_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_plans_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lesson_plan_details`
--
ALTER TABLE `lesson_plan_details`
  ADD CONSTRAINT `lesson_plan_details_lesson_plan_id_foreign` FOREIGN KEY (`lesson_plan_id`) REFERENCES `lesson_plans` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `meeting_batch`
--
ALTER TABLE `meeting_batch`
  ADD CONSTRAINT `meeting_batch_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_batch_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `meeting_course`
--
ALTER TABLE `meeting_course`
  ADD CONSTRAINT `meeting_course_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_course_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `meeting_department`
--
ALTER TABLE `meeting_department`
  ADD CONSTRAINT `meeting_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_department_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `meeting_employee`
--
ALTER TABLE `meeting_employee`
  ADD CONSTRAINT `me_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `me_meeting_id` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `meeting_employee_category`
--
ALTER TABLE `meeting_employee_category`
  ADD CONSTRAINT `mec_employee_category_id_foreign` FOREIGN KEY (`employee_category_id`) REFERENCES `employee_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mec_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `meeting_student_record`
--
ALTER TABLE `meeting_student_record`
  ADD CONSTRAINT `msr_meeting_id` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `msr_student_record_id` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `online_exams`
--
ALTER TABLE `online_exams`
  ADD CONSTRAINT `oe_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oe_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oe_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `online_exam_questions`
--
ALTER TABLE `online_exam_questions`
  ADD CONSTRAINT `oeq_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `online_exam_records`
--
ALTER TABLE `online_exam_records`
  ADD CONSTRAINT `oer_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oer_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `pr_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pr_employee_salary_id_foreign` FOREIGN KEY (`employee_salary_id`) REFERENCES `employee_salaries` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD CONSTRAINT `pd_pay_head_id_foreign` FOREIGN KEY (`pay_head_id`) REFERENCES `pay_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pd_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payroll_template_details`
--
ALTER TABLE `payroll_template_details`
  ADD CONSTRAINT `ptd_employee_attendance_type_id_foreign` FOREIGN KEY (`employee_attendance_type_id`) REFERENCES `employee_attendance_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ptd_pay_head_id_foreign` FOREIGN KEY (`pay_head_id`) REFERENCES `pay_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ptd_payroll_template_id_foreign` FOREIGN KEY (`payroll_template_id`) REFERENCES `payroll_templates` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `postal_records`
--
ALTER TABLE `postal_records`
  ADD CONSTRAINT `postal_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_previous_institute_id_foreign` FOREIGN KEY (`previous_institute_id`) REFERENCES `institutes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stock_items`
--
ALTER TABLE `stock_items`
  ADD CONSTRAINT `stock_items_stock_category_id_foreign` FOREIGN KEY (`stock_category_id`) REFERENCES `stock_categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stock_purchases`
--
ALTER TABLE `stock_purchases`
  ADD CONSTRAINT `stock_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_purchases_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stock_purchase_details`
--
ALTER TABLE `stock_purchase_details`
  ADD CONSTRAINT `stock_purchase_details_stock_item_id_foreign` FOREIGN KEY (`stock_item_id`) REFERENCES `stock_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_purchase_details_stock_purchase_id_foreign` FOREIGN KEY (`stock_purchase_id`) REFERENCES `stock_purchases` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD CONSTRAINT `stock_transfers_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfers_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stock_transfer_details`
--
ALTER TABLE `stock_transfer_details`
  ADD CONSTRAINT `stock_transfer_details_stock_item_id_foreign` FOREIGN KEY (`stock_item_id`) REFERENCES `stock_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfer_details_stock_transfer_id_foreign` FOREIGN KEY (`stock_transfer_id`) REFERENCES `stock_transfers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stock_transfer_returns`
--
ALTER TABLE `stock_transfer_returns`
  ADD CONSTRAINT `stock_transfer_returns_stock_item_id_foreign` FOREIGN KEY (`stock_item_id`) REFERENCES `stock_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfer_returns_stock_transfer_id_foreign` FOREIGN KEY (`stock_transfer_id`) REFERENCES `stock_transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfer_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_blood_group_id_foreign` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_caste_id_foreign` FOREIGN KEY (`caste_id`) REFERENCES `castes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_student_parent_id_foreign` FOREIGN KEY (`student_parent_id`) REFERENCES `student_parents` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD CONSTRAINT `student_accounts_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD CONSTRAINT `student_attendances_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `student_documents`
--
ALTER TABLE `student_documents`
  ADD CONSTRAINT `student_documents_student_document_type_id_foreign` FOREIGN KEY (`student_document_type_id`) REFERENCES `student_document_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_documents_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `student_fee_records`
--
ALTER TABLE `student_fee_records`
  ADD CONSTRAINT `student_fee_records_fee_concession_id_foreign` FOREIGN KEY (`fee_concession_id`) REFERENCES `fee_concessions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_fee_records_fee_installment_id_foreign` FOREIGN KEY (`fee_installment_id`) REFERENCES `fee_installments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fee_records_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fee_records_transport_circle_id_foreign` FOREIGN KEY (`transport_circle_id`) REFERENCES `transport_circles` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `student_fee_record_details`
--
ALTER TABLE `student_fee_record_details`
  ADD CONSTRAINT `student_fee_record_details_fee_head_id_foreign` FOREIGN KEY (`fee_head_id`) REFERENCES `fee_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fee_record_details_student_fee_record_id_foreign` FOREIGN KEY (`student_fee_record_id`) REFERENCES `student_fee_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fee_record_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `student_group_collection`
--
ALTER TABLE `student_group_collection`
  ADD CONSTRAINT `student_group_collection_student_group_id_foreign` FOREIGN KEY (`student_group_id`) REFERENCES `student_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_group_collection_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `student_optional_fee_records`
--
ALTER TABLE `student_optional_fee_records`
  ADD CONSTRAINT `student_optional_fee_records_fee_head_id_foreign` FOREIGN KEY (`fee_head_id`) REFERENCES `fee_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_optional_fee_records_student_fee_record_id_foreign` FOREIGN KEY (`student_fee_record_id`) REFERENCES `student_fee_records` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `student_parents`
--
ALTER TABLE `student_parents`
  ADD CONSTRAINT `student_parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `student_qualifications`
--
ALTER TABLE `student_qualifications`
  ADD CONSTRAINT `student_qualifications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `student_records`
--
ALTER TABLE `student_records`
  ADD CONSTRAINT `student_records_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_admission_id_foreign` FOREIGN KEY (`admission_id`) REFERENCES `admissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_fee_allocation_id_foreign` FOREIGN KEY (`fee_allocation_id`) REFERENCES `fee_allocations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `student_siblings`
--
ALTER TABLE `student_siblings`
  ADD CONSTRAINT `student_siblings_sibling_student_id_foreign` FOREIGN KEY (`sibling_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_siblings_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subject_teachers`
--
ALTER TABLE `subject_teachers`
  ADD CONSTRAINT `subject_teachers_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_teachers_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD CONSTRAINT `syllabuses_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `syllabuses_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `syllabus_details`
--
ALTER TABLE `syllabus_details`
  ADD CONSTRAINT `syllabus_details_syllabus_id_foreign` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabuses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `syllabus_topics`
--
ALTER TABLE `syllabus_topics`
  ADD CONSTRAINT `syllabus_topics_syllabus_id_foreign` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabuses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `timetables`
--
ALTER TABLE `timetables`
  ADD CONSTRAINT `timetables_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `timetable_allocations`
--
ALTER TABLE `timetable_allocations`
  ADD CONSTRAINT `timetable_allocations_class_timing_id_foreign` FOREIGN KEY (`class_timing_id`) REFERENCES `class_timings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timetable_allocations_timetable_id_foreign` FOREIGN KEY (`timetable_id`) REFERENCES `timetables` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `timetable_allocation_details`
--
ALTER TABLE `timetable_allocation_details`
  ADD CONSTRAINT `timetable_allocation_details_class_timing_session_id_foreign` FOREIGN KEY (`class_timing_session_id`) REFERENCES `class_timing_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timetable_allocation_details_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `timetable_allocation_details_timetable_allocation_id_foreign` FOREIGN KEY (`timetable_allocation_id`) REFERENCES `timetable_allocations` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_account_transfer_id_foreign` FOREIGN KEY (`account_transfer_id`) REFERENCES `account_transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_book_log_detail_id_foreign` FOREIGN KEY (`book_log_detail_id`) REFERENCES `book_log_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_income_id_foreign` FOREIGN KEY (`income_id`) REFERENCES `incomes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_student_fee_record_id_foreign` FOREIGN KEY (`student_fee_record_id`) REFERENCES `student_fee_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_transaction_group_id_foreign` FOREIGN KEY (`transaction_group_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD CONSTRAINT `transfer_certificates_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transport_circles`
--
ALTER TABLE `transport_circles`
  ADD CONSTRAINT `transport_circles_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transport_fees`
--
ALTER TABLE `transport_fees`
  ADD CONSTRAINT `transport_fees_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transport_fee_details`
--
ALTER TABLE `transport_fee_details`
  ADD CONSTRAINT `transport_fee_details_transport_circle_id_foreign` FOREIGN KEY (`transport_circle_id`) REFERENCES `transport_circles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transport_fee_details_transport_fee_id_foreign` FOREIGN KEY (`transport_fee_id`) REFERENCES `transport_fees` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transport_routes`
--
ALTER TABLE `transport_routes`
  ADD CONSTRAINT `tr_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transport_route_details`
--
ALTER TABLE `transport_route_details`
  ADD CONSTRAINT `tr_transport_route_id_foreign` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trd_transport_stoppage_id_foreign` FOREIGN KEY (`transport_stoppage_id`) REFERENCES `transport_stoppages` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transport_route_students`
--
ALTER TABLE `transport_route_students`
  ADD CONSTRAINT `trs_student_record_id_foreign` FOREIGN KEY (`student_record_id`) REFERENCES `student_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trs_transport_route_detail_id_foreign` FOREIGN KEY (`transport_route_detail_id`) REFERENCES `transport_route_details` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transport_stoppages`
--
ALTER TABLE `transport_stoppages`
  ADD CONSTRAINT `ts_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD CONSTRAINT `user_preferences_academic_session_id_foreign` FOREIGN KEY (`academic_session_id`) REFERENCES `academic_sessions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_preferences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_push_tokens`
--
ALTER TABLE `user_push_tokens`
  ADD CONSTRAINT `user_push_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_vehicle_fuel_type_id_foreign` FOREIGN KEY (`vehicle_fuel_type_id`) REFERENCES `vehicle_fuel_types` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `vehicle_documents`
--
ALTER TABLE `vehicle_documents`
  ADD CONSTRAINT `vehicle_documents_vehicle_document_type_id_foreign` FOREIGN KEY (`vehicle_document_type_id`) REFERENCES `vehicle_document_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_documents_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vehicle_fuels`
--
ALTER TABLE `vehicle_fuels`
  ADD CONSTRAINT `vehicle_fuels_vehicle_fuel_type_id_foreign` FOREIGN KEY (`vehicle_fuel_type_id`) REFERENCES `vehicle_fuel_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_fuels_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vehicle_incharges`
--
ALTER TABLE `vehicle_incharges`
  ADD CONSTRAINT `vehicle_incharges_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_incharges_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vehicle_logs`
--
ALTER TABLE `vehicle_logs`
  ADD CONSTRAINT `vehicle_logs_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vehicle_performance_criterias`
--
ALTER TABLE `vehicle_performance_criterias`
  ADD CONSTRAINT `vehicle_performance_criterias_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `vehicle_service_records`
--
ALTER TABLE `vehicle_service_records`
  ADD CONSTRAINT `vehicle_service_records_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_service_records_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vsr_vehicle_service_center_id_foreign` FOREIGN KEY (`vehicle_service_center_id`) REFERENCES `vehicle_service_centers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  ADD CONSTRAINT `vendor_accounts_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD CONSTRAINT `visitor_logs_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitor_logs_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitor_logs_visiting_purpose_id_foreign` FOREIGN KEY (`visiting_purpose_id`) REFERENCES `visiting_purposes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
