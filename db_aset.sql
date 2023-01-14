-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 12:34 PM
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
-- Database: `db_aset`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `sn` varchar(15) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `stok` int(15) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama_barang`, `sn`, `jenis`, `stok`, `satuan`, `ket`) VALUES
('003', 'Asus', 'ABCD', 'Komputer', 11, 'SATUAN', 'BAIK');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `kode` varchar(7) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`kode`, `jenis`, `ket`) VALUES
('011', 'lg', 'baguss'),
('013', 'Keyboard', ''),
('015', 'Mesin', ''),
('001', 'Mouse', ''),
('002', 'HD', 'BAIKKKK');

-- --------------------------------------------------------

--
-- Table structure for table `keluar_brg`
--

CREATE TABLE `keluar_brg` (
  `no_bk` varchar(11) NOT NULL,
  `tgl` text NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `teknisi` varchar(50) NOT NULL,
  `supervisor` varchar(50) NOT NULL,
  `gudang` varchar(50) NOT NULL,
  `staf` varchar(50) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluar_brg`
--

INSERT INTO `keluar_brg` (`no_bk`, `tgl`, `no_ref`, `teknisi`, `supervisor`, `gudang`, `staf`, `ket`) VALUES
('04', '13/1/2023', 'BK04', 'Maria Ulfa', 'ani', 'Koleksi', 'Ani', ''),
('02', '12/1/2023', 'BK04', 'ANI', 'INA', 'Koleksi', 'Dimas', '');

-- --------------------------------------------------------

--
-- Table structure for table `terima_brg`
--

CREATE TABLE `terima_brg` (
  `no_pb` varchar(25) NOT NULL,
  `tgl` text NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `menyetujui` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terima_brg`
--

INSERT INTO `terima_brg` (`no_pb`, `tgl`, `no_ref`, `supplier`, `menyetujui`, `pengirim`, `penerima`) VALUES
('08', '13/1/2023', 'PB001', 'PT Abadi', 'ANI', 'DIMAS', 'INA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
