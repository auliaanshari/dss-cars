-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2022 at 08:18 AM
-- Server version: 8.0.30-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudpy_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_mobil` int NOT NULL,
  `id_criteria` varchar(10) NOT NULL,
  `id_sub_criteria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_mobil`, `id_criteria`, `id_sub_criteria`) VALUES
(1, 'C01', 'SC011'),
(1, 'C02', 'SC021'),
(1, 'C03', 'SC032'),
(1, 'C04', 'SC041'),
(1, 'C05', 'SC051'),
(1, 'C06', 'SC012'),
(2, 'C01', 'SC011'),
(2, 'C02', 'SC012'),
(2, 'C03', 'SC032'),
(2, 'C04', 'SC041'),
(2, 'C05', 'SC012'),
(2, 'C06', 'SC012'),
(3, 'C01', 'SC011'),
(3, 'C02', 'SC012'),
(3, 'C03', 'SC031'),
(3, 'C04', 'SC041'),
(3, 'C05', 'SC012'),
(3, 'C06', 'SC012'),
(4, 'C01', 'SC011'),
(4, 'C02', 'SC021'),
(4, 'C03', 'SC031'),
(4, 'C04', 'SC041'),
(4, 'C05', 'SC051'),
(4, 'C06', 'SC063'),
(5, 'C01', 'SC011'),
(5, 'C02', 'SC012'),
(5, 'C03', 'SC031'),
(5, 'C04', 'SC041'),
(5, 'C05', 'SC053'),
(5, 'C06', 'SC063'),
(6, 'C01', 'SC011'),
(6, 'C02', 'SC012'),
(6, 'C03', 'SC032'),
(6, 'C04', 'SC041'),
(6, 'C05', 'SC012'),
(6, 'C06', 'SC061'),
(7, 'C01', 'SC011'),
(7, 'C02', 'SC021'),
(7, 'C03', 'SC031'),
(7, 'C04', 'SC041'),
(7, 'C05', 'SC012'),
(7, 'C06', 'SC012'),
(8, 'C01', 'SC011'),
(8, 'C02', 'SC012'),
(8, 'C03', 'SC032'),
(8, 'C04', 'SC041'),
(8, 'C05', 'SC012'),
(8, 'C06', 'SC063'),
(9, 'C01', 'SC011'),
(9, 'C02', 'SC012'),
(9, 'C03', 'SC031'),
(9, 'C04', 'SC041'),
(9, 'C05', 'SC012'),
(9, 'C06', 'SC063'),
(10, 'C01', 'SC011'),
(10, 'C02', 'SC012'),
(10, 'C03', 'SC032'),
(10, 'C04', 'SC041'),
(10, 'C05', 'SC053'),
(10, 'C06', 'SC063'),
(11, 'C01', 'SC011'),
(11, 'C02', 'SC021'),
(11, 'C03', 'SC031'),
(11, 'C04', 'SC041'),
(11, 'C05', 'SC051'),
(11, 'C06', 'SC012'),
(12, 'C01', 'SC011'),
(12, 'C02', 'SC021'),
(12, 'C03', 'SC032'),
(12, 'C04', 'SC041'),
(12, 'C05', 'SC051'),
(12, 'C06', 'SC012'),
(13, 'C01', 'SC011'),
(13, 'C02', 'SC021'),
(13, 'C03', 'SC031'),
(13, 'C04', 'SC041'),
(13, 'C05', 'SC012'),
(13, 'C06', 'SC012'),
(14, 'C01', 'SC011'),
(14, 'C02', 'SC021'),
(14, 'C03', 'SC032'),
(14, 'C04', 'SC041'),
(14, 'C05', 'SC012'),
(14, 'C06', 'SC012'),
(15, 'C01', 'SC011'),
(15, 'C02', 'SC012'),
(15, 'C03', 'SC031'),
(15, 'C04', 'SC041'),
(15, 'C05', 'SC051'),
(15, 'C06', 'SC012'),
(16, 'C01', 'SC011'),
(16, 'C02', 'SC012'),
(16, 'C03', 'SC032'),
(16, 'C04', 'SC041'),
(16, 'C05', 'SC051'),
(16, 'C06', 'SC012'),
(17, 'C01', 'SC012'),
(17, 'C02', 'SC012'),
(17, 'C03', 'SC031'),
(17, 'C04', 'SC041'),
(17, 'C05', 'SC012'),
(17, 'C06', 'SC012'),
(18, 'C01', 'SC011'),
(18, 'C02', 'SC012'),
(18, 'C03', 'SC032'),
(18, 'C04', 'SC041'),
(18, 'C05', 'SC012'),
(18, 'C06', 'SC012'),
(19, 'C01', 'SC012'),
(19, 'C02', 'SC012'),
(19, 'C03', 'SC031'),
(19, 'C04', 'SC041'),
(19, 'C05', 'SC053'),
(19, 'C06', 'SC012'),
(20, 'C01', 'SC011'),
(20, 'C02', 'SC012'),
(20, 'C03', 'SC031'),
(20, 'C04', 'SC041'),
(20, 'C05', 'SC051'),
(20, 'C06', 'SC063'),
(21, 'C01', 'SC011'),
(21, 'C02', 'SC012'),
(21, 'C03', 'SC032'),
(21, 'C04', 'SC041'),
(21, 'C05', 'SC051'),
(21, 'C06', 'SC063'),
(22, 'C01', 'SC013'),
(22, 'C02', 'SC023'),
(22, 'C03', 'SC031'),
(22, 'C04', 'SC041'),
(22, 'C05', 'SC053'),
(22, 'C06', 'SC063'),
(23, 'C01', 'SC013'),
(23, 'C02', 'SC012'),
(23, 'C03', 'SC031'),
(23, 'C04', 'SC041'),
(23, 'C05', 'SC012'),
(23, 'C06', 'SC012'),
(24, 'C01', 'SC012'),
(24, 'C02', 'SC012'),
(24, 'C03', 'SC031'),
(24, 'C04', 'SC041'),
(24, 'C05', 'SC051'),
(24, 'C06', 'SC012'),
(25, 'C01', 'SC013'),
(25, 'C02', 'SC023'),
(25, 'C03', 'SC032'),
(25, 'C04', 'SC041'),
(25, 'C05', 'SC012'),
(25, 'C06', 'SC012'),
(26, 'C01', 'SC012'),
(26, 'C02', 'SC012'),
(26, 'C03', 'SC031'),
(26, 'C04', 'SC041'),
(26, 'C05', 'SC053'),
(26, 'C06', 'SC063'),
(27, 'C01', 'SC012'),
(27, 'C02', 'SC023'),
(27, 'C03', 'SC031'),
(27, 'C04', 'SC041'),
(27, 'C05', 'SC012'),
(27, 'C06', 'SC012'),
(28, 'C01', 'SC011'),
(28, 'C02', 'SC012'),
(28, 'C03', 'SC032'),
(28, 'C04', 'SC041'),
(28, 'C05', 'SC053'),
(28, 'C06', 'SC063'),
(29, 'C01', 'SC011'),
(29, 'C02', 'SC012'),
(29, 'C03', 'SC031'),
(29, 'C04', 'SC041'),
(29, 'C05', 'SC053'),
(29, 'C06', 'SC063'),
(30, 'C01', 'SC012'),
(30, 'C02', 'SC023'),
(30, 'C03', 'SC032'),
(30, 'C04', 'SC042'),
(30, 'C05', 'SC012'),
(30, 'C06', 'SC012'),
(31, 'C01', 'SC011'),
(31, 'C02', 'SC023'),
(31, 'C03', 'SC032'),
(31, 'C04', 'SC042'),
(31, 'C05', 'SC012'),
(31, 'C06', 'SC061'),
(32, 'C01', 'SC012'),
(32, 'C02', 'SC012'),
(32, 'C03', 'SC031'),
(32, 'C04', 'SC041'),
(32, 'C05', 'SC012'),
(32, 'C06', 'SC012'),
(33, 'C01', 'SC012'),
(33, 'C02', 'SC023'),
(33, 'C03', 'SC031'),
(33, 'C04', 'SC042'),
(33, 'C05', 'SC012'),
(33, 'C06', 'SC063'),
(34, 'C01', 'SC012'),
(34, 'C02', 'SC023'),
(34, 'C03', 'SC032'),
(34, 'C04', 'SC042'),
(34, 'C05', 'SC012'),
(34, 'C06', 'SC063'),
(35, 'C01', 'SC012'),
(35, 'C02', 'SC023'),
(35, 'C03', 'SC031'),
(35, 'C04', 'SC042'),
(35, 'C05', 'SC053'),
(35, 'C06', 'SC063'),
(36, 'C01', 'SC012'),
(36, 'C02', 'SC023'),
(36, 'C03', 'SC031'),
(36, 'C04', 'SC041'),
(36, 'C05', 'SC012'),
(36, 'C06', 'SC063'),
(37, 'C01', 'SC012'),
(37, 'C02', 'SC021'),
(37, 'C03', 'SC031'),
(37, 'C04', 'SC041'),
(37, 'C05', 'SC051'),
(37, 'C06', 'SC012'),
(38, 'C01', 'SC011'),
(38, 'C02', 'SC012'),
(38, 'C03', 'SC032'),
(38, 'C04', 'SC041'),
(38, 'C05', 'SC012'),
(38, 'C06', 'SC063'),
(39, 'C01', 'SC011'),
(39, 'C02', 'SC012'),
(39, 'C03', 'SC031'),
(39, 'C04', 'SC041'),
(39, 'C05', 'SC012'),
(39, 'C06', 'SC063'),
(40, 'C01', 'SC011'),
(40, 'C02', 'SC021'),
(40, 'C03', 'SC031'),
(40, 'C04', 'SC041'),
(40, 'C05', 'SC012'),
(40, 'C06', 'SC012'),
(41, 'C01', 'SC011'),
(41, 'C02', 'SC021'),
(41, 'C03', 'SC032'),
(41, 'C04', 'SC041'),
(41, 'C05', 'SC051'),
(41, 'C06', 'SC012'),
(42, 'C01', 'SC012'),
(42, 'C02', 'SC023'),
(42, 'C03', 'SC032'),
(42, 'C04', 'SC042'),
(42, 'C05', 'SC053'),
(42, 'C06', 'SC063'),
(43, 'C01', 'SC012'),
(43, 'C02', 'SC023'),
(43, 'C03', 'SC031'),
(43, 'C04', 'SC042'),
(43, 'C05', 'SC053'),
(43, 'C06', 'SC063'),
(44, 'C01', 'SC012'),
(44, 'C02', 'SC023'),
(44, 'C03', 'SC031'),
(44, 'C04', 'SC041'),
(44, 'C05', 'SC053'),
(44, 'C06', 'SC063'),
(45, 'C01', 'SC011'),
(45, 'C02', 'SC012'),
(45, 'C03', 'SC031'),
(45, 'C04', 'SC041'),
(45, 'C05', 'SC012'),
(45, 'C06', 'SC012'),
(46, 'C01', 'SC011'),
(46, 'C02', 'SC012'),
(46, 'C03', 'SC031'),
(46, 'C04', 'SC041'),
(46, 'C05', 'SC051'),
(46, 'C06', 'SC012'),
(47, 'C01', 'SC011'),
(47, 'C02', 'SC021'),
(47, 'C03', 'SC031'),
(47, 'C04', 'SC041'),
(47, 'C05', 'SC012'),
(47, 'C06', 'SC012'),
(48, 'C01', 'SC011'),
(48, 'C02', 'SC021'),
(48, 'C03', 'SC032'),
(48, 'C04', 'SC041'),
(48, 'C05', 'SC012'),
(48, 'C06', 'SC012'),
(49, 'C01', 'SC011'),
(49, 'C02', 'SC021'),
(49, 'C03', 'SC031'),
(49, 'C04', 'SC041'),
(49, 'C05', 'SC051'),
(49, 'C06', 'SC012'),
(50, 'C01', 'SC011'),
(50, 'C02', 'SC021'),
(50, 'C03', 'SC032'),
(50, 'C04', 'SC041'),
(50, 'C05', 'SC051'),
(50, 'C06', 'SC012'),
(51, 'C01', 'SC011'),
(51, 'C02', 'SC012'),
(51, 'C03', 'SC032'),
(51, 'C04', 'SC041'),
(51, 'C05', 'SC053'),
(51, 'C06', 'SC063'),
(52, 'C01', 'SC011'),
(52, 'C02', 'SC012'),
(52, 'C03', 'SC031'),
(52, 'C04', 'SC041'),
(52, 'C05', 'SC012'),
(52, 'C06', 'SC063'),
(53, 'C01', 'SC011'),
(53, 'C02', 'SC012'),
(53, 'C03', 'SC032'),
(53, 'C04', 'SC041'),
(53, 'C05', 'SC051'),
(53, 'C06', 'SC012'),
(54, 'C01', 'SC012'),
(54, 'C02', 'SC012'),
(54, 'C03', 'SC032'),
(54, 'C04', 'SC041'),
(54, 'C05', 'SC012'),
(54, 'C06', 'SC012'),
(55, 'C01', 'SC011'),
(55, 'C02', 'SC012'),
(55, 'C03', 'SC032'),
(55, 'C04', 'SC041'),
(55, 'C05', 'SC012'),
(55, 'C06', 'SC063'),
(56, 'C01', 'SC011'),
(56, 'C02', 'SC021'),
(56, 'C03', 'SC032'),
(56, 'C04', 'SC041'),
(56, 'C05', 'SC051'),
(56, 'C06', 'SC012'),
(57, 'C01', 'SC011'),
(57, 'C02', 'SC021'),
(57, 'C03', 'SC031'),
(57, 'C04', 'SC041'),
(57, 'C05', 'SC051'),
(57, 'C06', 'SC012'),
(58, 'C01', 'SC011'),
(58, 'C02', 'SC012'),
(58, 'C03', 'SC031'),
(58, 'C04', 'SC041'),
(58, 'C05', 'SC012'),
(58, 'C06', 'SC012'),
(59, 'C01', 'SC013'),
(59, 'C02', 'SC023'),
(59, 'C03', 'SC031'),
(59, 'C04', 'SC041'),
(59, 'C05', 'SC053'),
(59, 'C06', 'SC063'),
(60, 'C01', 'SC011'),
(60, 'C02', 'SC012'),
(60, 'C03', 'SC032'),
(60, 'C04', 'SC041'),
(60, 'C05', 'SC012'),
(60, 'C06', 'SC063'),
(61, 'C01', 'SC011'),
(61, 'C02', 'SC021'),
(61, 'C03', 'SC031'),
(61, 'C04', 'SC041'),
(61, 'C05', 'SC051'),
(61, 'C06', 'SC063'),
(62, 'C01', 'SC011'),
(62, 'C02', 'SC021'),
(62, 'C03', 'SC032'),
(62, 'C04', 'SC041'),
(62, 'C05', 'SC051'),
(62, 'C06', 'SC063'),
(63, 'C01', 'SC011'),
(63, 'C02', 'SC023'),
(63, 'C03', 'SC032'),
(63, 'C04', 'SC041'),
(63, 'C05', 'SC053'),
(63, 'C06', 'SC063'),
(64, 'C01', 'SC011'),
(64, 'C02', 'SC023'),
(64, 'C03', 'SC032'),
(64, 'C04', 'SC042'),
(64, 'C05', 'SC012'),
(64, 'C06', 'SC063'),
(65, 'C01', 'SC012'),
(65, 'C02', 'SC023'),
(65, 'C03', 'SC031'),
(65, 'C04', 'SC042'),
(65, 'C05', 'SC012'),
(65, 'C06', 'SC063'),
(66, 'C01', 'SC012'),
(66, 'C02', 'SC023'),
(66, 'C03', 'SC031'),
(66, 'C04', 'SC041'),
(66, 'C05', 'SC012'),
(66, 'C06', 'SC063'),
(67, 'C01', 'SC012'),
(67, 'C02', 'SC012'),
(67, 'C03', 'SC031'),
(67, 'C04', 'SC041'),
(67, 'C05', 'SC012'),
(67, 'C06', 'SC012'),
(68, 'C01', 'SC013'),
(68, 'C02', 'SC023'),
(68, 'C03', 'SC031'),
(68, 'C04', 'SC041'),
(68, 'C05', 'SC012'),
(68, 'C06', 'SC012'),
(69, 'C01', 'SC011'),
(69, 'C02', 'SC012'),
(69, 'C03', 'SC032'),
(69, 'C04', 'SC041'),
(69, 'C05', 'SC012'),
(69, 'C06', 'SC012'),
(70, 'C01', 'SC013'),
(70, 'C02', 'SC023'),
(70, 'C03', 'SC031'),
(70, 'C04', 'SC041'),
(70, 'C05', 'SC012'),
(70, 'C06', 'SC061'),
(71, 'C01', 'SC013'),
(71, 'C02', 'SC023'),
(71, 'C03', 'SC032'),
(71, 'C04', 'SC041'),
(71, 'C05', 'SC012'),
(71, 'C06', 'SC061'),
(72, 'C01', 'SC013'),
(72, 'C02', 'SC023'),
(72, 'C03', 'SC031'),
(72, 'C04', 'SC041'),
(72, 'C05', 'SC053'),
(72, 'C06', 'SC061'),
(73, 'C01', 'SC012'),
(73, 'C02', 'SC012'),
(73, 'C03', 'SC031'),
(73, 'C04', 'SC041'),
(73, 'C05', 'SC051'),
(73, 'C06', 'SC012'),
(74, 'C01', 'SC012'),
(74, 'C02', 'SC023'),
(74, 'C03', 'SC032'),
(74, 'C04', 'SC042'),
(74, 'C05', 'SC012'),
(74, 'C06', 'SC063'),
(75, 'C01', 'SC012'),
(75, 'C02', 'SC023'),
(75, 'C03', 'SC031'),
(75, 'C04', 'SC041'),
(75, 'C05', 'SC053'),
(75, 'C06', 'SC063'),
(76, 'C01', 'SC013'),
(76, 'C02', 'SC023'),
(76, 'C03', 'SC031'),
(76, 'C04', 'SC042'),
(76, 'C05', 'SC053'),
(76, 'C06', 'SC012'),
(77, 'C01', 'SC011'),
(77, 'C02', 'SC021'),
(77, 'C03', 'SC032'),
(77, 'C04', 'SC041'),
(77, 'C05', 'SC012'),
(77, 'C06', 'SC012'),
(78, 'C01', 'SC011'),
(78, 'C02', 'SC021'),
(78, 'C03', 'SC031'),
(78, 'C04', 'SC041'),
(78, 'C05', 'SC012'),
(78, 'C06', 'SC012'),
(79, 'C01', 'SC011'),
(79, 'C02', 'SC012'),
(79, 'C03', 'SC031'),
(79, 'C04', 'SC041'),
(79, 'C05', 'SC012'),
(79, 'C06', 'SC063');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_criteria`
--

