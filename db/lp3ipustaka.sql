-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 04:23 PM
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
-- Database: `lp3ipustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `pengarang` varchar(45) DEFAULT NULL,
  `gambar` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `gambar`) VALUES
(14, 'asd', 'asd', 'upload/2.jpg'),
(15, 'asddsa', 'asd', 'upload/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nim` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `telpon` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nim`, `nama`, `telpon`, `alamat`) VALUES
(33, '1129394', 'Tes', '345345345', 'Jl. Mangga'),
(35, '1129394', 'Jajal', '234234234', 'Jl. Mangga'),
(36, '1129394er', 'Sulis', '324234', 'Jl. Mangga'),
(40, '1130123', 'Tes', '0213', 'Tes Alamat'),
(41, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_detail`
--

CREATE TABLE `peminjaman_detail` (
  `id` int(11) NOT NULL,
  `idpinjam` varchar(45) DEFAULT NULL,
  `idbuku` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman_detail`
--

INSERT INTO `peminjaman_detail` (`id`, `idpinjam`, `idbuku`, `qty`) VALUES
(1, '0002', '15', '2'),
(2, '0007', '14', '2'),
(3, '0008', '14', '2');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_header`
--

CREATE TABLE `peminjaman_header` (
  `idpinjam` varchar(45) NOT NULL,
  `idpeminjam` varchar(45) DEFAULT NULL,
  `tglPinjam` date DEFAULT NULL,
  `tglKembali` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman_header`
--

INSERT INTO `peminjaman_header` (`idpinjam`, `idpeminjam`, `tglPinjam`, `tglKembali`, `status`) VALUES
('0001', '1129394', '0000-00-00', '0000-00-00', '0'),
('0002', '1129394', '0000-00-00', '0000-00-00', '0'),
('0003', '1129394', '2020-05-12', '2020-05-12', '0'),
('0004', '1129394', '0000-00-00', '0000-00-00', '0'),
('0005', '1129394', '0000-00-00', '0000-00-00', '0'),
('0006', '1129394', '0000-00-00', '0000-00-00', '0'),
('0007', '1129394', '2020-05-05', '2020-05-12', '0'),
('0008', '1129394', '2020-05-05', '2020-05-12', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman_detail`
--
ALTER TABLE `peminjaman_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman_header`
--
ALTER TABLE `peminjaman_header`
  ADD PRIMARY KEY (`idpinjam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `peminjaman_detail`
--
ALTER TABLE `peminjaman_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
