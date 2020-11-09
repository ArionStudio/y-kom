-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 02:48 PM
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
-- Table structure for table `categeries`
--

CREATE TABLE `categeries` (
  `idCategory` int(11) NOT NULL,
  `category` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `employeespermissions`
--

CREATE TABLE `employeespermissions` (
  `idEmployee` int(11) DEFAULT NULL,
  `idPrem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `idPrem` int(11) NOT NULL,
  `premission` tinytext COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idFoto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`idProduct`, `name`, `price`, `idCategory`, `idFoto`) VALUES
(1, 'Komputerek', 500, NULL, NULL),
(2, 'Komputerek', 500, NULL, NULL);

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
(10, 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 15', '510154094', 'lee@rock.com', '$2y$10$p.dC5YUOlzweiccWR57/0uAKx3tQkat5p3AuICKnmLpDleYv0EA6m');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`idCart`);

--
-- Indexes for table `categeries`
--
ALTER TABLE `categeries`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmployee`);

--
-- Indexes for table `employeespermissions`
--
ALTER TABLE `employeespermissions`
  ADD KEY `idEmployee` (`idEmployee`),
  ADD KEY `idPrem` (`idPrem`);

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
-- AUTO_INCREMENT for table `categeries`
--
ALTER TABLE `categeries`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idPrem` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeespermissions`
--
ALTER TABLE `employeespermissions`
  ADD CONSTRAINT `employeespermissions_ibfk_1` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`),
  ADD CONSTRAINT `employeespermissions_ibfk_2` FOREIGN KEY (`idPrem`) REFERENCES `permissions` (`idPrem`);

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
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categeries` (`idCategory`),
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
