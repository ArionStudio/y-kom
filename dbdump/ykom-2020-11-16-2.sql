Drop database ykom;
create database ykom;
use ykom;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 12:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ykom`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `idCart` int(11) NOT NULL,
  `cartName` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idCategory` int(11) NOT NULL,
  `category` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `categories`
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
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `idEmployee` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `login` text COLLATE utf8_polish_ci DEFAULT NULL,
  `password` text COLLATE utf8_polish_ci DEFAULT NULL,
  `idPrem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`idEmployee`, `name`, `surname`, `login`, `password`, `idPrem`) VALUES
(1, 'Andrzej', 'Adrian', 'andrzej.adrian', '123', 2),
(2, 'Karolina', 'Prekurat', 'karolina.prekurat', '123', 1),
(3, 'Adrian', 'Rybaczuk', 'adrian.rybaczuk', '123', 1),
(4, 'Jakub', 'Paprocki', 'jakub.paprocki', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `idPrem` int(11) NOT NULL,
  `premission` tinytext COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`idPrem`, `premission`) VALUES
(1, 'pracownik'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `Specification` mediumtext COLLATE utf8_polish_ci DEFAULT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idFoto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`idProduct`, `name`, `price`, `Quantity`, `Specification`, `idCategory`, `idFoto`) VALUES
(1, 'WD 240GB 2,5\" SATA SSD', 500, 0, 'cos', 2, NULL),
(2, 'Gigabyte GeForce RTX 2060 OC 6GB GDDR6', 1500, 0, 'nic', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productsincarts`
--

CREATE TABLE `productsincarts` (
  `idCart` int(11) NOT NULL,
  `idProdukt` int(11) NOT NULL,
  `howMuch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produktgallery`
--

CREATE TABLE `produktgallery` (
  `idFoto` int(11) NOT NULL,
  `idProdukt` int(11) DEFAULT NULL,
  `photo` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `idStatus` int(11) NOT NULL,
  `status` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`idStatus`, `status`) VALUES
(1, 'nowe'),
(2, 'potwierdzone'),
(3, 'wysłane'),
(4, 'dostarczone'),
(5, 'zakończone');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `name`, `surname`, `postCity`, `postCode`, `address`, `phone`, `email`, `password`) VALUES
(10, 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 15', '510154094', 'lee@rock.com', '$2y$10$p.dC5YUOlzweiccWR57/0uAKx3tQkat5p3AuICKnmLpDleYv0EA6m'),
(11, 'Monika', 'Kozioł', 'Warszawa', '00-023', 'ul. Kwiatowa 7', '870172408', 'monika.kozioł@gmail.com', '123'),
(12, 'Andrzej', 'Szatan', 'Radom', '26-605', 'ul. Tęczowa 666', '098098678', 'adrejo.sztano@gmail.com', '123'),
(13, 'Jakub', 'Morda', 'Siedlce', '08-110', 'ul. Piłsudskiego 78', '09227663', 'jakuboloelo@gmail.com', '123'),
(14, 'Ryszard', 'Kot', 'Zakopane', '34-505', 'ul. Główna 55', '123234345', 'rysio@gmail.com', '123'),
(15, 'Julita', 'Wróbel', 'Wrocłam', '50-004', 'ul. Mordercy 66', '098567900', 'angel99@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`idCart`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmployee`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCart` (`idCart`),
  ADD KEY `idStatus` (`idStatus`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idEmployee` (`idEmployee`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`idPrem`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idFoto` (`idFoto`);

--
-- Indexes for table `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD PRIMARY KEY (`idCart`,`idProdukt`),
  ADD KEY `idProdukt` (`idProdukt`);

--
-- Indexes for table `produktgallery`
--
ALTER TABLE `produktgallery`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `idProdukt` (`idProdukt`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idPrem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produktgallery`
--
ALTER TABLE `produktgallery`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`idCategory`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idFoto`) REFERENCES `produktgallery` (`idFoto`);

--
-- Constraints for table `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD CONSTRAINT `productsincarts_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`),
  ADD CONSTRAINT `productsincarts_ibfk_2` FOREIGN KEY (`idProdukt`) REFERENCES `products` (`idProduct`);

--
-- Constraints for table `produktgallery`
--
ALTER TABLE `produktgallery`
  ADD CONSTRAINT `produktgallery_ibfk_1` FOREIGN KEY (`idProdukt`) REFERENCES `products` (`idProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
