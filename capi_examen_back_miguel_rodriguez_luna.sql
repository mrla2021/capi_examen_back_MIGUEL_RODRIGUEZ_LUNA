-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2023 a las 16:43:45
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `capi_examen_back_miguel_rodriguez_luna`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_22_134402_create_user_domicilios_table', 1),
(6, '2023_09_22_135939_add_fecha_nacimiento_column_on_user_comicilios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Doyle Reichert', 'dickens.jaquan@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bUC22tp0fW', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(2, 'Prof. Johann Herzog Jr.', 'flo.bahringer@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JNbqiKO7l6', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(3, 'Prof. Francesca Hudson DDS', 'awaters@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T8GvrxlRU1', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(4, 'Christine Feeney', 'lyla81@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k83gACfEM8', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(5, 'Marcos Schumm', 'hills.jorge@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N2oq9vgvr1', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(6, 'Amiya Becker', 'jkemmer@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4RfGtuROF7', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(7, 'Raegan Bergnaum', 'adriana.howell@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SgxMrwZVkt', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(8, 'Camille Gutkowski', 'alyce.kuvalis@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PVLXQ3BBFs', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(9, 'Rylan Conn', 'bradtke.delia@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BKYykfG5dg', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(10, 'Dr. Marian O\'Keefe', 'delphia09@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HFUxZIAshs', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(11, 'Patrick Dickinson', 'ludwig40@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zabKHHLYf7', '2023-09-22 20:30:27', '2023-09-22 20:30:27'),
(12, 'Yasmeen Kessler', 'rath.jarrell@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4tlSr8SQ90', '2023-09-22 20:30:28', '2023-09-22 20:30:28'),
(13, 'Keira Gleason DVM', 'bosco.serenity@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1Sajw5Jibi', '2023-09-22 20:30:28', '2023-09-22 20:30:28'),
(14, 'Marietta Boyer DDS', 'jason76@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eHHRzZEcjv', '2023-09-22 20:30:28', '2023-09-22 20:30:28'),
(15, 'Dr. Julien Adams DVM', 'heber19@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GY481Y6wIr', '2023-09-22 20:30:28', '2023-09-22 20:30:28'),
(16, 'Karson Walter', 'gusikowski.cordie@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NDEHDTdozq', '2023-09-22 20:30:28', '2023-09-22 20:30:28'),
(17, 'Dr. Holly Sporer', 'morgan.gutkowski@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sa5LlcUGSu', '2023-09-22 20:30:28', '2023-09-22 20:30:28'),
(18, 'Roosevelt Kirlin', 'donnelly.jedidiah@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DvIiKJjD74', '2023-09-22 20:30:28', '2023-09-22 20:30:28'),
(19, 'Tianna Grant', 'vhermiston@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'drfm6VhZyP', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(20, 'Monserrat Krajcik', 'sanford.janiya@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QrlFR4WCTL', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(21, 'Dr. Katharina Gerlach II', 'noel10@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4TSKAJ7kf1', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(22, 'Ms. Eden Gutmann V', 'okuneva.wilbert@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zoHMQDXRgm', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(23, 'Dino Hyatt', 'marshall.schimmel@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9cxC844TYe', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(24, 'Eva Brakus PhD', 'eriberto.west@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CwXolGBIyX', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(25, 'Prof. Jairo Kunde DDS', 'bruce01@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2PpMENea8Y', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(26, 'Kelvin Keeling', 'fcollins@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OXvxnpDF3c', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(27, 'Domingo Simonis', 'waylon57@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BI7EMla63I', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(28, 'Maybelle Raynor', 'valerie45@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hYPiRRPTn9', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(29, 'Stella Kshlerin', 'kstokes@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'inVNTfyhud', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(30, 'Aubree Lehner', 'qturner@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9PAmrhFXu6', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(31, 'Jeramie Effertz', 'colleen64@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dCivCvFWFR', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(32, 'Charity Johnston', 'gerhold.benny@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xkvmElnOxu', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(33, 'Creola Mraz', 'sammie.macejkovic@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'osdFBSjPXr', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(34, 'Pedro Gaylord', 'gust11@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cS0ZJ4li3u', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(35, 'Miss Octavia Frami', 'pcarter@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LBk2pkXAdL', '2023-09-22 20:30:29', '2023-09-22 20:30:29'),
(36, 'Deron Cremin', 'kmaggio@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nS7xasIOgR', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(37, 'Quentin Lakin', 'joel.walker@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I2kUucI2KF', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(38, 'Lessie Hickle', 'kirk61@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GUBWads2je', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(39, 'Demarcus Mills', 'mgleason@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vxR3DpFkXw', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(40, 'Prof. Kip Ernser II', 'edyth.tremblay@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'taELXZnExr', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(41, 'Kathlyn Barton', 'toconner@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gB3g4uIlLs', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(42, 'Abdullah Heidenreich Sr.', 'raymond87@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iurHZaAMv5', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(43, 'Olin Witting', 'ariane.rau@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tS99zV6giN', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(44, 'Dr. Gustave Fahey', 'sasha92@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HEXnEDsEpC', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(45, 'Bethel Ward', 'edwardo.halvorson@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qHmoFdhEIZ', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(46, 'Dr. Cynthia Schaden DVM', 'howe.vincenza@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z7AqeRawSh', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(47, 'Calista Bogisich Jr.', 'xrath@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JazyqWhJS0', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(48, 'Xander Prohaska', 'delpha17@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ZubqrJgz9', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(49, 'Prof. Maryse Moore', 'bullrich@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EiCgtjMqLn', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(50, 'Ms. Leda Hansen', 'fay62@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7dTMlEsRsM', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(51, 'Jamarcus Kessler', 'rweissnat@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rsPZpuKRfR', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(52, 'Kyleigh Effertz', 'carroll.arlo@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AcywN43DgI', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(53, 'Dan Cartwright', 'lschneider@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BikPTllDco', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(54, 'Dr. Zaria Von', 'choppe@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7KNn3LyqrD', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(55, 'Kaitlyn Casper', 'arvid.powlowski@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1a0TNrPKBT', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(56, 'Evans Kshlerin', 'bgibson@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AlWzMftVgI', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(57, 'Alivia Schimmel', 'ukautzer@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ezjXkJrDuG', '2023-09-22 20:30:30', '2023-09-22 20:30:30'),
(58, 'Lynn Kshlerin', 'norberto06@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8GtZ5PiB0Z', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(59, 'Mr. Lindsey Collier DDS', 'jamar.harber@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q64JmTQfBu', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(60, 'Norene Spencer', 'nmitchell@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JhFdkqavtw', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(61, 'Mr. Quinten Spencer Jr.', 'bashirian.braulio@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H66ubrXRTM', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(62, 'Ms. Leila Frami I', 'bayer.terrill@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eTC9mqrzxR', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(63, 'Chaim Rohan', 'golda.berge@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1bV2HNU7df', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(64, 'Miss Lori Beatty Jr.', 'catalina.bogisich@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '47jCf5N8au', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(65, 'Dr. Eli Walter II', 'liza59@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iodJ0Kweb7', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(66, 'Prof. Dante Wolff', 'hyatt.skye@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fPCDGGv3uR', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(67, 'Cecelia Mann', 'sophia62@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SgoFksRcqF', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(68, 'Juana Legros', 'bettie.ward@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gudsrY7Xrg', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(69, 'Mariane Jakubowski', 'orn.juanita@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WpWQ3TNeSL', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(70, 'Dr. Mara Stark V', 'edmond60@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FRiD0aw7bu', '2023-09-22 20:30:31', '2023-09-22 20:30:31'),
(71, 'Prof. Gianni Homenick DVM', 'kaci51@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GAFBQ0ORrk', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(72, 'Jennifer Quigley', 'thurman.senger@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IS6UmWbLDg', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(73, 'Prof. Sage Donnelly III', 'zberge@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0D3EaEeFxf', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(74, 'Ms. Brionna Kassulke', 'albina.tillman@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TPLmAZ3e40', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(75, 'Alice Gibson', 'mya.howe@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UQQfIKLI3U', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(76, 'Prof. Fanny Pfannerstill', 'ella78@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CoDHdpShd9', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(77, 'Deondre Mosciski', 'arianna04@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c0R3su86Sb', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(78, 'Nathanial Blick', 'edwina15@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9JTdNr6Omf', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(79, 'Brisa Reinger', 'amalia.cruickshank@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iJZRyXwFcV', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(80, 'Carmine Rohan', 'modesto09@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Onual6obaS', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(81, 'Mrs. Ora Stokes', 'becker.adelia@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FSv8c5AVo2', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(82, 'Daniela Rippin', 'tstoltenberg@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zMRJylNWlw', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(83, 'Mauricio Reilly', 'pouros.lucio@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MpEpuLWcya', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(84, 'Courtney Lubowitz', 'ggerlach@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7aoErbA9sN', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(85, 'Marlin Ledner', 'monahan.kaley@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rh0iBEGYFf', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(86, 'Miss Domenica Kuhn Sr.', 'wbogan@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vRTlPuQrNV', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(87, 'Prof. Roberta Keebler', 'jefferey.reichert@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nSPTPp1jPy', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(88, 'Rosa Emard Sr.', 'orville09@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pZHnWtk21N', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(89, 'Luigi Hoppe', 'ryan.forest@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yHXXegfT59', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(90, 'Mr. Torey Pfannerstill I', 'lavon14@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'StUVQPWWhN', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(91, 'Dr. Santos Haag', 'laverna74@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UmoKGyeHMW', '2023-09-22 20:30:32', '2023-09-22 20:30:32'),
(92, 'Mrs. Rosemary Hand III', 'schaefer.stephanie@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3Xvc9ORhEG', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(93, 'Jonathon Schuppe Sr.', 'harley17@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QHk7eLxeav', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(94, 'Ms. Roma Kerluke I', 'lbarrows@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4fpU4hINNr', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(95, 'Stephon Jerde', 'emilio31@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F89T6Gd7Xr', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(96, 'Roel Nienow', 'veum.suzanne@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7vgoSe0gzM', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(97, 'Marlene Reynolds', 'janet31@example.org', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tkdQxaHven', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(98, 'Kyra Mayert', 'rosenbaum.chelsie@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eCVDPQpGsK', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(99, 'Roslyn Hansen', 'kuhn.amya@example.com', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5xvsLITxk7', '2023-09-22 20:30:33', '2023-09-22 20:30:33'),
(100, 'Emilia Moore', 'alabadie@example.net', '2023-09-22 20:30:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2oayEAC9Lh', '2023-09-22 20:30:33', '2023-09-22 20:30:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_domicilios`
--

CREATE TABLE `user_domicilios` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `domicilio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_exterior` int(11) NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_domicilios`
--

INSERT INTO `user_domicilios` (`user_id`, `domicilio`, `numero_exterior`, `colonia`, `cp`, `ciudad`, `fecha_nacimiento`, `created_at`, `updated_at`, `users_id`) VALUES
(1, '84385 Schaefer Overpass\nWest Keanu, NM 19086-7784', 78, 'Placeat eum et.', 85496, 'Lewis Wiegand', '1974-02-11 22:54:35', '2023-09-22 20:30:33', '2023-09-22 20:30:33', NULL),
(2, '21908 Lexus Neck\nNew Raheem, VA 64730-1767', 424, 'Voluptas et quia ex.', 83713, 'Jaime Sipes', '2011-04-05 09:03:39', '2023-09-22 20:30:33', '2023-09-22 20:30:33', NULL),
(3, '29259 Isidro Stravenue\nEast Malcolmfort, NC 49034', 188, 'Illum veritatis.', 11713, 'Everardo Pfannerstill', '2007-01-27 10:28:29', '2023-09-22 20:30:33', '2023-09-22 20:30:33', NULL),
(4, '233 Pagac Way Suite 383\nDooleyport, IA 86350', 451, 'Quis ipsam impedit.', 47364, 'Dane Ankunding III', '2017-03-05 05:18:52', '2023-09-22 20:30:33', '2023-09-22 20:30:33', NULL),
(5, '69850 Kerluke Lake\nNew Melynastad, NC 04318-7804', 922, 'Voluptatem.', 91776, 'Dr. Jarred O\'Conner Sr.', '2000-11-22 10:26:26', '2023-09-22 20:30:33', '2023-09-22 20:30:33', NULL),
(6, '275 Lemke Track Apt. 458\nKihnville, MA 30443', 709, 'Repellendus nobis.', 53064, 'Jaquan Quitzon III', '1979-04-16 11:02:03', '2023-09-22 20:30:33', '2023-09-22 20:30:33', NULL),
(7, '8920 Cummings Inlet Apt. 817\nOrastad, NH 77731-6328', 490, 'Dignissimos odit.', 42195, 'Sydnie Huels', '1984-06-29 14:33:30', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(8, '47617 Bayer Camp Suite 686\nEast Keyonfurt, IN 62852', 118, 'Rem ullam non omnis.', 28009, 'Fanny McClure', '1996-04-01 05:02:15', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(9, '715 Loyal Valley\nNew Veronicaside, AK 85167-5277', 886, 'Sit sequi inventore.', 55644, 'Emanuel Thompson', '2004-08-12 03:06:01', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(10, '644 Loraine Valley Apt. 776\nHicklehaven, NV 37375-2123', 522, 'Temporibus aliquid.', 39448, 'Freda Stamm', '2017-11-26 10:57:00', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(11, '60805 Lori Trace Apt. 519\nBoganmouth, NH 68012', 631, 'Facere natus qui.', 99328, 'Angelina Zboncak', '2014-06-15 16:22:03', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(12, '36717 Champlin Mews Suite 284\nBrantland, WI 69682', 255, 'Qui deserunt error.', 75529, 'Hilbert Mayer', '2015-06-19 18:14:00', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(13, '88929 Aufderhar Port Apt. 369\nPrincessfort, VT 29177', 621, 'Quos porro facere.', 85542, 'Renee Schimmel', '1992-01-26 00:24:48', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(14, '822 Lang Common\nMakennaton, IL 56716-3520', 243, 'Eos excepturi nemo.', 17593, 'Leonel VonRueden', '1979-01-20 17:34:42', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(15, '252 Schumm Lights Suite 109\nSchneidermouth, MI 48239', 445, 'Praesentium est et.', 87584, 'Zack Predovic', '2020-10-06 09:59:23', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(16, '9756 Legros Fork Suite 311\nWest Nicola, MT 30554', 877, 'Voluptas aliquid.', 48097, 'Jaime Predovic', '1997-11-07 09:49:06', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(17, '982 Jerry Harbors Suite 239\nWest Lilian, IN 12789', 420, 'Dicta qui est fugit.', 90400, 'Milton Gleichner', '2009-08-27 10:14:13', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(18, '138 Norma Junction\nPort Wernerfort, NM 50582', 569, 'Laboriosam.', 29234, 'Mariam Lockman II', '2012-07-12 23:46:59', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(19, '701 Bryana Meadow\nPort Floridatown, WI 71429', 592, 'Pariatur totam et.', 34378, 'Elizabeth Satterfield', '2010-11-14 09:29:40', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(20, '988 Laverne Ports\nOnieport, AZ 06854-3465', 896, 'Labore sequi aut.', 24595, 'Prof. Aglae Will', '1984-11-21 05:01:57', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(21, '8085 Reinger Plains\nKaylahland, MN 57451', 985, 'Autem in velit.', 86672, 'Alden Anderson', '2018-10-31 14:36:22', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(22, '7349 Schuster Club\nEast Cecilia, KY 50176-5677', 547, 'Velit officia.', 27027, 'Ms. Julia Romaguera MD', '1991-04-22 18:37:40', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(23, '30985 Strosin Heights\nPort Adeline, IN 93149', 724, 'Eaque ratione error.', 81737, 'Wendell Wuckert', '1998-11-10 21:49:29', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(24, '9503 Zboncak View\nLake Stephenborough, NV 89540-2726', 790, 'Et possimus nihil.', 81960, 'Jazmyne Considine', '2014-08-08 06:35:05', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(25, '61729 Jolie Land\nRicoland, NM 14177-2215', 967, 'Eum laudantium.', 88859, 'Eda Bahringer', '2011-10-16 20:28:12', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(26, '4519 Zoila Islands Apt. 991\nNew Hilbertmouth, IA 38220-4064', 281, 'Excepturi qui.', 90377, 'Mr. Immanuel Romaguera', '2015-03-20 21:29:47', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(27, '142 Jast Loaf Apt. 828\nBeerville, MT 66548-2564', 527, 'Qui voluptates vero.', 12009, 'Dr. Delilah Will', '1979-11-06 23:10:08', '2023-09-22 20:30:34', '2023-09-22 20:30:34', NULL),
(28, '9027 Bednar Ranch\nNew Loma, VT 33945', 167, 'Voluptas unde.', 23782, 'Willy Herman', '1970-09-21 09:25:05', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(29, '96613 Klein Stravenue\nNew Leolahaven, MN 92726', 46, 'Facilis rem dolorem.', 25471, 'Yessenia Shanahan', '1992-11-22 22:09:14', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(30, '4377 Mertie Locks Apt. 320\nBlockland, SD 37233', 388, 'Iure eos atque.', 88170, 'Madelyn Wintheiser', '2005-04-18 15:04:41', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(31, '328 Janis Junctions\nEast Filomena, TX 90938-3069', 500, 'Velit laborum.', 42268, 'Mrs. Constance Stokes III', '1974-02-23 08:02:18', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(32, '93607 Thelma Fort Suite 756\nNew Shane, NM 35049', 921, 'Minus recusandae.', 18224, 'Toney Champlin', '1970-07-24 06:52:44', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(33, '590 Isobel Extension Suite 264\nDonnieville, GA 47427-1754', 118, 'Voluptatibus eum.', 57821, 'Ethan Jacobs Sr.', '1971-09-21 10:39:45', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(34, '66674 Giuseppe Roads Apt. 498\nSouth Raquelbury, TN 11402', 613, 'Harum dignissimos.', 91817, 'Laney Gleason', '1981-10-05 09:57:35', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(35, '1802 Maximus Cape Apt. 342\nMarcport, MS 27713-7108', 989, 'Aut sequi quaerat.', 75877, 'Prof. Juliet Carroll IV', '2020-01-07 19:06:03', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(36, '7076 Vandervort Heights\nPort Jordaneville, GA 54926', 70, 'Consectetur sit.', 12579, 'Dr. Bobby Schneider', '1976-03-25 18:09:43', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(37, '919 Haley Inlet Suite 694\nLake Adeliamouth, IA 68486', 477, 'Reprehenderit.', 57587, 'Roberto Armstrong', '2012-06-26 17:06:19', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(38, '51589 Becker Lane Apt. 897\nHoegerfurt, PA 92934-2672', 640, 'Explicabo aut vero.', 76299, 'Ervin Mohr', '1984-11-12 20:29:33', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(39, '5691 O\'Kon Rue\nVernerborough, MD 77875', 761, 'Cupiditate quidem.', 63116, 'Camilla Kunde', '1970-07-04 16:34:16', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(40, '59136 Lang Run\nCormierton, WY 11475', 438, 'Omnis repellendus.', 92679, 'Ellen Osinski', '2019-04-08 04:59:30', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(41, '971 Connelly Knolls Apt. 961\nLake Julius, NC 34833-5153', 779, 'Similique.', 16983, 'Liana Beatty', '2001-02-01 19:42:22', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(42, '9540 Ebba Tunnel Apt. 730\nHoweview, ME 27170', 532, 'Magni cum ut et.', 29217, 'Alvena Hermann', '1998-03-14 09:49:37', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(43, '33386 Lindgren Creek\nWhiteville, PA 75078', 832, 'Necessitatibus vel.', 41141, 'Stephen Daniel Sr.', '1975-04-02 02:45:36', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(44, '5518 Stroman Track\nPort Stacey, MD 43055', 90, 'Sed at nihil omnis.', 91851, 'Missouri Conn', '1999-05-03 06:33:57', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(45, '4092 Verna Glens\nSouth Hilbert, DE 36267', 928, 'Qui voluptates non.', 82467, 'Miss Tina Schuppe', '1983-08-08 02:36:39', '2023-09-22 20:30:35', '2023-09-22 20:30:35', NULL),
(46, '4973 Kulas Circle Suite 103\nWillmsshire, CT 16580-4908', 360, 'Mollitia non neque.', 83583, 'Ramon Yundt', '1972-01-12 19:50:04', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(47, '2105 Jabari Hills\nRaynortown, KS 80445-5821', 730, 'Numquam repellendus.', 35679, 'Vivian Torphy', '1997-05-21 22:57:17', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(48, '34747 Leif Union Suite 064\nBrycenstad, NM 42783', 112, 'Numquam aliquam.', 86474, 'Ariane Braun', '2018-10-19 06:09:57', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(49, '6058 Veum Hills\nSouth Kassandraborough, RI 84905-7910', 888, 'Adipisci.', 22391, 'Mr. Guillermo Pfeffer', '2016-09-01 06:32:02', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(50, '4652 Cecilia Points\nMurphymouth, AR 08598', 239, 'Vel doloribus alias.', 63478, 'Prof. Sterling Luettgen', '2001-07-14 15:24:11', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(51, '22434 Elnora Neck\nPort Rhea, IA 23335', 490, 'Optio autem.', 25958, 'Hazle Heidenreich', '2018-04-19 10:33:02', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(52, '25596 Hermann Glen\nWest Willy, WV 02980-4478', 93, 'Ipsa officiis.', 69573, 'Blake Bechtelar V', '1975-02-22 07:59:22', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(53, '489 Graham Plaza\nHeathcotestad, NJ 79272', 910, 'Magni consequatur.', 50716, 'Vicenta Beer', '1971-04-14 18:36:19', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(54, '364 Florence Fords Apt. 683\nLake Elroyfort, WV 10340-3831', 215, 'Aspernatur in.', 81681, 'Bonita Reichert', '1983-01-17 15:03:11', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(55, '2411 Jast Land Apt. 840\nElinorhaven, FL 77700', 713, 'Rerum fugiat.', 50002, 'Tatyana Herman', '1991-10-25 12:15:49', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(56, '7476 Treva Shores Suite 783\nPort Henryberg, DE 56116-8987', 755, 'Quam qui non fugit.', 31789, 'Chelsie Kiehn', '2008-03-11 08:03:14', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(57, '92952 Casimer Shoals Apt. 948\nLindmouth, NH 70666', 783, 'Quis quam.', 48473, 'Ewald Koepp', '2016-08-16 13:16:14', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(58, '7093 Trantow Spurs\nJohnnieview, MS 98287-3411', 231, 'Aut deleniti atque.', 93707, 'Ms. Kirstin Gerlach', '1994-01-03 08:34:30', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(59, '346 Spinka Common\nLake Dortha, SD 70585-3898', 445, 'Quis sapiente.', 56315, 'Vern Padberg', '2011-02-24 04:50:29', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(60, '18937 Bayer Port Apt. 875\nLake Emmitt, OR 63915-5209', 508, 'Numquam ea quas eos.', 59894, 'Mr. Nathaniel Schneider', '1988-12-17 19:43:01', '2023-09-22 20:30:36', '2023-09-22 20:30:36', NULL),
(61, '5072 Kaleigh Underpass Suite 453\nNathanaelport, RI 50372-5486', 648, 'Voluptatem quo id.', 75829, 'Wilfred Swift', '1999-10-15 03:21:45', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(62, '43533 Virginie Village Suite 061\nLuigimouth, OH 56454', 342, 'Unde molestias.', 98186, 'Nick Connelly II', '2021-03-08 20:40:57', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(63, '8105 Kautzer Hills\nNorth Clarissaton, NY 62634-3186', 294, 'Consequuntur.', 22509, 'Dr. Marina Homenick', '2009-09-11 11:06:24', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(64, '7837 Botsford Mill Suite 315\nWest Oralville, TN 08632-1623', 946, 'Corrupti neque.', 55687, 'Dr. Vella Zemlak', '2017-11-21 00:19:51', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(65, '68955 Cory Courts Apt. 307\nNorth Dallasmouth, OR 35707', 281, 'Sed pariatur autem.', 24103, 'Monty Collier', '2008-10-27 15:38:03', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(66, '90889 Trantow Summit Apt. 061\nWest Martinbury, DC 67708', 108, 'Quis vitae eum.', 32352, 'Aleen Ward', '1996-09-18 10:54:28', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(67, '40001 Jed Crossroad\nSchaeferstad, TN 09274', 547, 'Aliquid autem.', 61360, 'Robb Bashirian', '1975-05-19 19:34:29', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(68, '880 Bode Garden\nCorwinland, KY 59200-9874', 465, 'Molestias eum.', 67088, 'Kathryn Gleason', '2015-04-23 14:45:01', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(69, '4084 Pauline Spurs Suite 600\nLake Eliseo, ID 14702', 630, 'Molestiae esse ex.', 18099, 'America Stark', '1993-06-20 04:42:26', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(70, '851 Tyrel Lane\nLubowitzmouth, MN 28053', 289, 'Itaque et ullam.', 96119, 'Dr. Alyce Runolfsdottir IV', '1973-04-10 18:04:51', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(71, '7033 Bethel Hills\nLake Brett, ME 13424', 871, 'Ad exercitationem.', 88423, 'Brad McGlynn', '1997-09-08 15:44:54', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(72, '99077 Novella Mountains Apt. 895\nWest Marco, WV 82640', 824, 'Sit et similique a.', 54983, 'Prof. Alfred Ward', '1972-09-05 01:58:22', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(73, '578 Wilhelm Brook Suite 421\nKuphalmouth, RI 45220', 555, 'Odio iste quod.', 18839, 'Dr. Reina Dibbert V', '1990-04-16 00:14:03', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(74, '47014 Douglas Mall\nOndrickabury, OR 02829', 53, 'Veniam fuga.', 78808, 'Hellen Marquardt', '1995-03-12 20:36:43', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(75, '2555 Metz Union Suite 747\nNathanialbury, NJ 47962-2614', 828, 'Et officiis.', 27870, 'Althea McDermott', '1977-03-12 00:43:38', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(76, '47343 Laura Neck\nWest Ulises, DE 39434-3947', 710, 'Illum dolor vitae.', 62951, 'Elenor Medhurst V', '1991-06-25 20:56:24', '2023-09-22 20:30:37', '2023-09-22 20:30:37', NULL),
(77, '89045 Schamberger Plain Apt. 562\nUptonfurt, NV 47777', 967, 'Voluptatem porro.', 75505, 'Josephine Rath', '2007-11-26 15:08:44', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(78, '4082 Marilyne Walk\nSouth Ferneside, AK 52968', 286, 'Id quisquam aut.', 13813, 'Terrence Ankunding', '1999-01-16 22:11:41', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(79, '871 Emie Wells Suite 036\nLake Camila, DE 06618-9318', 365, 'Voluptas.', 82639, 'Prof. Israel Kub', '2008-12-30 22:52:44', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(80, '90860 Kutch Drives Suite 853\nEast Abdulborough, NV 96685-6072', 410, 'Rem unde vel aut.', 82598, 'Gene White I', '1987-08-15 01:21:13', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(81, '1153 Finn Row Apt. 007\nWest Renee, UT 92187', 858, 'Natus minus id et.', 78692, 'Hazle Abernathy Sr.', '2015-08-29 23:02:50', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(82, '7712 Christy Coves Apt. 264\nNew Shanel, OK 64011-8726', 587, 'Accusamus.', 76510, 'Prof. Terrell Gaylord', '2007-11-11 06:40:23', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(83, '5383 Jon Gateway Suite 131\nJohannastad, LA 41291', 28, 'Omnis voluptas qui.', 66572, 'Meda Boyle', '2005-05-09 02:25:40', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(84, '157 Ritchie Dam\nGarrisonview, SC 44980', 500, 'Iure molestiae.', 41220, 'Jaqueline Jenkins', '2003-11-19 14:06:00', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(85, '560 Gracie Points Apt. 289\nBinstown, ND 50892-7551', 790, 'Sunt in dolor.', 78219, 'Jovanny Wisoky', '2020-01-21 20:38:30', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(86, '4848 Skylar Port\nNew Carroll, AZ 15824', 857, 'Ut et molestiae.', 95857, 'Erika Rosenbaum V', '2001-12-22 10:35:12', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(87, '7594 Emilia Forks\nAntonettatown, NC 44229', 920, 'Quidem quaerat.', 19672, 'Kaleb Wisoky DVM', '2022-07-22 17:14:52', '2023-09-22 20:30:38', '2023-09-22 20:30:38', NULL),
(88, '92400 Myah Trail Apt. 021\nBennettbury, DE 81968', 865, 'Adipisci magnam.', 79377, 'Mr. Rosario Mante Sr.', '2015-11-05 02:30:47', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(89, '207 Willow Hill Apt. 744\nJanickside, PA 37768-8407', 541, 'Excepturi ut soluta.', 70836, 'Carlee Stanton', '2007-12-06 09:28:48', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(90, '6580 Milford Islands\nGenovevaville, MT 72496', 755, 'Soluta ut id.', 21510, 'Ciara Bogan', '1981-07-19 04:05:35', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(91, '460 Loraine Cliff\nNew Virgieville, CT 64012', 4, 'Eligendi recusandae.', 82224, 'Mr. Ansel West Sr.', '2013-11-22 06:51:08', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(92, '8492 Rohan Mount Suite 941\nLake Crystelmouth, VT 03809', 392, 'Vel quia.', 61719, 'Alvera Price III', '1981-09-25 10:03:06', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(93, '6105 Hackett Stream Suite 280\nAlexiston, MI 32747-2726', 838, 'Dicta officia.', 62219, 'Betty Lynch', '2010-11-13 11:50:35', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(94, '605 Schulist Walks Suite 936\nSouth Todbury, OK 55290', 870, 'Veniam quia maxime.', 92293, 'Ronaldo Weimann', '2017-12-04 22:23:40', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(95, '80352 Koepp Lodge Suite 966\nEast Manley, WI 46305-2983', 850, 'Mollitia quidem et.', 50338, 'Ms. Shea Fahey', '1988-08-29 20:29:18', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(96, '3963 Hershel Junction Apt. 647\nPricehaven, GA 27443-2246', 229, 'Perferendis ut.', 57444, 'Prof. Georgiana O\'Keefe Jr.', '1977-11-29 05:46:24', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(97, '47728 Rozella Light Suite 955\nBrownland, ID 34077-5701', 106, 'Sunt et repellat ea.', 76012, 'Alysson DuBuque', '2001-02-06 18:48:07', '2023-09-22 20:30:39', '2023-09-22 20:30:39', NULL),
(98, '17762 Nader Vista Suite 196\nWest Nestor, MA 86848-5887', 698, 'Beatae voluptas.', 83082, 'Malika Bernier', '1996-11-23 10:25:31', '2023-09-22 20:30:40', '2023-09-22 20:30:40', NULL),
(99, '78836 Kuhic Street Suite 025\nNew Kari, MO 96158-1175', 488, 'Ad nisi velit.', 29636, 'Mrs. Haven Moore I', '1994-03-28 03:12:58', '2023-09-22 20:30:40', '2023-09-22 20:30:40', NULL),
(100, '59436 Goldner Point\nCollinsland, WV 37439-6883', 614, 'Quam voluptas.', 86943, 'Robyn Altenwerth PhD', '1976-05-31 19:28:23', '2023-09-22 20:30:40', '2023-09-22 20:30:40', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_domicilios`
--
ALTER TABLE `user_domicilios`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_domicilios_users_id_unique` (`users_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `user_domicilios`
--
ALTER TABLE `user_domicilios`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `user_domicilios`
--
ALTER TABLE `user_domicilios`
  ADD CONSTRAINT `user_domicilios_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
