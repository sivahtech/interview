-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 12:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview`
--

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
(1, '2014_10_12_100000_create_miniorange_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_admin`
--

CREATE TABLE `mo_admin` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `password` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mo_admin`
--

INSERT INTO `mo_admin` (`id`, `email`, `password`) VALUES
('1', 'at.arunthakur2001@gmail.com', 'ee6cd4057b92445292782b19c4a8a5183884dc82');

-- --------------------------------------------------------

--
-- Table structure for table `mo_config`
--

CREATE TABLE `mo_config` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mo_saml_host_name` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_admin_email` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_admin_password` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_admin_customer_key` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_admin_api_key` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_customer_token` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_free_version` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_message` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_use_case` text COLLATE utf8mb4_unicode_ci,
  `idp_entity_id` text COLLATE utf8mb4_unicode_ci,
  `saml_login_url` text COLLATE utf8mb4_unicode_ci,
  `saml_login_binding_type` text COLLATE utf8mb4_unicode_ci,
  `sp_base_url` text COLLATE utf8mb4_unicode_ci,
  `sp_entity_id` text COLLATE utf8mb4_unicode_ci,
  `acs_url` text COLLATE utf8mb4_unicode_ci,
  `single_logout_url` text COLLATE utf8mb4_unicode_ci,
  `saml_am_email` text COLLATE utf8mb4_unicode_ci,
  `saml_am_username` text COLLATE utf8mb4_unicode_ci,
  `relaystate_url` text COLLATE utf8mb4_unicode_ci,
  `site_logout_url` text COLLATE utf8mb4_unicode_ci,
  `saml_x509_certificate` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_new_registration` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_admin_phone` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_verify_customer` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_idp_config_complete` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_transactionId` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_guest_enabled` text COLLATE utf8mb4_unicode_ci,
  `mo_saml_registration_status` text COLLATE utf8mb4_unicode_ci,
  `session_index` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mo_config`
--

INSERT INTO `mo_config` (`id`, `mo_saml_host_name`, `mo_saml_admin_email`, `mo_saml_admin_password`, `mo_saml_admin_customer_key`, `mo_saml_admin_api_key`, `mo_saml_customer_token`, `mo_saml_free_version`, `mo_saml_message`, `mo_saml_use_case`, `idp_entity_id`, `saml_login_url`, `saml_login_binding_type`, `sp_base_url`, `sp_entity_id`, `acs_url`, `single_logout_url`, `saml_am_email`, `saml_am_username`, `relaystate_url`, `site_logout_url`, `saml_x509_certificate`, `mo_saml_new_registration`, `mo_saml_admin_phone`, `mo_saml_verify_customer`, `mo_saml_idp_config_complete`, `mo_saml_transactionId`, `mo_saml_guest_enabled`, `mo_saml_registration_status`, `session_index`) VALUES
('1', 'https://login.xecurify.com/', 'at.arunthakur2001@gmail.com', NULL, '354683', NULL, NULL, 'reHU6WPSSxmpR3gDlsoMlknIi4SPvX0v0oxC7GUBKmk=', 'Settings saved successfully.', '', 'https://login.xecurify.com/moas/354683/f0cbd218-3242-46f7-aa22-71a1c6eacdf5', 'https://login.xecurify.com/moas/idp/samlsso/f0cbd218-3242-46f7-aa22-71a1c6eacdf5', 'HttpRedirect', 'http://localhost/example-app/public', 'http://localhost/example-app/public/miniorange_laravel_saml_connector', 'http://localhost/example-app/public/sso.php', NULL, NULL, NULL, NULL, NULL, NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, '5ca56c59cde14d5ca08462ba113381d2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'at.arunthakur2001@gmail.com', 'at.arunthakur2001@gmail.com', NULL, '$2y$10$Wp4oA8lSkEJnUhq7uYoSq.qEp75U44Us4PsUSyPzHiu6B6OutnseO', 'mCF7CyvLAORLrJJCktMcXerQnJ492XKKFry40yn9J82RfcqsEEy3L9AZDsGc', '2024-09-20 17:37:48', '2024-09-20 17:37:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mo_admin`
--
ALTER TABLE `mo_admin`
  ADD UNIQUE KEY `mo_admin_id_unique` (`id`);

--
-- Indexes for table `mo_config`
--
ALTER TABLE `mo_config`
  ADD UNIQUE KEY `mo_config_id_unique` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
