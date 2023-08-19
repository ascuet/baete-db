-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 12:51 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baete_db`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_06_18_071909_create_student_infos_table', 1),
(11, '2023_06_18_105246_create_session_course_pos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_course_pos`
--

CREATE TABLE `session_course_pos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `po1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_course_pos`
--

INSERT INTO `session_course_pos` (`id`, `course`, `semester`, `year`, `po1`, `po2`, `po3`, `po4`, `po5`, `po6`, `po7`, `po8`, `po9`, `po10`, `po11`, `po12`, `created_at`, `updated_at`) VALUES
(1, 'DM', 'Fall', 2021, '8', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'ADA', 'Fall', 2022, '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ADAL', 'Fall', 2022, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_infos`
--

CREATE TABLE `student_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pos`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_infos`
--

INSERT INTO `student_infos` (`id`, `roll`, `name`, `course`, `semester`, `year`, `type`, `section`, `po1`, `po2`, `po3`, `po4`, `po5`, `po6`, `po7`, `po8`, `po9`, `po10`, `po11`, `po12`, `pos`, `created_at`, `updated_at`) VALUES
(1, '1603110201180', 'Ananna Dey', 'DM', 'Fall ', 2021, 'Regular', 'A', '7', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":7},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(2, '1603110201239', 'Sadia Salim', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(3, '1703310201541', 'Jiku Deb Nath', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(4, '1803410201606', 'Pritom Barua', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(5, '1803510201694', 'Md. Emran Hossen', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(6, '1803510201731', 'Iftekhar Shahed Iftu', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(7, '1903710201860', 'Sidratul Muntaha Saima', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(8, '1903710201991', 'SALMA AMIN', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(9, '1903710202062', 'Rajon Datta', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(10, '2003810202071', 'Tahiatul Islam Tamanna', 'DM', 'Fall ', 2021, 'Regular', 'A', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(11, '2003810202101', 'BRISHTY DAS', 'DM', 'Fall ', 2021, 'Regular', 'A', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(12, '2103910202103', 'Afifa Chowdhury', 'DM', 'Fall ', 2021, 'Regular', 'A', '0', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(13, '2103910202104', 'Sabrina Naher Chaithi', 'DM', 'Fall ', 2021, 'Regular', 'A', '7', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":7},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(14, '2103910202105', 'MD AZMAYEN', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(15, '2103910202106', 'ABDULLAH AL MIRAJ', 'DM', 'Fall ', 2021, 'Regular', 'A', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(16, '2103910202107', 'MOHAMMAD SAKIB KHAN', 'DM', 'Fall ', 2021, 'Regular', 'A', '8', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":8},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(17, '2103910202108', 'MASUD KHAN', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(18, '2103910202109', 'FATEMA SULTANA JUHI', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(19, '2103910202110', 'Inquyad Bin Mahbub', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(20, '2103910202111', 'Mohammad Ashikur Rahman', 'DM', 'Fall ', 2021, 'Regular', 'A', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(21, '2103910202112', 'MOSTAFA REZA MEHEDI', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(22, '2103910202113', 'ISMAM AZAD RAMIM', 'DM', 'Fall ', 2021, 'Regular', 'A', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(23, '2103910202114', 'ABU MD. SELIM', 'DM', 'Fall ', 2021, 'Regular', 'A', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(24, '2103910202115', 'SURID NATH', 'DM', 'Fall ', 2021, 'Regular', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0},{\"name\":null,\"value\":null}]', NULL, NULL),
(25, '2103910202116', 'Raktim Barua', 'DM', 'Fall ', 2021, 'Regular', 'A', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(26, '2103910202120', 'SHAYEM MAHMUD', 'DM', 'Fall ', 2021, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(27, '2103910202121', 'Fatema Tuz Zohra Faria', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(28, '2103910202123', 'Tafaiful Ahamad Babo', 'DM', 'Fall ', 2021, 'Regular', 'A', '7', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":7},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(29, '2103910202124', 'NAILA ZAHIR', 'DM', 'Fall ', 2021, 'Regular', 'A', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(30, '2103910202125', 'Bristy Chowdhury', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(31, '2103910202128', 'DHRUVA MOHAJAN', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(32, '2103910202130', 'ABDULLAH MOHAMMAD SHAD', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(33, '2103910202131', 'MD. ABDULLAH JOBAYER', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(34, '2103910202132', 'ANUPOM KANTI NATH', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(35, '2103910202133', 'MAMUNUL KABIR', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(36, '2103910202134', 'BIJOY BISHWAS', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(37, '2103910202135', 'JARIN SINGH RAY', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":1},{\"name\":null,\"value\":null}]', NULL, NULL),
(38, '2103910202136', 'MD. REAZ UDDIN CHOWDHURY', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(39, '2103910202137', 'Isfa Sultana Tarin', 'DM', 'Fall ', 2021, 'Regular', 'A', '8', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":8},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(40, '2103910202138', 'Nusrat Jahan Priota', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(41, '2103910202139', 'Amamul Ahasan', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(42, '2103910202140', 'Mohammad Joynal Abedin', 'DM', 'Fall ', 2021, 'Regular', 'A', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(43, '2103910202141', 'SANOWER HOSSAIN', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(44, '2103910202142', 'Mohiuddin Ishmam', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(45, '2103910202143', 'RIYA DAS', 'DM', 'Fall ', 2021, 'Regular', 'A', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":5},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(46, '2103910202144', 'Sudiptha Chakma', 'DM', 'Fall ', 2021, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(47, '2103910202145', 'MOHAMMAD IFTIKHAR MAHMOOD CHOWDHURY', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(48, '2103910202146', 'Avinandan Chowdhury', 'DM', 'Fall ', 2021, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(49, '2103910202147', 'Mohammed Sayed Anowar', 'DM', 'Fall ', 2021, 'Regular', 'A', '8', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":8},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(50, '2103910202148', 'Md Arif Istiak', 'DM', 'Fall ', 2021, 'Regular', 'A', '7', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":7},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(51, '2103910202149', 'Dhruba Dey', 'DM', 'Fall ', 2021, 'Regular', 'A', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(52, '2103910202150', 'Ankur Kanti Paul', 'DM', 'Fall ', 2021, 'Regular', 'A', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6},{\"name\":\"PO2\",\"value\":2},{\"name\":null,\"value\":null}]', NULL, NULL),
(53, '1703210201327', 'Rimpy Akter ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(54, '1703310201403', 'Nusrat Jahan ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(55, '1703310201413', 'Md Ashir Ishraq', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(56, '1703310201414', 'Pronamika Davi ', 'ADA', 'Fall', 2022, 'Retake', 'A', '2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(57, '1703310201428', 'Nurunnesa Mukta ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(58, '1703310201436', 'Anik Dey ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(59, '1703310201474', 'Nosrat Afza ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(60, '1803410201550', 'Md. Ifthekhar Alam Akib ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(61, '1803410201572', 'A M Fayed Hasan ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(62, '1803410201579', 'Amartya Rakshit ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(63, '1803410201582', 'Mohammad Sarfaraj Rahman ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(64, '1803410201587', 'Ismail Hossain ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(65, '1803410201594', 'Md Mahfuzur Rahman ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(66, '1803410201595', 'Shaila Afroz Khan Toma', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(67, '1803510201668', 'Pragga Barua', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(68, '1803510201694', 'Md. Emran Hossen', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(69, '1803510201721', 'Ethon Nath', 'ADA', 'Fall', 2022, 'Regular', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(70, '1803510201723', 'Jannatul Aivy Bristy ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(71, '1803510201737', 'Naimur Rahman ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(72, '1903610201769', 'Fahad Bin Kalam', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(73, '1903610201779', 'MD. MONIR ULLAH', 'ADA', 'Fall', 2022, 'Regular', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(74, '1903610201801', 'Iftekhar Hossain', 'ADA', 'Fall', 2022, 'Regular', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(75, '1903610201807', 'Sourav Das', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(76, '1903710201823', 'Rifatul Karim Zesan', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(77, '1903710201833', 'Aparup Barua ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(78, '1903710201854', 'Priya Datta Sunanda ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(79, '1903710201864', 'Md. Minhajul Karim ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(80, '1903710201883', 'Rithika Saha ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(81, '1903710201886', 'Jue Bhattacharjee ', 'ADA', 'Fall', 2022, 'Retake', 'A', '2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(82, '1903710201890', 'Md.Faisal mahmud', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(83, '1903710201902', 'Israth Arfin Riva', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(84, '1903710201903', 'Rehinfer Yeasmin', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(85, '1903710201923', 'Imam Ali Mito ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(86, '1903710201924', 'Sohoraf Ahamad Arab ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(87, '1903710201940', 'Sanjukta Mishraw', 'ADA', 'Fall', 2022, 'Regular', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(88, '1903710201955', 'Abreethe Biswas ', 'ADA', 'Fall', 2022, 'Retake', 'A', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":0},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(89, '1903710201976', 'Nowsin Priya Tasmim ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(90, '1903710201987', 'Mohammad Habib Ullah', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(91, '1903710201991', 'SALMA AMIN', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(92, '1903710202014', 'Mohammad Rashel', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(93, '1903710202022', 'Shakawat Hussain', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(94, '1903710202024', 'Hur-E-Jannath ', 'ADA', 'Fall', 2022, 'Retake', 'A', '2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(95, '1903710202025', 'Abu Bakkar Babu', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(96, '1903710202036', 'Miraj Uddin', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(97, '1903710202037', 'Mohammed Yonose ', 'ADA', 'Fall', 2022, 'Retake', 'A', '2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(98, '1903710202038', 'Kothiza Begum Ayrin ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(99, '1903710202059', 'MD. Simon Alam Sakib', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(100, '1903710202062', 'Rajon Datta', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(101, '1903710202064', 'H.M. Tarequl Karim', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(102, '2003810202070', 'ISRAT JAHAN ', 'ADA', 'Fall', 2022, 'Retake', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(103, '2003810202071', 'Tahiatul Islam Tamanna', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(104, '2003810202086', 'AZIZA AFRIN NADIA', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(105, '2003810202089', 'MD. Abdulla Al Shakaet', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(106, '2003810202101', 'BRISHTY DAS', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(107, '2103910202104', 'Sabrina Naher Chaithi', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(108, '2103910202105', 'MD AZMAYEN', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(109, '2103910202106', 'ABDULLAH AL MIRAJ', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(110, '2103910202107', 'MOHAMMAD SAKIB KHAN', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(111, '2103910202109', 'FATEMA SULTANA JUHI', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(112, '2103910202110', 'Inquyad Bin Mahbub', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(113, '2103910202111', 'Mohammad Ashikur Rahman', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(114, '2103910202112', 'MOSTAFA REZA MEHEDI', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(115, '2103910202113', 'ISMAM AZAD RAMIM', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(116, '2103910202116', 'Raktim Barua', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(117, '2103910202121', 'Fatema Tuz Zohra Faria', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(118, '2103910202123', 'Tufail Ahamad Babo', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(119, '2103910202124', 'NAILA ZAHIR', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(120, '2103910202125', 'Bristy Chowdhury', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(121, '2103910202128', 'DHRUVA MOHAJAN', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(122, '2103910202130', 'ABDULLAH MOHAMMAD SHAD', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(123, '2103910202131', 'MD. ABDULLAH JOBAYER', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(124, '2103910202132', 'ANUPOM KANTI NATH', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(125, '2103910202134', 'BIJOY BISHWAS', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(126, '2103910202135', 'JARIN SINGH RAY', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(127, '2103910202136', 'MD. REAZ UDDIN CHOWDHURY', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(128, '2103910202137', 'Isfa Sultana Tarin', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(129, '2103910202138', 'Nusrat Jahan Priota', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(130, '2103910202139', 'Amamul Ahasan', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(131, '2103910202140', 'Mohammad Joynal Abedin', 'ADA', 'Fall', 2022, 'Regular', 'A', '2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":2},{\"name\":\"PO2\",\"value\":0}]', NULL, NULL),
(132, '2103910202141', 'SANOWER HOSSAIN', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(133, '2103910202142', 'Mohiuddin Ishmam', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(134, '2103910202143', 'RIYA DAS', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(135, '2103910202144', 'Sudiptha Chakma', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(136, '2103910202145', 'Mohammad Iftikhar Mahmood Chowdhury', 'ADA', 'Fall', 2022, 'Regular', 'A', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":1},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(137, '2103910202146', 'Avinandan Chowdhury', 'ADA', 'Fall', 2022, 'Regular', 'A', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":3},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(138, '2103910202147', 'Mohammed Sayed Anowar', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(139, '2103910202148', 'Md Arif Istiak', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(140, '2103910202149', 'Dhruba Dey', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":2}]', NULL, NULL),
(141, '2103910202150', 'Ankur Kanti Paul', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(142, '0222210005101141', 'K.M. ADNAN ABSAR JILAN', 'ADA', 'Fall', 2022, 'Regular', 'A', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":4},{\"name\":\"PO2\",\"value\":1}]', NULL, NULL),
(205, '1703310201436', 'Anik Dey', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(206, '1703310201541', 'Jiku Deb Nath', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(207, '1803510201668', 'Pragga Barua', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(208, '1803510201694', 'Md. Emran Hossen', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(209, '1803510201696', 'S M Musfique Saleh', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(210, '1903610201759', 'Prataya Bhowmick', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(211, '1903610201779', 'MD. MONIR ULLAH', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(212, '1903610201807', 'Sourav Das', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(213, '1903710201890', 'Md.Faisal mahmud', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(214, '1903710201987', 'Mohammad Habib Ullah', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(215, '1903710201991', 'SALMA AMIN', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(216, '1903710202022', 'Shakawat Hussain', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(217, '1903710202036', 'Miraj Uddin', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(218, '1903710202062', 'Rajon Datta', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(219, '2003810202071', 'Tahiatul Islam Tamanna', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(220, '2003810202101', 'BRISHTY DAS', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(221, '2103910202104', 'Sabrina Naher Chaithi', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(222, '2103910202105', 'MD AZMAYEN', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(223, '2103910202106', 'ABDULLAH AL MIRAJ', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(224, '2103910202107', 'MOHAMMAD SAKIB KHAN', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(225, '2103910202109', 'FATEMA SULTANA JUHI', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(226, '2103910202110', 'Inquyad Bin Mahbub', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(227, '2103910202111', 'Mohammad Ashikur Rahman', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(228, '2103910202112', 'MOSTAFA REZA MEHEDI', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(229, '2103910202113', 'ISMAM AZAD RAMIM', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(230, '2103910202116', 'Raktim Barua', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(231, '2103910202121', 'Fatema Tuz Zohra Faria', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(232, '2103910202123', 'Tufail Ahamad Babo', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(233, '2103910202124', 'NAILA ZAHIR', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(234, '2103910202143', 'RIYA DAS', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(235, '2103910202145', 'Mohammad Iftikhar Mahmood Chowdhury', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(236, '0222210005101141', 'K.M. ADNAN ABSAR JILAN', 'ADAL', 'Fall', 2022, 'Regular', 'A1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(237, '1703310201425', 'Lipa Das', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(238, '1803410201595', 'Shaila Afroz Khan Toma', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(239, '1903610201769', 'Fahad Bin Kalam', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(240, '1903710201902', 'Israth Arfin Riva', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(241, '1903710201903', 'Rehinfer Yeasmin', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(242, '1903710201924', 'Sohoraf Ahamad Arab', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(243, '1903710202014', 'Mohammad Rashel', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(244, '1903710202025', 'Abu Bakkar Babu', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(245, '2003810202086', 'AZIZA AFRIN NADIA', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(246, '2003810202089', 'MD. Abdulla Al Shakaet', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(247, '2103910202125', 'Bristy Chowdhury', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(248, '2103910202128', 'DHRUVA MOHAJAN', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(249, '2103910202130', 'ABDULLAH MOHAMMAD SHAD', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(250, '2103910202131', 'MD. ABDULLAH JOBAYER', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(251, '2103910202132', 'ANUPOM KANTI NATH', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(252, '2103910202134', 'BIJOY BISHWAS', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(253, '2103910202135', 'JARIN SINGH RAY', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(254, '2103910202136', 'MD. REAZ UDDIN CHOWDHURY', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(255, '2103910202137', 'Isfa Sultana Tarin', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(256, '2103910202138', 'Nusrat Jahan Priota', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(257, '2103910202139', 'Amamul Ahasan', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(258, '2103910202140', 'Mohammad Joynal Abedin', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(259, '2103910202141', 'SANOWER HOSSAIN', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(260, '2103910202142', 'Mohiuddin Ishmam', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(261, '2103910202144', 'Sudiptha Chakma', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(262, '2103910202146', 'Avinandan Chowdhury', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(263, '2103910202147', 'Mohammed Sayed Anowar', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(264, '2103910202148', 'Md Arif Istiak', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(265, '2103910202149', 'Dhruba Dey', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL),
(266, '2103910202150', 'Ankur Kanti Paul', 'ADAL', 'Fall', 2022, 'Regular', 'A2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"PO1\",\"value\":6}]', NULL, NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `session_course_pos`
--
ALTER TABLE `session_course_pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_infos`
--
ALTER TABLE `student_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_course_pos`
--
ALTER TABLE `session_course_pos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_infos`
--
ALTER TABLE `student_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