CREATE TABLE `bobot_criteria` (
  `id_criteria` varchar(5) DEFAULT NULL,
  `bobot` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bobot_criteria`
--

INSERT INTO `bobot_criteria` (`id_criteria`, `bobot`) VALUES
('C01', 9),
('C02', 7),
('C03', 5),
('C04', 3),
('C05', 1),
('C06', 9);

-- --------------------------------------------------------

--
-- Table structure for table `bobot_sub_criteria`
--

CREATE TABLE `bobot_sub_criteria` (
  `id_sub_criteria` varchar(5) DEFAULT NULL,
  `bobot` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bobot_sub_criteria`
--

INSERT INTO `bobot_sub_criteria` (`id_sub_criteria`, `bobot`) VALUES
('SC011', 9),
('SC012', 7),
('SC013', 5),
('SC021', 9),
('SC022', 7),
('SC023', 5),
('SC031', 9),
('SC032', 1),
('SC041', 9),
('SC042', 1),
('SC051', 9),
('SC052', 7),
('SC053', 5),
('SC061', 9),
('SC062', 7),
('SC063', 5);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id_criteria` varchar(5) NOT NULL,
  `criteria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id_criteria`, `criteria`) VALUES
('C01', 'Harga'),
('C02', 'Kapasitas Silinder'),
('C03', 'Transmisi'),
('C04', 'Jenis BBM'),
('C05', 'Konsumsi BBM'),
('C06', 'Kapasitas Penumpang');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int NOT NULL,
  `merk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `varian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `harga` bigint NOT NULL,
  `cc` int NOT NULL,
  `transmisi` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `penumpang` int NOT NULL,
  `jenis_bbm` varchar(10) NOT NULL,
  `konsumsi_bbm` double NOT NULL,
  `jumlah_silinder` int NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merk`, `jenis`, `model`, `varian`, `harga`, `cc`, `transmisi`, `penumpang`, `jenis_bbm`, `konsumsi_bbm`, `jumlah_silinder`, `image`) VALUES
