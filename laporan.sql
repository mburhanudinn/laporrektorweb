-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 05:50 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `id_laporan` int(20) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `foto_laporan` varchar(50) NOT NULL,
  `status` varchar(200) NOT NULL,
  `kolom_laporan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=767 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `user_id`, `id_kategori`, `foto_laporan`, `status`, `kolom_laporan`) VALUES
(201, '1', '212', 'kakakaka', 'belum ditindak lanjuti', 'saya kesulitan dalam membayar UKT karena orangtua sekarang keadanya sudah pensiun, dan ibu sedang sakit-sakitan. sekiranya tahapan apa saja yang harus saya lakukan agar UKT saya disesuaikan\r\n'),
(202, '2', '212', 'ksksk', 'sudah dalam penangananan', 'Saya mau melaporkan tindakan kurang menyenangkan yang terjadi disekitar kampus Undip Semarang, terutama di area dekat dengan Student Center'),
(203, '3', '213', 'image.png', 'Belum ditindaklanjuti', 'ingin melaporkan bahwa kursi di ruang R201 rusak parah, mohon ditindak lanjuti segera. karena sangat meresahkan\r\n\r\n'),
(204, '2', '212', 'kk', 'Belum ditindaklanjuti', 'Saya ingin melaporkan bahwa keadaan parkiran GKB FT belum baik keamananya. beberapa minggu lalu ada yang kehilangan helm. mohon segera penangananya'),
(205, '4', '213', '', '', 'dd'),
(206, 'mkmk', '212', 'kn', 'kn', 'knk'),
(207, '6', '212', 'nk', 'nk', 'nvcxvxcvxcvdvxcv'),
(208, '8', '211', 'jj', 'jj', 'jjjcnvjnxcjvncjxncjxv'),
(209, '9', '213', 'knnjnjNJNjnjkn', 'knj', 'nk'),
(210, '9', '213', 'ksnjn', 'jnj', 'nj'),
(211, '11', '211', ';l', ',', ';,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=767;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
