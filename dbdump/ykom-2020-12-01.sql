Drop database ykom;
create database ykom;
use ykom;
-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2020, 00:56
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5
Drop database ykom;
create database ykom;
use ykom;
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
-- Struktura tabeli dla tabeli `carts`
--

CREATE TABLE `carts` (
  `idCart` int(11) NOT NULL,
  `cartName` text COLLATE utf8_polish_ci DEFAULT NULL,
  `summaryPrice` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `carts`
--

INSERT INTO `carts` (`idCart`, `cartName`, `summaryPrice`) VALUES
(1, NULL, 0.00),
(2, NULL, 2199.00),
(3, NULL, 0.00),
(4, NULL, 0.00),
(5, NULL, 0.00),
(6, NULL, 0.00),
(7, NULL, 0.00),
(8, NULL, 1113.00),
(9, NULL, 0.00),
(10, NULL, 0.00),
(14, NULL, 0.00),
(15, NULL, 0.00),
(16, NULL, 0.00),
(17, NULL, 0.00),
(18, NULL, 0.00),
(19, NULL, 0.00),
(20, NULL, 0.00),
(21, NULL, 0.00),
(22, NULL, 0.00),
(23, NULL, 0.00),
(24, NULL, 0.00),
(25, NULL, 0.00),
(26, NULL, 0.00),
(27, NULL, 0.00),
(28, NULL, 0.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `idCategory` int(11) NOT NULL,
  `category` text COLLATE utf8_polish_ci DEFAULT NULL
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
  `idEmployee` int(11) NOT NULL,
  `Time` datetime NOT NULL DEFAULT current_timestamp(),
  `IP` tinytext NOT NULL
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
(29, 3, '2020-11-30 22:05:33', '26.230.17.254');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `idEmployee` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `email` text COLLATE utf8_polish_ci DEFAULT NULL,
  `password` text COLLATE utf8_polish_ci DEFAULT NULL,
  `idPrem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`idEmployee`, `name`, `surname`, `email`, `password`, `idPrem`) VALUES
(1, 'Andrzej', 'Adrian', 'andrzej@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 2),
(2, 'Karolina', 'Prekurat', 'karolina@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 1),
(3, 'Adrian', 'Rybaczuk', 'adrian@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 1),
(4, 'Jakub', 'Paprocki', 'jakub@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idCart` int(11) NOT NULL,
  `idEmployee` int(11) DEFAULT NULL,
  `idStatus` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCity` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCode` varchar(5) COLLATE utf8_polish_ci DEFAULT NULL,
  `adress` text COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` varchar(9) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permissions`
--

CREATE TABLE `permissions` (
  `idPrem` int(11) NOT NULL,
  `premission` tinytext COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `permissions`
--

INSERT INTO `permissions` (`idPrem`, `premission`) VALUES
(1, 'pracownik'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productgallery`
--

CREATE TABLE `productgallery` (
  `idFoto` int(11) NOT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `photo` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `productgallery`
--

INSERT INTO `productgallery` (`idFoto`, `idProduct`, `photo`) VALUES
(87, 1, 'main.png'),
(97, 1, 'pr_2020_9_2_11_10_57_978_00 — kopia (3).png'),
(98, 1, 'pr_2020_9_2_11_10_57_978_00 — kopia (3).png'),
(99, 1, 'add.png'),
(101, 1, 'add.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Quantity` int(10) NOT NULL,
  `Specification` mediumtext COLLATE utf8_polish_ci DEFAULT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idFoto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`idProduct`, `name`, `price`, `Quantity`, `Specification`, `idCategory`, `idFoto`) VALUES
(1, 'WD 240GB 2,5', '120.00', 0, 'Przeznaczenie produktu:PC;Pojemność:240 GB;Format:2.5\";Interfejs:SATA III (6.0Gb/s);Prędkość odczytu (maksymalna):545 MB/s;Rodzaj kości pamięci:TLC;', 1, 1),
(2, 'Gigabyte GeForce RTX 2060  OC 6GB GDDR6', '1599.00', 12, 'Obsługa Ray tracingu:Tak;Układ graficzny:GeForce RTX 2060;Rodzaj złącza:PCI-E x16 3.0;Pamięć:6 GB;Rodzaj pamięci:GDDR6;', 3, 0),
(3, 'AMD Ryzen 5 3600', '999.00', 12, 'Seria:Ryzen™ 5 3600;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 1, 0),
(4, 'AMD Ryzen 5 3500X', '753.00', 50, 'Seria:Ryzen™ 5 3500X;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 1, 0),
(14, 'Procesor', '1.00', 3, 'sdasdasdasd', 1, 0),
(15, 'Procesor', '1.00', 3, 'sdasdasdasd', 1, 0),
(16, 'Duu', '1.00', 2, '', 1, 0),
(17, 'siema', '54.00', 3, 'siema:essa;', 1, 0),
(18, 'name', '1.00', 1, '', 1, 0),
(19, 'Eldo', '12.00', 2, 'Na:wolno;', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productsincarts`
--

CREATE TABLE `productsincarts` (
  `idCart` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `howMuch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `productsincarts`
--

INSERT INTO `productsincarts` (`idCart`, `idProduct`, `howMuch`) VALUES
(2, 1, 5),
(2, 2, 1),
(8, 1, 3),
(8, 4, 1);

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
  `idStatus` int(11) NOT NULL,
  `status` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `status`
--

INSERT INTO `status` (`idStatus`, `status`) VALUES
(1, 'potwierdzone'),
(2, 'nowepotwierdzone'),
(3, 'wysłane'),
(4, 'dostarczone'),
(5, 'zakończone');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCity` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCode` char(6) COLLATE utf8_polish_ci DEFAULT NULL,
  `address` text COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` varchar(9) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` text COLLATE utf8_polish_ci DEFAULT NULL,
  `password` text COLLATE utf8_polish_ci DEFAULT NULL,
  `currentCart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`idUser`, `name`, `surname`, `postCity`, `postCode`, `address`, `phone`, `email`, `password`, `currentCart`) VALUES
(10, 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 15', '510154094', 'lee@rock.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 1),
(11, 'Monika', 'Kozioł', 'Warszawa', '00-023', 'ul. Kwiatowa 7', '870172408', 'monika.kozioł@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 2),
(12, 'Andrzej', 'Szatan', 'Radom', '26-605', 'ul. Tęczowa 666', '098098678', 'adrejo.sztano@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 3),
(13, 'Jakub', 'Morda', 'Siedlce', '08-110', 'ul. Piłsudskiego 78', '09227663', 'jakuboloelo@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 4),
(14, 'Ryszard', 'Kot', 'Zakopane', '34-505', 'ul. Główna 55', '123234345', 'rysio@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 5),
(15, 'Julita', 'Wróbel', 'Wrocłam', '50-004', 'ul. Mordercy 66', '098567900', 'angel99@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 6),
(18, 'Maciek', 'Grzegorczyk', 'Wiśniew', '08-112', 'Okno', '564573434', 'maciekgrzegorczyk@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 7),
(19, 'Karolina', 'Prekurat', 'Siedlce', '08-110', 'Kubusia Puchata 64', '512038120', 'nie@nie.com', '$2y$10$M49Ur99ipuG4SzJbRX9xLOnocTZLJNvJBp5ar5UNi1LvS27uKQxTC', 8),
(20, 'Andrzej', 'Kowalski', 'Siedlce', '08-110', 'Starowiejska 5', '224444444', 'andreakow@gmail.com', '$2y$10$6ILj42WxvsVnQGlKnsKvQe4rJnIZ1iPCbSH8cYwOC3V9udMKTNgN.', 9),
(24, 'Maria', 'Curie', 'Curier', '09-345', 'Zielarska 14', '464565575', 'das@o2.pol', '$2y$10$TIlgUtMKUIzQcJ.q38EsueYroDqnjbcprCXcI1YhRhitURflcGfii', 10),
(27, 'Barbara', 'Kareńska', 'Zenki', '43-232', 'Wolska 34', '343567543', 'fff@gm.com', '$2y$10$YRhwvwYE4Cpr9BsRKGyJXO0KYM6GwUwLYNHcfMsHIeqRT9fHwjo6C', 14),
(30, 'sadas', 'dsdasd', 'dasdasd', '34-434', 'dasd', '213233567', '344ds@o2.pl', '$2y$10$B4bvGSWgbtRexHgCWapIz.b6sdSKUPeJk69TmPjGg56Z4pFyBMY12', 17),
(31, 'Asd', 'Adsd', 'Asds', '34-434', 'Adasdasd', '345678987', 'leerock.zero@gmail.com', '$2y$10$1a0SaEHqMCF7iCmq.w/kXukrMevP3OgiP6J1lhWfyC9R12Py/DhCq', 18),
(32, 'Kubuś', 'Paprocuś', 'Siedlce', '08-110', 'Pliszczusie 6', '997998999', 'dlaczegoszesc@gmail.com', '$2y$10$hp8pJdIvu4S2BDAjCcSe6eCXSoRqzTFAUSUd1Ex1VN8OsyEY1bKLa', 19),
(33, 'Karo', 'Preku', 'Siedl', '08-110', 'spac 1', '123123123', 'karap2001@o2.pl', '$2y$10$O7yETtevdXsGrBoPqXK/YuPBR6knusnoZAY5BCIojDBuA3Jutw1a2', 20),
(34, 'adasdasd', 'dasasdasd', 'asdasd', '32-655', 'Sdsdd', '123456789', 'lee@rock.com', '$2y$10$uqYz2XpwAml1zSl5oc1xKOFnyPaN9vFHX2SKkluM7D1L6H4ROVjt6', 21),
(35, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'dlaczegoszesc@gmail.com', '$2y$10$1tJ1qR8FYE.6.2GilGSpqe4CsWqn0tIpGutPcnSY2qFJkyO7P71em', 22),
(36, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'dlaczegoszesc@gmail.com', '$2y$10$P5S5Qg4jqHdoOVAP0DGcB.lwtdUHG0wiONp216n6w2JV6ttat524O', 23),
(37, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'kubus420@siema.jd', '$2y$10$9zO2RV8UKPNTYa/nD5nox.Y7bkmy/Ycd2i/AU2k05zojPRqssXOZW', 24),
(38, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'kubus420@siema.jd', '$2y$10$nyhTd2OGlikLDR1DHwgUAu6Jq3n/cCWMZTUUDvu93oiTyp67.Sa66', 25),
(39, 'Asdd', 'dasdasd', 'Asdsd', '34-435', 'Adsadsd', '123456789', 'sdsa@o2.pl', '$2y$10$HclF1fXPhysu5Hcw.oXiT.94KVXRr6QSvs//EgSmGVqXUPYzyQiES', 26),
(40, 'Asdd', 'dasdasd', 'Asdsd', '34-435', 'Adsadsd', '123456789', 'sdsa@o2.pl', '$2y$10$tyzAnRKQ7MXE9uYxsIK3Sew/6JO8wFCJSwUl/aT4TLCzWoaNdfdu.', 27),
(41, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'kubus420@siema.jd', '$2y$10$q.SNSihn/1lTZd3pqaRkSeS4nuLFP6SumS3dZfEMIDCUVndB4/0lO', 28);

--
-- Indeksy dla zrzutów tabel
--

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
  ADD KEY `idPrem` (`idPrem`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCart` (`idCart`),
  ADD KEY `idStatus` (`idStatus`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idEmployee` (`idEmployee`);

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
  ADD KEY `idFoto` (`idFoto`);

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
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `carts`
--
ALTER TABLE `carts`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `employeelogintime`
--
ALTER TABLE `employeelogintime`
  MODIFY `idLogged` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idPrem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `productgallery`
--
ALTER TABLE `productgallery`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `status`
--
ALTER TABLE `status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Ograniczenia dla zrzutów tabel
--

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
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`);

--
-- Ograniczenia dla tabeli `productgallery`
--
ALTER TABLE `productgallery`
  ADD CONSTRAINT `productgallery_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);

--
-- Ograniczenia dla tabeli `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`idCategory`);

--
-- Ograniczenia dla tabeli `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD CONSTRAINT `productsincarts_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`),
  ADD CONSTRAINT `productsincarts_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
