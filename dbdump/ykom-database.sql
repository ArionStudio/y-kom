-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 08 Gru 2020, 13:58
-- Wersja serwera: 10.3.16-MariaDB
-- Wersja PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `id15607390_ykom`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `actions`
--

CREATE TABLE `actions` (
  `idAction` int(11) UNSIGNED NOT NULL,
  `idEmployee` int(11) UNSIGNED NOT NULL,
  `time` datetime NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `actions`
--

INSERT INTO `actions` (`idAction`, `idEmployee`, `time`, `description`) VALUES
(1, 1, '2020-12-07 00:00:00', 'Dodanie nowego użytkownika, Add'),
(2, 1, '2020-12-07 00:00:00', 'Usuwanie użytkownika 23'),
(3, 1, '2020-12-07 00:00:00', 'Usuwanie użytkownika 21'),
(4, 1, '2020-12-07 00:00:00', 'Usuwanie użytkownika 20'),
(5, 1, '2020-12-07 00:00:00', 'Usuwanie użytkownika 19'),
(6, 1, '2020-12-07 00:00:00', 'Usuwanie użytkownika 18'),
(7, 1, '2020-12-07 00:00:00', 'Usuwanie użytkownika 17'),
(8, 1, '2020-12-07 00:00:00', 'Usuwanie użytkownika 15'),
(9, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 1'),
(10, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 2'),
(11, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 3'),
(12, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 4'),
(13, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 14'),
(14, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 15'),
(15, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 16'),
(16, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 17'),
(17, 1, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 18'),
(18, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 1'),
(19, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 2'),
(20, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 3'),
(21, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 4'),
(22, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 14'),
(23, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 15'),
(24, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 16'),
(25, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 17'),
(26, 1, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 18'),
(27, 2, '2020-12-07 00:00:00', 'Edycja produktu nr: 14'),
(28, 2, '2020-12-07 00:00:00', 'Zarchiwizowanie ze sklepu produktu nr: 17'),
(29, 1, '2020-12-07 00:00:00', 'Zmiana ilości produktu nr: 1'),
(30, 1, '2020-12-07 00:00:00', 'Zmiana ilości produktu nr: 1'),
(31, 2, '2020-12-07 00:00:00', 'Edycja produktu nr: 24'),
(32, 1, '2020-12-07 00:00:00', 'Zmiana ilości produktu nr: 18'),
(33, 2, '2020-12-07 00:00:00', 'Zmiana ilości produktu nr: 1'),
(34, 2, '2020-12-07 00:00:00', 'Przywrócenie do sklepu produktu nr: 17'),
(35, 2, '2020-12-07 00:00:00', 'Edycja danych użytkownika '),
(36, 1, '2020-12-07 00:00:00', 'Edycja produktu nr: 18'),
(37, 1, '2020-12-07 17:18:30', 'Zarchiwizowanie ze sklepu produktu nr: 1'),
(38, 1, '2020-12-07 17:18:30', 'Zarchiwizowanie ze sklepu produktu nr: 2'),
(39, 1, '2020-12-07 17:18:31', 'Zarchiwizowanie ze sklepu produktu nr: 3'),
(40, 1, '2020-12-07 17:18:31', 'Zarchiwizowanie ze sklepu produktu nr: 4'),
(41, 1, '2020-12-07 17:18:33', 'Przywrócenie do sklepu produktu nr: 1'),
(42, 1, '2020-12-07 17:18:33', 'Przywrócenie do sklepu produktu nr: 2'),
(43, 1, '2020-12-07 17:18:33', 'Przywrócenie do sklepu produktu nr: 3'),
(44, 1, '2020-12-07 17:18:33', 'Przywrócenie do sklepu produktu nr: 4'),
(45, 2, '2020-12-07 17:18:37', 'Edycja produktu nr: 2'),
(46, 1, '2020-12-07 17:19:04', 'Edycja danych użytkownika '),
(47, 2, '2020-12-07 17:22:39', 'Edycja danych użytkownika '),
(48, 1, '2020-12-07 22:00:57', 'Edycja produktu nr: 1'),
(49, 1, '2020-12-07 22:01:03', 'Edycja produktu nr: 2'),
(50, 3, '2020-12-07 22:07:59', 'Usunięcie głownego zdjęcia produktu nr: 20'),
(51, 3, '2020-12-07 22:08:00', 'Usunięcie zdjęcia nr: 128 z galerii produktu nr: 20'),
(52, 2, '2020-12-07 22:09:53', 'Dodawanie nowego produktu o nazwie: Patriot 120GB 2,5\" SATA SSD BURST'),
(53, 2, '2020-12-07 22:11:01', 'Edycja produktu nr: 25'),
(54, 2, '2020-12-07 22:13:19', 'Dodawanie nowego produktu o nazwie: MSI GeForce GTX 1660 VENTUS XS OC 6GB GDDR5'),
(55, 2, '2020-12-07 22:14:45', 'Dodawanie nowego produktu o nazwie: Intel Core i5-10600K'),
(56, 3, '2020-12-07 22:15:39', 'Edycja produktu nr: 26'),
(57, 2, '2020-12-07 22:17:15', 'Dodawanie nowego produktu o nazwie:  MSI B450 GAMING PLUS MAX - 508073'),
(58, 2, '2020-12-07 22:18:38', 'Dodawanie nowego produktu o nazwie: be quiet! Dark Base 700'),
(59, 2, '2020-12-07 22:19:39', 'Dodawanie nowego produktu o nazwie: Kingston 4GB (1x4GB) 1600MHz CL11 DDR3L'),
(60, 2, '2020-12-07 22:20:41', 'Dodawanie nowego produktu o nazwie: Chieftec Polaris 750W 80 Plus Gold'),
(61, 2, '2020-12-07 22:22:50', 'Dodawanie nowego produktu o nazwie: be quiet! Dark Rock Pro 4 120/135mm'),
(62, 2, '2020-12-07 22:24:34', 'Dodawanie nowego produktu o nazwie: Creative Sound Blaster X G6'),
(63, 2, '2020-12-07 22:24:35', 'Zarchiwizowanie ze sklepu produktu nr: 1'),
(64, 2, '2020-12-07 22:26:41', 'Dodawanie nowego produktu o nazwie: Fractal Design Meshify C TG'),
(65, 2, '2020-12-07 22:29:21', 'Dodawanie nowego produktu o nazwie: SilentiumPC Supremo FM2 750W 80 Plus'),
(66, 1, '2020-12-07 22:29:51', 'Dodawanie nowego produktu o nazwie: Creative Sound BlasterX G1'),
(67, 2, '2020-12-07 22:30:16', 'Dodawanie nowego produktu o nazwie: ASRock Z390 PRO4'),
(68, 2, '2020-12-07 22:31:22', 'Dodawanie nowego produktu o nazwie: SilentiumPC Fortis 3 140mm'),
(69, 1, '2020-12-07 22:32:45', 'Dodawanie nowego produktu o nazwie: Creative Sound Blaster X AE-5 Plus'),
(70, 2, '2020-12-07 22:32:49', 'Dodawanie nowego produktu o nazwie: Thermal Grizzly Hydronaut 1g'),
(71, 2, '2020-12-07 22:33:48', 'Dodawanie nowego produktu o nazwie: Scythe Mugen 5 Black RGB 120mm'),
(72, 2, '2020-12-07 22:34:42', 'Dodawanie nowego produktu o nazwie: SilentiumPC Navis RGB 240 2x120mm'),
(73, 1, '2020-12-07 22:34:56', 'Dodawanie nowego produktu o nazwie: FiiO E10K Olympus 2'),
(74, 1, '2020-12-07 22:36:37', 'Edycja produktu nr: 2'),
(75, 2, '2020-12-07 22:37:15', 'Dodawanie nowego produktu o nazwie: MSI MAG Core Liquid 240R 2x120mm'),
(76, 2, '2020-12-07 22:38:19', 'Dodawanie nowego produktu o nazwie: NZXT Kraken X63 RGB 2x140mm'),
(77, 1, '2020-12-07 22:38:50', 'Dodawanie nowego produktu o nazwie: AMD Ryzen 5 2600X'),
(78, 2, '2020-12-07 22:39:21', 'Dodawanie nowego produktu o nazwie: Cooler Master HTK-002 2g'),
(79, 1, '2020-12-07 22:40:22', 'Dodawanie nowego produktu o nazwie: Intel Core i5-10400F'),
(80, 2, '2020-12-07 22:40:24', 'Dodawanie nowego produktu o nazwie: SilentiumPC Corona HP EVO ARGB KIT'),
(81, 2, '2020-12-07 22:41:19', 'Dodawanie nowego produktu o nazwie: SilentiumPC Sigma HP 120 Corona RGB 3pck'),
(82, 1, '2020-12-07 22:41:44', 'Dodawanie nowego produktu o nazwie: AMD Ryzen 5 3400G'),
(83, 2, '2020-12-07 22:42:46', 'Dodawanie nowego produktu o nazwie: AMD Ryzen 5 2600X'),
(84, 1, '2020-12-07 22:43:15', 'Dodawanie nowego produktu o nazwie: AMD Ryzen 5 5600X'),
(85, 2, '2020-12-07 22:44:22', 'Dodawanie nowego produktu o nazwie: KFA2 GeForce RTX 3070 EX Gamer 1-Click'),
(86, 1, '2020-12-07 22:44:34', 'Dodawanie nowego produktu o nazwie: AMD Ryzen 7 2700X'),
(87, 1, '2020-12-07 22:45:41', 'Dodawanie nowego produktu o nazwie: AMD Ryzen 9 5900X'),
(88, 2, '2020-12-07 22:45:59', 'Dodawanie nowego produktu o nazwie: Sapphire Radeon RX 5700 XT Pulse BE'),
(89, 1, '2020-12-07 22:46:45', 'Dodawanie nowego produktu o nazwie: AMD Ryzen 7 3700X'),
(90, 2, '2020-12-07 22:47:12', 'Dodawanie nowego produktu o nazwie: XFX Radeon RX 580 GTS XXX Edition OC'),
(91, 3, '2020-12-07 22:47:12', 'Zarchiwizowanie ze sklepu produktu nr: 17'),
(92, 3, '2020-12-07 22:47:25', 'Zarchiwizowanie ze sklepu produktu nr: 37'),
(93, 3, '2020-12-07 22:47:35', 'Przywrócenie do sklepu produktu nr: 37'),
(94, 1, '2020-12-07 22:47:56', 'Dodawanie nowego produktu o nazwie: Intel Core i5-9400F'),
(95, 2, '2020-12-07 22:48:07', 'Dodawanie nowego produktu o nazwie: Zotac GeForce GTX 1650 Gaming AMP CORE'),
(96, 3, '2020-12-07 22:48:25', 'Przywrócenie do sklepu produktu nr: 1'),
(97, 1, '2020-12-07 22:49:07', 'Dodawanie nowego produktu o nazwie: Intel Core i7-10700KF'),
(98, 2, '2020-12-07 22:49:28', 'Dodawanie nowego produktu o nazwie: MSI GeForce RTX 3070 Gaming X Trio'),
(99, 1, '2020-12-07 22:49:32', 'Edycja produktu nr: 1'),
(100, 2, '2020-12-07 22:50:33', 'Dodawanie nowego produktu o nazwie: Gigabyte Radeon RX 5700 XT AORUS'),
(101, 1, '2020-12-07 22:51:39', 'Dodawanie nowego produktu o nazwie: KIOXIA 480GB 2,5\" SATA SSD EXCERIA'),
(102, 2, '2020-12-07 22:51:45', 'Dodawanie nowego produktu o nazwie: MSI Radeon RX 5500 XT MECH OC'),
(103, 1, '2020-12-07 22:52:36', 'Dodawanie nowego produktu o nazwie: Kingston 500GB M.2 PCIe NVMe A2000'),
(104, 2, '2020-12-07 22:53:02', 'Dodawanie nowego produktu o nazwie: G.SKILL 16GB (2x8GB) 3200MHz CL16 Aegis'),
(105, 1, '2020-12-07 22:53:35', 'Dodawanie nowego produktu o nazwie: Crucial 500GB 2,5\" SATA SSD MX500'),
(106, 2, '2020-12-07 22:53:59', 'Dodawanie nowego produktu o nazwie: HyperX 8GB 2666MHz CL15 Impact Black'),
(107, 1, '2020-12-07 22:54:22', 'Dodawanie nowego produktu o nazwie: Crucial 240GB 2,5\" SATA SSD BX500'),
(108, 2, '2020-12-07 22:54:45', 'Dodawanie nowego produktu o nazwie: Silicon Power 8GB 2666MHz CL19'),
(109, 1, '2020-12-07 22:55:28', 'Dodawanie nowego produktu o nazwie: Samsung 500GB M.2 PCIe NVMe 970 EVO'),
(110, 2, '2020-12-07 22:55:49', 'Dodawanie nowego produktu o nazwie: GOODRAM 8GB 1600MHz CL11'),
(111, 1, '2020-12-07 22:56:19', 'Dodawanie nowego produktu o nazwie: ADATA 1TB M.2 PCIe NVMe XPG SX8200 Pro'),
(112, 2, '2020-12-07 22:57:04', 'Dodawanie nowego produktu o nazwie: G.SKILL 16GB 3200MHz CL16 Ripjaws V'),
(113, 1, '2020-12-07 22:57:32', 'Dodawanie nowego produktu o nazwie: Plextor 256GB 2,5\" SATA SSD M8VC'),
(114, 2, '2020-12-07 22:58:01', 'Dodawanie nowego produktu o nazwie: HyperX 16GB 2666MHz CL16 Fury'),
(115, 1, '2020-12-07 22:58:18', 'Dodawanie nowego produktu o nazwie: Samsung 500GB 2,5\" SATA SSD 860 EVO'),
(116, 2, '2020-12-07 22:59:36', 'Dodawanie nowego produktu o nazwie: Patriot 16GB 3200MHz CL16 Viper 4'),
(117, 2, '2020-12-07 23:00:36', 'Dodawanie nowego produktu o nazwie: SilentiumPC Signum SG1V EVO TG ARGB'),
(118, 1, '2020-12-07 23:00:38', 'Dodawanie nowego produktu o nazwie: Gigabyte B450M DS3H'),
(119, 2, '2020-12-07 23:01:33', 'Dodawanie nowego produktu o nazwie: SilentiumPC Signum SG1 TG'),
(120, 1, '2020-12-07 23:02:23', 'Dodawanie nowego produktu o nazwie: MSI B450-A PRO MAX'),
(121, 2, '2020-12-07 23:03:33', 'Dodawanie nowego produktu o nazwie: SilentiumPC Signum SG1X TG RGB'),
(122, 1, '2020-12-07 23:03:35', 'Dodawanie nowego produktu o nazwie: Gigabyte B450 AORUS ELITE'),
(123, 2, '2020-12-07 23:04:38', 'Dodawanie nowego produktu o nazwie: be quiet! Pure Base 500DX Black'),
(124, 1, '2020-12-07 23:05:06', 'Dodawanie nowego produktu o nazwie: MSI Z490-A PRO'),
(125, 2, '2020-12-07 23:05:38', 'Dodawanie nowego produktu o nazwie: be quiet! Pure Base 500 Window'),
(126, 1, '2020-12-07 23:06:04', 'Dodawanie nowego produktu o nazwie: MSI MAG B550 TOMAHAWK'),
(127, 1, '2020-12-07 23:07:35', 'Dodawanie nowego produktu o nazwie: ASRock B460 Phantom Gaming 4'),
(128, 1, '2020-12-07 23:09:48', 'Dodawanie nowego produktu o nazwie: MSI MAG Z490 TOMAHAWK'),
(129, 1, '2020-12-07 23:11:13', 'Dodawanie nowego produktu o nazwie: ASRock B450M-HDV R4.0'),
(130, 1, '2020-12-07 23:12:18', 'Dodawanie nowego produktu o nazwie: MSI B450 TOMAHAWK MAX'),
(131, 1, '2020-12-07 23:13:22', 'Dodawanie nowego produktu o nazwie: MSI B460M-A PRO'),
(132, 2, '2020-12-07 23:13:44', 'Dodawanie nowego produktu o nazwie: KRUX Trek'),
(133, 2, '2020-12-07 23:15:06', 'Dodawanie nowego produktu o nazwie: SilentiumPC Signum SG1'),
(134, 1, '2020-12-07 23:15:59', 'Dodawanie nowego produktu o nazwie: SilentiumPC Vero L3 700W 80 Plus Bronze'),
(135, 2, '2020-12-07 23:16:11', 'Dodawanie nowego produktu o nazwie: SilentiumPC Regnum RG4TF Frosty'),
(136, 1, '2020-12-07 23:17:18', 'Dodawanie nowego produktu o nazwie: SilentiumPC Elementum E2 550W 80 Plus'),
(137, 2, '2020-12-07 23:18:08', 'Dodawanie nowego produktu o nazwie: Sharkoon Stojak z kartą dźwiękową X-Rest'),
(138, 1, '2020-12-07 23:18:46', 'Dodawanie nowego produktu o nazwie: SilentiumPC Elementum E2 450W 80 Plus'),
(139, 2, '2020-12-07 23:19:26', 'Dodawanie nowego produktu o nazwie: Creative Sound Blaster AE-7'),
(140, 1, '2020-12-07 23:20:09', 'Dodawanie nowego produktu o nazwie: SilentiumPC Vero M3 600W 80 Plus Bronze'),
(141, 2, '2020-12-07 23:20:25', 'Dodawanie nowego produktu o nazwie: Creative Sound Blaster Z (PCI-E)'),
(142, 2, '2020-12-07 23:20:38', 'Edycja produktu nr: 105'),
(143, 1, '2020-12-07 23:21:40', 'Dodawanie nowego produktu o nazwie: SilentiumPC Supremo FM2 650W 80 +G'),
(144, 2, '2020-12-07 23:21:43', 'Dodawanie nowego produktu o nazwie: Creative Sound Blaster X AE-5 Plus'),
(145, 2, '2020-12-07 23:22:46', 'Zarchiwizowanie ze sklepu produktu nr: 1'),
(146, 2, '2020-12-07 23:23:20', 'Zarchiwizowanie ze sklepu produktu nr: 16'),
(147, 2, '2020-12-07 23:23:23', 'Zarchiwizowanie ze sklepu produktu nr: 19'),
(148, 2, '2020-12-07 23:23:27', 'Zarchiwizowanie ze sklepu produktu nr: 18'),
(149, 2, '2020-12-07 23:23:30', 'Zarchiwizowanie ze sklepu produktu nr: 20'),
(150, 2, '2020-12-07 23:23:33', 'Zarchiwizowanie ze sklepu produktu nr: 21'),
(151, 1, '2020-12-07 23:23:36', 'Dodawanie nowego produktu o nazwie: SilentiumPC Vero M3 700W 80 Plus Bronze'),
(152, 2, '2020-12-07 23:23:42', 'Zarchiwizowanie ze sklepu produktu nr: 24'),
(153, 2, '2020-12-07 23:23:49', 'Zarchiwizowanie ze sklepu produktu nr: 14'),
(154, 2, '2020-12-07 23:23:53', 'Zarchiwizowanie ze sklepu produktu nr: 15'),
(155, 2, '2020-12-07 23:24:27', 'Przywrócenie do sklepu produktu nr: 1'),
(156, 1, '2020-12-07 23:24:55', 'Dodawanie nowego produktu o nazwie: SilentiumPC Vero L3 600W 80 Plus Bronze'),
(157, 1, '2020-12-07 23:26:05', 'Dodawanie nowego produktu o nazwie: SilentiumPC Vero L3 500W 80 Plus Bronze'),
(158, 1, '2020-12-07 23:26:29', 'Zarchiwizowanie ze sklepu produktu nr: 52'),
(159, 2, '2020-12-07 23:26:42', 'Zarchiwizowanie ze sklepu produktu nr: 4'),
(160, 2, '2020-12-07 23:26:50', 'Przywrócenie do sklepu produktu nr: 4'),
(161, 2, '2020-12-07 23:27:07', 'Edycja produktu nr: 4'),
(162, 3, '2020-12-07 23:38:40', 'Zmiana statusu zamówienia nr: 31'),
(163, 3, '2020-12-07 23:50:07', 'Zmiana statusu zamówienia nr: 29'),
(164, 3, '2020-12-08 00:15:38', 'Zmiana ilości produktu nr: 1'),
(165, 3, '2020-12-08 00:15:42', 'Zmiana ilości produktu nr: 2'),
(166, 3, '2020-12-08 00:15:44', 'Zmiana ilości produktu nr: 3'),
(167, 3, '2020-12-08 00:36:37', 'Edycja produktu nr: 1'),
(168, 3, '2020-12-08 00:36:37', 'Dodawanie zdjęć do produktu nr: 1'),
(169, 3, '2020-12-08 00:37:18', 'Usunięcie zdjęcia nr: 129 z galerii produktu nr: 1'),
(170, 3, '2020-12-08 00:37:19', 'Edycja produktu nr: 1'),
(171, 3, '2020-12-08 00:37:27', 'Edycja produktu nr: 1'),
(172, 3, '2020-12-08 00:37:27', 'Dodawanie zdjęć do produktu nr: 1'),
(173, 3, '2020-12-08 00:37:50', 'Usunięcie zdjęcia nr: 130 z galerii produktu nr: 1'),
(174, 3, '2020-12-08 00:43:23', 'Edycja produktu nr: 1'),
(175, 3, '2020-12-08 00:43:58', 'Edycja produktu nr: 1'),
(176, 1, '2020-12-08 00:44:05', 'Zarchiwizowanie ze sklepu produktu nr: 107'),
(177, 3, '2020-12-08 00:44:38', 'Edycja produktu nr: 1'),
(178, 3, '2020-12-08 00:44:52', 'Edycja produktu nr: 1'),
(179, 3, '2020-12-08 00:44:52', 'Dodawanie zdjęć do produktu nr: 1'),
(180, 3, '2020-12-08 00:45:05', 'Usunięcie zdjęcia nr: 131 z galerii produktu nr: 1'),
(181, 3, '2020-12-08 00:45:07', 'Edycja produktu nr: 1'),
(182, 3, '2020-12-08 00:45:07', 'Dodawanie zdjęć do produktu nr: 1'),
(183, 3, '2020-12-08 00:45:57', 'Usunięcie zdjęcia nr: 132 z galerii produktu nr: 1'),
(184, 3, '2020-12-08 00:46:00', 'Edycja produktu nr: 1'),
(185, 3, '2020-12-08 00:46:00', 'Dodawanie zdjęć do produktu nr: 1'),
(186, 3, '2020-12-08 00:46:17', 'Usunięcie zdjęcia nr: 133 z galerii produktu nr: 1'),
(187, 3, '2020-12-08 00:46:18', 'Edycja produktu nr: 1'),
(188, 3, '2020-12-08 00:46:22', 'Edycja produktu nr: 1'),
(189, 3, '2020-12-08 00:46:22', 'Dodawanie zdjęć do produktu nr: 1'),
(190, 3, '2020-12-08 00:47:17', 'Edycja produktu nr: 1'),
(191, 3, '2020-12-08 00:48:56', 'Edycja produktu nr: 1'),
(192, 3, '2020-12-08 00:48:56', 'Dodawanie zdjęć do produktu nr: 1'),
(193, 3, '2020-12-08 00:48:58', 'Usunięcie zdjęcia nr: 134 z galerii produktu nr: 1'),
(194, 3, '2020-12-08 00:49:01', 'Usunięcie zdjęcia nr: 135 z galerii produktu nr: 1'),
(195, 3, '2020-12-08 00:49:04', 'Edycja produktu nr: 1'),
(196, 3, '2020-12-08 00:49:04', 'Dodawanie zdjęć do produktu nr: 1'),
(197, 3, '2020-12-08 00:49:10', 'Edycja produktu nr: 1'),
(198, 3, '2020-12-08 00:49:40', 'Edycja produktu nr: 1'),
(199, 3, '2020-12-08 00:49:47', 'Edycja produktu nr: 1'),
(200, 3, '2020-12-08 00:49:54', 'Edycja produktu nr: 1'),
(201, 3, '2020-12-08 00:49:54', 'Dodawanie zdjęć do produktu nr: 1'),
(202, 3, '2020-12-08 00:49:56', 'Usunięcie zdjęcia nr: 136 z galerii produktu nr: 1'),
(203, 3, '2020-12-08 00:49:58', 'Usunięcie zdjęcia nr: 137 z galerii produktu nr: 1'),
(204, 3, '2020-12-08 00:50:02', 'Edycja produktu nr: 1'),
(205, 3, '2020-12-08 00:50:02', 'Dodawanie zdjęć do produktu nr: 1'),
(206, 3, '2020-12-08 00:50:04', 'Edycja produktu nr: 1'),
(207, 3, '2020-12-08 00:50:11', 'Edycja produktu nr: 1'),
(208, 3, '2020-12-08 00:50:11', 'Dodawanie zdjęć do produktu nr: 1'),
(209, 3, '2020-12-08 00:50:14', 'Usunięcie zdjęcia nr: 139 z galerii produktu nr: 1'),
(210, 3, '2020-12-08 00:50:15', 'Usunięcie zdjęcia nr: 138 z galerii produktu nr: 1'),
(211, 3, '2020-12-08 00:50:29', 'Edycja produktu nr: 1'),
(212, 1, '2020-12-08 02:02:47', 'Edycja produktu nr: 3'),
(213, 1, '2020-12-08 02:02:47', 'Dodawanie zdjęć do produktu nr: 3'),
(214, 1, '2020-12-08 02:03:41', 'Edycja produktu nr: 4'),
(215, 1, '2020-12-08 02:04:06', 'Edycja produktu nr: 27'),
(216, 1, '2020-12-08 02:04:30', 'Edycja produktu nr: 46'),
(217, 1, '2020-12-08 02:04:40', 'Edycja produktu nr: 48'),
(218, 1, '2020-12-08 02:05:02', 'Edycja produktu nr: 51'),
(219, 1, '2020-12-08 02:05:15', 'Edycja produktu nr: 53'),
(220, 1, '2020-12-08 02:05:40', 'Edycja produktu nr: 55'),
(221, 1, '2020-12-08 02:05:54', 'Edycja produktu nr: 56'),
(222, 1, '2020-12-08 02:06:20', 'Edycja produktu nr: 58'),
(223, 1, '2020-12-08 02:06:40', 'Edycja produktu nr: 60'),
(224, 1, '2020-12-08 02:06:40', 'Dodawanie zdjęć do produktu nr: 60'),
(225, 1, '2020-12-08 02:06:48', 'Usunięcie zdjęcia nr: 2 z galerii produktu nr: 60'),
(226, 1, '2020-12-08 02:06:51', 'Usunięcie głownego zdjęcia produktu nr: 60'),
(227, 1, '2020-12-08 02:06:57', 'Edycja produktu nr: 60'),
(228, 1, '2020-12-08 02:06:57', 'Dodawanie zdjęć do produktu nr: 60'),
(229, 1, '2020-12-08 02:07:08', 'Edycja produktu nr: 62'),
(230, 1, '2020-12-08 02:07:57', 'Edycja produktu nr: 1'),
(231, 1, '2020-12-08 02:07:57', 'Dodawanie zdjęć do produktu nr: 1'),
(232, 1, '2020-12-08 02:08:28', 'Edycja produktu nr: 25'),
(233, 1, '2020-12-08 02:08:28', 'Dodawanie zdjęć do produktu nr: 25'),
(234, 1, '2020-12-08 02:08:45', 'Edycja produktu nr: 65'),
(235, 1, '2020-12-08 02:08:46', 'Dodawanie zdjęć do produktu nr: 65'),
(236, 1, '2020-12-08 02:09:06', 'Edycja produktu nr: 67'),
(237, 1, '2020-12-08 02:09:07', 'Dodawanie zdjęć do produktu nr: 67'),
(238, 1, '2020-12-08 02:09:21', 'Edycja produktu nr: 69'),
(239, 1, '2020-12-08 02:09:21', 'Dodawanie zdjęć do produktu nr: 69'),
(240, 1, '2020-12-08 02:09:33', 'Edycja produktu nr: 71'),
(241, 1, '2020-12-08 02:09:33', 'Dodawanie zdjęć do produktu nr: 71'),
(242, 1, '2020-12-08 02:09:51', 'Edycja produktu nr: 73'),
(243, 1, '2020-12-08 02:09:51', 'Dodawanie zdjęć do produktu nr: 73'),
(244, 1, '2020-12-08 02:10:02', 'Edycja produktu nr: 75'),
(245, 1, '2020-12-08 02:10:16', 'Edycja produktu nr: 77'),
(246, 1, '2020-12-08 02:10:16', 'Dodawanie zdjęć do produktu nr: 77'),
(247, 1, '2020-12-08 02:10:36', 'Edycja produktu nr: 79'),
(248, 1, '2020-12-08 02:10:36', 'Dodawanie zdjęć do produktu nr: 79'),
(249, 1, '2020-12-08 02:11:24', 'Edycja produktu nr: 2'),
(250, 1, '2020-12-08 02:11:24', 'Dodawanie zdjęć do produktu nr: 2'),
(251, 1, '2020-12-08 02:11:41', 'Edycja produktu nr: 26'),
(252, 1, '2020-12-08 02:11:41', 'Dodawanie zdjęć do produktu nr: 26'),
(253, 1, '2020-12-08 02:11:57', 'Edycja produktu nr: 54'),
(254, 1, '2020-12-08 02:11:57', 'Dodawanie zdjęć do produktu nr: 54'),
(255, 1, '2020-12-08 02:12:11', 'Edycja produktu nr: 57'),
(256, 1, '2020-12-08 02:12:11', 'Dodawanie zdjęć do produktu nr: 57'),
(257, 1, '2020-12-08 02:12:26', 'Edycja produktu nr: 59'),
(258, 1, '2020-12-08 02:12:26', 'Dodawanie zdjęć do produktu nr: 59'),
(259, 1, '2020-12-08 02:12:53', 'Edycja produktu nr: 61'),
(260, 1, '2020-12-08 02:12:54', 'Dodawanie zdjęć do produktu nr: 61'),
(261, 1, '2020-12-08 02:13:09', 'Edycja produktu nr: 63'),
(262, 1, '2020-12-08 02:13:09', 'Dodawanie zdjęć do produktu nr: 63'),
(263, 1, '2020-12-08 02:13:31', 'Edycja produktu nr: 64'),
(264, 1, '2020-12-08 02:13:31', 'Dodawanie zdjęć do produktu nr: 64'),
(265, 1, '2020-12-08 02:13:52', 'Edycja produktu nr: 66'),
(266, 1, '2020-12-08 02:13:52', 'Dodawanie zdjęć do produktu nr: 66'),
(267, 1, '2020-12-08 02:13:58', 'Usunięcie głownego zdjęcia produktu nr: 66'),
(268, 1, '2020-12-08 02:14:00', 'Usunięcie zdjęcia nr: 32 z galerii produktu nr: 66'),
(269, 1, '2020-12-08 02:14:11', 'Edycja produktu nr: 66'),
(270, 1, '2020-12-08 02:14:11', 'Dodawanie zdjęć do produktu nr: 66'),
(271, 1, '2020-12-08 02:14:17', 'Usunięcie głownego zdjęcia produktu nr: 66'),
(272, 1, '2020-12-08 02:14:20', 'Edycja produktu nr: 66'),
(273, 1, '2020-12-08 02:15:42', 'Edycja produktu nr: 28'),
(274, 1, '2020-12-08 02:15:42', 'Dodawanie zdjęć do produktu nr: 28'),
(275, 1, '2020-12-08 02:15:52', 'Usunięcie głownego zdjęcia produktu nr: 28'),
(276, 1, '2020-12-08 02:15:59', 'Usunięcie zdjęcia nr: 34 z galerii produktu nr: 28'),
(277, 1, '2020-12-08 02:16:04', 'Edycja produktu nr: 28'),
(278, 1, '2020-12-08 02:16:04', 'Dodawanie zdjęć do produktu nr: 28'),
(279, 1, '2020-12-08 02:16:25', 'Edycja produktu nr: 37'),
(280, 1, '2020-12-08 02:16:26', 'Dodawanie zdjęć do produktu nr: 37'),
(281, 1, '2020-12-08 02:16:43', 'Edycja produktu nr: 82'),
(282, 1, '2020-12-08 02:16:43', 'Dodawanie zdjęć do produktu nr: 82'),
(283, 1, '2020-12-08 02:16:48', 'Usunięcie zdjęcia nr: 39 z galerii produktu nr: 82'),
(284, 1, '2020-12-08 02:16:50', 'Usunięcie głownego zdjęcia produktu nr: 82'),
(285, 1, '2020-12-08 02:16:53', 'Edycja produktu nr: 82'),
(286, 1, '2020-12-08 02:17:00', 'Edycja produktu nr: 82'),
(287, 1, '2020-12-08 02:17:00', 'Dodawanie zdjęć do produktu nr: 82'),
(288, 1, '2020-12-08 02:17:21', 'Edycja produktu nr: 84'),
(289, 1, '2020-12-08 02:17:21', 'Dodawanie zdjęć do produktu nr: 84'),
(290, 1, '2020-12-08 02:17:33', 'Edycja produktu nr: 86'),
(291, 1, '2020-12-08 02:17:33', 'Dodawanie zdjęć do produktu nr: 86'),
(292, 1, '2020-12-08 02:17:37', 'Usunięcie głownego zdjęcia produktu nr: 86'),
(293, 1, '2020-12-08 02:17:39', 'Usunięcie zdjęcia nr: 43 z galerii produktu nr: 86'),
(294, 1, '2020-12-08 02:17:44', 'Edycja produktu nr: 86'),
(295, 1, '2020-12-08 02:17:44', 'Dodawanie zdjęć do produktu nr: 86'),
(296, 1, '2020-12-08 02:18:08', 'Edycja produktu nr: 88'),
(297, 1, '2020-12-08 02:18:08', 'Dodawanie zdjęć do produktu nr: 88'),
(298, 1, '2020-12-08 02:18:12', 'Usunięcie głownego zdjęcia produktu nr: 88'),
(299, 1, '2020-12-08 02:18:21', 'Edycja produktu nr: 88'),
(300, 1, '2020-12-08 02:18:21', 'Dodawanie zdjęć do produktu nr: 88'),
(301, 1, '2020-12-08 02:18:37', 'Edycja produktu nr: 90'),
(302, 1, '2020-12-08 02:18:37', 'Dodawanie zdjęć do produktu nr: 90'),
(303, 1, '2020-12-08 02:19:05', 'Edycja produktu nr: 91'),
(304, 1, '2020-12-08 02:19:05', 'Dodawanie zdjęć do produktu nr: 91'),
(305, 1, '2020-12-08 02:19:15', 'Usunięcie głownego zdjęcia produktu nr: 91'),
(306, 1, '2020-12-08 02:19:17', 'Usunięcie zdjęcia nr: 51 z galerii produktu nr: 91'),
(307, 1, '2020-12-08 02:19:31', 'Edycja produktu nr: 91'),
(308, 1, '2020-12-08 02:19:31', 'Dodawanie zdjęć do produktu nr: 91'),
(309, 1, '2020-12-08 02:20:12', 'Edycja produktu nr: 92'),
(310, 1, '2020-12-08 02:20:12', 'Dodawanie zdjęć do produktu nr: 92'),
(311, 1, '2020-12-08 02:20:49', 'Edycja produktu nr: 93'),
(312, 1, '2020-12-08 02:20:49', 'Dodawanie zdjęć do produktu nr: 93'),
(313, 1, '2020-12-08 02:21:14', 'Edycja produktu nr: 94'),
(314, 1, '2020-12-08 02:21:14', 'Dodawanie zdjęć do produktu nr: 94'),
(315, 1, '2020-12-08 02:21:30', 'Edycja produktu nr: 95'),
(316, 1, '2020-12-08 02:21:31', 'Dodawanie zdjęć do produktu nr: 95'),
(317, 1, '2020-12-08 02:22:14', 'Edycja produktu nr: 29'),
(318, 1, '2020-12-08 02:22:14', 'Dodawanie zdjęć do produktu nr: 29'),
(319, 1, '2020-12-08 02:22:32', 'Edycja produktu nr: 34'),
(320, 1, '2020-12-08 02:22:32', 'Dodawanie zdjęć do produktu nr: 34'),
(321, 1, '2020-12-08 02:22:49', 'Edycja produktu nr: 81'),
(322, 1, '2020-12-08 02:22:49', 'Dodawanie zdjęć do produktu nr: 81'),
(323, 1, '2020-12-08 02:23:09', 'Edycja produktu nr: 83'),
(324, 1, '2020-12-08 02:23:09', 'Dodawanie zdjęć do produktu nr: 83'),
(325, 1, '2020-12-08 02:23:25', 'Edycja produktu nr: 85'),
(326, 1, '2020-12-08 02:23:25', 'Dodawanie zdjęć do produktu nr: 85'),
(327, 1, '2020-12-08 02:23:45', 'Edycja produktu nr: 87'),
(328, 1, '2020-12-08 02:23:45', 'Dodawanie zdjęć do produktu nr: 87'),
(329, 1, '2020-12-08 02:23:54', 'Edycja produktu nr: 89'),
(330, 1, '2020-12-08 02:23:54', 'Dodawanie zdjęć do produktu nr: 89'),
(331, 1, '2020-12-08 02:24:04', 'Edycja produktu nr: 96'),
(332, 1, '2020-12-08 02:24:04', 'Dodawanie zdjęć do produktu nr: 96'),
(333, 1, '2020-12-08 02:24:19', 'Edycja produktu nr: 97'),
(334, 1, '2020-12-08 02:24:19', 'Dodawanie zdjęć do produktu nr: 97'),
(335, 1, '2020-12-08 02:24:35', 'Edycja produktu nr: 99'),
(336, 1, '2020-12-08 02:24:35', 'Dodawanie zdjęć do produktu nr: 99'),
(337, 1, '2020-12-08 02:25:15', 'Edycja produktu nr: 30'),
(338, 1, '2020-12-08 02:25:15', 'Dodawanie zdjęć do produktu nr: 30'),
(339, 1, '2020-12-08 02:26:04', 'Edycja produktu nr: 68'),
(340, 1, '2020-12-08 02:26:04', 'Dodawanie zdjęć do produktu nr: 68'),
(341, 1, '2020-12-08 02:26:18', 'Edycja produktu nr: 70'),
(342, 1, '2020-12-08 02:26:19', 'Dodawanie zdjęć do produktu nr: 70'),
(343, 1, '2020-12-08 02:26:32', 'Edycja produktu nr: 72'),
(344, 1, '2020-12-08 02:26:32', 'Dodawanie zdjęć do produktu nr: 72'),
(345, 1, '2020-12-08 02:26:42', 'Edycja produktu nr: 74'),
(346, 1, '2020-12-08 02:26:42', 'Dodawanie zdjęć do produktu nr: 74'),
(347, 1, '2020-12-08 02:26:52', 'Edycja produktu nr: 76'),
(348, 1, '2020-12-08 02:26:52', 'Dodawanie zdjęć do produktu nr: 76'),
(349, 1, '2020-12-08 02:27:01', 'Edycja produktu nr: 78'),
(350, 1, '2020-12-08 02:27:19', 'Edycja produktu nr: 80'),
(351, 1, '2020-12-08 02:27:19', 'Dodawanie zdjęć do produktu nr: 80'),
(352, 1, '2020-12-08 02:27:59', 'Edycja produktu nr: 31'),
(353, 1, '2020-12-08 02:27:59', 'Dodawanie zdjęć do produktu nr: 31'),
(354, 1, '2020-12-08 02:28:21', 'Edycja produktu nr: 35'),
(355, 1, '2020-12-08 02:28:21', 'Dodawanie zdjęć do produktu nr: 35'),
(356, 1, '2020-12-08 02:28:36', 'Edycja produktu nr: 98'),
(357, 1, '2020-12-08 02:28:36', 'Dodawanie zdjęć do produktu nr: 98'),
(358, 1, '2020-12-08 02:29:19', 'Edycja produktu nr: 100'),
(359, 1, '2020-12-08 02:29:19', 'Dodawanie zdjęć do produktu nr: 100'),
(360, 1, '2020-12-08 02:29:34', 'Edycja produktu nr: 102'),
(361, 1, '2020-12-08 02:29:34', 'Dodawanie zdjęć do produktu nr: 102'),
(362, 1, '2020-12-08 02:29:51', 'Edycja produktu nr: 104'),
(363, 1, '2020-12-08 02:29:51', 'Dodawanie zdjęć do produktu nr: 104'),
(364, 1, '2020-12-08 02:30:03', 'Edycja produktu nr: 106'),
(365, 1, '2020-12-08 02:30:03', 'Dodawanie zdjęć do produktu nr: 106'),
(366, 1, '2020-12-08 02:30:15', 'Edycja produktu nr: 108'),
(367, 1, '2020-12-08 02:30:15', 'Dodawanie zdjęć do produktu nr: 108'),
(368, 1, '2020-12-08 02:30:38', 'Edycja produktu nr: 109'),
(369, 1, '2020-12-08 02:30:38', 'Dodawanie zdjęć do produktu nr: 109'),
(370, 1, '2020-12-08 02:30:50', 'Edycja produktu nr: 110'),
(371, 1, '2020-12-08 02:30:50', 'Dodawanie zdjęć do produktu nr: 110'),
(372, 1, '2020-12-08 02:31:54', 'Edycja produktu nr: 32'),
(373, 1, '2020-12-08 02:31:54', 'Dodawanie zdjęć do produktu nr: 32'),
(374, 1, '2020-12-08 02:32:08', 'Edycja produktu nr: 38'),
(375, 1, '2020-12-08 02:32:08', 'Dodawanie zdjęć do produktu nr: 38'),
(376, 1, '2020-12-08 02:32:22', 'Edycja produktu nr: 40'),
(377, 1, '2020-12-08 02:32:22', 'Dodawanie zdjęć do produktu nr: 40'),
(378, 1, '2020-12-08 02:32:34', 'Edycja produktu nr: 41'),
(379, 1, '2020-12-08 02:32:34', 'Dodawanie zdjęć do produktu nr: 41'),
(380, 1, '2020-12-08 02:33:36', 'Edycja produktu nr: 42'),
(381, 1, '2020-12-08 02:33:36', 'Dodawanie zdjęć do produktu nr: 42'),
(382, 1, '2020-12-08 02:33:55', 'Edycja produktu nr: 44'),
(383, 1, '2020-12-08 02:33:55', 'Dodawanie zdjęć do produktu nr: 44'),
(384, 1, '2020-12-08 02:34:15', 'Edycja produktu nr: 45'),
(385, 1, '2020-12-08 02:34:15', 'Dodawanie zdjęć do produktu nr: 45'),
(386, 1, '2020-12-08 02:34:34', 'Edycja produktu nr: 47'),
(387, 1, '2020-12-08 02:34:55', 'Edycja produktu nr: 49'),
(388, 1, '2020-12-08 02:34:55', 'Dodawanie zdjęć do produktu nr: 49'),
(389, 1, '2020-12-08 02:36:38', 'Edycja produktu nr: 50'),
(390, 1, '2020-12-08 02:36:38', 'Dodawanie zdjęć do produktu nr: 50'),
(391, 1, '2020-12-08 02:37:36', 'Edycja produktu nr: 33'),
(392, 1, '2020-12-08 02:37:36', 'Dodawanie zdjęć do produktu nr: 33'),
(393, 1, '2020-12-08 02:37:51', 'Edycja produktu nr: 36'),
(394, 1, '2020-12-08 02:37:51', 'Dodawanie zdjęć do produktu nr: 36'),
(395, 1, '2020-12-08 02:38:03', 'Edycja produktu nr: 39'),
(396, 1, '2020-12-08 02:38:03', 'Dodawanie zdjęć do produktu nr: 39'),
(397, 1, '2020-12-08 02:38:13', 'Edycja produktu nr: 43'),
(398, 1, '2020-12-08 02:38:13', 'Dodawanie zdjęć do produktu nr: 43'),
(399, 1, '2020-12-08 02:38:34', 'Edycja produktu nr: 101'),
(400, 1, '2020-12-08 02:38:34', 'Dodawanie zdjęć do produktu nr: 101'),
(401, 1, '2020-12-08 02:38:58', 'Edycja produktu nr: 103'),
(402, 1, '2020-12-08 02:38:58', 'Dodawanie zdjęć do produktu nr: 103'),
(403, 1, '2020-12-08 02:39:09', 'Edycja produktu nr: 105'),
(404, 1, '2020-12-08 02:39:09', 'Dodawanie zdjęć do produktu nr: 105'),
(405, 1, '2020-12-08 02:39:42', 'Edycja danych użytkownika '),
(406, 1, '2020-12-08 02:41:25', 'Edycja danych użytkownika 1'),
(407, 1, '2020-12-08 02:41:33', 'Edycja danych użytkownika 1'),
(408, 1, '2020-12-08 03:19:52', 'Zmiana statusu zamówienia nr: 46'),
(409, 1, '2020-12-08 03:20:49', 'Zmiana statusu zamówienia nr: 44'),
(410, 1, '2020-12-08 03:22:56', 'Zmiana statusu zamówienia nr: 42'),
(411, 1, '2020-12-08 03:22:59', 'Zmiana statusu zamówienia nr: 42'),
(412, 1, '2020-12-08 03:24:13', 'Zmiana statusu zamówienia nr: 45'),
(413, 1, '2020-12-08 03:25:41', 'Zmiana statusu zamówienia nr: 43'),
(414, 1, '2020-12-08 03:26:50', 'Zmiana statusu zamówienia nr: 41'),
(415, 1, '2020-12-08 03:27:34', 'Zmiana statusu zamówienia nr: 39'),
(416, 1, '2020-12-08 03:38:16', 'Dodanie nowego użytkownika  name:Tokajuk');

--
-- Wyzwalacze `actions`
--
DELIMITER $$
CREATE TRIGGER `addNewAction` BEFORE INSERT ON `actions` FOR EACH ROW SET new.time = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `carts`
--

CREATE TABLE `carts` (
  `idCart` int(11) UNSIGNED NOT NULL,
  `summaryPrice` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `carts`
--

INSERT INTO `carts` (`idCart`, `summaryPrice`) VALUES
(1, 155.00),
(2, 520.00),
(3, 0.00),
(4, 0.00),
(5, 310.00),
(6, 520.00),
(7, 0.00),
(8, 10775.00),
(9, 1274.80),
(10, 3816.00),
(11, 929.00),
(12, 2600.00),
(13, 2799.00),
(14, 0.00),
(15, 1040.00),
(16, 1018.00),
(17, 0.00),
(18, 0.00),
(19, 0.00),
(20, 0.00),
(21, 0.00),
(22, 0.00),
(23, 0.00),
(24, 0.00),
(25, 0.00),
(26, 0.00),
(27, 0.00),
(28, 0.00),
(29, 1952.88),
(30, 2918.00);

--
-- Wyzwalacze `carts`
--
DELIMITER $$
CREATE TRIGGER `onNewCart` BEFORE INSERT ON `carts` FOR EACH ROW set NEW.SummaryPrice = 0.00
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `idCategory` tinyint(2) UNSIGNED NOT NULL,
  `category` char(22) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`idCategory`, `category`) VALUES
(1, 'Procesory'),
(2, 'Dyski twarde HDD i SSD'),
(3, 'Karty graficzne\r\n'),
(4, 'Płyty główne'),
(5, 'Obudowy komputerowe'),
(6, 'Pamięci RAM'),
(7, 'Zasilacze komputerowe'),
(8, 'Chłodzenia komputerowe'),
(9, 'Karty dźwiękowe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employeelogintime`
--

CREATE TABLE `employeelogintime` (
  `idLogged` int(11) NOT NULL,
  `idEmployee` int(11) UNSIGNED NOT NULL,
  `Time` datetime NOT NULL,
  `IP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `employeelogintime`
--

INSERT INTO `employeelogintime` (`idLogged`, `idEmployee`, `Time`, `IP`) VALUES
(1, 3, '2020-11-29 20:30:49', ''),
(2, 3, '2020-11-29 20:50:52', '26.230.17.254'),
(3, 1, '2020-11-29 20:51:28', '26.213.44.74'),
(4, 1, '2020-11-29 21:01:25', '26.213.44.74'),
(5, 1, '2020-11-29 22:07:35', '26.213.44.74'),
(6, 2, '2020-11-29 22:10:05', '26.212.186.202'),
(7, 1, '2020-11-29 22:13:08', '26.213.44.74'),
(8, 3, '2020-11-29 22:26:55', '26.230.17.254'),
(9, 1, '2020-11-29 22:29:57', '26.213.44.74'),
(10, 1, '2020-11-29 23:18:00', '26.213.44.74'),
(11, 1, '2020-11-29 23:18:11', '26.213.44.74'),
(12, 1, '2020-11-29 23:18:16', '26.213.44.74'),
(13, 1, '2020-11-29 23:18:21', '26.213.44.74'),
(14, 1, '2020-11-29 23:18:27', '26.213.44.74'),
(15, 1, '2020-11-29 23:18:32', '26.213.44.74'),
(16, 1, '2020-11-29 23:18:38', '26.213.44.74'),
(17, 1, '2020-11-29 23:18:45', '26.213.44.74'),
(18, 1, '2020-11-29 23:18:52', '26.213.44.74'),
(19, 3, '2020-11-29 23:48:34', '26.230.17.254'),
(20, 2, '2020-11-30 11:12:16', '26.212.186.202'),
(21, 3, '2020-11-30 11:13:32', '26.230.17.254'),
(22, 1, '2020-11-30 11:56:18', '26.213.44.74'),
(23, 1, '2020-11-30 14:01:04', '26.213.44.74'),
(24, 3, '2020-11-30 20:12:13', '26.230.17.254'),
(25, 2, '2020-11-30 20:13:19', '26.212.186.202'),
(26, 1, '2020-11-30 20:37:45', '26.213.44.74'),
(27, 3, '2020-11-30 20:38:44', '26.230.17.254'),
(28, 3, '2020-11-30 20:59:05', '26.230.17.254'),
(29, 3, '2020-11-30 22:05:33', '26.230.17.254'),
(30, 2, '2020-12-03 14:35:51', '26.212.186.202'),
(31, 1, '2020-12-03 15:03:57', '26.213.44.74'),
(32, 3, '2020-12-03 15:05:53', '26.230.17.254'),
(33, 3, '2020-12-03 15:18:27', '26.230.17.254'),
(34, 1, '2020-12-03 20:49:06', '26.213.44.74'),
(35, 3, '2020-12-03 21:21:35', '26.230.17.254'),
(36, 3, '2020-12-03 22:21:12', '26.230.17.254'),
(37, 1, '2020-12-03 22:28:35', '26.213.44.74'),
(38, 2, '2020-12-03 22:34:55', '26.212.186.202'),
(39, 1, '2020-12-03 22:38:10', '26.212.186.202'),
(40, 2, '2020-12-03 22:38:45', '26.212.186.202'),
(41, 3, '2020-12-03 22:45:19', '26.230.17.254'),
(42, 3, '2020-12-04 20:32:27', '26.230.17.254'),
(43, 1, '2020-12-04 20:33:11', '26.213.44.74'),
(44, 2, '2020-12-04 20:33:19', '26.212.186.202'),
(45, 2, '2020-12-05 18:33:27', '26.212.186.202'),
(46, 1, '2020-12-05 18:36:23', '26.230.17.254'),
(47, 1, '2020-12-05 19:33:46', '26.213.44.74'),
(48, 1, '2020-12-05 19:55:04', '26.230.17.254'),
(49, 2, '2020-12-07 13:31:58', '26.212.186.202'),
(50, 1, '2020-12-07 13:32:15', '26.213.44.74'),
(51, 2, '2020-12-07 13:34:16', '26.212.186.202'),
(52, 1, '2020-12-07 13:34:19', '26.213.44.74'),
(53, 4, '2020-12-07 13:34:31', '26.213.44.74'),
(54, 1, '2020-12-07 14:37:02', '26.230.17.254'),
(55, 1, '2020-12-07 14:56:39', '26.213.44.74'),
(56, 2, '2020-12-07 16:12:29', '26.212.186.202'),
(57, 3, '2020-12-07 17:22:04', '26.230.17.254'),
(58, 3, '2020-12-07 17:22:40', '26.230.17.254'),
(59, 3, '2020-12-07 21:32:49', '26.230.17.254'),
(60, 2, '2020-12-07 22:27:43', '26.212.186.202'),
(61, 1, '2020-12-08 01:59:25', '5.173.152.93'),
(62, 24, '2020-12-08 10:59:42', '37.47.39.121');

--
-- Wyzwalacze `employeelogintime`
--
DELIMITER $$
CREATE TRIGGER `onLogin` BEFORE INSERT ON `employeelogintime` FOR EACH ROW set new.time = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `idEmployee` int(11) UNSIGNED NOT NULL,
  `idPrem` tinyint(1) UNSIGNED NOT NULL,
  `archive` tinyint(1) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(56) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`idEmployee`, `idPrem`, `archive`, `name`, `surname`, `email`, `password`) VALUES
(1, 2, 0, 'Wiktoria', 'Prekurat', 'wiktoriaprekurat@gmail.com', '$2y$10$P.xsvaf/mWsPsuMOWaYYKugU93YY7W4zZRBYNg5khE7Rmq/pyo6Hq'),
(2, 2, 0, 'Karolina', 'Prekurat', 'karolina@gmail.com', '$2y$10$Hx4c1HHQK9MzImxSs5CgSuS.CjoIIesi4LUoxrzIYxYHVMPQpWum2'),
(3, 1, 0, 'Adrian', 'Rybaczuk', 'adrian@gmail.com', '$2y$10$2ijawGC7z1dO7MoRNVe2R.22uozAnXyv1YOc/G92W.r9IRF0rOSfK'),
(4, 1, 0, 'Jakubuś', 'Paprockiasdessa', 'jak3ub@gmail.com', '$2y$10$rF8AiUBCMJSxPdnGh4tciusGx57WM29hix7uHFCjrssIoYwxSbs7e'),
(10, 2, 0, 'Kubus', 'Paprocuśęk', 'kubus420@siema.jd', '$2y$10$OZMmEImZbtku6XNlcgAPE.lJOAJ2NjL.Z82qMpa2GukahVH98it/2'),
(24, 2, 0, 'Tokajuk', 'Grzegorz', 'grzegorztokajuk@gmail.com', '$2y$10$NG4Y2UohBxv/jA.xIj.CtOEYpV3tzRnlTifW39JvWX3De4VP.0vye');

--
-- Wyzwalacze `employees`
--
DELIMITER $$
CREATE TRIGGER `onNewEmployee` BEFORE INSERT ON `employees` FOR EACH ROW SET new.archive = 0
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) UNSIGNED NOT NULL,
  `idUser` int(11) UNSIGNED DEFAULT NULL,
  `idCart` int(11) UNSIGNED NOT NULL,
  `idStatus` tinyint(1) UNSIGNED NOT NULL,
  `orderData` datetime NOT NULL,
  `postCode` char(6) COLLATE utf8_polish_ci NOT NULL,
  `phone` varchar(9) COLLATE utf8_polish_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `postCity` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(56) COLLATE utf8_polish_ci NOT NULL,
  `adress` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`idOrder`, `idUser`, `idCart`, `idStatus`, `orderData`, `postCode`, `phone`, `name`, `surname`, `postCity`, `email`, `adress`) VALUES
(37, 1, 1, 1, '2020-12-08 00:09:07', '23-233', '510154094', 'Adrian', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', 'Kolarska 12'),
(38, 5, 6, 1, '2020-12-08 01:04:01', '08-110', '567654567', 'Wiktoria', 'Prekurat', 'Siedlce', 'wiktoriaprekurat@gmail.com', 'Spacerowa 64'),
(39, 6, 8, 2, '2020-12-08 01:28:57', '89-322', '997998999', 'Kubus', 'Paprocus', 'Siema', 'dlaczegoszesc@gmail.com', 'Pliszczusie 6'),
(40, 6, 10, 1, '2020-12-08 01:31:14', '89-322', '997998999', 'Kubus', 'Paprocus', 'Siema', 'dlaczegoszesc@gmail.com', 'Pliszczusie 6'),
(41, 1, 2, 2, '2020-12-08 01:36:14', '23-233', '510154094', 'Adrian', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', 'Kolarska 12'),
(42, 1, 12, 2, '2020-12-08 01:37:50', '23-233', '510154094', 'Adrian', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', 'Kolarska 12'),
(43, 6, 11, 2, '2020-12-08 01:40:59', '89-322', '997998999', 'Kubus', 'Paprocus', 'Siema', 'dlaczegoszesc@gmail.com', 'Pliszczusie 6'),
(44, 1, 13, 2, '2020-12-08 01:41:01', '23-233', '510154094', 'Adrian', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', 'Kolarska 12'),
(45, 1, 15, 2, '2020-12-08 01:56:57', '23-233', '510154094', 'Adrian', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', 'Kolarska 12'),
(46, 1, 16, 2, '2020-12-08 03:16:24', '23-233', '510154094', 'Adrian', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', 'Kolarska 12'),
(47, NULL, 29, 1, '2020-12-08 10:54:26', '52-325', '111111111', 'etetetet', 'etetet', 'etetetet', 'wtetewwetewtwte@gmail.com', 'wettwetwe'),
(48, NULL, 30, 1, '2020-12-08 13:28:19', '32-245', '666666666', 'ewolution', 'Jakub', 'kjghkluj', 'admin@a.pl', 'hjfgjhgfy 4');

--
-- Wyzwalacze `orders`
--
DELIMITER $$
CREATE TRIGGER `onNewOrder` BEFORE INSERT ON `orders` FOR EACH ROW set new.orderData = now(),
 new.idStatus = 1
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permissions`
--

CREATE TABLE `permissions` (
  `idPrem` tinyint(1) UNSIGNED NOT NULL,
  `permission` char(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `permissions`
--

INSERT INTO `permissions` (`idPrem`, `permission`) VALUES
(1, 'pracownik'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productgallery`
--

CREATE TABLE `productgallery` (
  `idFoto` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `productgallery`
--

INSERT INTO `productgallery` (`idFoto`, `idProduct`, `photo`) VALUES
(1, 3, '605944_2020_12_08_02_02_47.png'),
(3, 60, 'pr_2018_10_10_11_21_13_392_00_2020_12_08_02_06_57.png'),
(4, 1, 'pr_2017_12_14_8_32_58_66_00_2020_12_08_02_07_57.png'),
(5, 1, 'pr_2017_12_14_8_33_2_66_01_2020_12_08_02_07_57.png'),
(6, 25, 'pr_2017_9_6_14_5_3_982_00_2020_12_08_02_08_28.png'),
(7, 65, 'pr_2020_7_22_11_52_14_46_00_2020_12_08_02_08_46.png'),
(8, 67, 'pr_2019_8_9_13_42_40_264_00_2020_12_08_02_09_07.png'),
(9, 67, 'pr_2019_8_9_13_42_43_526_01_2020_12_08_02_09_07.png'),
(10, 69, 'pr_2018_1_3_14_2_11_795_00_2020_12_08_02_09_21.png'),
(11, 71, 'pr_2018_9_13_11_35_10_523_00_2020_12_08_02_09_33.png'),
(12, 73, 'pr_2018_5_22_12_16_7_607_01_2020_12_08_02_09_51.png'),
(13, 77, 'pr_2018_3_16_11_19_10_369_00_2020_12_08_02_10_16.png'),
(14, 79, 'product-new-big,,pr_2015_12_14_14_48_18_640_2020_12_08_02_10_36.png'),
(15, 79, 'pr_2017_7_27_12_13_10_813_2020_12_08_02_10_36.png'),
(16, 2, 'pr_2019_1_14_8_40_20_115_01_2020_12_08_02_11_24.png'),
(17, 2, 'pr_2019_1_14_8_40_29_444_04_2020_12_08_02_11_24.png'),
(18, 26, 'pr_2020_10_8_12_9_10_401_00_2020_12_08_02_11_41.png'),
(19, 26, 'pr_2020_10_8_12_9_13_181_01_2020_12_08_02_11_41.png'),
(20, 54, 'pr_2020_11_18_13_11_31_117_02_2020_12_08_02_11_57.png'),
(21, 54, 'pr_2020_11_18_13_11_36_38_04_2020_12_08_02_11_57.png'),
(22, 57, 'pr_2020_9_17_20_42_18_434_00_2020_12_08_02_12_11.png'),
(23, 59, 'pr_2017_9_11_11_27_32_902_02_2020_12_08_02_12_26.png'),
(24, 59, 'pr_2017_9_11_11_27_35_762_03_2020_12_08_02_12_26.png'),
(25, 61, 'pr_2020_9_8_15_27_20_248_00_2020_12_08_02_12_53.png'),
(26, 61, 'pr_2020_9_8_15_27_25_622_03_2020_12_08_02_12_53.png'),
(27, 63, 'pr_2020_10_8_12_9_10_401_00_2020_12_08_02_13_09.png'),
(28, 63, 'pr_2020_10_8_12_9_13_181_01_2020_12_08_02_13_09.png'),
(29, 64, 'pr_2019_12_5_10_3_37_175_00_2020_12_08_02_13_31.png'),
(30, 64, 'pr_2019_12_5_10_3_51_816_03_2020_12_08_02_13_31.png'),
(31, 66, 'pr_2020_1_22_14_34_59_296_03_2020_12_08_02_13_52.png'),
(33, 66, 'pr_2020_1_22_14_35_2_170_04_2020_12_08_02_14_11.png'),
(35, 28, 'pr_2019_7_30_12_51_26_335_03_2020_12_08_02_15_42.png'),
(36, 28, 'pr_2019_7_30_12_51_30_117_04_2020_12_08_02_16_04.png'),
(37, 37, 'pr_2018_10_5_9_18_39_97_02_2020_12_08_02_16_25.png'),
(38, 37, 'pr_2018_10_5_9_18_42_192_03_2020_12_08_02_16_25.png'),
(40, 82, 'pr_2018_7_14_14_1_43_539_04_2020_12_08_02_16_43.png'),
(41, 82, 'pr_2018_7_14_14_1_30_492_00_2020_12_08_02_17_00.png'),
(42, 84, 'pr_2019_8_2_16_15_51_406_00_2020_12_08_02_17_21.png'),
(44, 86, 'pr_2018_9_7_7_30_47_807_03_2020_12_08_02_17_33.png'),
(45, 86, 'pr_2018_9_7_7_30_41_713_01_2020_12_08_02_17_44.png'),
(46, 88, 'pr_2020_5_5_21_41_51_426_03_2020_12_08_02_18_08.png'),
(47, 88, 'pr_2020_5_5_21_41_46_597_01_2020_12_08_02_18_21.png'),
(48, 90, 'pr_2020_6_9_16_9_57_219_01_2020_12_08_02_18_37.png'),
(49, 90, 'pr_2020_6_9_16_10_2_567_03_2020_12_08_02_18_37.png'),
(50, 91, 'pr_2020_5_25_9_9_6_312_03_2020_12_08_02_19_05.png'),
(52, 91, 'pr_2020_5_25_9_9_1_52_01_2020_12_08_02_19_31.png'),
(53, 92, 'pr_2020_5_5_18_41_0_946_01_2020_12_08_02_20_12.png'),
(54, 92, 'pr_2020_5_5_18_41_9_330_04_2020_12_08_02_20_12.png'),
(55, 93, 'pr_2019_11_19_15_59_26_791_00_2020_12_08_02_20_49.png'),
(56, 93, 'pr_2019_11_19_15_59_29_370_01_2020_12_08_02_20_49.png'),
(57, 94, 'pr_2019_8_2_12_56_13_930_02_2020_12_08_02_21_14.png'),
(58, 94, 'pr_2019_8_2_12_56_20_259_04_2020_12_08_02_21_14.png'),
(59, 95, 'pr_2020_5_27_12_10_32_635_01_2020_12_08_02_21_30.png'),
(60, 95, 'pr_2020_5_27_12_10_43_179_05_2020_12_08_02_21_30.png'),
(61, 29, 'pr_2017_11_14_15_58_8_7_03_2020_12_08_02_22_14.png'),
(62, 34, 'pr_2018_7_25_9_28_13_8_06_2020_12_08_02_22_32.png'),
(63, 81, 'pr_2020_2_28_13_37_39_469_04_2020_12_08_02_22_49.png'),
(64, 83, 'pr_2019_2_27_13_16_51_715_01_2020_12_08_02_23_09.png'),
(65, 85, 'pr_2019_3_27_9_26_15_410_00_2020_12_08_02_23_25.png'),
(66, 87, 'pr_2020_4_23_11_48_18_642_04_2020_12_08_02_23_45.png'),
(67, 89, 'pr_2019_9_9_12_48_40_14_00_2020_12_08_02_23_54.png'),
(68, 96, 'pr_2020_4_17_11_54_49_847_04_2020_12_08_02_24_04.png'),
(69, 97, 'pr_2019_2_27_12_59_47_891_04_2020_12_08_02_24_19.png'),
(70, 99, 'pr_2018_9_28_9_4_27_350_01_2020_12_08_02_24_35.png'),
(71, 30, 'pr_2017_7_20_8_15_33_279_2020_12_08_02_25_15.png'),
(72, 68, 'pr_2020_1_16_15_27_23_437_02_2020_12_08_02_26_04.png'),
(73, 70, 'pr_2017_7_20_11_23_1_138_2020_12_08_02_26_18.png'),
(74, 72, 'pr_2020_7_28_15_34_55_856_00_2020_12_08_02_26_32.png'),
(75, 74, 'pr_2018_4_3_8_35_47_184_00_2020_12_08_02_26_42.png'),
(76, 76, 'product-new-big,,pr_2015_10_28_10_51_52_808_2020_12_08_02_26_52.png'),
(77, 80, 'pr_2019_2_13_11_24_41_509_01_2020_12_08_02_27_19.png'),
(78, 31, 'pr_2020_9_23_10_44_51_686_00_2020_12_08_02_27_59.png'),
(79, 35, 'pr_2018_7_31_12_52_45_559_01_2020_12_08_02_28_21.png'),
(80, 98, 'pr_2020_4_14_15_37_11_236_02_2020_12_08_02_28_36.png'),
(81, 100, 'pr_2019_12_19_10_27_29_259_03_2020_12_08_02_29_19.png'),
(82, 102, 'pr_2018_7_31_13_9_58_558_01_2020_12_08_02_29_34.png'),
(83, 104, 'pr_2020_4_14_15_42_13_859_02_2020_12_08_02_29_51.png'),
(84, 106, 'pr_2018_7_31_12_45_20_426_03_2020_12_08_02_30_03.png'),
(85, 108, 'pr_2020_4_14_15_48_42_571_02_2020_12_08_02_30_15.png'),
(86, 109, 'pr_2020_4_14_15_32_3_628_00_2020_12_08_02_30_38.png'),
(87, 110, 'pr_2020_4_14_15_0_44_842_02_2020_12_08_02_30_50.png'),
(88, 32, 'pr_2018_4_9_9_39_30_823_05_2020_12_08_02_31_54.png'),
(89, 38, 'pr_2018_9_27_13_33_54_733_02_2020_12_08_02_32_08.png'),
(90, 40, 'pr_2018_1_9_15_3_39_271_01_2020_12_08_02_32_22.png'),
(91, 41, 'pr_2020_6_8_15_14_46_191_03_2020_12_08_02_32_34.png'),
(92, 42, 'pr_2019_1_24_12_18_35_354_01_2020_12_08_02_33_36.png'),
(93, 44, 'pr_2020_6_23_12_40_20_301_03_2020_12_08_02_33_55.png'),
(94, 45, 'pr_2020_3_6_10_21_49_844_01_2020_12_08_02_34_15.png'),
(95, 49, 'pr_2020_6_2_15_13_16_198_02_2020_12_08_02_34_55.png'),
(96, 50, 'pr_2019_3_13_13_19_19_54_10_2020_12_08_02_36_38.png'),
(97, 33, 'pr_2018_9_21_13_3_38_967_00_2020_12_08_02_37_36.png'),
(98, 36, 'product-large,,pr_2016_8_10_15_14_35_717_2020_12_08_02_37_51.png'),
(99, 39, 'pr_2020_6_1_12_42_6_63_02_2020_12_08_02_38_03.png'),
(100, 43, 'pr_2019_3_7_15_18_4_933_00_2020_12_08_02_38_13.png'),
(101, 101, 'pr_2020_8_20_12_25_32_662_00_2020_12_08_02_38_34.png'),
(102, 103, 'pr_2019_8_21_10_31_27_270_02_2020_12_08_02_38_58.png'),
(103, 105, 'product-small,,pr_2015_6_24_9_20_47_335_2020_12_08_02_39_09.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) UNSIGNED NOT NULL,
  `idFoto` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `idCategory` tinyint(2) UNSIGNED NOT NULL,
  `Quantity` int(10) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Specification` mediumtext COLLATE utf8_polish_ci DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`idProduct`, `idFoto`, `archive`, `idCategory`, `Quantity`, `price`, `Specification`, `name`) VALUES
(1, 1, 0, 2, 10000, 120.00, 'Przeznaczenie produktu:PC;Pojemność:240 GB;Format:2.5\";Interfejs:SATA III (6.0Gb/s);Prędkość odczytu (maksymalna):545 MB/s;Rodzaj kości pamięci:TLC;', 'WD 240GB 2,5'),
(2, 1, 0, 3, 10000, 1700.00, 'Obsługa Ray tracingu:Tak;Układ graficzny:GeForce RTX 2060;Rodzaj złącza:PCI-E x16 3.0;Pamięć:6 GB;Rodzaj pamięci:GDDR6;', 'Gigabyte GeForce RTX 2060  OC 6GB GDDR6'),
(3, 1, 0, 1, 10000, 999.00, 'Seria:Ryzen™ 5 3600;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 'AMD Ryzen 5 3600'),
(4, 1, 0, 1, 10000, 752.88, 'Seria:Ryzen™ 5 3500X;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 'AMD Ryzen 5 3500X'),
(14, 0, 1, 1, 10000, 2000.00, 'sdasdasdasd', 'Procesor'),
(15, 0, 1, 6, 10000, 1.00, 'sdasdasdasd', 'Procesor'),
(16, 0, 1, 1, 10000, 1.00, '', 'Duu'),
(17, 0, 1, 9, 10000, 54.00, 'siema:essa;', 'siema'),
(18, 0, 1, 1, 10000, 12244.00, 'to jest super: ja;', 'name'),
(19, 0, 1, 6, 10000, 12200.00, 'Na:wolno; ale: nie szybko;', 'ESSA'),
(20, 0, 1, 7, 10000, 234.00, 'alE:kokS;jeSt:ten;produkt:kochAny;', 'siema'),
(21, 0, 1, 1, 10000, 2.08, 'nie', 'nic'),
(24, 0, 1, 1, 10000, 1.00, 'Add', 'ADD3hfiaiukdhs'),
(25, 1, 0, 2, 10000, 80.00, 'Przeznaczenie produktu: PC; Pojemność: 120 GB; Format: 2.5\"; Interfejs: SATA III (6.0 Gb/s); Pamięć podręczna: cache 32 MB;', 'Patriot 120GB 2,5'),
(26, 1, 0, 3, 9998, 1300.00, 'Obsługa Ray tracingu:\r\nNie;\r\nUkład graficzny:\r\nGeForce GTX 1660;\r\nRodzaj złącza:\r\nPCI-E x16 3.0;\r\nPamięć:\r\n6 GB;\r\nRodzaj pamięci:\r\nGDDR5;\r\nSzyna pamięci:\r\n192-bit;', 'MSI GeForce GTX 1660 VENTUS XS OC 6GB'),
(27, 1, 0, 1, 10000, 1200.00, 'Rodzina procesorów:\r\nIntel Core i5;\r\nSeria procesora:\r\ni5-10600K;\r\nGniazdo procesora (socket):\r\nSocket 1200;\r\nArchitektura:\r\nComet Lake;', 'Intel Core i5-10600K'),
(28, 1, 0, 4, 10000, 499.00, 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;', ' MSI B450 GAMING PLUS MAX - 508073'),
(29, 1, 0, 5, 10000, 729.00, 'Typ obudowy:\r\nMiddle Tower;\r\nPanel boczny:\r\nSzkło hartowane;\r\nPodświetlenie:\r\nRGB;\r\nStandard płyty głównej:\r\nATX,\r\nmicroATX,\r\nMini-ITX,\r\nEATX;', 'be quiet! Dark Base 700'),
(30, 1, 0, 6, 10000, 102.00, 'Pojemność całkowita:4 GB;\r\nRodzaj pamięci:DDR3 SODIMM;\r\nTaktowanie:1600 MHz;\r\nOpóźnienie:CL 11;', 'Kingston 4GB (1x4GB) 1600MHz CL11 DDR3L'),
(31, 1, 0, 7, 10000, 400.00, 'Moc:750 W;\r\nStandard:ATX;\r\nSprawność:92% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:80 PLUS Gold;', 'Chieftec Polaris 750W 80 Plus Gold'),
(32, 1, 0, 8, 10000, 355.00, 'Rodzaj chłodzenia:Aktywne;\r\nMateriał radiatora:\r\nAluminium + Miedź;\r\nCiepłowody:\r\n7 x 6mm;\r\nLiczba wentylatorów:\r\n1x 120 mm,\r\n1x 135 mm;\r\nKontrola obrotów:\r\nPWM;', 'be quiet! Dark Rock Pro 4 120/135mm'),
(33, 1, 0, 9, 10000, 649.00, 'Typ karty:Zewnętrzna;\r\nSystem dźwięku:5.1, 7.1;\r\nInterfejs:USB;\r\nPróbkowanie:32 bit;', 'Creative Sound Blaster X G6'),
(34, 1, 0, 5, 10000, 419.00, 'Typ:Middle Tower;\r\nStandard płyty:ATX, microATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:315 mm;', 'Fractal Design Meshify C TG'),
(35, 1, 0, 7, 10000, 439.00, 'Moc:750 W;\r\nStandard:ATX;\r\nSprawność:92% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:80 PLUS Gold;', 'SilentiumPC Supremo FM2 750W 80 Plus'),
(36, 1, 0, 9, 10000, 129.99, 'Typ karty dźwiękowej: Zewnętrzna;\r\nSystem dźwięku: 2.0, 7.1;\r\nInterfejs: USB;\r\nPróbkowanie: 24 bit;\r\nCzęstοtliwość próbkowania: 96 kHz;\r\n', 'Creative Sound BlasterX G1'),
(37, 1, 0, 4, 9996, 520.00, 'Obsługiwane procesory:Intel Core i9, Intel Core i7, Intel Core i5, Intel Core i3, Intel Celeron, Intel Pentium;\r\nFormat:ATX;\r\nGniazdo procesora:Socket 1151;\r\nChipset:Intel Z390;', 'ASRock Z390 PRO4'),
(38, 1, 0, 8, 10000, 169.00, 'Rodzaj chłodzenia:Aktywne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 775, 1200, AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1;\r\nWentylator:1x 140 mm;\r\nRegulacja obrotów:PWM;', 'SilentiumPC Fortis 3 140mm'),
(39, 1, 0, 9, 10000, 629.00, 'Typ karty dźwiękowej: Wewnętrzna;\r\nSystem dźwięku: 5.1;\r\nInterfejs: PCI-E;\r\nProcesor dźwięku: Sound Core3D;\r\nPróbkowanie: 32 bit;\r\nCzęstοtliwość próbkowania: 384 kHz;\r\nStosunek sygnału do szumu (SNR): 122 dB;', 'Creative Sound Blaster X AE-5 Plus'),
(40, 1, 0, 8, 10000, 29.00, 'Przewodność cieplna:11,8 W/mk;\r\nTemperatura robocza:od -200 °C do +350 °C;\r\nWaga:1 g;\r\nCiężar właściwy:2,6 g/cm³;', 'Thermal Grizzly Hydronaut 1g'),
(41, 1, 0, 8, 10000, 259.00, 'Rodzaj chłodzenia:Aktywne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 775, 1200, AM4, AM3+, AM3, AM2, FM2+, FM2, FM1;\r\nWentylator:1x 120 mm;\r\nRegulacja obrotów:PWM;', 'Scythe Mugen 5 Black RGB 120mm'),
(42, 1, 0, 8, 10000, 319.00, 'Rodzaj chłodzenia:Wodne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 775, 1200, AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1;\r\nWentylator:2x 120 mm;\r\nRegulacja obrotów:PWM;', 'SilentiumPC Navis RGB 240 2x120mm'),
(43, 1, 0, 9, 10000, 273.00, 'Rodzaj wzmacniacza:\r\nTranzystorowy mobilny;\r\nRodzaje wejść:\r\nMicro-usb;\r\nRodzaje wyjść:\r\nCoaxialne, \r\nLiniowe, \r\nSłuchawkowe;\r\nWbudowana karta dźwiękowa:\r\nTak;\r\nPasmo przenoszenia:\r\n20 - 20 000 Hz;\r\nMoc wyjściowa:\r\n200 mW (32 Ohm);', 'FiiO E10K Olympus 2'),
(44, 1, 0, 8, 10000, 519.00, 'Rodzaj chłodzenia:Wodne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 1200, AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1;\r\nWentylator:2x 120 mm;\r\nRegulacja obrotów:PWM;', 'MSI MAG Core Liquid 240R 2x120mm'),
(45, 1, 0, 8, 10000, 719.00, 'Rodzaj chłodzenia:Wodne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 1200, AM4;\r\nWentylator:2x 140 mm;\r\nRegulacja obrotów:PWM;', 'NZXT Kraken X63 RGB 2x140mm'),
(46, 1, 0, 1, 10000, 659.00, 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 5 2600X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen+;\r\nTaktowanie rdzenia:\r\n3.6 GHz (4.2 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n12 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n19 MB;', 'AMD Ryzen 5 2600X'),
(47, 1, 0, 8, 10000, 15.99, 'Temperatura robocza:od -50 °C do +170 °C;\r\nWaga:2 g;\r\nCiężar właściwy:2,37 g/cm³;', 'Cooler Master HTK-002 2g'),
(48, 1, 0, 1, 10000, 699.00, 'Rodzina procesorów:\r\nIntel Core i5;\r\nSeria procesora:\r\ni5-10400F;\r\nGniazdo procesora (socket):\r\nSocket 1200;\r\nArchitektura:\r\nComet Lake;\r\nTaktowanie rdzenia:\r\n2.9 GHz (4.3 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n12 wątków;\r\nOdblokowany mnożnik:\r\nNie;\r\nPamięć podręczna:\r\n12 MB;', 'Intel Core i5-10400F'),
(49, 1, 0, 8, 10000, 149.00, 'Rozmiar:120 x 120 mm;\r\nPrędkość obrotowa:1500 obr.;\r\nŁożysko:Hydraulic Bearing System;\r\nPrzepływ powietrza:35 CFM;', 'SilentiumPC Corona HP EVO ARGB KIT'),
(50, 1, 0, 8, 10000, 115.00, 'Rozmiar:120 x 120 mm;\r\nPrędkość obrotowa:1500 obr.;\r\nŁożysko:Hydraulic Bearing System;\r\nPrzepływ powietrza:35 CFM;', 'SilentiumPC Sigma HP 120 Corona RGB 3pck'),
(51, 1, 0, 1, 10000, 749.00, 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 5 3400G;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 2;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.2 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n4 rdzenie;\r\nLiczba wątków:\r\n8 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n6 MB;', 'AMD Ryzen 5 3400G'),
(52, 0, 1, 1, 10000, 659.00, 'Seria:Ryzen™ 5 2600X;\r\nTaktowanie:3.6 GHz;\r\nLiczba rdzeni:6 rdzeni;\r\nCache:19 MB;', 'AMD Ryzen 5 2600X'),
(53, 1, 0, 1, 10000, 1499.00, 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 5 5600X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 3;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.6 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n12 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n35 MB;', 'AMD Ryzen 5 5600X'),
(54, 1, 0, 3, 10000, 2979.09, 'Układ:GeForce RTX 3070;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'KFA2 GeForce RTX 3070 EX Gamer 1-Click'),
(55, 1, 0, 1, 9997, 929.00, 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 7 2700X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen+;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.3 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n8 rdzeni;\r\nLiczba wątków:\r\n16 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n20 MB;', 'AMD Ryzen 7 2700X'),
(56, 1, 0, 1, 9996, 2799.00, 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 9 5900X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 3;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.8 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n12 rdzeni;\r\nLiczba wątków:\r\n24 wątki;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n70 MB;', 'AMD Ryzen 9 5900X'),
(57, 1, 0, 3, 10000, 2399.99, 'Układ:Radeon™ RX 5700 XT;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'Sapphire Radeon RX 5700 XT Pulse BE'),
(58, 1, 0, 1, 10000, 1489.00, 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 7 3700X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 2;\r\nTaktowanie rdzenia:\r\n3.6 GHz (4.4 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n8 rdzeni;\r\nLiczba wątków:\r\n16 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n36 MB;', 'AMD Ryzen 7 3700X'),
(59, 1, 0, 3, 10000, 979.00, 'Układ:Radeon™ RX 580;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR5;\r\nZłącza:HDMI - 1 szt., DVI-D - 1 szt., DisplayPort - 3 szt.;', 'XFX Radeon RX 580 GTS XXX Edition OC'),
(60, 1, 0, 1, 10000, 649.00, 'Rodzina procesorów:\r\nIntel Core i5;\r\nSeria procesora:\r\ni5-9400F;\r\nGniazdo procesora (socket):\r\nSocket 1151;\r\nArchitektura:\r\nCofee Lake;\r\nTaktowanie rdzenia:\r\n2.9 GHz (4.1 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n6 wątków;\r\nOdblokowany mnożnik:\r\nNie;\r\nPamięć podręczna:\r\n9 MB;', 'Intel Core i5-9400F'),
(61, 1, 0, 3, 10000, 789.00, 'Układ:GeForce GTX 1650;\r\nPamięć:4 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DVI - 1 szt., DisplayPort - 1 szt.;', 'Zotac GeForce GTX 1650 Gaming AMP CORE'),
(62, 1, 0, 1, 10000, 1.00, 'Rodzina procesorów:\r\nIntel Core i7;\r\nSeria procesora:\r\ni7-10700KF;\r\nGniazdo procesora (socket):\r\nSocket 1200;\r\nArchitektura:\r\nComet Lake;\r\nTaktowanie rdzenia:\r\n3.8 GHz (5.1 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n8 rdzeni;\r\nLiczba wątków:\r\n16 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n16 MB;', 'Intel Core i7-10700KF'),
(63, 1, 0, 3, 10000, 2999.00, 'Układ:GeForce RTX 3070;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'MSI GeForce RTX 3070 Gaming X Trio'),
(64, 1, 0, 3, 10000, 2299.00, 'Układ:Radeon™ RX 5700 XT;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 3 szt., DisplayPort - 3 szt.;', 'Gigabyte Radeon RX 5700 XT AORUS'),
(65, 1, 0, 2, 10000, 259.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n480 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPrędkość odczytu (maksymalna):\r\n555 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n540 MB/s;\r\nOdczyt losowy:\r\n82,000 IOPS;\r\nZapis losowy:\r\n88,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'KIOXIA 480GB 2,5'),
(66, 1, 0, 3, 10000, 999.00, 'Układ:Radeon™ RX 5500 XT;\r\nPamięć:4 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'MSI Radeon RX 5500 XT MECH OC'),
(67, 1, 0, 2, 10000, 279.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\nM.2;\r\nInterfejs:\r\nM.2 PCIe NVMe 3.0 x4;\r\nPrędkość odczytu (maksymalna):\r\n2200 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n2000 MB/s;\r\nOdczyt losowy:\r\n180,000 IOPS;\r\nZapis losowy:\r\n200,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Kingston 500GB M.2 PCIe NVMe A2000'),
(68, 1, 0, 6, 10000, 320.00, 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:3200 MHz;\r\nOpóźnienie:CL 16;', 'G.SKILL 16GB (2x8GB) 3200MHz CL16 Aegis'),
(69, 1, 0, 2, 10000, 265.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPrędkość odczytu (maksymalna):\r\n560 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n510 MB/s;\r\nOdczyt losowy:\r\n95,000 IOPS;\r\nZapis losowy:\r\n90,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Crucial 500GB 2,5'),
(70, 1, 0, 6, 10000, 155.00, 'Pojemność całkowita:8 GB;\r\nRodzaj pamięci:DDR4 SODIMM;\r\nTaktowanie:2666 MHz;\r\nOpóźnienie:CL 15;', 'HyperX 8GB 2666MHz CL15 Impact Black'),
(71, 1, 0, 2, 10000, 129.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n240 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPrędkość odczytu (maksymalna):\r\n540 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n500 MB/s;\r\nRodzaj kości pamięci:\r\nTLC;', 'Crucial 240GB 2,5'),
(72, 1, 0, 6, 10000, 145.00, 'Pojemność całkowita:8 GB;\r\nRodzaj pamięci:DDR4 SODIMM;\r\nTaktowanie:2666 MHz;\r\nOpóźnienie:CL 19;', 'Silicon Power 8GB 2666MHz CL19'),
(73, 1, 0, 2, 10000, 499.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\nM.2;\r\nInterfejs:\r\nM.2 PCIe NVMe 3.0 x4;\r\nPamięć podręczna cache:\r\n512 MB;\r\nKontroler:\r\nSamsung Phoenix;\r\nPrędkość odczytu (maksymalna):\r\n3400 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n2500 MB/s;\r\nOdczyt losowy:\r\n370,000 IOPS;\r\nZapis losowy:\r\n450,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Samsung 500GB M.2 PCIe NVMe 970 EVO'),
(74, 1, 0, 6, 10000, 137.00, 'Pojemność całkowita:8 GB;\r\nRodzaj pamięci:DDR3 SODIMM;\r\nTaktowanie:1600 MHz;\r\nOpóźnienie:CL 11;', 'GOODRAM 8GB 1600MHz CL11'),
(75, 1, 0, 2, 10000, 639.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n1000 GB;\r\nFormat:\r\nM.2;\r\nInterfejs:\r\nM.2 PCIe NVMe 3.0 x4;\r\nPrędkość odczytu (maksymalna):\r\n3500 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n3000 MB/s;\r\nOdczyt losowy:\r\n390,000 IOPS;\r\nZapis losowy:\r\n380,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'ADATA 1TB M.2 PCIe NVMe XPG SX8200 Pro'),
(76, 1, 0, 6, 10000, 325.00, 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:3200 MHz;\r\nOpóźnienie:CL 16;', 'G.SKILL 16GB 3200MHz CL16 Ripjaws V'),
(77, 1, 0, 2, 10000, 229.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n256 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPamięć podręczna cache:\r\n256 MB;\r\nKontroler:\r\nSilicon Motion SM2258;\r\nPrędkość odczytu (maksymalna):\r\n560 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n520 MB/s;\r\nOdczyt losowy:\r\n82,000 IOPS;\r\nZapis losowy:\r\n81,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Plextor 256GB 2,5'),
(78, 1, 0, 6, 10000, 311.00, 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:2666 MHz;\r\nOpóźnienie:CL 16;', 'HyperX 16GB 2666MHz CL16 Fury'),
(79, 1, 0, 2, 10000, 299.00, 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPamięć podręczna cache:\r\n512 MB;\r\nPrędkość odczytu (maksymalna):\r\n550 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n520 MB/s;\r\nOdczyt losowy:\r\n98,000 IOPS;\r\nZapis losowy:\r\n90,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Samsung 500GB 2,5'),
(80, 1, 0, 6, 10000, 304.00, 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:3200 MHz;\r\nOpóźnienie:CL 16;', 'Patriot 16GB 3200MHz CL16 Viper 4'),
(81, 1, 0, 5, 10000, 259.00, 'Typ:Middle Tower;\r\nStandard płyty:ATX, microATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1V EVO TG ARGB'),
(82, 1, 0, 4, 10000, 319.00, 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz, \r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-3200 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'Gigabyte B450M DS3H'),
(83, 1, 0, 5, 10000, 189.80, 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1 TG'),
(84, 1, 0, 4, 10000, 429.00, 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-4133 MHz, \r\nDDR4-4000 MHz, \r\nDDR4-3866 MHz, \r\nDDR4-3733 MHz, \r\nDDR4-3466 MHz, \r\nDDR4-3200 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI B450-A PRO MAX'),
(85, 1, 0, 5, 10000, 309.00, 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1X TG RGB'),
(86, 1, 0, 4, 10000, 539.00, 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz, \r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-3600 MHz, \r\nDDR4-3466 MHz, \r\nDDR4-3200 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'Gigabyte B450 AORUS ELITE'),
(87, 1, 0, 5, 10000, 469.69, 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:369 mm;', 'be quiet! Pure Base 500DX Black'),
(88, 1, 0, 4, 10000, 769.00, 'Obsługiwane rodziny procesorów:\r\nIntel Core i9. \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel Z490;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2666 MHz (Intel Core i3/i5), \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI Z490-A PRO'),
(89, 1, 0, 5, 10000, 321.00, 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:369 mm;', 'be quiet! Pure Base 500 Window'),
(90, 1, 0, 4, 10000, 849.00, 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B550;\r\nArchitektura procesora:\r\nZen 2, \r\nZen 3;\r\nTyp obsługiwanej pamięci:\r\nDDR4-3200 MHz, \r\nDDR4-3066 MHz, \r\nDDR4-3000 MHz, \r\nDDR4-2933 MHz, \r\nDDR4-2800 MHz, \r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI MAG B550 TOMAHAWK'),
(91, 1, 0, 4, 10000, 489.00, 'Obsługiwane rodziny procesorów:\r\nIntel Core i9, \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel B460;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2800 MHz (Intel Core i7/i9),  \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'ASRock B460 Phantom Gaming 4'),
(92, 1, 0, 4, 10000, 899.00, 'Obsługiwane rodziny procesorów:\r\nIntel Core i9, \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel Z490;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2666 MHz (Intel Core i3/i5), \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI MAG Z490 TOMAHAWK'),
(93, 1, 0, 4, 10000, 329.00, 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-3200 MHz, \r\nDDR4-2933 MHz;\r\nLiczba banków pamięci:\r\n2 x DIMM;', 'ASRock B450M-HDV R4.0'),
(94, 1, 0, 4, 10000, 589.00, 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI B450 TOMAHAWK MAX'),
(95, 1, 0, 4, 10000, 349.00, 'Obsługiwane rodziny procesorów:\r\nIntel Core i9, \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel B460;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2666 MHz (Intel Core i3/i5);\r\nLiczba banków pamięci:\r\n2 x DIMM;', 'MSI B460M-A PRO'),
(96, 1, 0, 5, 10000, 109.00, 'Typ:Middle Tower;\r\nStandard płyty:microATX, Mini-ITX;\r\nKarty rozszerzeń:4;\r\nMaks. długość grafiki:280 mm;', 'KRUX Trek'),
(97, 1, 0, 5, 10000, 169.00, 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1'),
(98, 1, 0, 7, 10000, 269.00, 'Moc maksymalna:\r\n700 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 8-pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 3 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n90% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP),  \r\nPrzed zbyt niskim napięciem (UVP);', 'SilentiumPC Vero L3 700W 80 Plus Bronze'),
(99, 1, 0, 5, 10000, 229.00, 'Typ:Middle Tower;\r\nStandard płyty:ATX, microATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:380 mm;', 'SilentiumPC Regnum RG4TF Frosty'),
(100, 1, 0, 7, 10000, 179.00, 'Moc maksymalna:\r\n550 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 6-pin - 1szt., \r\nPCI-E 2.0 6+2 (8) pin - 1 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 4 szt., \r\nEPS12V 20+4 (24) pin - 1 szt.;\r\nSprawność:\r\n88% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Elementum E2 550W 80 Plus'),
(101, 1, 0, 9, 10000, 119.00, 'Typ karty:Zewnętrzna;\r\nSystem dźwięku:7.1;\r\nInterfejs:USB;\r\nZłącza:Wyjście słuchawkowe/głośnikowe, Wejście mikrofonowe - 1 szt.;', 'Sharkoon Stojak z kartą dźwiękową X-Rest'),
(102, 1, 0, 7, 10000, 155.00, 'Moc maksymalna:\r\n450 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 2.0 6+2 (8) pin - 1 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 4 szt., \r\nEPS12V 24-pin - 1 szt., \r\nCertyfikat:\r\n80 PLUS;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Elementum E2 450W 80 Plus'),
(103, 1, 0, 9, 10000, 979.00, 'Typ karty:Wewnętrzna;\r\nSystem dźwięku:7.1;\r\nInterfejs:PCI;\r\nPróbkowanie:32 bit;', 'Creative Sound Blaster AE-7'),
(104, 1, 0, 7, 10000, 269.00, 'Moc maksymalna:\r\n600 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 2 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Vero M3 600W 80 Plus Bronze'),
(105, 1, 0, 9, 10000, 389.00, 'Typ karty:Wewnętrzna;\r\nSystem dźwięku:5.1;\r\nInterfejs:PCI-E;\r\nPróbkowanie:24 bit;', 'Creative Sound Blaster Z (PCI-E)'),
(106, 1, 0, 7, 10000, 399.00, 'Moc maksymalna:\r\n650 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 2.0 6+2 (8) pin - 4 szt., \r\nMOLEX 4-pin - 3 szt., \r\nSATA - 9 szt., \r\nEPS12V 20+4 (24) pin - 1 szt.;\r\nSprawność:\r\n92% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Gold;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Supremo FM2 650W 80 +G'),
(107, 0, 1, 9, 10000, 629.00, 'Typ karty:Wewnętrzna;\r\nSystem dźwięku:5.1;\r\nInterfejs:PCI-E;\r\nPróbkowanie:32 bit;', 'Creative Sound Blaster X AE-5 Plus'),
(108, 1, 0, 7, 10000, 299.00, 'Moc maksymalna:\r\n700 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 3 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP);', 'SilentiumPC Vero M3 700W 80 Plus Bronze'),
(109, 1, 0, 7, 10000, 239.00, 'Moc maksymalna:\r\n600 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 2 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Vero L3 600W 80 Plus Bronze'),
(110, 1, 0, 7, 10000, 219.00, 'Moc maksymalna:\r\n500 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 2.0 6+2 (8) pin - 2 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP);', 'SilentiumPC Vero L3 500W 80 Plus Bronze');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productsincarts`
--

CREATE TABLE `productsincarts` (
  `idCart` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `howMuch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `productsincarts`
--

INSERT INTO `productsincarts` (`idCart`, `idProduct`, `howMuch`) VALUES
(1, 70, 1),
(2, 37, 1),
(5, 70, 2),
(6, 37, 1),
(8, 37, 1),
(8, 55, 2),
(8, 56, 3),
(9, 70, 7),
(9, 83, 1),
(10, 44, 1),
(10, 60, 1),
(10, 64, 1),
(10, 95, 1),
(11, 55, 1),
(12, 26, 2),
(13, 56, 1),
(15, 37, 2),
(16, 44, 1),
(16, 73, 1),
(29, 4, 1),
(29, 27, 1),
(30, 27, 1),
(30, 55, 3),
(30, 61, 2);

--
-- Wyzwalacze `productsincarts`
--
DELIMITER $$
CREATE TRIGGER `onDeleteCart` AFTER DELETE ON `productsincarts` FOR EACH ROW UPDATE carts SET summaryPrice = summaryPrice -(
    SELECT price FROM products 
    WHERE idProduct = OLD.idProduct
) * OLD.howMuch
WHERE idCart = OLD.idCart
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `onInsertCart` BEFORE INSERT ON `productsincarts` FOR EACH ROW UPDATE carts SET summaryPrice = summaryPrice +(
    SELECT price FROM products 
    WHERE idProduct = NEW.idProduct
)
WHERE idCart = NEW.idCart
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `onUpdateCart` AFTER UPDATE ON `productsincarts` FOR EACH ROW UPDATE carts SET summaryPrice = summaryPrice +(
    SELECT price FROM products 
    WHERE idProduct = NEW.idProduct
) * (new.howMuch - old.howMuch)
WHERE idCart = NEW.idCart
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `status`
--

CREATE TABLE `status` (
  `idStatus` tinyint(1) UNSIGNED NOT NULL,
  `status` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `status`
--

INSERT INTO `status` (`idStatus`, `status`) VALUES
(1, 'nowe'),
(2, 'potwierdzone'),
(3, 'wysłane'),
(4, 'dostarczone'),
(5, 'zakończone');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `idUser` int(11) UNSIGNED NOT NULL,
  `archive` tinyint(1) UNSIGNED NOT NULL,
  `currentCart` int(11) UNSIGNED NOT NULL,
  `postCode` char(6) COLLATE utf8_polish_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` char(9) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `postCity` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(56) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`idUser`, `archive`, `currentCart`, `postCode`, `name`, `phone`, `surname`, `postCity`, `email`, `password`, `address`) VALUES
(1, 0, 27, '23-233', 'Adrian', '510154094', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', '$2y$10$Ifqejey2aGmhdmmG7RVBAezN0VsHuMDVdZeYx6BTI8cmhiyfsIybW', 'Kolarska 12'),
(2, 0, 3, '08-110', 'Karolina', '123123123', 'Prekurat', 'Siedlce', 'karolina@prekurat.com', '$2y$10$t0.W/6upz/HLRUaj/TfiauS7aCt6.qxDWhPj2qNbCD.6p1.mocR6u', 'Smutna 666'),
(3, 0, 4, '08-110', 'Marian', '123456789', 'Nowak', 'Warszawa', 'nie@tak.com', '$2y$10$eDfu/e3Az.qV7o/v8H4MO..2xO/yf1NO5gmRoDw8SD6mqtGxS0JOC', 'Marudowej 12'),
(4, 0, 5, '08-110', 'Julita', '890567345', 'Mazurska', 'Siedlce', 'julita@gmail.com', '$2y$10$C82puTQSmBjIMlOZFtAH6ucUYrQljjeaA3Z7lstI3b46IhbYcvLOO', 'Bambornik 3'),
(5, 0, 7, '08-110', 'Wiktoria', '567654567', 'Prekurat', 'Siedlce', 'wiktoriaprekurat@gmail.com', '$2y$10$YsYpN1PSH/y551YRAKUTHu4.aM0OcaxKivknOQSD4WuWB9HkQxsYG', 'Spacerowa 64'),
(6, 0, 14, '89-322', 'Kubus', '997998999', 'Paprocus', 'Siema', 'dlaczegoszesc@gmail.com', '$2y$10$9rgo7fLlA8ILkC/AJnNSNu3HQ0O4PLoIVJeiTmUo7doKUW5vvZwZe', 'Pliszczusie 6'),
(16, 0, 28, '23-456', 'Grzegorz', '567765456', 'Tokajuk', 'Siedlce', 'grzegorztokajuk@gmail.com', '$2y$10$AWBClSvvWlq9IX8vTau/feG5VsmcBAXczj/9ievqs7.gVmu.5uByS', 'Dylewicza');

--
-- Wyzwalacze `users`
--
DELIMITER $$
CREATE TRIGGER `onNewUser` BEFORE INSERT ON `users` FOR EACH ROW SET new.archive = 1
$$
DELIMITER ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`idAction`),
  ADD KEY `idEmployee` (`idEmployee`);

--
-- Indeksy dla tabeli `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`idCart`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indeksy dla tabeli `employeelogintime`
--
ALTER TABLE `employeelogintime`
  ADD PRIMARY KEY (`idLogged`),
  ADD KEY `idEmployee` (`idEmployee`);

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmployee`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `idPrem` (`idPrem`),
  ADD KEY `email` (`email`),
  ADD KEY `archive` (`archive`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCart` (`idCart`),
  ADD KEY `idStatus` (`idStatus`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeksy dla tabeli `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`idPrem`);

--
-- Indeksy dla tabeli `productgallery`
--
ALTER TABLE `productgallery`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `idProdukt` (`idProduct`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idFoto` (`idFoto`),
  ADD KEY `archive` (`archive`),
  ADD KEY `Quantity` (`Quantity`);

--
-- Indeksy dla tabeli `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD PRIMARY KEY (`idCart`,`idProduct`),
  ADD KEY `idProdukt` (`idProduct`);

--
-- Indeksy dla tabeli `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `archive` (`archive`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `actions`
--
ALTER TABLE `actions`
  MODIFY `idAction` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT dla tabeli `carts`
--
ALTER TABLE `carts`
  MODIFY `idCart` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `employeelogintime`
--
ALTER TABLE `employeelogintime`
  MODIFY `idLogged` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT dla tabeli `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT dla tabeli `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idPrem` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `productgallery`
--
ALTER TABLE `productgallery`
  MODIFY `idFoto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT dla tabeli `status`
--
ALTER TABLE `status`
  MODIFY `idStatus` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `employeelogintime`
--
ALTER TABLE `employeelogintime`
  ADD CONSTRAINT `employeelogintime_ibfk_1` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`idPrem`) REFERENCES `permissions` (`idPrem`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_8` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `productgallery`
--
ALTER TABLE `productgallery`
  ADD CONSTRAINT `productgallery_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`idCategory`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD CONSTRAINT `productsincarts_ibfk_3` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `productsincarts_ibfk_4` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
