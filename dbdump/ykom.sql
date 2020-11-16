-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Lis 2020, 13:23
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
-- Struktura tabeli dla tabeli `carts`
--

CREATE TABLE `carts` (
  `idCart` int(11) NOT NULL,
  `cartName` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `idCategory` int(11) NOT NULL,
  `category` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `idEmployee` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `login` text COLLATE utf8_polish_ci DEFAULT NULL,
  `password` text COLLATE utf8_polish_ci DEFAULT NULL,
  `idPrem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employeespermissions`
--

CREATE TABLE `employeespermissions` (
  `idEmployee` int(11) DEFAULT NULL,
  `idPrem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idCart` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idFoto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productsincarts`
--

CREATE TABLE `productsincarts` (
  `idCart` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `howMuch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produktgallery`
--

CREATE TABLE `produktgallery` (
  `idFoto` int(11) NOT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `photo` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `status`
--

CREATE TABLE `status` (
  `idStatus` int(11) NOT NULL,
  `status` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
  `password` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`idUser`, `name`, `surname`, `postCity`, `postCode`, `address`, `phone`, `email`, `password`) VALUES
(10, 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 15', '510154094', 'lee@rock.com', '$2y$10$p.dC5YUOlzweiccWR57/0uAKx3tQkat5p3AuICKnmLpDleYv0EA6m');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`idCart`);

--
-- Indeksy dla tabeli `categeries`
--
ALTER TABLE `categeries`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmployee`);

--
-- Indeksy dla tabeli `employeespermissions`
--
ALTER TABLE `employeespermissions`
  ADD KEY `idEmployee` (`idEmployee`),
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
  ADD KEY `idProduct` (`idProduct`);

--
-- Indeksy dla tabeli `produktgallery`
--
ALTER TABLE `produktgallery`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `idProduct` (`idProduct`);

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
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `categeries`
--
ALTER TABLE `categeries`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idPrem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `produktgallery`
--
ALTER TABLE `produktgallery`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `status`
--
ALTER TABLE `status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `employeespermissions`
--
ALTER TABLE `employeespermissions`
  ADD CONSTRAINT `employeespermissions_ibfk_1` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`),
  ADD CONSTRAINT `employeespermissions_ibfk_2` FOREIGN KEY (`idPrem`) REFERENCES `permissions` (`idPrem`);

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`);

--
-- Ograniczenia dla tabeli `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categeries` (`idCategory`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idFoto`) REFERENCES `produktgallery` (`idFoto`);

--
-- Ograniczenia dla tabeli `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD CONSTRAINT `productsincarts_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`),
  ADD CONSTRAINT `productsincarts_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);

--
-- Ograniczenia dla tabeli `produktgallery`
--
ALTER TABLE `produktgallery`
  ADD CONSTRAINT `produktgallery_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
