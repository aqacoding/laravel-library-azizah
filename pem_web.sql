-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 08:46 AM
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
-- Database: `pem_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(255) NOT NULL,
  `npm` varchar(30) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `npm`, `nama_anggota`, `prodi`, `hp`, `created_at`, `updated_at`) VALUES
(1, '20552011001', 'Kevin', 'Teknik Informatika', '08542236674', '2023-07-23 22:29:37', '2023-07-24 05:29:37'),
(2, '20552011002', 'Jamal', 'Teknik Industri', '085212344331', '2023-07-23 22:30:22', '2023-07-24 05:30:22'),
(4, '20552011079', 'Azizah Qolbu Antika', 'TIF', '085162647632', '2023-07-24 06:33:47', '2023-07-24 06:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(255) NOT NULL,
  `kode_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul`, `pengarang`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'A001', 'HTML for Beginners', 'Azizah', 'Ilmiah', '2023-07-23 21:35:24', '2023-07-24 04:35:24'),
(2, 'A002', 'Python For Noob', 'Qolbu', 'Sains', '2023-07-23 21:36:05', '2023-07-24 04:36:05'),
(3, 'A003', 'Step to Learn VS Code', 'Antika', 'Ensiklopedi', '2023-07-23 21:37:00', '2023-07-24 04:37:00'),
(4, 'A004', 'Trainee Idol KPOP', 'Park Jihoon', 'Novel', '2023-07-24 04:38:42', '2023-07-24 04:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(255) NOT NULL,
  `id_petugas` int(30) NOT NULL,
  `id_anggota` int(255) NOT NULL,
  `id_buku` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_petugas`, `id_anggota`, `id_buku`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, '2023-07-23 22:33:09', '2023-07-24 05:33:09'),
(3, 2, 4, 3, '2023-07-24 06:42:36', '2023-07-24 06:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(20) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `hp` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `hp`, `created_at`, `updated_at`) VALUES
(1, 'Gilang', '087444132314', '2023-07-23 22:32:24', '2023-07-24 05:32:24'),
(2, 'Bagas', '085422366744', '2023-07-23 22:32:34', '2023-07-24 05:32:34'),
(3, 'Felisa', '085322123333', '2023-07-23 22:32:54', '2023-07-24 05:32:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
