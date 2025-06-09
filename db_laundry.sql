-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2025 pada 22.27
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ambil`
--

CREATE TABLE `tbl_ambil` (
  `no_antrian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `j_pewangi` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_ambil`
--

INSERT INTO `tbl_ambil` (`no_antrian`, `nama`, `no_telp`, `alamat`, `j_pewangi`, `jumlah`, `harga`, `tanggal`, `total`, `bayar`, `kembali`) VALUES
(1, 'dinday', '2310631250082', 'telukgong', 'Sakura', 1, 18000, '2025-05-30', 18000, 20000, 2000),
(2, 'tika', '0202020202', 'tambun', 'Bubuk', 2, 23000, '2025-05-30', 23000, 50000, 27000),
(7, 'okin', '10920393932', 'pluit', 'Bubuk', 7, 73000, '2025-05-31', 73000, 100000, 27000),
(8, 'aqelaa', '198866567', 'agz', 'Bubuk', 6, 63000, '2025-05-31', 63000, 200000, 137000),
(10, 'sisi', '0909090909', 'krwng', 'Cair', 5, 55000, '2025-05-31', 55000, 100000, 45000),
(12, 'tikuy', '1010101010', 'tambun', 'Cair', 2, 25000, '2025-06-01', 25000, 50000, 25000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login`
--

CREATE TABLE `tbl_login` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_login`
--

INSERT INTO `tbl_login` (`user`, `pass`) VALUES
('dinduy', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `no_antrian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` text NOT NULL,
  `j_pewangi` varchar(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`no_antrian`, `nama`, `no_telp`, `alamat`, `j_pewangi`, `jumlah`, `harga`, `tanggal`) VALUES
(1, 'dinda', '0101010101', 'Telukgong', 'cair', 5, 55000, '2025-05-30'),
(4, 'siah', '0303030303', 'Bekasi', 'Bubuk', 6, 63000, '2025-05-30'),
(5, 'rizka', '0404040404', 'cikarang', 'Cair', 1, 15000, '2025-05-30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`no_antrian`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `no_antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
