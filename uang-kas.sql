-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 05:13 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uang-kas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulan_pembayaran`
--

INSERT INTO `bulan_pembayaran` (`id_bulan_pembayaran`, `nama_bulan`, `tahun`, `pembayaran_perminggu`) VALUES
(1, 'mei', 2022, 5000),
(2, 'juni', 2022, 5000),
(3, 'juli', 2023, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'administrator'),
(2, 'Bendahara'),
(3, 'Dosen');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `jumlah_pengeluaran`, `keterangan`, `tanggal_pengeluaran`, `id_user`) VALUES
(1, 20000, 'Beli Sapu 2pcs', 1652453635, 1),
(2, 15000, 'Beli Pel Lantai 1pcs', 1652453876, 1),
(3, 10000, 'Beli Wipol Pel 12pcs (1 renceng)', 1652453855, 1),
(4, 20000, 'Beli Spidol Hitam 2pcs', 1652453900, 1),
(5, 9000, 'Penghapus Papan Tulis', 1652453779, 1),
(6, 40000, 'Ember Anti Pecah', 1652453886, 1),
(7, 15000, 'Kabel HDMI', 1688782122, 1);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_user`, `id_uang_kas`, `aksi`, `tanggal`) VALUES
(1, 1, 2, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256476),
(2, 1, 2, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256479),
(3, 1, 2, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1611256484),
(4, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 4,000', 1611256488),
(5, 1, 1, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256492),
(6, 1, 1, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256495),
(7, 1, 1, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1611256500),
(8, 1, 1, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1611256504),
(9, 1, 3, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256508),
(10, 1, 3, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256512),
(11, 1, 4, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 500', 1611256518),
(12, 1, 4, 'telah mengubah pembayaran minggu ke-1 dari Rp. 500 menjadi Rp. 5,000', 1611256526),
(13, 1, 5, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256530),
(14, 1, 5, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256534),
(15, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 4,000 menjadi Rp. 3,000', 1611257026),
(16, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 3,000 menjadi Rp. 5,000', 1652453172),
(17, 1, 3, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453181),
(18, 1, 3, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453187),
(19, 1, 4, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1652453192),
(20, 1, 4, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453196),
(21, 1, 4, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453201),
(22, 1, 5, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453205),
(23, 1, 5, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453209),
(24, 1, 11, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1652453353),
(25, 1, 11, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1652453358),
(26, 1, 11, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453362),
(27, 1, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453366),
(28, 2, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 5,000 menjadi Rp. 1,000', 1652454260),
(29, 2, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 1,000 menjadi Rp. 5,000', 1652454272),
(30, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 5,000 menjadi Rp. 5,000', 1688695110),
(31, 1, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 5,000 menjadi Rp. ', 1688695115),
(32, 1, 12, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1,222', 1688703823),
(33, 1, 12, 'telah mengubah pembayaran minggu ke-1 dari Rp. 1,222 menjadi Rp. 5,000', 1688703832),
(34, 1, 12, 'telah mengubah pembayaran minggu ke-1 dari Rp. 5,000 menjadi Rp. ', 1688703840),
(35, 1, 19, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1688781912),
(36, 1, 21, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 3,000', 1688781941),
(37, 1, 21, 'telah mengubah pembayaran minggu ke-1 dari Rp. 3,000 menjadi Rp. 5,000', 1688781988),
(38, 1, 12, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1688782011),
(39, 1, 12, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1688782022),
(40, 1, 12, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1688782029),
(41, 1, 12, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1688782034),
(42, 1, 23, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1688782060);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_pengeluaran`
--

INSERT INTO `riwayat_pengeluaran` (`id_riwayat_pengeluaran`, `id_user`, `aksi`, `tanggal`) VALUES
(1, 1, 'telah menambahkan pengeluaran Pembersih lantai dengan biaya Rp. 2,000', 1611256576),
(2, 1, 'telah menambahkan pengeluaran sapu x1 dengan biaya Rp. 10,000', 1611256589),
(3, 1, 'telah mengubah pengeluaran Pembersih lantai 2x dari biaya Rp. 2,000 menjadi Rp. 2,000', 1611256595),
(4, 1, 'telah mengubah pengeluaran Pembersih lantai x2 dari biaya Rp. 2,000 menjadi Rp. 2,000', 1611256599),
(5, 1, 'telah menambahkan pengeluaran Beli Sapu 2pcs dengan biaya Rp. 20,000', 1652453635),
(6, 1, 'telah menambahkan pengeluaran Beli Pel Lantai 2pcs dengan biaya Rp. 28,000', 1652453668),
(7, 1, 'telah menambahkan pengeluaran Beli Sabun Pel 12pcs (1 renceng) dengan biaya Rp. 10,000', 1652453690),
(8, 1, 'telah menambahkan pengeluaran Beli Spidol hitam 3pcs dengan biaya Rp. 30,000', 1652453749),
(9, 1, 'telah menambahkan pengeluaran Penghapus Papan Tulis dengan biaya Rp. 9,000', 1652453779),
(10, 1, 'telah mengubah pengeluaran Beli Spidol hitam 2pcs dari biaya Rp. 30,000 menjadi Rp. 20,000', 1652453803),
(11, 1, 'telah menambahkan pengeluaran Ember Anti Pecah dengan biaya Rp. 35,000', 1652453820),
(12, 1, 'telah mengubah pengeluaran Beli Wipol Pel 12pcs (1 renceng) dari biaya Rp. 10,000 menjadi Rp. 10,000', 1652453855),
(13, 1, 'telah mengubah pengeluaran Beli Pel Lantai 1pcs dari biaya Rp. 28,000 menjadi Rp. 15,000', 1652453877),
(14, 1, 'telah mengubah pengeluaran Ember Anti Pecah dari biaya Rp. 35,000 menjadi Rp. 40,000', 1652453886),
(15, 1, 'telah mengubah pengeluaran Beli Spidol Hitam 2pcs dari biaya Rp. 20,000 menjadi Rp. 20,000', 1652453900),
(16, 1, 'telah menambahkan pengeluaran Kabel HDMI dengan biaya Rp. 15,000', 1688782122);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `no_telepon`, `email`) VALUES
(1, 'SALSA DWIYANTI', 'wanita', '2169700001', ''),
(2, 'LISTIANI LESVEVA SETIAWAN', 'wanita', '2169700006', '1@gmail.com'),
(4, 'YENI NURAENI', 'wanita', '2169700004', '4@gmail.com'),
(6, 'SENDI RAHMAN HUDA', 'pria', '2169700007', '6@gmail.com'),
(7, 'TIARA AGUSTIN', 'wanita', '2169700005', '5@gmail.com'),
(8, 'LUKMAN MUHAMAD SYAMIL', 'pria', '2169700008', ''),
(9, 'SITI WARISAL UMMAH', 'pria', '2169700009', ''),
(10, 'RATU NURUL FAUZIAH', 'wanita', '2169700012', ''),
(11, 'ANA SILVANA', 'wanita', '2169700013', ''),
(12, 'ADI SUHARYADI', 'pria', '2169700014', ''),
(13, 'DANI RAMADON', 'pria', '2169700015', ''),
(14, 'AMANDA PRATIWI', 'wanita', '2169700016', ''),
(15, 'KOSMARA', 'pria', '2169700038', '');

-- --------------------------------------------------------

--
-- Table structure for table `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL,
  `minggu_ke_2` int(11) DEFAULT NULL,
  `minggu_ke_3` int(11) DEFAULT NULL,
  `minggu_ke_4` int(11) DEFAULT NULL,
  `status_lunas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uang_kas`
--

INSERT INTO `uang_kas` (`id_uang_kas`, `id_siswa`, `id_bulan_pembayaran`, `minggu_ke_1`, `minggu_ke_2`, `minggu_ke_3`, `minggu_ke_4`, `status_lunas`) VALUES
(1, 1, 1, 5000, 5000, 5000, 5000, 1),
(2, 2, 1, 5000, 5000, 5000, 5000, 1),
(3, 3, 1, 5000, 5000, 5000, 5000, 1),
(4, 4, 1, 5000, 5000, 5000, 5000, 1),
(5, 6, 1, 5000, 5000, 5000, 5000, 1),
(6, 1, 2, 0, 0, 0, 0, 0),
(7, 2, 2, 0, 0, 0, 0, 0),
(8, 3, 2, 0, 0, 0, 0, 0),
(9, 4, 2, 0, 0, 0, 0, 0),
(10, 6, 2, 0, 0, 0, 0, 0),
(11, 7, 1, 5000, 5000, 5000, 0, 1),
(12, 12, 2, 5000, 5000, 5000, 5000, 1),
(13, 14, 2, 0, 0, 0, 0, 0),
(14, 1, 3, 0, 0, 0, 0, 0),
(15, 2, 3, 0, 0, 0, 0, 0),
(16, 4, 3, 0, 0, 0, 0, 0),
(17, 6, 3, 0, 0, 0, 0, 0),
(18, 7, 3, 0, 0, 0, 0, 0),
(19, 8, 3, 5000, 0, 0, 0, 0),
(20, 9, 3, 0, 0, 0, 0, 0),
(21, 10, 3, 5000, 0, 0, 0, 0),
(22, 11, 3, 0, 0, 0, 0, 0),
(23, 12, 3, 5000, 0, 0, 0, 0),
(24, 13, 3, 0, 0, 0, 0, 0),
(25, 14, 3, 0, 0, 0, 0, 0),
(26, 15, 3, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`) VALUES
(1, 'Ersa Putra Riano', 'ersa', '$2y$10$RtlG8gY2cp/2BYEeMBJ2C.tMli1qvWGCoT/jkKIZVNrRJ/4cGbbTm', 1),
(3, 'Kodar Udoyono, S.T., M.A', 'kodar', '$2y$10$1G9mvmbcbdwjdqCb1EuG5OGAYNhPa1aOmlmd2yS2/Yz.A3HRS/u5u', 3),
(4, 'Carkiman', 'dosen2', '$2y$10$Sl23.ekjI6iEnN1OBkkMf.7m20yVzSkZDI6e.ezR44mjWc2L7Gosm', 3),
(5, 'Ratu Nurul Fauziyah', 'bendahara', '$2y$10$DTLlaKnEW2YGRpTBcd7wM.K4THtANV9U/F5mVHdUecRicKKLXc6Rm', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indexes for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
