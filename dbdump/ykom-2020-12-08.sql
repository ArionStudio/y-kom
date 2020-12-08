-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Gru 2020, 01:39
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ykom`
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
(211, 3, '2020-12-08 00:50:29', 'Edycja produktu nr: 1');

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
(5, 310.00);

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
(60, 2, '2020-12-07 22:27:43', '26.212.186.202');

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
(1, 2, 0, 'Maruda', 'Marudowy', 'mar@gmail.com', '$2y$10$P.xsvaf/mWsPsuMOWaYYKugU93YY7W4zZRBYNg5khE7Rmq/pyo6Hq'),
(2, 2, 0, 'Karolina', 'Prekurat', 'karolina@gmail.com', '$2y$10$Hx4c1HHQK9MzImxSs5CgSuS.CjoIIesi4LUoxrzIYxYHVMPQpWum2'),
(3, 1, 0, 'Adrian', 'Rybaczuk', 'adrian@gmail.com', '$2y$10$2ijawGC7z1dO7MoRNVe2R.22uozAnXyv1YOc/G92W.r9IRF0rOSfK'),
(4, 1, 0, 'Jakubuś', 'Paprockiasdessa', 'jak3ub@gmail.com', '$2y$10$rF8AiUBCMJSxPdnGh4tciusGx57WM29hix7uHFCjrssIoYwxSbs7e'),
(10, 2, 0, 'Kubus', 'Paprocuśęk', 'kubus420@siema.jd', '$2y$10$OZMmEImZbtku6XNlcgAPE.lJOAJ2NjL.Z82qMpa2GukahVH98it/2');

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
(37, 1, 1, 1, '2020-12-08 00:09:07', '23-233', '510154094', 'Adrian', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', 'Kolarska 12');

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
(1, 0, 0, 2, 10000, '120.00', 'Przeznaczenie produktu:PC;Pojemność:240 GB;Format:2.5\";Interfejs:SATA III (6.0Gb/s);Prędkość odczytu (maksymalna):545 MB/s;Rodzaj kości pamięci:TLC;', 'WD 240GB 2,5'),
(2, 0, 0, 3, 10000, '1700.00', 'Obsługa Ray tracingu:Tak;Układ graficzny:GeForce RTX 2060;Rodzaj złącza:PCI-E x16 3.0;Pamięć:6 GB;Rodzaj pamięci:GDDR6;', 'Gigabyte GeForce RTX 2060  OC 6GB GDDR6'),
(3, 0, 0, 1, 10000, '999.00', 'Seria:Ryzen™ 5 3600;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 'AMD Ryzen 5 3600'),
(4, 0, 0, 1, 10000, '752.88', 'Seria:Ryzen™ 5 3500X;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 'AMD Ryzen 5 3500X'),
(14, 0, 1, 1, 10000, '2000.00', 'sdasdasdasd', 'Procesor'),
(15, 0, 1, 6, 10000, '1.00', 'sdasdasdasd', 'Procesor'),
(16, 0, 1, 1, 10000, '1.00', '', 'Duu'),
(17, 0, 1, 9, 10000, '54.00', 'siema:essa;', 'siema'),
(18, 0, 1, 1, 10000, '12244.00', 'to jest super: ja;', 'name'),
(19, 0, 1, 6, 10000, '12200.00', 'Na:wolno; ale: nie szybko;', 'ESSA'),
(20, 0, 1, 7, 10000, '234.00', 'alE:kokS;jeSt:ten;produkt:kochAny;', 'siema'),
(21, 0, 1, 1, 10000, '2.08', 'nie', 'nic'),
(24, 0, 1, 1, 10000, '1.00', 'Add', 'ADD3hfiaiukdhs'),
(25, 0, 0, 2, 10000, '80.00', 'Przeznaczenie produktu: PC; Pojemność: 120 GB; Format: 2.5\"; Interfejs: SATA III (6.0 Gb/s); Pamięć podręczna: cache 32 MB;', 'Patriot 120GB 2,5'),
(26, 0, 0, 3, 10000, '1300.00', 'Obsługa Ray tracingu:\r\nNie;\r\nUkład graficzny:\r\nGeForce GTX 1660;\r\nRodzaj złącza:\r\nPCI-E x16 3.0;\r\nPamięć:\r\n6 GB;\r\nRodzaj pamięci:\r\nGDDR5;\r\nSzyna pamięci:\r\n192-bit;', 'MSI GeForce GTX 1660 VENTUS XS OC 6GB'),
(27, 0, 0, 1, 10000, '1200.00', 'Rodzina procesorów:\r\nIntel Core i5;\r\nSeria procesora:\r\ni5-10600K;\r\nGniazdo procesora (socket):\r\nSocket 1200;\r\nArchitektura:\r\nComet Lake;', 'Intel Core i5-10600K'),
(28, 0, 0, 4, 10000, '499.00', 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;', ' MSI B450 GAMING PLUS MAX - 508073'),
(29, 0, 0, 5, 10000, '729.00', 'Typ obudowy:\r\nMiddle Tower;\r\nPanel boczny:\r\nSzkło hartowane;\r\nPodświetlenie:\r\nRGB;\r\nStandard płyty głównej:\r\nATX,\r\nmicroATX,\r\nMini-ITX,\r\nEATX;', 'be quiet! Dark Base 700'),
(30, 0, 0, 6, 10000, '102.00', 'Pojemność całkowita:4 GB;\r\nRodzaj pamięci:DDR3 SODIMM;\r\nTaktowanie:1600 MHz;\r\nOpóźnienie:CL 11;', 'Kingston 4GB (1x4GB) 1600MHz CL11 DDR3L'),
(31, 0, 0, 7, 10000, '400.00', 'Moc:750 W;\r\nStandard:ATX;\r\nSprawność:92% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:80 PLUS Gold;', 'Chieftec Polaris 750W 80 Plus Gold'),
(32, 0, 0, 8, 10000, '355.00', 'Rodzaj chłodzenia:Aktywne;\r\nMateriał radiatora:\r\nAluminium + Miedź;\r\nCiepłowody:\r\n7 x 6mm;\r\nLiczba wentylatorów:\r\n1x 120 mm,\r\n1x 135 mm;\r\nKontrola obrotów:\r\nPWM;', 'be quiet! Dark Rock Pro 4 120/135mm'),
(33, 0, 0, 9, 10000, '649.00', 'Typ karty:Zewnętrzna;\r\nSystem dźwięku:5.1, 7.1;\r\nInterfejs:USB;\r\nPróbkowanie:32 bit;', 'Creative Sound Blaster X G6'),
(34, 0, 0, 5, 10000, '419.00', 'Typ:Middle Tower;\r\nStandard płyty:ATX, microATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:315 mm;', 'Fractal Design Meshify C TG'),
(35, 0, 0, 7, 10000, '439.00', 'Moc:750 W;\r\nStandard:ATX;\r\nSprawność:92% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:80 PLUS Gold;', 'SilentiumPC Supremo FM2 750W 80 Plus'),
(36, 0, 0, 9, 10000, '129.99', 'Typ karty dźwiękowej: Zewnętrzna;\r\nSystem dźwięku: 2.0, 7.1;\r\nInterfejs: USB;\r\nPróbkowanie: 24 bit;\r\nCzęstοtliwość próbkowania: 96 kHz;\r\n', 'Creative Sound BlasterX G1'),
(37, 0, 0, 4, 10000, '520.00', 'Obsługiwane procesory:Intel Core i9, Intel Core i7, Intel Core i5, Intel Core i3, Intel Celeron, Intel Pentium;\r\nFormat:ATX;\r\nGniazdo procesora:Socket 1151;\r\nChipset:Intel Z390;', 'ASRock Z390 PRO4'),
(38, 0, 0, 8, 10000, '169.00', 'Rodzaj chłodzenia:Aktywne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 775, 1200, AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1;\r\nWentylator:1x 140 mm;\r\nRegulacja obrotów:PWM;', 'SilentiumPC Fortis 3 140mm'),
(39, 0, 0, 9, 10000, '629.00', 'Typ karty dźwiękowej: Wewnętrzna;\r\nSystem dźwięku: 5.1;\r\nInterfejs: PCI-E;\r\nProcesor dźwięku: Sound Core3D;\r\nPróbkowanie: 32 bit;\r\nCzęstοtliwość próbkowania: 384 kHz;\r\nStosunek sygnału do szumu (SNR): 122 dB;', 'Creative Sound Blaster X AE-5 Plus'),
(40, 0, 0, 8, 10000, '29.00', 'Przewodność cieplna:11,8 W/mk;\r\nTemperatura robocza:od -200 °C do +350 °C;\r\nWaga:1 g;\r\nCiężar właściwy:2,6 g/cm³;', 'Thermal Grizzly Hydronaut 1g'),
(41, 0, 0, 8, 10000, '259.00', 'Rodzaj chłodzenia:Aktywne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 775, 1200, AM4, AM3+, AM3, AM2, FM2+, FM2, FM1;\r\nWentylator:1x 120 mm;\r\nRegulacja obrotów:PWM;', 'Scythe Mugen 5 Black RGB 120mm'),
(42, 0, 0, 8, 10000, '319.00', 'Rodzaj chłodzenia:Wodne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 775, 1200, AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1;\r\nWentylator:2x 120 mm;\r\nRegulacja obrotów:PWM;', 'SilentiumPC Navis RGB 240 2x120mm'),
(43, 0, 0, 9, 10000, '273.00', 'Rodzaj wzmacniacza:\r\nTranzystorowy mobilny;\r\nRodzaje wejść:\r\nMicro-usb;\r\nRodzaje wyjść:\r\nCoaxialne, \r\nLiniowe, \r\nSłuchawkowe;\r\nWbudowana karta dźwiękowa:\r\nTak;\r\nPasmo przenoszenia:\r\n20 - 20 000 Hz;\r\nMoc wyjściowa:\r\n200 mW (32 Ohm);', 'FiiO E10K Olympus 2'),
(44, 0, 0, 8, 10000, '519.00', 'Rodzaj chłodzenia:Wodne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 1200, AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1;\r\nWentylator:2x 120 mm;\r\nRegulacja obrotów:PWM;', 'MSI MAG Core Liquid 240R 2x120mm'),
(45, 0, 0, 8, 10000, '719.00', 'Rodzaj chłodzenia:Wodne;\r\nKompatybilność:2066, 2011-3, 2011, 1366, 1156, 1155, 1151, 1150, 1200, AM4;\r\nWentylator:2x 140 mm;\r\nRegulacja obrotów:PWM;', 'NZXT Kraken X63 RGB 2x140mm'),
(46, 0, 0, 1, 10000, '659.00', 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 5 2600X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen+;\r\nTaktowanie rdzenia:\r\n3.6 GHz (4.2 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n12 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n19 MB;', 'AMD Ryzen 5 2600X'),
(47, 0, 0, 8, 10000, '15.99', 'Temperatura robocza:od -50 °C do +170 °C;\r\nWaga:2 g;\r\nCiężar właściwy:2,37 g/cm³;', 'Cooler Master HTK-002 2g'),
(48, 0, 0, 1, 10000, '699.00', 'Rodzina procesorów:\r\nIntel Core i5;\r\nSeria procesora:\r\ni5-10400F;\r\nGniazdo procesora (socket):\r\nSocket 1200;\r\nArchitektura:\r\nComet Lake;\r\nTaktowanie rdzenia:\r\n2.9 GHz (4.3 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n12 wątków;\r\nOdblokowany mnożnik:\r\nNie;\r\nPamięć podręczna:\r\n12 MB;', 'Intel Core i5-10400F'),
(49, 0, 0, 8, 10000, '149.00', 'Rozmiar:120 x 120 mm;\r\nPrędkość obrotowa:1500 obr.;\r\nŁożysko:Hydraulic Bearing System;\r\nPrzepływ powietrza:35 CFM;', 'SilentiumPC Corona HP EVO ARGB KIT'),
(50, 0, 0, 8, 10000, '115.00', 'Rozmiar:120 x 120 mm;\r\nPrędkość obrotowa:1500 obr.;\r\nŁożysko:Hydraulic Bearing System;\r\nPrzepływ powietrza:35 CFM;', 'SilentiumPC Sigma HP 120 Corona RGB 3pck'),
(51, 0, 0, 1, 10000, '749.00', 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 5 3400G;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 2;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.2 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n4 rdzenie;\r\nLiczba wątków:\r\n8 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n6 MB;', 'AMD Ryzen 5 3400G'),
(52, 0, 1, 1, 10000, '659.00', 'Seria:Ryzen™ 5 2600X;\r\nTaktowanie:3.6 GHz;\r\nLiczba rdzeni:6 rdzeni;\r\nCache:19 MB;', 'AMD Ryzen 5 2600X'),
(53, 0, 0, 1, 10000, '1499.00', 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 5 5600X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 3;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.6 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n12 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n35 MB;', 'AMD Ryzen 5 5600X'),
(54, 0, 0, 3, 10000, '2979.09', 'Układ:GeForce RTX 3070;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'KFA2 GeForce RTX 3070 EX Gamer 1-Click'),
(55, 0, 0, 1, 10000, '929.00', 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 7 2700X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen+;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.3 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n8 rdzeni;\r\nLiczba wątków:\r\n16 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n20 MB;', 'AMD Ryzen 7 2700X'),
(56, 0, 0, 1, 10000, '2799.00', 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 9 5900X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 3;\r\nTaktowanie rdzenia:\r\n3.7 GHz (4.8 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n12 rdzeni;\r\nLiczba wątków:\r\n24 wątki;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n70 MB;', 'AMD Ryzen 9 5900X'),
(57, 0, 0, 3, 10000, '2399.99', 'Układ:Radeon™ RX 5700 XT;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'Sapphire Radeon RX 5700 XT Pulse BE'),
(58, 0, 0, 1, 10000, '1489.00', 'Rodzina procesorów:\r\nAMD Ryzen™;\r\nSeria procesora:\r\nRyzen™ 7 3700X;\r\nGniazdo procesora (socket):\r\nSocket AM4;\r\nArchitektura:\r\nZen 2;\r\nTaktowanie rdzenia:\r\n3.6 GHz (4.4 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n8 rdzeni;\r\nLiczba wątków:\r\n16 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n36 MB;', 'AMD Ryzen 7 3700X'),
(59, 0, 0, 3, 10000, '979.00', 'Układ:Radeon™ RX 580;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR5;\r\nZłącza:HDMI - 1 szt., DVI-D - 1 szt., DisplayPort - 3 szt.;', 'XFX Radeon RX 580 GTS XXX Edition OC'),
(60, 0, 0, 1, 10000, '649.00', 'Rodzina procesorów:\r\nIntel Core i5;\r\nSeria procesora:\r\ni5-9400F;\r\nGniazdo procesora (socket):\r\nSocket 1151;\r\nArchitektura:\r\nCofee Lake;\r\nTaktowanie rdzenia:\r\n2.9 GHz (4.1 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n6 rdzeni;\r\nLiczba wątków:\r\n6 wątków;\r\nOdblokowany mnożnik:\r\nNie;\r\nPamięć podręczna:\r\n9 MB;', 'Intel Core i5-9400F'),
(61, 0, 0, 3, 10000, '789.00', 'Układ:GeForce GTX 1650;\r\nPamięć:4 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DVI - 1 szt., DisplayPort - 1 szt.;', 'Zotac GeForce GTX 1650 Gaming AMP CORE'),
(62, 0, 0, 1, 10000, '1.00', 'Rodzina procesorów:\r\nIntel Core i7;\r\nSeria procesora:\r\ni7-10700KF;\r\nGniazdo procesora (socket):\r\nSocket 1200;\r\nArchitektura:\r\nComet Lake;\r\nTaktowanie rdzenia:\r\n3.8 GHz (5.1 GHz w trybie turbo);\r\nLiczba rdzeni fizycznych:\r\n8 rdzeni;\r\nLiczba wątków:\r\n16 wątków;\r\nOdblokowany mnożnik:\r\nTak;\r\nPamięć podręczna:\r\n16 MB;', 'Intel Core i7-10700KF'),
(63, 0, 0, 3, 10000, '2999.00', 'Układ:GeForce RTX 3070;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'MSI GeForce RTX 3070 Gaming X Trio'),
(64, 0, 0, 3, 10000, '2299.00', 'Układ:Radeon™ RX 5700 XT;\r\nPamięć:8 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 3 szt., DisplayPort - 3 szt.;', 'Gigabyte Radeon RX 5700 XT AORUS'),
(65, 0, 0, 2, 10000, '259.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n480 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPrędkość odczytu (maksymalna):\r\n555 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n540 MB/s;\r\nOdczyt losowy:\r\n82,000 IOPS;\r\nZapis losowy:\r\n88,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'KIOXIA 480GB 2,5\" SATA SSD EXCERIA'),
(66, 0, 0, 3, 10000, '999.00', 'Układ:Radeon™ RX 5500 XT;\r\nPamięć:4 GB;\r\nRodzaj pamięci:GDDR6;\r\nZłącza:HDMI - 1 szt., DisplayPort - 3 szt.;', 'MSI Radeon RX 5500 XT MECH OC'),
(67, 0, 0, 2, 10000, '279.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\nM.2;\r\nInterfejs:\r\nM.2 PCIe NVMe 3.0 x4;\r\nPrędkość odczytu (maksymalna):\r\n2200 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n2000 MB/s;\r\nOdczyt losowy:\r\n180,000 IOPS;\r\nZapis losowy:\r\n200,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Kingston 500GB M.2 PCIe NVMe A2000'),
(68, 0, 0, 6, 10000, '320.00', 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:3200 MHz;\r\nOpóźnienie:CL 16;', 'G.SKILL 16GB (2x8GB) 3200MHz CL16 Aegis'),
(69, 0, 0, 2, 10000, '265.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPrędkość odczytu (maksymalna):\r\n560 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n510 MB/s;\r\nOdczyt losowy:\r\n95,000 IOPS;\r\nZapis losowy:\r\n90,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Crucial 500GB 2,5\" SATA SSD MX500'),
(70, 0, 0, 6, 10000, '155.00', 'Pojemność całkowita:8 GB;\r\nRodzaj pamięci:DDR4 SODIMM;\r\nTaktowanie:2666 MHz;\r\nOpóźnienie:CL 15;', 'HyperX 8GB 2666MHz CL15 Impact Black'),
(71, 0, 0, 2, 10000, '129.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n240 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPrędkość odczytu (maksymalna):\r\n540 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n500 MB/s;\r\nRodzaj kości pamięci:\r\nTLC;', 'Crucial 240GB 2,5\" SATA SSD BX500'),
(72, 0, 0, 6, 10000, '145.00', 'Pojemność całkowita:8 GB;\r\nRodzaj pamięci:DDR4 SODIMM;\r\nTaktowanie:2666 MHz;\r\nOpóźnienie:CL 19;', 'Silicon Power 8GB 2666MHz CL19'),
(73, 0, 0, 2, 10000, '499.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\nM.2;\r\nInterfejs:\r\nM.2 PCIe NVMe 3.0 x4;\r\nPamięć podręczna cache:\r\n512 MB;\r\nKontroler:\r\nSamsung Phoenix;\r\nPrędkość odczytu (maksymalna):\r\n3400 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n2500 MB/s;\r\nOdczyt losowy:\r\n370,000 IOPS;\r\nZapis losowy:\r\n450,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Samsung 500GB M.2 PCIe NVMe 970 EVO'),
(74, 0, 0, 6, 10000, '137.00', 'Pojemność całkowita:8 GB;\r\nRodzaj pamięci:DDR3 SODIMM;\r\nTaktowanie:1600 MHz;\r\nOpóźnienie:CL 11;', 'GOODRAM 8GB 1600MHz CL11'),
(75, 0, 0, 2, 10000, '639.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n1000 GB;\r\nFormat:\r\nM.2;\r\nInterfejs:\r\nM.2 PCIe NVMe 3.0 x4;\r\nPrędkość odczytu (maksymalna):\r\n3500 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n3000 MB/s;\r\nOdczyt losowy:\r\n390,000 IOPS;\r\nZapis losowy:\r\n380,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'ADATA 1TB M.2 PCIe NVMe XPG SX8200 Pro'),
(76, 0, 0, 6, 10000, '325.00', 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:3200 MHz;\r\nOpóźnienie:CL 16;', 'G.SKILL 16GB 3200MHz CL16 Ripjaws V'),
(77, 0, 0, 2, 10000, '229.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n256 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPamięć podręczna cache:\r\n256 MB;\r\nKontroler:\r\nSilicon Motion SM2258;\r\nPrędkość odczytu (maksymalna):\r\n560 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n520 MB/s;\r\nOdczyt losowy:\r\n82,000 IOPS;\r\nZapis losowy:\r\n81,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Plextor 256GB 2,5\" SATA SSD M8VC'),
(78, 0, 0, 6, 10000, '311.00', 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:2666 MHz;\r\nOpóźnienie:CL 16;', 'HyperX 16GB 2666MHz CL16 Fury'),
(79, 0, 0, 2, 10000, '299.00', 'Przeznaczenie produktu:\r\nPC;\r\nPojemność:\r\n500 GB;\r\nFormat:\r\n2.5\";\r\nInterfejs:\r\nSATA III (6.0 Gb/s);\r\nPamięć podręczna cache:\r\n512 MB;\r\nPrędkość odczytu (maksymalna):\r\n550 MB/s;\r\nPrędkość zapisu (maksymalna):\r\n520 MB/s;\r\nOdczyt losowy:\r\n98,000 IOPS;\r\nZapis losowy:\r\n90,000 IOPS;\r\nRodzaj kości pamięci:\r\nTLC;', 'Samsung 500GB 2,5\" SATA SSD 860 EVO'),
(80, 0, 0, 6, 10000, '304.00', 'Pojemność całkowita:16 GB;\r\nRodzaj pamięci:DDR4;\r\nTaktowanie:3200 MHz;\r\nOpóźnienie:CL 16;', 'Patriot 16GB 3200MHz CL16 Viper 4'),
(81, 0, 0, 5, 10000, '259.00', 'Typ:Middle Tower;\r\nStandard płyty:ATX, microATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1V EVO TG ARGB'),
(82, 0, 0, 4, 10000, '319.00', 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz, \r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-3200 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'Gigabyte B450M DS3H'),
(83, 0, 0, 5, 10000, '189.80', 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1 TG'),
(84, 0, 0, 4, 10000, '429.00', 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-4133 MHz, \r\nDDR4-4000 MHz, \r\nDDR4-3866 MHz, \r\nDDR4-3733 MHz, \r\nDDR4-3466 MHz, \r\nDDR4-3200 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI B450-A PRO MAX'),
(85, 0, 0, 5, 10000, '309.00', 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1X TG RGB'),
(86, 0, 0, 4, 10000, '539.00', 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz, \r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-3600 MHz, \r\nDDR4-3466 MHz, \r\nDDR4-3200 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'Gigabyte B450 AORUS ELITE'),
(87, 0, 0, 5, 10000, '469.69', 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:369 mm;', 'be quiet! Pure Base 500DX Black'),
(88, 0, 0, 4, 10000, '769.00', 'Obsługiwane rodziny procesorów:\r\nIntel Core i9. \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel Z490;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2666 MHz (Intel Core i3/i5), \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI Z490-A PRO'),
(89, 0, 0, 5, 10000, '321.00', 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:369 mm;', 'be quiet! Pure Base 500 Window'),
(90, 0, 0, 4, 10000, '849.00', 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B550;\r\nArchitektura procesora:\r\nZen 2, \r\nZen 3;\r\nTyp obsługiwanej pamięci:\r\nDDR4-3200 MHz, \r\nDDR4-3066 MHz, \r\nDDR4-3000 MHz, \r\nDDR4-2933 MHz, \r\nDDR4-2800 MHz, \r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI MAG B550 TOMAHAWK'),
(91, 0, 0, 4, 10000, '489.00', 'Obsługiwane rodziny procesorów:\r\nIntel Core i9, \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel B460;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2800 MHz (Intel Core i7/i9),  \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'ASRock B460 Phantom Gaming 4'),
(92, 0, 0, 4, 10000, '899.00', 'Obsługiwane rodziny procesorów:\r\nIntel Core i9, \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel Z490;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2666 MHz (Intel Core i3/i5), \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI MAG Z490 TOMAHAWK'),
(93, 0, 0, 4, 10000, '329.00', 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nTyp obsługiwanej pamięci OC:\r\nDDR4-3200 MHz, \r\nDDR4-2933 MHz;\r\nLiczba banków pamięci:\r\n2 x DIMM;', 'ASRock B450M-HDV R4.0'),
(94, 0, 0, 4, 10000, '589.00', 'Obsługiwane rodziny procesorów:\r\nAMD Ryzen™;\r\nGniazdo procesora:\r\nSocket AM4;\r\nChipset:\r\nAMD B450;\r\nArchitektura procesora:\r\nZen, \r\nZen+, \r\nZen 2;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2666 MHz, \r\nDDR4-2400 MHz, \r\nDDR4-2133 MHz;\r\nLiczba banków pamięci:\r\n4 x DIMM;', 'MSI B450 TOMAHAWK MAX'),
(95, 0, 0, 4, 10000, '349.00', 'Obsługiwane rodziny procesorów:\r\nIntel Core i9, \r\nIntel Core i7, \r\nIntel Core i5, \r\nIntel Core i3, \r\nIntel Celeron, \r\nIntel Pentium;\r\nGniazdo procesora:\r\nSocket 1200;\r\nChipset:\r\nIntel B460;\r\nArchitektura procesora:\r\nComet Lake;\r\nTyp obsługiwanej pamięci:\r\nDDR4-2933 MHz (Intel Core i7/i9), \r\nDDR4-2666 MHz (Intel Core i3/i5);\r\nLiczba banków pamięci:\r\n2 x DIMM;', 'MSI B460M-A PRO'),
(96, 0, 0, 5, 10000, '109.00', 'Typ:Middle Tower;\r\nStandard płyty:microATX, Mini-ITX;\r\nKarty rozszerzeń:4;\r\nMaks. długość grafiki:280 mm;', 'KRUX Trek'),
(97, 0, 0, 5, 10000, '169.00', 'Typ:Middle Tower;\r\nStandard płyty:ATX, m-ATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:325 mm;', 'SilentiumPC Signum SG1'),
(98, 0, 0, 7, 10000, '269.00', 'Moc maksymalna:\r\n700 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 8-pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 3 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n90% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP),  \r\nPrzed zbyt niskim napięciem (UVP);', 'SilentiumPC Vero L3 700W 80 Plus Bronze'),
(99, 0, 0, 5, 10000, '229.00', 'Typ:Middle Tower;\r\nStandard płyty:ATX, microATX, Mini-ITX;\r\nKarty rozszerzeń:7;\r\nMaks. długość grafiki:380 mm;', 'SilentiumPC Regnum RG4TF Frosty'),
(100, 0, 0, 7, 10000, '179.00', 'Moc maksymalna:\r\n550 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 6-pin - 1szt., \r\nPCI-E 2.0 6+2 (8) pin - 1 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 4 szt., \r\nEPS12V 20+4 (24) pin - 1 szt.;\r\nSprawność:\r\n88% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Elementum E2 550W 80 Plus'),
(101, 0, 0, 9, 10000, '119.00', 'Typ karty:Zewnętrzna;\r\nSystem dźwięku:7.1;\r\nInterfejs:USB;\r\nZłącza:Wyjście słuchawkowe/głośnikowe, Wejście mikrofonowe - 1 szt.;', 'Sharkoon Stojak z kartą dźwiękową X-Rest'),
(102, 0, 0, 7, 10000, '155.00', 'Moc maksymalna:\r\n450 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 2.0 6+2 (8) pin - 1 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 4 szt., \r\nEPS12V 24-pin - 1 szt., \r\nCertyfikat:\r\n80 PLUS;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Elementum E2 450W 80 Plus'),
(103, 0, 0, 9, 10000, '979.00', 'Typ karty:Wewnętrzna;\r\nSystem dźwięku:7.1;\r\nInterfejs:PCI;\r\nPróbkowanie:32 bit;', 'Creative Sound Blaster AE-7'),
(104, 0, 0, 7, 10000, '269.00', 'Moc maksymalna:\r\n600 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 2 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Vero M3 600W 80 Plus Bronze'),
(105, 0, 0, 9, 10000, '389.00', 'Typ karty:Wewnętrzna;\r\nSystem dźwięku:5.1;\r\nInterfejs:PCI-E;\r\nPróbkowanie:24 bit;', 'Creative Sound Blaster Z (PCI-E)'),
(106, 0, 0, 7, 10000, '399.00', 'Moc maksymalna:\r\n650 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 2.0 6+2 (8) pin - 4 szt., \r\nMOLEX 4-pin - 3 szt., \r\nSATA - 9 szt., \r\nEPS12V 20+4 (24) pin - 1 szt.;\r\nSprawność:\r\n92% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Gold;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Supremo FM2 650W 80 +G'),
(107, 0, 1, 9, 10000, '629.00', 'Typ karty:Wewnętrzna;\r\nSystem dźwięku:5.1;\r\nInterfejs:PCI-E;\r\nPróbkowanie:32 bit;', 'Creative Sound Blaster X AE-5 Plus'),
(108, 0, 0, 7, 10000, '299.00', 'Moc maksymalna:\r\n700 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 3 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP);', 'SilentiumPC Vero M3 700W 80 Plus Bronze'),
(109, 0, 0, 7, 10000, '239.00', 'Moc maksymalna:\r\n600 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 2 szt., \r\nPCI-E 2.0 6+2 (8) pin - 2 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP), \r\nPrzed prądami udarowymi (SIP);', 'SilentiumPC Vero L3 600W 80 Plus Bronze'),
(110, 0, 0, 7, 10000, '219.00', 'Moc maksymalna:\r\n500 W;\r\nStandard:\r\nATX;\r\nZłącza:\r\nCPU 4+4 (8) pin - 1 szt., \r\nPCI-E 2.0 6+2 (8) pin - 2 szt., \r\nMOLEX 4-pin - 2 szt., \r\nSATA - 7 szt., \r\nEPS12V 24-pin - 1 szt.;\r\nSprawność:\r\n89% przy 230V oraz 20-100% obciążeniu.;\r\nCertyfikat:\r\n80 PLUS Bronze;\r\nZabezpieczenia:\r\nPrzeciwprzeciążeniowe (OPP), \r\nPrzeciwprzepięciowe (OVP), \r\nPrzeciwzwarciowe (SCP);', 'SilentiumPC Vero L3 500W 80 Plus Bronze');

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
(5, 70, 2);

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
(1, 0, 2, '23-233', 'Adrian', '510154094', 'Rybaczuk', 'Siedlce', 'leerock.zero@gmail.com', '$2y$10$Ifqejey2aGmhdmmG7RVBAezN0VsHuMDVdZeYx6BTI8cmhiyfsIybW', 'Kolarska 12'),
(2, 0, 3, '08-110', 'Karolina', '123123123', 'Prekurat', 'Siedlce', 'karolina@prekurat.com', '$2y$10$t0.W/6upz/HLRUaj/TfiauS7aCt6.qxDWhPj2qNbCD.6p1.mocR6u', 'Smutna 666'),
(3, 0, 4, '08-110', 'Marian', '123456789', 'Nowak', 'Warszawa', 'nie@tak.com', '$2y$10$eDfu/e3Az.qV7o/v8H4MO..2xO/yf1NO5gmRoDw8SD6mqtGxS0JOC', 'Marudowej 12'),
(4, 0, 5, '08-110', 'Julita', '890567345', 'Mazurska', 'Siedlce', 'julita@gmail.com', '$2y$10$C82puTQSmBjIMlOZFtAH6ucUYrQljjeaA3Z7lstI3b46IhbYcvLOO', 'Bambornik 3');

--
-- Wyzwalacze `users`
--
DELIMITER $$
CREATE TRIGGER `onNewUser` BEFORE INSERT ON `users` FOR EACH ROW SET new.archive = 0
$$
DELIMITER ;
  MODIFY `idUser` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
