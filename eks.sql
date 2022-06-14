-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 04:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eks`
--

-- --------------------------------------------------------

--
-- Table structure for table `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articulos`
--

INSERT INTO `articulos` (`id`, `descripcion`, `precio`, `stock`) VALUES
(1, 'Chokis', '150.00', 50),
(2, 'Fanta naranja', '36.00', 10),
(3, 'Vino ralbec', '252.00', 42),
(6, 'Leche entera Sancer', '89.00', 16),
(7, 'Dulce de leche Sancor', '59.00', 50),
(8, 'Queso cremoso', '660.00', 10),
(9, 'Lavandina', '250.00', 90),
(11, 'Monster', '37.00', 45);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered` datetime NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `registered`, `lastlogin`) VALUES
('196437ba-d697-4769-899f-c9409e9f4761', 'cesarbg2', '$2a$10$iz1pYwBwrtlZm/i519hKSelxiRIfSclksZgKLo3NjONGIgDrlPu2.', '2022-06-11 14:58:21', '0000-00-00 00:00:00'),
('abb40d76-999d-46ea-9662-16f5593eba2a', 'sara', '$2a$10$cO93i/CvJHhxlmulCTIbP.tEaMnvbuxrPM/VnuP9tSGPVLHIzuXom', '2022-06-11 15:08:46', '2022-06-11 17:11:48'),
('cf60d9a1-5447-4ed6-8ad1-d024154d7347', 'cesarbg3', '$2a$10$UZS3N3k/iMnwntMgVtOfPuPkuPfX1JKUzOgm46cEz2Z9yHqCYU.U6', '2022-06-11 15:00:11', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
