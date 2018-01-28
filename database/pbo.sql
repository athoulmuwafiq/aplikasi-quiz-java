-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2018 at 02:50 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `npm` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `score` varchar(10) NOT NULL,
  `token` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `npm`, `nama`, `score`, `token`) VALUES
(18, '16.1.03.02.0095', 'M zainuri', '30', '759120118');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `waktu_mengerjakan` varchar(10) NOT NULL,
  `mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `token`, `waktu_mengerjakan`, `mapel`) VALUES
(1, '759120118', '1', 'produktif');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `npm`, `username`, `password`, `nama`) VALUES
(9, '16.1.03.02.0094', '16.1.03.02.0094', '16.1.03.02.0094', 'athoul muwafiq'),
(16, '16.1.03.02.0092', '16.1.03.02.0092', '16.1.03.02.0092', 'kukuh bela agama'),
(17, '16.1.03.02.0095', '16.1.03.02.0095', '16.1.03.02.0095', 'M zainuri'),
(18, '16.1.03.02.0093', '16.1.03.02.0093', '16.1.03.02.0093', 'moch Anggiansyah');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `soal` varchar(200) NOT NULL,
  `jawaban_benar` varchar(1) NOT NULL,
  `jawaban_a` varchar(40) NOT NULL,
  `jawaban_b` varchar(40) NOT NULL,
  `jawaban_c` varchar(40) NOT NULL,
  `jawaban_d` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `soal`, `jawaban_benar`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`) VALUES
(1, 'Untuk membuat direktori didalam system operasi linux digunakan perintah....', 'd', 'Cat', 'Cd', 'Md', 'Mkdir'),
(2, 'Satuan informasi terkecil yang dikenal dalam komunikasi data adalah....', 'b', 'Segment', 'Bit', 'Byte', 'Label'),
(3, 'Perintah untuk mengetahui jalur/rute suatu domain komputer/website menggunakan pada system linux adalah....', 'b', 'Ping', 'Ifconfig', 'Ipconfig', 'Tracert'),
(4, 'Untuk membuat berbagi pakai koneksi internet (Internet Connection Sharing) minimal komputer yang diperlukan sebanyak....', 'c', '1', '5', '2', '4'),
(5, 'Teks perintah untu k melihat tabel routing pada Windows adalah....', 'd', 'Route -n', 'Route -a', 'Route -d', 'Route -Print'),
(6, 'Berikut ini jenis topologi jaringan komputer, kecuali....', 'd', 'Star', 'Bus', 'Mesh', 'Three'),
(7, 'Salah satu tipe jaringan komputer yang umum dijumpai adalah....', 'c', 'Star', 'WAN', 'Client-server', 'Bus'),
(8, 'Perangkat yang berfungsi sebagai repeater dan sekaligus concentrator dalam sebuah jaringan komputer adalah....', 'a', 'Kabel UTP', 'Router', 'Server', 'Connector'),
(9, 'IP Address yang menunjukkan nomor jaringan (identitas segmen) disebut dengan....', 'd', 'Net ID', 'Host ID', 'IP Public', 'IP Broadcast'),
(10, 'Suatu sistem yang memungkinkan nama suatu host pada jaringan komputer atau internet ditranslasikan menjadi IP address disebut....', 'b', 'Protokol', 'DNS', 'DHCP', 'Gatewaay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
