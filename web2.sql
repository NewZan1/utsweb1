-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 06:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemain`
--

CREATE TABLE `tbl_pemain` (
  `id_pemain` int(11) NOT NULL,
  `nama_pemain` text NOT NULL,
  `klub` text NOT NULL,
  `usia` int(11) NOT NULL,
  `posisi` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pemain`
--

INSERT INTO `tbl_pemain` (`id_pemain`, `nama_pemain`, `klub`, `usia`, `posisi`, `photo`) VALUES
(1, 'Bukayo Saka', 'Arsenal', 22, 'Right Wing', 'photo/saka.jpg'),
(2, 'Martin Oodegard', 'Arsenal', 24, 'Central Attacking Midfielder', 'photo/ode.jpg'),
(3, 'Gabriel Martinelli', 'Arsenal', 22, 'Left Wing', 'photo/martinelli-celeb-liverpool.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pemain`
--
ALTER TABLE `tbl_pemain`
  ADD PRIMARY KEY (`id_pemain`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pemain`
--
ALTER TABLE `tbl_pemain`
  MODIFY `id_pemain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
