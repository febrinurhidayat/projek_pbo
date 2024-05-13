-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 12:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangg`
--

CREATE TABLE `barangg` (
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jenis` varchar(20) DEFAULT NULL,
  `Ukuran` varchar(5) DEFAULT NULL,
  `HargaBeli` decimal(10,0) DEFAULT NULL,
  `HargaJual` decimal(10,0) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangg`
--

INSERT INTO `barangg` (`ID_Barang`, `Nama_Barang`, `Jenis`, `Ukuran`, `HargaBeli`, `HargaJual`, `Stok`) VALUES
('BR001', 'Jeans Nudie', 'Celana', 'XL', 500000, 550000, 98),
('BR002', 'Gucci', 'Baju', 'XL', 300000, 500000, 99),
('BR003', 'Denim', 'Kemeja', 'S', 1000000, 1200000, 99),
('BR004', 'Louis Vuitton', 'Baju', 'S', 8000000, 8500000, 100),
('BR005', 'Dior', 'Baju', 'S', 5000000, 5500000, 100),
('BR006', 'Hermes', 'Baju', 'XL', 2000000, 2300000, 100),
('BR007', 'Prada', 'Baju', 'S', 1000000, 1200000, 100),
('BR008', 'Jeans Levi\'s', 'Celana', 'S', 600000, 650000, 100),
('BR009', 'Jeans Wrangler', 'Celana', 'S', 600000, 650000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
('AD001', 'Febri', '123');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `ID_Customer` varchar(10) DEFAULT NULL,
  `TotalBeli` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) NOT NULL,
  `ID_Barang` varchar(20) NOT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangg`
--
ALTER TABLE `barangg`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);

--
-- Indexes for table `penjualanrinci`
--
ALTER TABLE `penjualanrinci`
  ADD PRIMARY KEY (`NoFaktur`,`ID_Barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
