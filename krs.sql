-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2022 pada 00.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `nim` varchar(4) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `id_makul` varchar(4) NOT NULL,
  `makul` varchar(32) NOT NULL,
  `sks` varchar(1) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `dosen` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`nim`, `nama`, `id_makul`, `makul`, `sks`, `semester`, `dosen`) VALUES
('0001', 'Fikrish Shobah', 'BIND', 'Bahasa Indonesia', '2', '1', 'Anina'),
('0001', 'Fikrish Shobah', 'MTK1', 'Matematika 1', '3', '1', 'Budi'),
('0001', 'Fikrish Shobah', 'MTK1', 'Matematika 1', '3', '1', 'Budi'),
('0004', 'aldy gunawan', 'MTK5', 'Matematika', '3', '5', 'Ibu Siti'),
('0004', 'aldy gunawan', 'MTK5', 'Matematika', '3', '5', 'Ibu Siti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makul`
--

CREATE TABLE `makul` (
  `id_makul` varchar(4) NOT NULL,
  `makul` varchar(32) NOT NULL,
  `sks` varchar(1) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `dosen` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `makul`
--

INSERT INTO `makul` (`id_makul`, `makul`, `sks`, `semester`, `dosen`) VALUES
('MTK6', 'MATEMATIKA', '3', '5', 'IBU NADYA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `nim` varchar(4) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `jenis_k` varchar(12) NOT NULL,
  `jurusan` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`nim`, `nama`, `alamat`, `jenis_k`, `jurusan`) VALUES
('0004', 'aldy gunawan', 'Jl. Banjarmasin	', 'Laki - Laki', 'Teknik Informatika');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id_makul`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
