-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2022 pada 18.13
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`) VALUES
(31, 'Gusti Nyoman Anton S'),
(30, 'Ketut Nova Wirya Din'),
(29, 'Gede Indra Werdi San');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ir`
--

CREATE TABLE `ir` (
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ir`
--

INSERT INTO `ir` (`jumlah`, `nilai`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `atribut` enum('Cost','Benefit','','') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`, `atribut`) VALUES
(58, 'Jaminan', 'Benefit'),
(59, 'Penghasilan ', 'Benefit'),
(60, 'Kelengkapan Dokumen', 'Benefit'),
(57, 'Lama Pinjaman', 'Benefit'),
(55, 'Usia', 'Cost'),
(56, 'Jumlah Pinjaman', 'Cost');

-- --------------------------------------------------------

--
-- Struktur dari tabel `normalisasi`
--

CREATE TABLE `normalisasi` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `normalisasi`
--

INSERT INTO `normalisasi` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(37, 29, 55, 0.0157884),
(38, 29, 56, 0.0150824),
(39, 29, 57, 0.0286218),
(40, 29, 58, 0.119415),
(41, 29, 59, 0.15257),
(42, 29, 60, 0.217475),
(43, 30, 55, 0.0138149),
(44, 30, 56, 0.00603297),
(45, 30, 57, 0.00954061),
(46, 30, 58, 0.0477659),
(47, 30, 59, 0.0762849),
(48, 30, 60, 0.217475),
(49, 31, 55, 0.0197356),
(50, 31, 56, 0.0754122),
(51, 31, 57, 0.047703),
(52, 31, 58, 0.119415),
(53, 31, 59, 0.228855),
(54, 31, 60, 0.217475);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_alternatif`
--

CREATE TABLE `perbandingan_alternatif` (
  `id` int(11) NOT NULL,
  `alternatif1` int(11) NOT NULL,
  `alternatif2` int(11) NOT NULL,
  `pembanding` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_alternatif`
--

INSERT INTO `perbandingan_alternatif` (`id`, `alternatif1`, `alternatif2`, `pembanding`, `nilai`) VALUES
(68, 30, 31, 59, 0.333333),
(59, 30, 31, 56, 7),
(67, 29, 31, 59, 0.5),
(58, 29, 31, 56, 5),
(57, 29, 30, 56, 0.5),
(66, 29, 30, 59, 2),
(62, 30, 31, 57, 0.2),
(65, 30, 31, 58, 0.5),
(64, 29, 31, 58, 1),
(61, 29, 31, 57, 0.5),
(56, 30, 31, 55, 9),
(60, 29, 30, 57, 3),
(55, 29, 31, 55, 6),
(63, 29, 30, 58, 2),
(54, 29, 30, 55, 0.333333),
(69, 29, 30, 60, 1),
(70, 29, 31, 60, 1),
(71, 30, 31, 60, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_kriteria`
--

CREATE TABLE `perbandingan_kriteria` (
  `id` int(11) NOT NULL,
  `kriteria1` int(11) NOT NULL,
  `kriteria2` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria1`, `kriteria2`, `nilai`) VALUES
(72, 59, 60, 1),
(71, 58, 60, 0.333333),
(70, 58, 59, 0.5),
(69, 57, 60, 0.125),
(68, 57, 59, 0.2),
(67, 57, 58, 0.333333),
(66, 56, 60, 0.142857),
(65, 56, 59, 0.25),
(64, 56, 58, 0.25),
(63, 56, 57, 2),
(62, 55, 60, 0.111111),
(61, 55, 59, 0.142857),
(60, 55, 58, 0.142857),
(59, 55, 57, 0.333333),
(58, 55, 56, 0.25),
(55, 47, 48, 1),
(56, 47, 49, 1),
(57, 48, 49, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_alternatif`
--

CREATE TABLE `pv_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(82, 31, 58, 0.4),
(85, 31, 59, 0.538961),
(76, 31, 56, 0.0754599),
(84, 30, 59, 0.163781),
(79, 31, 57, 0.581264),
(83, 29, 59, 0.297258),
(78, 30, 57, 0.109586),
(81, 30, 58, 0.2),
(77, 29, 57, 0.30915),
(80, 29, 58, 0.4),
(75, 30, 56, 0.590719),
(74, 29, 56, 0.333821),
(73, 31, 55, 0.0598077),
(72, 30, 55, 0.658269),
(71, 29, 55, 0.281923),
(86, 29, 60, 0.333333),
(87, 30, 60, 0.333333),
(88, 31, 60, 0.333333);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_kriteria`
--

CREATE TABLE `pv_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_kriteria`
--

INSERT INTO `pv_kriteria` (`id_kriteria`, `nilai`) VALUES
(60, 0.376677),
(59, 0.285432),
(58, 0.175503),
(57, 0.056443),
(56, 0.0771419),
(55, 0.0288031);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `nilai`) VALUES
(31, 0.389949),
(30, 0.278123),
(29, 0.331928);

-- --------------------------------------------------------

--
-- Struktur dari tabel `topsis`
--

CREATE TABLE `topsis` (
  `id` int(11) NOT NULL,
  `id_alter` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `pangkat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `topsis`
--

INSERT INTO `topsis` (`id`, `id_alter`, `id_kriteria`, `nilai`, `pangkat`) VALUES
(101, 29, 55, 24, 576),
(102, 29, 56, 10000000, 100000000000000),
(103, 29, 57, 36, 1296),
(104, 29, 58, 5, 25),
(105, 29, 59, 3000000, 9000000000000),
(106, 29, 60, 3, 9),
(107, 30, 55, 21, 441),
(108, 30, 56, 4000000, 16000000000000),
(109, 30, 57, 12, 144),
(110, 30, 58, 2, 4),
(111, 30, 59, 1500000, 2250000000000),
(112, 30, 60, 3, 9),
(113, 31, 55, 30, 900),
(114, 31, 56, 50000000, 2.5e15),
(115, 31, 57, 60, 3600),
(116, 31, 58, 5, 25),
(117, 31, 59, 4500000, 20250000000000),
(118, 31, 60, 3, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `topsis_rank`
--

CREATE TABLE `topsis_rank` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `max` float NOT NULL,
  `min` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `topsis_rank`
--

INSERT INTO `topsis_rank` (`id`, `id_alternatif`, `max`, `min`) VALUES
(22, 29, 0.079179, 0.122361),
(23, 30, 0.172822, 0.0696314),
(24, 31, 0.0696314, 0.172822);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ir`
--
ALTER TABLE `ir`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_kriteria`
--
ALTER TABLE `pv_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `topsis`
--
ALTER TABLE `topsis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `topsis_rank`
--
ALTER TABLE `topsis_rank`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `topsis`
--
ALTER TABLE `topsis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `topsis_rank`
--
ALTER TABLE `topsis_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