(1, 'DAIHATSU', 'Hatchback', 'Ayla', '1.2 R DLX MC', 148550000, 1197, 'MT', 5, 'Bensin', 21, 4, 'ayla.png'),
(2, 'DAIHATSU', 'Hatchback', 'Sirion', 'STD E4', 207800000, 1329, 'MT', 5, 'Bensin', 12.8, 4, 'sirion.jpg'),
(3, 'DAIHATSU', 'Hatchback', 'Sirion', 'STD MC E4', 223100000, 1329, 'AT', 5, 'Bensin', 12.8, 4, 'sirion.jpg'),
(4, 'DAIHATSU', 'MPV', 'Sigra', '1.2 X DLX MC', 158700000, 1197, 'AT', 7, 'Bensin', 26.3, 4, 'sigra.jpg'),
(5, 'DAIHATSU', 'MPV', 'Xenia', 'R 1.3 STD', 205200000, 1329, 'AT', 7, 'Bensin', 9, 4, 'xenia.png'),
(6, 'DAIHATSU', 'Pick Up', 'Gran Max', 'PU 1.3 STD FH E3', 146400000, 1298, 'MT', 2, 'Bensin', 14.3, 4, 'granmax.png'),
(7, 'DAIHATSU', 'SUV', 'Rocky', '1.2 X', 208800000, 1198, 'AT', 5, 'Bensin', 18, 3, 'rocky.png'),
(8, 'DAIHATSU', 'SUV', 'Terios', 'R IDS', 234500000, 1496, 'MT', 7, 'Bensin', 12.5, 4, 'terios-r.jpg'),
(9, 'DAIHATSU', 'SUV', 'Terios', 'X DLX IDS', 224300000, 1496, 'AT', 7, 'Bensin', 12.5, 4, 'terios-x.png'),
(10, 'DAIHATSU', 'Van', 'Luxio', '1.5 D MC E4', 194300000, 1495, 'MT', 8, 'Bensin', 10.1, 4, 'luxio.jpg'),
(11, 'HONDA', 'Hatchback', 'Brio', 'New RS', 198200000, 1199, 'AT', 5, 'Bensin', 31, 4, 'brio-rs.jpg'),
(12, 'HONDA', 'Hatchback', 'Brio', 'New RS', 183300000, 1199, 'MT', 5, 'Bensin', 30, 4, 'brio-rs.jpg'),
(13, 'HONDA', 'Hatchback', 'Brio', 'Satya E', 175400000, 1199, 'AT', 5, 'Bensin', 16.9, 4, 'brio-satya.jpg'),
(14, 'HONDA', 'Hatchback', 'Brio', 'Satya S', 151400000, 1199, 'MT', 5, 'Bensin', 16.9, 4, 'brio-satya.jpg'),
(15, 'HONDA', 'Hatchback', 'City', 'RS Hatchback', 302000000, 1598, 'AT', 5, 'Bensin', 24.8, 4, 'city.jpg'),
(16, 'HONDA', 'Hatchback', 'City', 'RS Hatchback', 292000000, 1598, 'MT', 5, 'Bensin', 24.8, 4, 'city.jpg'),
(17, 'HONDA', 'Hatchback', 'Civic', 'Hatchback RS', 512800000, 1598, 'AT', 5, 'Bensin', 14, 4, 'civic-h.jpg'),
(18, 'HONDA', 'Hatchback', 'HR-V', '1.5 L S', 294700000, 1497, 'MT', 5, 'Bensin', 18, 4, 'hrv-l.png'),
(19, 'HONDA', 'Hatchback', 'HR-V', '1.8 L Prestige', 409800000, 1799, 'AT', 5, 'Bensin', 11.5, 4, 'hrv-prestige.jpg'),
(20, 'HONDA', 'MPV', 'BR-V', 'All New', 302100000, 1497, 'AT', 7, 'Bensin', 21, 4, 'brv.jpg'),
(21, 'HONDA', 'MPV', 'Mobilio', 'S', 197600000, 1496, 'MT', 7, 'Bensin', 22.8, 4, 'mobilio.png'),
(22, 'HONDA', 'MPV', 'Odyssey', '2.4 L', 888000000, 2356, 'AT', 7, 'Bensin', 8.3, 4, 'odyssey.webp'),
(23, 'HONDA', 'Sedan', 'Accord', '1.5 L', 749000000, 1497, 'AT', 5, 'Bensin', 12, 4, 'accord.jpg'),
(24, 'HONDA', 'Sedan', 'Civic', '1.5 L VTEC Turbo', 533000000, 1498, 'AT', 5, 'Bensin', 20, 4, 'civic-turbo.jpg'),
(25, 'HONDA', 'Sedan', 'Civic', 'Type R 6  Speed', 1177000000, 1996, 'MT', 5, 'Bensin', 14, 4, 'civic-r.jpg'),
(26, 'HONDA', 'SUV', 'CR-V', '1.5 L Turbo', 500000000, 1498, 'AT', 7, 'Bensin', 9.8, 4, 'crv-turbo.jpg'),
(27, 'HONDA', 'SUV', 'CR-V', '2.0 L i-VTEC', 470600000, 1997, 'AT', 5, 'Bensin', 16, 4, 'crv-vtec.png'),
(28, 'MITSUBISHI', 'MPV', 'Xpander', 'Sport', 261050000, 1499, 'MT', 7, 'Bensin', 10.5, 4, 'xpander-s.jpg'),
(29, 'MITSUBISHI', 'MPV', 'Xpander', 'Ultimate', 274820000, 1499, 'AT', 7, 'Bensin', 10.5, 4, 'xpander-u.jpeg'),
(30, 'MITSUBISHI', 'Pick Up', 'Triton', 'DC HDX 4x4', 382000000, 2477, 'MT', 5, 'Diesel', 16, 4, 'triton-dc.jpg'),
(31, 'MITSUBISHI', 'Pick Up', 'Triton', 'SC GLX 4x2', 263000000, 2442, 'MT', 2, 'Diesel', 15, 4, 'triton-sc.jpg'),
(32, 'MITSUBISHI', 'SUV', 'Eclipse', 'Cross Ultimate', 502100000, 1499, 'AT', 5, 'Bensin', 14.9, 4, 'eclipse.jpg'),
(33, 'MITSUBISHI', 'SUV', 'Pajero', 'Sport Dakar 4×2', 496000000, 2442, 'AT', 7, 'Diesel', 12.6, 4, 'pajero-dakar.jpg'),
(34, 'MITSUBISHI', 'SUV', 'Pajero', 'Sport Exceed 4×2', 535000000, 2477, 'MT', 7, 'Diesel', 12.6, 4, 'pajero-exceed.jpg'),
(35, 'MITSUBISHI', 'SUV', 'Pajero', 'Sport GLX 4×4', 495000000, 2442, 'AT', 7, 'Diesel', 9.8, 4, 'pajero-sport.jpg'),
(36, 'NISSAN', 'MPV', 'Serena', '2.0 L Type HWS', 490750000, 1997, 'AT', 7, 'Bensin', 16.1, 4, 'serena.png'),
(37, 'NISSAN', 'SUV', 'Kicks E Power', '1.2L', 477000000, 1198, 'AT', 5, 'Bensin', 23.6, 4, 'kicks.jpg'),
(38, 'NISSAN', 'SUV', 'Livina', '1.5 Type EL', 247800000, 1499, 'MT', 7, 'Bensin', 12, 4, 'livina.png'),
(39, 'NISSAN', 'SUV', 'Livina', '1.5 Type VE', 279700000, 1499, 'AT', 7, 'Bensin', 11.5, 4, 'livina.png'),
(40, 'NISSAN', 'SUV', 'Magnite Upper', 'Premium', 259900000, 999, 'AT', 5, 'Bensin', 17, 3, 'magnite.jpg'),
(41, 'NISSAN', 'SUV', 'Magnite Upper', 'Premium', 247400000, 999, 'MT', 5, 'Bensin', 20, 3, 'magnite.jpg'),
(42, 'NISSAN', 'SUV', 'Terra', 'EL 4x2', 488900000, 2488, 'MT', 7, 'Diesel', 8.8, 4, 'terra-el.png'),
(43, 'NISSAN', 'SUV', 'Terra', 'VT 4x2', 515500000, 2488, 'AT', 7, 'Diesel', 8.8, 4, 'terra-vl.png'),
(44, 'NISSAN', 'SUV', 'Xtrail', '2.5 VL', 591000000, 2488, 'AT', 7, 'Bensin', 8.6, 7, 'xtrail.png'),
(45, 'SUZUKI', 'Crossover', 'SX4', 'SCross', 320500000, 1491, 'AT', 5, 'Bensin', 14.4, 4, 'sx4.jpg'),
(46, 'SUZUKI', 'Hatchback', 'Baleno', 'New', 252500000, 1373, 'AT', 5, 'Bensin', 20, 4, 'baleno.png'),
(47, 'SUZUKI', 'Hatchback', 'Ignis', 'GL ', 196000000, 1197, 'AT', 5, 'Bensin', 17.2, 4, 'ignis.jpeg'),
(48, 'SUZUKI', 'Hatchback', 'Ignis', 'GL ', 186000000, 1197, 'MT', 5, 'Bensin', 17.2, 4, 'ignis.jpeg'),
(49, 'SUZUKI', 'Hatchback', 'Wagon', 'GL ', 138000000, 998, 'AT', 5, 'Bensin', 21.5, 3, 'wagon.jpg'),
(50, 'SUZUKI', 'Hatchback', 'Wagon', 'GL ', 147800000, 998, 'MT', 5, 'Bensin', 21, 3, 'wagon.jpg'),
(51, 'SUZUKI', 'MPV', 'APV', 'SGX', 219500000, 1493, 'MT', 7, 'Bensin', 10.1, 4, 'apv.jpg'),
(52, 'SUZUKI', 'MPV', 'Ertiga', 'GL ', 241500000, 1462, 'AT', 7, 'Bensin', 16.7, 4, 'ertiga.jpg'),
(53, 'SUZUKI', 'Sedan', 'Ciaz', 'Ciaz', 323500000, 1373, 'MT', 5, 'Bensin', 21.4, 4, 'ciaz.jpg'),
(54, 'SUZUKI', 'SUV', 'Jimmy', 'Standart', 440000000, 1462, 'MT', 4, 'Bensin', 14, 4, 'jimmy.png'),
(55, 'SUZUKI', 'SUV', 'XL 7', 'ZETA', 237100000, 1462, 'MT', 7, 'Bensin', 12.7, 4, 'xl7.jpg'),
(56, 'TOYOTA', 'Hatchback', 'Agya', '1.2 G STD', 141200000, 1197, 'MT', 5, 'Bensin', 19, 4, 'agya-std.jpg'),
(57, 'TOYOTA', 'Hatchback', 'Agya', 'AGYA 1.2 G A/T GR SPORT', 162390000, 1197, 'AT', 5, 'Bensin', 19, 4, 'agya-sport.png'),
(58, 'TOYOTA', 'Hatchback', 'Yaris', '1.5S GR Sport', 274000000, 1496, 'AT', 5, 'Bensin', 17.2, 4, 'yaris.png'),
(59, 'TOYOTA', 'MPV', 'Alphard', '3.5 Q', 1905250000, 3456, 'AT', 8, 'Bensin', 6.7, 6, 'alphard.jpg'),
(60, 'TOYOTA', 'MPV', 'Avanza', '1.3 E STD LUX', 179650000, 1329, 'MT', 7, 'Bensin', 13, 4, 'avanza.jpg'),
(61, 'TOYOTA', 'MPV', 'Calya', '1.2 G Lux', 162775000, 1197, 'AT', 7, 'Bensin', 28, 4, 'calya.jpg'),
(62, 'TOYOTA', 'MPV', 'Calya', '1.2 G Lux', 150575000, 1197, 'MT', 7, 'Bensin', 25, 4, 'calya.jpg'),
(63, 'TOYOTA', 'MPV', 'Kijang Innova', '2.0 G BSN LUXURY', 332300000, 1998, 'MT', 8, 'Bensin', 10, 4, 'innova-luxury.jpg'),
(64, 'TOYOTA', 'MPV', 'Kijang Innova', '2.4 G  DSL', 343800000, 2393, 'MT', 8, 'Diesel', 17.8, 4, 'innova-dsl.png'),
(65, 'TOYOTA', 'MPV', 'Kijang Innova', 'VENTURER 2.4 DSL', 462500000, 2393, 'AT', 8, 'Diesel', 17.8, 4, 'innova-venturer.jpg'),
(66, 'TOYOTA', 'MPV', 'Voxy', '2', 506750000, 1987, 'AT', 7, 'Bensin', 16, 4, 'voxy.jpg'),
(67, 'TOYOTA', 'Sedan', 'Altis', 'New G', 487800000, 1798, 'AT', 5, 'Bensin', 18, 4, 'altis.jpg'),
(68, 'TOYOTA', 'Sedan', 'Camry', '2.5 L HYBRID', 844500000, 2494, 'AT', 5, 'Bensin', 18.4, 4, 'camry.jpg'),
(69, 'TOYOTA', 'Sedan', 'Vios', 'New G', 260600000, 1496, 'MT', 5, 'Bensin', 14, 4, 'vios.jpeg'),
(70, 'TOYOTA', 'Sport', 'FT86', '2.0 L TRD ', 820000000, 1998, 'AT', 2, 'Bensin', 13, 4, 'ft86.png'),
(71, 'TOYOTA', 'Sport', 'FT86', '2.0 L TRD ', 783800000, 1998, 'MT', 2, 'Bensin', 12.8, 4, 'ft86.png'),
(72, 'TOYOTA', 'Sport', 'Supra', 'GR SUPRA 3.0 L', 2147100000, 2998, 'AT', 2, 'Bensin', 10.2, 6, 'supra.jpeg'),
(73, 'TOYOTA', 'SUV', 'C-Hr', 'HYBRID HV 1.8', 552540000, 1798, 'AT', 5, 'Bensin', 24, 4, 'chr.jfif'),
(74, 'TOYOTA', 'SUV', 'Fortuner', '2.4 G 4X2 DSL LUX', 493000000, 2393, 'MT', 7, 'Diesel', 11.6, 4, 'fortuner-lux.jpg'),
(75, 'TOYOTA', 'SUV', 'Fortuner', '2.7 SRZ 4X2 BSN GR SPORT', 555000000, 2694, 'AT', 7, 'Bensin', 9.6, 4, 'fortuner-sport.jpeg'),
(76, 'TOYOTA', 'SUV', 'Land Cruiser', '200 FULL SPEC DSL', 2552250000, 4461, 'AT', 6, 'Diesel', 6, 8, 'landcruiser.jpg'),
(77, 'TOYOTA', 'SUV', 'Raize', '1.0T', 230800000, 1000, 'MT', 5, 'Bensin', 18, 3, 'raize.jpg'),
(78, 'TOYOTA', 'SUV', 'Raize', '1.0T GR Sport TSS', 276100000, 1000, 'AT', 5, 'Bensin', 18, 3, 'raize-sport.jpg'),
(79, 'TOYOTA', 'SUV', 'Rush', '1.5 S A/T LUX GR SPORT', 262780000, 1496, 'AT', 7, 'Bensin', 11.3, 4, 'rush.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `prioritas_criteria`
--

CREATE TABLE `prioritas_criteria` (
  `id_criteria` varchar(5) NOT NULL,
  `priority` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prioritas_criteria`
--

INSERT INTO `prioritas_criteria` (`id_criteria`, `priority`) VALUES
('C01', 0.33618355024786367),
('C02', 0.16600716547850433),
('C03', 0.08856164697223262),
('C04', 0.04709808368714055),
('C05', 0.025966003366395166),
('C06', 0.33618355024786367);

-- --------------------------------------------------------

--
-- Table structure for table `prioritas_sub_criteria`
--

CREATE TABLE `prioritas_sub_criteria` (
  `id_sub_criteria` varchar(10) NOT NULL,
  `sub_priority` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prioritas_sub_criteria`
--

INSERT INTO `prioritas_sub_criteria` (`id_sub_criteria`, `sub_priority`) VALUES
('SC031', 0.11111111111111113),
('SC032', 1),
('SC041', 1),
('SC042', 0.11111111111111113),
('SC051', 1),
('SC052', 0.41130451789556044),
('SC053', 0.1676119694895365),
('SC061', 1),
('SC062', 0.41130451789556044),
('SC063', 0.1676119694895365),
('SC021', 1),
('SC022', 0.41130451789556044),
('SC023', 0.1676119694895365),
('SC011', 1),
('SC012', 0.41130451789556044),
('SC013', 0.1676119694895365);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id_ranking` int NOT NULL,
  `id_mobil` int NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_criteria`
--

CREATE TABLE `sub_criteria` (
  `id_sub_criteria` varchar(5) NOT NULL,
  `sub_criteria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sub_criteria`
--

INSERT INTO `sub_criteria` (`id_sub_criteria`, `sub_criteria`) VALUES
('SC011', 'Murah'),
('SC012', 'Sedang'),
('SC013', 'Mahal'),
('SC021', 'Rendah'),
('SC022', 'Sedang'),
('SC023', 'Tinggi'),
('SC031', 'AT'),
('SC032', 'MT'),
('SC041', 'Bensin'),
('SC042', 'Diesel'),
('SC051', 'Irit'),
('SC052', 'Sedang'),
('SC053', 'Boros'),
('SC061', 'Sedikit'),
('SC062', 'Sedang'),
('SC063', 'Banyak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `id_criteria` (`id_criteria`),
  ADD KEY `id_sub_criteria` (`id_sub_criteria`);

--
-- Indexes for table `bobot_criteria`
--
ALTER TABLE `bobot_criteria`
  ADD KEY `id_criteria` (`id_criteria`);

--
-- Indexes for table `bobot_sub_criteria`
--
ALTER TABLE `bobot_sub_criteria`
  ADD KEY `id_sub_criteria` (`id_sub_criteria`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id_criteria`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `prioritas_criteria`
--
ALTER TABLE `prioritas_criteria`
  ADD KEY `id_criteria` (`id_criteria`);

--
-- Indexes for table `prioritas_sub_criteria`
--
ALTER TABLE `prioritas_sub_criteria`
  ADD KEY `id_sub_criteria` (`id_sub_criteria`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_ranking`),
  ADD KEY `id_mobil` (`id_mobil`) USING BTREE;

--
-- Indexes for table `sub_criteria`
--
ALTER TABLE `sub_criteria`
  ADD PRIMARY KEY (`id_sub_criteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id_ranking` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD CONSTRAINT `alternatif_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alternatif_ibfk_2` FOREIGN KEY (`id_sub_criteria`) REFERENCES `sub_criteria` (`id_sub_criteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alternatif_ibfk_3` FOREIGN KEY (`id_criteria`) REFERENCES `criteria` (`id_criteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bobot_criteria`
--
ALTER TABLE `bobot_criteria`
  ADD CONSTRAINT `bobot_criteria_ibfk_1` FOREIGN KEY (`id_criteria`) REFERENCES `criteria` (`id_criteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bobot_sub_criteria`
--
ALTER TABLE `bobot_sub_criteria`
  ADD CONSTRAINT `bobot_sub_criteria_ibfk_1` FOREIGN KEY (`id_sub_criteria`) REFERENCES `sub_criteria` (`id_sub_criteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prioritas_criteria`
--
ALTER TABLE `prioritas_criteria`
  ADD CONSTRAINT `prioritas_criteria_ibfk_1` FOREIGN KEY (`id_criteria`) REFERENCES `criteria` (`id_criteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prioritas_sub_criteria`
--
ALTER TABLE `prioritas_sub_criteria`
  ADD CONSTRAINT `prioritas_sub_criteria_ibfk_1` FOREIGN KEY (`id_sub_criteria`) REFERENCES `sub_criteria` (`id_sub_criteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
