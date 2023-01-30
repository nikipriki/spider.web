-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 10:36 PM
-- Server version: 10.4.20-Nikolija
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `putovanja`
--

-- --------------------------------------------------------

--
-- Table structure for table `dogadjaj`
--

CREATE TABLE `dogadjaj` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `naziv` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `broj_mesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dogadjaj`
--

INSERT INTO `grad` (`id`, `naziv`, `broj_mesta`) VALUES
(1, 'EXIT', 20),
(2, 'Coachella', 15),
(3, 'Arsenal festival', 25),
(4, 'Lollapalooza', 15),
(5, 'Primavera', 20),
(6, 'Sziget', 20);

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
(1, '2023_01_029_182748_create_korisnik_table', 1),
(2, '2023_01_029_182814_create_putovanjes_table', 1),
(3, '2023_01_029_182834_create_grad_table', 1),
(4, '2023_01_029_193938_rename_table_names', 1),
(5, '2023_01_029_194722_add_foreign_key_to_korisnik', 1),
(6, '2023_01_029_194825_add_foreign_key_to_putovanje', 1),
(7, '2023_01_029_203637_broj_mesta_to_putovanje', 1);

-- --------------------------------------------------------

--
-- Table structure for table `putovanje`
--

CREATE TABLE `putovanje` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cena` int(11) NOT NULL,
  `airbnb` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grad` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum_dolaska` datetime NOT NULL,
  `datum_odlaska` datetime NOT NULL,
  `broj_mesta` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `putovanje`
--

INSERT INTO `putovanje` (`id`, `cena`, `airbnb`, `grad`, `datum_dolaska`, `datum_odlaska`, `broj_mesta`) VALUES
(1, 7100, 'Airbnb 1', 'Beograd', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 2),
(2, 12400, 'Airbnb 2', 'Moskva', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 4),
(3, 17700, 'Airbnb 3', 'Budimpesta', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 4),
(4, 5300, 'Airbnb 4', 'Novi Sad', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 3),
(5, 6600, 'Airbnb 5', 'Tampere', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 5),
(6, 12300, 'Airbnb 6', 'Sofia', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 3),
(7, 8200, 'Airbnb 7', 'Berlin', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 5),
(8, 20000, 'Airbnb 8', 'Ankara', '2023-01-29 00:00:00', '2023-01-29 00:00:00', 2),

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime_prezime` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `broj_sobe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prijava_datum` datetime NOT NULL,
  `putovanje_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `korisnik` (`id`, `ime_prezime`, `broj_sobe`, `prijava_datum`, `putovanje_id`) VALUES
(1, 'ZIJ5Sy obRsG', '25', '2021-10-23 00:00:00', 7),
(2, 'adP0Vx 8avEm', '2', '2021-10-24 00:00:00', 2),
(3, '5o5CR UEgUH', '6', '2021-10-18 00:00:00', 3),
(4, 'Qrv9BUW HhrlEL', '3', '2021-11-04 00:00:00', 4),
(5, 'l8n8Y 9nddI', '5', '2021-11-08 00:00:00', 4),
(6, 'sYNHpa WA49e', '12', '2021-10-28 00:00:00', 3),
(7, '3KuwBY qdedY', '20', '2021-11-08 00:00:00', 7),
(8, 'f9Szok FJiKx', '11', '2021-10-31 00:00:00', 5),
(9, 'AXgCG YhWbNd', '3', '2021-10-19 00:00:00', 3),
(10, 'RCaFk 7HtPq', '24', '2021-10-16 00:00:00', 11),
(11, 'OHKU2 qi2Xjo', '6', '2021-11-06 00:00:00', 8),
(12, 'nbHkDi NxgMQf', '15', '2021-10-26 00:00:00', 8),
(13, 'N3esUu rDIUi4', '2', '2021-11-09 00:00:00', 7),
(14, '5cZdqI0 2Y9q3', '13', '2021-10-17 00:00:00', 2),
(15, 'noqhF utSwGC', '12', '2021-10-18 00:00:00', 10),
(16, 'IwLqCV6 AjF2d9', '12', '2021-11-02 00:00:00', 4),
(17, 'AAYxvEr 9V7CBJ', '5', '2021-11-07 00:00:00', 2),
(18, 'iaZvk 0aLilG', '12', '2021-10-23 00:00:00', 5),
(19, 'ZIRBa E9kaVm', '2', '2021-10-21 00:00:00', 7),
(20, 'VZz7e j0Uura', '15', '2021-10-17 00:00:00', 10),
(21, '4TCNkF Rc98F', '13', '2021-11-03 00:00:00', 6),
(22, 'Gc6mQ WlY0K', '7', '2021-10-22 00:00:00', 3),
(23, 'F0ZnkOy lu4BRI', '7', '2021-11-11 00:00:00', 2),
(24, 'KHJvN tszmPu', '7', '2021-10-16 00:00:00', 6),
(25, 'CDxDg 3iPWV', '8', '2021-11-05 00:00:00', 6),
(26, 'CLBzSJ EiNYH', '7', '2021-10-29 00:00:00', 5),
(27, 'OzAdTPm TvuME0', '9', '2021-10-22 00:00:00', 1),
(28, 'rSTFDb LwrgG', '15', '2021-10-14 00:00:00', 5),
(29, 'ZSUd3 P01oR', '13', '2021-10-25 00:00:00', 5),
(30, 'B5NukGG 52zDSv', '11', '2021-10-19 00:00:00', 7),
(31, 'Nikola Jovanovic', '3', '2021-09-02 18:37:59', 11),
(32, 'Nikola Jovanovic', '4', '2021-09-02 20:34:22', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dogadjaj`
--
ALTER TABLE `dogadjaj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `putovanje`
--
ALTER TABLE `putovanje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `putovanje_dogadjaj_id_foreign` (`dogadjaj_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_putovanje_id_foreign` (`putovanje_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dogadjaj`
--
ALTER TABLE `dogadjaj`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `putovanje`
--
ALTER TABLE `putovanje`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `putovanje`
--
ALTER TABLE `putovanje`
  ADD CONSTRAINT `putovanje_dogadjaj_id_foreign` FOREIGN KEY (`dogadjaj_id`) REFERENCES `dogadjaj` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_putovanje_id_foreign` FOREIGN KEY (`putovanje_id`) REFERENCES `putovanje` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
