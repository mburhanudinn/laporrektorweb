-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Sep 2018 pada 07.48
-- Versi Server: 5.6.24
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
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(10) NOT NULL,
  `useradmin` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `keterangan` enum('0','1') NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `useradmin`, `password`, `keterangan`, `level`) VALUES
(211, 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', 'admin'),
(212, 'burhan', '212dca0150c3cbac9bb9bcd101bde0cb', '1', 'admin'),
(213, 'humas', '94da7343e47802652a24444298012b8c', '1', 'admin'),
(215, 'burhanudin', 'e578f83eb9af7bd6378d2289480b3e16', '1', ''),
(216, 'dewi', 'ed1d859c50262701d92e5cbf39652792', '0', ''),
(217, 'ipang', '5cac23b2348f7e6ca49f1a18155f08a0', '0', ''),
(218, 'akademik', '0b5652714faf87700d60a912f753cc55', '1', 'akademik'),
(219, 'kemahasiswaan', 'c8c116beb88fde7a38473945653ab21b', '1', 'kemahasiswaan'),
(220, 'sarpras', '379563d4cc020b27338863c063b9368d', '1', 'sarpras'),
(221, 'lainya', '2b7cce5b77de98f687c5583036ead90d', '1', 'lainya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `id_laporan` int(20) NOT NULL,
  `kolom_laporan` text NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `foto_laporan` varchar(200) NOT NULL,
  `ket_lap` enum('0','1') NOT NULL,
  `status_lap` varchar(200) NOT NULL,
  `aksilanjutan` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `kolom_laporan`, `nama_kategori`, `status`, `user_id`, `foto_laporan`, `ket_lap`, `status_lap`, `aksilanjutan`) VALUES
(201, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'baik akan segera ditindaklanjuti', 1, 'her-reg-3.jpg', '1', '', ''),
(202, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Sarana dan Prasarana', 'Laporan anda telah diteruskan ke bagian keamanan Fakultas Y. dan akan segera ditindak lanjuti.', 2, 'Gambar-Warta.jpg', '1', '', ''),
(203, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'Laporan anda telah diteruskan ke bagian BAPSI. dan akan dilakukan pengecekan jaringan internet.', 3, 'sia.png', '1', '', ''),
(204, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'Laporan anda telahh diteruskan ke keamanan UNDIP dan 2 hari lagi akan diadakan pertemuan dengan pengelola ojek daring.', 4, 'ojol.jpg', '1', '', ''),
(205, 'Nama saya Iren, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'Untuk bisa memperoleh informasi beasiswa silakan bisa menghubungi KESMA BEM Fakultas anda atau melalui web kesma bak UNDIP.', 5, 'beasiswa.jpg', '1', '', ''),
(206, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 6, '6_01092018183935.jpg', '1', '', ''),
(207, 'Perkenalkan, nama saya zizi. saya mahasiswa tingkat akhir Teknik Kimia. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', 'untuk pengumumanya sendiri baru akan dikeluarkan minggu depan, karena baru tadi pagi sedang dirapatkan oleh pimpinan universitas', 7, '7_02092018045030.jpg', '1', '', ''),
(209, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Sarana dan Prasarana', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 8, '8_02092018045635.jpg', '1', '', ''),
(210, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Laporan diterima, dan akan segera diusulkan ke bagian sarana prasarana dan segera dipasang', 9, '9_02092018050103.jpg', '1', '', ''),
(211, 'perkenalkan, saya isna mahasiswa Ilmy Gizi angkatan 2016 ingin menanyakan masalag bidikmisi pengganti, saya harus menghubungi siapa ya? terimakasih.', 'Kemahasiswaan', 'silakan bisa menghubungi bagian KESMA BAK Universitas pada jam kerja', 10, '10_02092018050259.jpg', '1', '', ''),
(212, 'saya kesulitan dalam mendapatkan informasi beasiswa. dimanakah saya bisa mendapatkan informasi yang lengkap?', 'Kemahasiswaan', 'silakan bisa menghubungi kesma BEM Fakultas Kamu', 11, '11_02092018050735.jpg', '1', '', ''),
(213, 'di FPIK untuk jaslab kenapa masih bayar ya ? apa tidak include di UKT ?', 'Lainya', 'segera menghubungi bagian akademik fakultas kamu, seharusnya tidak perlu bayar lagi', 12, '12_02092018050935.jpg', '1', '', ''),
(214, 'Pengumuman penerimaan mahasiswa baru jalur UM tahun 2018 kapan ya?.', 'Akademik', '10 Juli 2018', 13, '13_02092018051225.jpg', '1', '', ''),
(215, 'saya ingin menanyakan pelaksanaan wisuda periode 142 bulan Juli/Agustus kapan ya?', 'Akademik', 'awal November 2018', 14, '14_02092018051613.jpg', '1', '', ''),
(216, 'kapan GKB akan diperbaiki lagi? dan apakah 3 jurusan yang ada di GKB akan di pisah?', 'Lainya', 'GKB akan diperbaiki masih dalam tahap perencanaan ditungu saja. ', 15, '15_02092018051826.jpg', '1', '', ''),
(217, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'langsung menghubungi bagian akademik fakultas, dan meminta surat dari fakultas. selanjutnya dibawa ke akademik Universitas', 16, '16_02092018052353.jpg', '1', '', ''),
(218, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Lainya', 'segera ditindak lanjuti', 17, '17_02092018052811.jpg', '1', '', ''),
(219, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'silakan menghubungi bagian BAPSI saat jam kerja', 18, '18_02092018052916.jpg', '1', '', ''),
(220, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'baik, besok pagi segera akan ditertibkan oleh satpam apabila masih ada ojek online', 19, '19_02092018053121.jpg', '1', '', ''),
(221, 'Nama saya bagus, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'silakan menghubungi Kesma BEM Fakultas kamu untuk mendapatkan informasi lebih lanjut', 20, '20_02092018053157.jpg', '1', '', ''),
(222, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 21, '21_02092018053456.jpg', '1', '', ''),
(223, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Lainya', 'Segera akan ditindaklanjuti oleh petugas yang ada di lapangan. siap laksanakan oleh petugas undip.', 22, '22_02092018053531.jpg', '1', '', ''),
(224, 'Perkenalkan, nama saya jihan, saya mahasiswa tingkat akhir Psikologi. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', 'awal November 2018', 23, '23_02092018053739.jpg', '1', '', ''),
(225, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 24, '24_02092018053810.jpg', '1', '', ''),
(226, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 25, '25_02092018055841.jpg', '1', '', ''),
(227, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Sarana dan Prasarana', 'Laporan anda telah diteruskan ke bagian keamanan Fakultas Y. dan akan segera ditindak lanjuti.', 26, 'Gambar-Warta.jpg', '1', '', ''),
(228, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'Laporan anda telah diteruskan ke bagian BAPSI. dan akan dilakukan pengecekan jaringan internet.', 27, 'sia.png', '1', '', ''),
(229, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'Laporan anda telahh diteruskan ke keamanan UNDIP dan 2 hari lagi akan diadakan pertemuan dengan pengelola ojek daring.', 28, 'ojol.jpg', '1', '', ''),
(230, 'Nama saya Iren, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'Untuk bisa memperoleh informasi beasiswa silakan bisa menghubungi KESMA BEM Fakultas anda atau melalui web kesma bak UNDIP.', 29, 'beasiswa.jpg', '1', '', ''),
(231, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 30, '6_01092018183935.jpg', '1', '', ''),
(232, 'Perkenalkan, nama saya zizi. saya mahasiswa tingkat akhir Teknik Kimia. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', 'untuk pengumumanya sendiri baru akan dikeluarkan minggu depan, karena baru tadi pagi sedang dirapatkan oleh pimpinan universitas', 31, '7_02092018045030.jpg', '1', '', ''),
(233, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Sarana dan Prasarana', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 32, '8_02092018045635.jpg', '1', '', ''),
(234, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Laporan diterima, dan akan segera diusulkan ke bagian sarana prasarana dan segera dipasang', 33, '9_02092018050103.jpg', '1', '', ''),
(235, 'perkenalkan, saya isna mahasiswa Ilmy Gizi angkatan 2016 ingin menanyakan masalag bidikmisi pengganti, saya harus menghubungi siapa ya? terimakasih.', 'Kemahasiswaan', 'silakan bisa menghubungi bagian KESMA BAK Universitas pada jam kerja', 34, '10_02092018050259.jpg', '1', '', ''),
(236, 'saya kesulitan dalam mendapatkan informasi beasiswa. dimanakah saya bisa mendapatkan informasi yang lengkap?', 'Kemahasiswaan', 'silakan bisa menghubungi kesma BEM Fakultas Kamu', 35, '11_02092018050735.jpg', '1', '', ''),
(237, 'di FPIK untuk jaslab kenapa masih bayar ya ? apa tidak include di UKT ?', 'Lainya', 'segera menghubungi bagian akademik fakultas kamu, seharusnya tidak perlu bayar lagi', 36, '12_02092018050935.jpg', '1', '', ''),
(238, 'Pengumuman penerimaan mahasiswa baru jalur UM tahun 2018 kapan ya?.', 'Akademik', '10 Juli 2018', 37, '13_02092018051225.jpg', '1', '', ''),
(239, 'saya ingin menanyakan pelaksanaan wisuda periode 142 bulan Juli/Agustus kapan ya?', 'Akademik', 'awal November 2018', 38, '14_02092018051613.jpg', '1', '', ''),
(240, 'kapan GKB akan diperbaiki lagi? dan apakah 3 jurusan yang ada di GKB akan di pisah?', 'Lainya', 'Menunggu dirapatkanya dengan pimpinan. informasi ini akan di update kembali', 39, '15_02092018051826.jpg', '1', '', ''),
(241, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 40, '16_02092018052353.jpg', '1', '', ''),
(242, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Lainya', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 41, '17_02092018052811.jpg', '1', '', ''),
(243, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 42, '18_02092018052916.jpg', '1', '', ''),
(244, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 43, '19_02092018053121.jpg', '1', '', ''),
(245, 'Nama saya bagus, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'silakan bisa menghubungi kesma BEM Fakultas Kamu', 44, '20_02092018053157.jpg', '1', '', ''),
(246, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 45, '21_02092018053456.jpg', '1', '', ''),
(247, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Lainya', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 46, '22_02092018053531.jpg', '1', '', ''),
(248, 'Perkenalkan, nama saya jihan, saya mahasiswa tingkat akhir Psikologi. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', '10 Juli 2018', 47, '23_02092018053739.jpg', '1', '', ''),
(249, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 48, '24_02092018053810.jpg', '1', '', ''),
(250, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 49, '25_02092018055841.jpg', '1', '', ''),
(251, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'Segera akan ditindaklanjuti oleh petugas yang ada di lapangan', 50, 'her-reg-3.jpg', '1', '', ''),
(252, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Sarana dan Prasarana', 'Laporan anda telah diteruskan ke bagian keamanan Fakultas Y. dan akan segera ditindak lanjuti.', 51, 'Gambar-Warta.jpg', '1', '', ''),
(253, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'Laporan anda telah diteruskan ke bagian BAPSI. dan akan dilakukan pengecekan jaringan internet.', 52, 'sia.png', '1', '', ''),
(254, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'Laporan anda telahh diteruskan ke keamanan UNDIP dan 2 hari lagi akan diadakan pertemuan dengan pengelola ojek daring.', 53, 'ojol.jpg', '1', '', ''),
(255, 'Nama saya Iren, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'Untuk bisa memperoleh informasi beasiswa silakan bisa menghubungi KESMA BEM Fakultas anda atau melalui web kesma bak UNDIP.', 54, 'beasiswa.jpg', '1', '', ''),
(256, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 55, '6_01092018183935.jpg', '1', '', ''),
(257, 'Perkenalkan, nama saya zizi. saya mahasiswa tingkat akhir Teknik Kimia. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', 'untuk pengumumanya sendiri baru akan dikeluarkan minggu depan, karena baru tadi pagi sedang dirapatkan oleh pimpinan universitas', 56, '7_02092018045030.jpg', '1', '', ''),
(259, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Sarana dan Prasarana', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 57, '8_02092018045635.jpg', '1', '', ''),
(260, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Laporan diterima, dan akan segera diusulkan ke bagian sarana prasarana dan segera dipasang', 58, '9_02092018050103.jpg', '1', '', ''),
(261, 'perkenalkan, saya isna mahasiswa Ilmy Gizi angkatan 2016 ingin menanyakan masalag bidikmisi pengganti, saya harus menghubungi siapa ya? terimakasih.', 'Kemahasiswaan', 'silakan bisa menghubungi bagian KESMA BAK Universitas pada jam kerja', 59, '10_02092018050259.jpg', '1', '', ''),
(262, 'saya kesulitan dalam mendapatkan informasi beasiswa. dimanakah saya bisa mendapatkan informasi yang lengkap?', 'Kemahasiswaan', 'silakan bisa menghubungi kesma BEM Fakultas Kamu', 60, '11_02092018050735.jpg', '1', '', ''),
(263, 'di FPIK untuk jaslab kenapa masih bayar ya ? apa tidak include di UKT ?', 'Lainya', 'segera menghubungi bagian akademik fakultas kamu, seharusnya tidak perlu bayar lagi', 61, '12_02092018050935.jpg', '1', '', ''),
(264, 'Pengumuman penerimaan mahasiswa baru jalur UM tahun 2018 kapan ya?.', 'Akademik', '10 Juli 2018', 62, '13_02092018051225.jpg', '1', '', ''),
(265, 'saya ingin menanyakan pelaksanaan wisuda periode 142 bulan Juli/Agustus kapan ya?', 'Akademik', 'awal November 2018', 63, '14_02092018051613.jpg', '1', '', ''),
(266, 'kapan GKB akan diperbaiki lagi? dan apakah 3 jurusan yang ada di GKB akan di pisah?', 'Lainya', 'Menunggu dirapatkanya dengan pimpinan. informasi ini akan di update kembali', 64, '15_02092018051826.jpg', '1', '', ''),
(267, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 65, '16_02092018052353.jpg', '1', '', ''),
(268, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Lainya', 'Segera akan ditindaklanjuti oleh petugas yang ada di lapangan. siap laksanakan oleh petugas undip. oleng kapten ku', 66, '17_02092018052811.jpg', '1', '', ''),
(269, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 67, '18_02092018052916.jpg', '1', '', ''),
(270, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 68, '19_02092018053121.jpg', '1', '', ''),
(271, 'Nama saya bagus, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'silakan bisa menghubungi kesma BEM Fakultas Kamu', 69, '20_02092018053157.jpg', '1', '', ''),
(272, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 70, '21_02092018053456.jpg', '1', '', ''),
(273, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Lainya', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 71, '22_02092018053531.jpg', '1', '', ''),
(274, 'Perkenalkan, nama saya jihan, saya mahasiswa tingkat akhir Psikologi. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', '10 Juli 2018', 72, '23_02092018053739.jpg', '1', '', ''),
(275, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 73, '24_02092018053810.jpg', '1', '', ''),
(276, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 74, '25_02092018055841.jpg', '1', '', ''),
(277, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Sarana dan Prasarana', 'Laporan anda telah diteruskan ke bagian keamanan Fakultas Y. dan akan segera ditindak lanjuti.', 75, 'Gambar-Warta.jpg', '1', '', ''),
(278, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'Laporan anda telah diteruskan ke bagian BAPSI. dan akan dilakukan pengecekan jaringan internet.', 76, 'sia.png', '1', '', ''),
(279, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'Laporan anda telahh diteruskan ke keamanan UNDIP dan 2 hari lagi akan diadakan pertemuan dengan pengelola ojek daring.', 77, 'ojol.jpg', '1', '', ''),
(280, 'Nama saya Iren, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'Untuk bisa memperoleh informasi beasiswa silakan bisa menghubungi KESMA BEM Fakultas anda atau melalui web kesma bak UNDIP.', 78, 'beasiswa.jpg', '1', '', ''),
(281, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 79, '6_01092018183935.jpg', '1', '', ''),
(282, 'Perkenalkan, nama saya zizi. saya mahasiswa tingkat akhir Teknik Kimia. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', 'untuk pengumumanya sendiri baru akan dikeluarkan minggu depan, karena baru tadi pagi sedang dirapatkan oleh pimpinan universitas', 80, '7_02092018045030.jpg', '1', '', ''),
(283, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Sarana dan Prasarana', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 81, '8_02092018045635.jpg', '1', '', ''),
(284, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Laporan diterima, dan akan segera diusulkan ke bagian sarana prasarana dan segera dipasang', 82, '9_02092018050103.jpg', '1', '', ''),
(285, 'perkenalkan, saya isna mahasiswa Ilmy Gizi angkatan 2016 ingin menanyakan masalag bidikmisi pengganti, saya harus menghubungi siapa ya? terimakasih.', 'Kemahasiswaan', 'silakan bisa menghubungi bagian KESMA BAK Universitas pada jam kerja', 83, '10_02092018050259.jpg', '1', '', ''),
(286, 'saya kesulitan dalam mendapatkan informasi beasiswa. dimanakah saya bisa mendapatkan informasi yang lengkap?', 'Kemahasiswaan', 'silakan bisa menghubungi kesma BEM Fakultas Kamu', 84, '11_02092018050735.jpg', '1', '', ''),
(287, 'di FPIK untuk jaslab kenapa masih bayar ya ? apa tidak include di UKT ?', 'Lainya', 'segera menghubungi bagian akademik fakultas kamu, seharusnya tidak perlu bayar lagi', 85, '12_02092018050935.jpg', '1', '', ''),
(288, 'Pengumuman penerimaan mahasiswa baru jalur UM tahun 2018 kapan ya?.', 'Akademik', '10 Juli 2018', 86, '13_02092018051225.jpg', '1', '', ''),
(289, 'saya ingin menanyakan pelaksanaan wisuda periode 142 bulan Juli/Agustus kapan ya?', 'Akademik', '10 Juli 2018', 87, '14_02092018051613.jpg', '1', '', ''),
(290, 'kapan GKB akan diperbaiki lagi? dan apakah 3 jurusan yang ada di GKB akan di pisah?', 'Lainya', 'Menunggu dirapatkanya dengan pimpinan. informasi ini akan di update kembali', 88, '15_02092018051826.jpg', '1', '', ''),
(291, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 89, '16_02092018052353.jpg', '1', '', ''),
(292, 'saya ingin melaporkan sebuah kehilangan barang berharga di ruang kelas Fakultas Y. mohon segera ditindak lanjuti', 'Lainya', 'Segera akan ditindaklanjuti oleh petugas yang ada di lapangan', 90, '17_02092018052811.jpg', '1', '', ''),
(293, 'Saya ingin melaporkan, kesulitan dalam mengakses ke SIA. selalu gagal login. terimakasih', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 91, '18_02092018052916.jpg', '1', '', ''),
(294, 'Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'Lainya', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 92, '19_02092018053121.jpg', '1', '', ''),
(295, 'Nama saya bagus, mahasiswa baru angkatan 2017. ingin memberitahukan bahwa saya kesulitan dalam menemukan informasi beasiswa.', 'Kemahasiswaan', 'silakan bisa menghubungi kesma BEM Fakultas Kamu', 93, '20_02092018053157.jpg', '1', '', ''),
(296, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 94, '21_02092018053456.jpg', '1', '', ''),
(297, 'saya ingin melaporkan, di parkiran Teknik Geologi sering sekali untung mangkal ojek online, mohon segera ditertibkan karena sangat mengganggu pengguna jalan dan mahasiswa', 'Lainya', 'Baik, akan segera di tindaklanjuti oleh satpam undip. laporan selesai.', 95, '22_02092018053531.jpg', '1', '', ''),
(298, 'Perkenalkan, nama saya jihan, saya mahasiswa tingkat akhir Psikologi. ingin menanyakan perihal batas kelulusan supaya tidak perlu membayar UKT semester selanjutnya, karena sampai saat ini belum ada pengumuman. terimakasih', 'Akademik', '10 Juli 2018', 96, '23_02092018053739.jpg', '1', '', ''),
(299, 'selamat pagi, saya ingin melaporkan bahwa di dekat Fakultas Kedokteran kalau malam sangat minim penerangan, terutama di dekat parkir. mohon segera diupayakan pemasangan penerangan. Terimakasih.', 'Sarana dan Prasarana', 'Baik, akan dalam 2 minggu kedepan sudah diintruksikan akan dipasang lampu penerangan', 97, '24_02092018053810.jpg', '1', '', ''),
(300, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'Akademik', 'silakan bisa menghubungi Biro Sistem Informasi pada jam kerja agar password bisa di atur ulang kembali. terimakasih.', 98, '25_02092018055841.jpg', '1', '', ''),
(301, 'Pengumuman penerimaan mahasiswa baru jalur UM tahun 2018 kapan ya?.', 'Akademik', '10 Juli 2018', 99, '13_02092018051225.jpg', '1', '', ''),
(307, 'Pengumuman penerimaan mahasiswa baru jalur UM tahun 2018 kapan ya?.', 'Akademik', '10 Juli 2018', 100, '102_05092018030450.jpg', '1', '', ''),
(309, 'saya ingin melapor', 'kemahasiswaan', 'acc', 1, 'burhan2.png', '1', '', ''),
(310, 'saya ingin melapor......', 'akademik', 'OK', 103, 'fc-bayern-munich-minimal-logo-2K-wallpaper.jpg', '1', '', ''),
(311, 'say ingin lapor', 'Akademik', 'baik', 104, '104_23092018051042.jpg', '1', '', ''),
(312, 'Kalau ingin mengajukan beasiswa, saya harus kemana ya?', 'kemahasiswaan', 'baik', 105, 'ilustrasi-beasiswa_20151102_213042.jpg', '1', '', 'sudah'),
(313, 'say may lapor', 'Kemahasiswaan', 'ok', 106, '106_25092018003414.jpg', '1', '', ''),
(315, 'saya ingin melaporkan sebuah kejadian..', 'Akademik', 'baik..', 107, '107_25092018053738.jpg', '1', '', ''),
(323, 'Saya ingin melaporkan sebuah kasus dimana saya sudah membayar UKT untuk semester 2 tahun pelajaran 2017/2018 tetapi saya tidak bisa melakukan her registrasi. mohon ditindak lanjuti', 'akademik', '', 1, 'UNDIP 6.jpg', '0', 'new', 'sudah'),
(324, 'saya kesulitan dalam mendapatkan informasi beasiswa. dimanakah saya bisa mendapatkan informasi yang lengkap?', 'kemahasiswaan', '', 1, 'yuk-ikut-beasiswa-ke-korea-selatan-ini-Rbs8a7u8vY.jpg', '0', 'new', 'belum'),
(325, 'Saya ingin melaporkan bahwa sepanjang jalan menuju rusunawa undip sangat munim penerangan. mohon ditindak lanjuti. terima kasih.', 'sarana dan prasarana', '', 1, 'Pengalaman Bertemu Banyak Pocong Bergelantungan di Halte Vokasi UI Anak UI Pasti Tahu Tempat dan Kisah Ini!.jpg', '0', 'new', 'belum'),
(326, ' 	Perkenalkan, saya mahasiswa Ilmu Pemerintahan, ingin melaporkan bahwa banyak ojek daring yang mangkal di sekitar kampus, dan membuat kemacetan', 'lainya', '', 1, 'Transportasi-Online-di-Undip-1.jpg', '0', 'new', 'belum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `fakultas` varchar(20) NOT NULL,
  `angkatan` varchar(10) NOT NULL,
  `keterangan` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama`, `username`, `password`, `nim`, `jurusan`, `fakultas`, `angkatan`, `keterangan`) VALUES
(1, 'Muhammad Burhanudin', 'burhan', 'fe9e3203ad8d1387bf8c8d1d889b902b', '21120114120009', 'Teknik Komputer', 'Teknik', '2014', '1'),
(2, 'Harliyan T Mardian', 'aan', '4607ed4bd8140e9664875f907f48ae14', '21120114120020', 'Teknik Komputer', 'Teknik', '2014', '1'),
(3, 'Ardhian Adhi Nugroho', 'ardhian', '066bcfc561b019318c9805b68c922ab6', '21120114120002', 'Teknik Komputer', 'Teknik', '2014', '1'),
(4, 'Tegar Widya P', 'tegar', '1d31802d64bae29d88923d795fc73734', '21120114120046', 'Teknik Komputer', 'Teknik', '2017', '1'),
(5, 'Zaki Ainun Najich', 'Zaki', '9784ea3da268563469df99b2e6593564', '21120114120047', 'Teknik Kimia', 'Teknik', '2016', '1'),
(6, 'Ajik Ulinuha', 'ajik', '4d95e8c41fb93b8b8de32366b7c57556', '21120114120037', 'Teknik Kimia', 'Teknik', '2014', '1'),
(7, 'Fawzia Puti P', 'zizi', '2a1c895a72d8f899852bcecae26e52dc', '21030114120008', 'Teknik Kimia', 'Teknik', '2014', '1'),
(8, 'Reza Afrizona', 'reza', 'bb98b1d0b523d5e783f931550d7702b6', '21090114130089', 'Teknik Geologi', 'Teknik ', '2014', '1'),
(9, 'Aulia Niken', 'aul', '950a5e3732fd173428154f84954a82b7', '21010114120098', 'Keperawatan', 'Kedokteran', '2015', '1'),
(10, 'Isnawati', 'isna', '3d1c3481dd9ce3d7e31f3bee188cee35', '21050114130096', 'Ilmu Gizi', 'Kedokteran', '2016', '1'),
(11, 'Bilqis Nabilla', 'bilqis', 'de7e54281033030ea78a0537ba1826e5', '21030116120069', 'FKM', 'FKM', '2016', '1'),
(12, 'Burhan Thohir', 'thohir', '7aeaeb7f39d0610701ca7ab4347390df', '21080115130089', 'Oceanografi', 'FPIK', '2015', '1'),
(13, 'Rindu Afrizki', 'rindu', 'c0bda2037f311cc2c57e138b1ac39fe9', '21060117130098', 'Pertanian', 'FPP', '2017', '1'),
(14, 'Safina Andita', 'safina', '88142a381ccf9a4067f42a9056f12237', '110801413306', 'FKM', 'FKM', '2014', '1'),
(15, 'Rafli Anditya M', 'rafli', '054a3c3033e8f672358b1e159aecc7a7', '21080116120093', 'Teknik Lingkungan', 'Teknik', '2016', '1'),
(16, 'Rizka Azhari Y F', 'rizka', 'aef2c231d5e776c0e0656eaf68767848', '21090117120098', 'Teknik Perkapalan', 'Teknik', '2017', '1'),
(17, 'Muhammad Ngadimin', 'ngadimin', '5449ccea16d1cc73990727cd835e45b5', '21090117120078', 'Ilmu Kelautan', 'FPIK', '2017', '1'),
(18, 'Bejo Saprono', 'bejo', 'd4c01b1d3471a1b41ad485918d2298cb', '210130114120055', 'Hukum', 'Hukum', '2014', '1'),
(19, 'Rendi Juliansyah', 'rendy', '88ad32a14f7f7964d03dad411ffcc59b', '2104011300106', 'Teknik Informatika', 'FSM', '2013', '1'),
(20, 'Bagus Huda', 'bagus', '17b38fc02fd7e92f3edeb6318e3066d8', '21090115120087', 'Fisika', 'FSM', '2015', '1'),
(21, 'Agustiawan', 'agustiawan', 'fd6479235869515a434e9e440ebb2c12', '21120116120056', 'Kimia', 'FSM', '2016', '1'),
(22, 'Andi Handrian R', 'andi', 'ce0e5bf55e4f71749eade7a8b95c4e46', '21090116120044', 'Fisika', 'FSM', '2016', '1'),
(23, 'M Jiihan Muqorrobin', 'jihan', '1e936f291742d21affc292460409e215', '2103117120045', 'Psikologi', 'Psikologi', '2017', '1'),
(24, 'Silvie Elmia S', 'silvi', '42513881c5745ee8fa73969ce315ce6c', '21030115120033', 'Teknologi Pangan', 'FPP', '2015', '1'),
(25, 'Azhar Afif', 'azhar', '838e24a98647b16ed33f20774b2e3502', '21120114120009', 'Teknik industri', 'Teknik', '2014', '1'),
(26, 'Irfanuddin Faishol', 'faishol', '59440f36b4442031145404b783c0b89b', '21120114120020', 'Teknik Sipil', 'Teknik', '2014', '1'),
(27, 'Ardhi Subianto', 'subi', 'c981184b4e249c06847ccafcb17d5db2', '21120114120002', 'Teknik PWK', 'Teknik', '2014', '1'),
(28, 'badar Ilham A', 'badar', 'bf63708623507d1ed61b7bebcbc81295', '21120114120046', 'Kimia', 'FSM', '2014', '1'),
(29, 'Fariz Ramadhan', 'fariz', 'a9fb784316e285458d773ac56b731bdb', '21120114120047', 'Matematika', 'FSM', '2014', '1'),
(30, 'Arisiani Melatika', 'tika', 'c27cd12c8034c739304c22a3a3748e39', '21120114120037', 'Teknik Kimia', 'Teknik', '2014', '1'),
(31, 'Aribela Samudera', 'ari', 'fc292bd7df071858c2d0f955545673c1', '21030114120008', 'Teknik Kimia', 'Teknik', '2014', '1'),
(32, 'kadek Nugraha', 'kadek', '9bd0a034baadfaddd3a89af39bc4320b', '21090114130089', 'Teknik Geologi', 'Teknik ', '2014', '1'),
(33, 'Aria Pradana W', 'aria', 'aafa7ed7cc46d6b04fc6e2b20baab657', '21010114120098', 'Keperawatan', 'Kedokteran', '2015', '1'),
(34, 'Mulia Fajri', 'muli', '5b2d08132a461c3727185fe36f434a00', '21050114130096', 'Ilmu Gizi', 'Kedokteran', '2016', '1'),
(35, 'Dina labiba', 'dina', 'e274648aed611371cf5c30a30bbe1d65', '21030116120069', 'FKM', 'FKM', '2016', '1'),
(36, 'Almira Zahira N', 'ira', '3c67080a1a09b022fb9d94e57a75ddad', '21080115130089', 'Oceanografi', 'FPIK', '2015', '1'),
(37, 'Andana Anugerah', 'andana', '93aa8df8f18bd60bf18a60ac6202b511', '21060117130098', 'Pertanian', 'FPP', '2017', '1'),
(38, 'Sulaiman Narindra P', 'sule', '6a3c53f0398050347d8ca72b8b152546', '110801413306', 'FKM', 'FKM', '2014', '1'),
(39, 'Akbar Wahyu P', 'akbar', '4f033a0a2bf2fe0b68800a3079545cd1', '21080116120093', 'Teknik Lingkungan', 'Teknik', '2016', '1'),
(40, 'Helen Yulianty', 'helen', '7a2eb41a38a8f4e39c1586649da21e5f', '21090117120098', 'Teknik Perkapalan', 'Teknik', '2017', '1'),
(41, 'Fifi marini S', 'fifi', '2430242dc52b9fec75095457ac808899', '21090117120078', 'Ilmu Kelautan', 'FPIK', '2017', '1'),
(42, 'Rosian Oktaviani', 'vivi', 'c3bb6f719742fd1e5768d6d1361cfb49', '210130114120055', 'Hukum', 'Hukum', '2014', '1'),
(43, 'Sakanthi Hajar', 'sasa', 'f45731e3d39a1b2330bbf93e9b3de59e', '2104011300106', 'Teknik Informatika', 'FSM', '2013', '1'),
(44, 'Hira Kemala', 'hira', 'ca9660110002457d08db8a0e3c37e8f4', '21090115120087', 'Fisika', 'FSM', '2015', '1'),
(45, 'Lilis Fitriani', 'lilis', 'b4c7848b06d83bbca966b1fd05cfabf8', '21120116120056', 'Kimia', 'FSM', '2016', '1'),
(46, 'Nafis Setiawan', 'nafis', 'f31f33f8620a0581766cea54f89c98d9', '21090116120044', 'Fisika', 'FSM', '2016', '1'),
(47, 'Ryan Adenarya', 'ryan', '10c7ccc7a4f0aff03c915c485565b9da', '2103117120045', 'Psikologi', 'Psikologi', '2017', '1'),
(48, 'Fikrah EL Fizi', 'fikrah', '42513881c5745ee8fa73969ce315ce6c', '21030115120033', 'Teknologi Pangan', 'FPP', '2015', '1'),
(49, 'Ganda Ihza', 'ganda', '145353cd147486f9635429afdf8b922c', '2103117120045', 'Psikologi', 'Psikologi', '2017', '1'),
(50, 'Angga Prasetyo', 'angga', '8479c86c7afcb56631104f5ce5d6de62', '21030115120033', 'Teknologi Pangan', 'FPP', '2015', '1'),
(51, 'Inge Fifiani', 'inge', '0fcfe249cf1f2c42bf15a36a19301ef8', '21120114120009', 'Teknik Komputer', 'Teknik', '2014', '1'),
(52, 'Galang Swandaru', 'galang', '7a8ba4b565a96de88dbf44aa37e6f77e', '21120114120020', 'Teknik Komputer', 'Teknik', '2014', '1'),
(53, 'Gilang Zakaria', 'gilang', 'c37fddfb7b3f538674c6e9a77e7bf486', '21120114120002', 'Teknik Komputer', 'Teknik', '2014', '1'),
(54, 'Faiz Muna', 'muna', '52072ba2654f8f4502dd339f382798f5', '21120114120046', 'Teknik Komputer', 'Teknik', '2017', '1'),
(55, 'Faiz Hidayat', 'hidayat', '37f3c4ac0ecd4a50c7f7ea1bd2b017c7', '21120114120047', 'Teknik Kimia', 'Teknik', '2016', '1'),
(56, 'Lailatul M', 'ila', 'aafe26449a364e5d6b5db7dc565a9b6a', '21120114120037', 'Teknik Kimia', 'Teknik', '2014', '1'),
(57, 'Eta Makina', 'eta', 'eta', '21030114120008', 'Teknik Kimia', 'Teknik', '2014', '1'),
(58, 'irma Alawiyah', 'irma', '76af47488ac4ecce7c29005f15cf7d0e', '21090114130089', 'Teknik Geologi', 'Teknik ', '2014', '1'),
(59, 'Yogatama', 'yoga', '807659cd883fc0a63f6ce615893b3558', '21010114120098', 'Keperawatan', 'Kedokteran', '2015', '1'),
(60, 'M Nur Ardiansyah', 'ian', 'a71a448d3d8474653e831749b8e71fcc', '21050114130096', 'Ilmu Gizi', 'Kedokteran', '2016', '1'),
(61, 'Yuda Aji S', 'yudha', '2b9633304de305ed5c03fe19b7a06afe', '21030116120069', 'FKM', 'FKM', '2016', '1'),
(62, 'Nurul Hidayat', 'nurul', '6968a2c57c3a4fee8fadc79a80355e4d', '21080115130089', 'Oceanografi', 'FPIK', '2015', '1'),
(63, 'Leni Imana', 'Leni', '58cab663b27ceb8a71b6817b6e282876', '21060117130098', 'Pertanian', 'FPP', '2017', '1'),
(64, 'Lina Oktaviana', 'Lina', 'f6f4deb7dad1c2e5e0b4d6569dc3c1c5', '110801413306', 'FKM', 'FKM', '2014', '1'),
(65, 'masrukhi', 'rukhi', '2ac0a8111592631efe99f77149759daa', '21080116120093', 'Teknik Lingkungan', 'Teknik', '2016', '1'),
(66, 'Luthfi Maulana', 'luthfi', 'd5cd72b7bcbf56bc503904f1ac7d9bc2', '21090117120098', 'Teknik Perkapalan', 'Teknik', '2017', '1'),
(67, 'Edi rahono', 'edi', '8457dff5491b024de6b03e30b609f7e8', '21090117120078', 'Ilmu Kelautan', 'FPIK', '2017', '1'),
(68, 'faturohman', 'fatur', 'bd32cbc1fb0f3af8ecfb58b8ad1929a8', '210130114120055', 'Hukum', 'Hukum', '2014', '1'),
(69, 'M Andri Riskianto', 'anto', '2c946c0178ec72aaefa54f786540d301', '2104011300106', 'Teknik Informatika', 'FSM', '2013', '1'),
(70, 'Diana Risqi Tiara', 'diana', '3a23bb515e06d0e944ff916e79a7775c', '21090115120087', 'Fisika', 'FSM', '2015', '1'),
(71, 'Ayu Puspita K H', 'ayu', '29c65f781a1068a41f735e1b092546de', '21120116120056', 'Kimia', 'FSM', '2016', '1'),
(72, 'Artika Nanda M', 'nanda', '859a37720c27b9f70e11b79bab9318fe', '21090116120044', 'Fisika', 'FSM', '2016', '1'),
(73, 'M Furqon Hakim', 'furqon', '4dd10d2cadaf7481add48cac12c40df7', '2103117120045', 'Psikologi', 'Psikologi', '2017', '1'),
(74, 'Abdul Aziz', 'aziz', 'b85dc795ba17cb243ab156f8c52124e1', '21030115120033', 'Teknologi Pangan', 'FPP', '2015', '1'),
(75, 'Ikhsan Maulana', 'ikhsan', '4e9194a3bb65ab53e41247480905c391', '21120114120009', 'Teknik industri', 'Teknik', '2014', '1'),
(76, 'Rifkhi Ilham', 'rifkhi', 'b068d1ad978f0517cecdda8f3ce14193', '21120114120020', 'Teknik Sipil', 'Teknik', '2014', '1'),
(77, 'Nurdiansyah Waruwu', 'nurdiansyah', '752bd55aac59f4372824f68716a6be90', '21120114120002', 'Teknik PWK', 'Teknik', '2014', '1'),
(78, 'Fitriani Nurahmah', 'fitriani', 'd62bb1ea1604301192cff3a78fd1103b', '21120114120046', 'Kimia', 'FSM', '2014', '1'),
(79, 'Ana Ulfiana', 'ana', '276b6c4692e78d4799c12ada515bc3e4', '21120114120047', 'Matematika', 'FSM', '2014', '1'),
(80, 'Muslimin', 'muslimin', '50386cd48dda129939624b90a302064f', '21120114120037', 'Teknik Kimia', 'Teknik', '2014', '1'),
(81, 'Yolandha Verra', 'yolandha', '9d764ec64498fcf604e3caea296817aa', '21030114120008', 'Teknik Kimia', 'Teknik', '2014', '1'),
(82, 'Bayu Pratama N', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', '21090114130089', 'Teknik Geologi', 'Teknik ', '2014', '1'),
(83, 'jefredi S S', 'jefredi', '2b536d8b5626a3e15fcc29c43595957c', '21010114120098', 'Keperawatan', 'Kedokteran', '2015', '1'),
(84, 'Daniar Arof Adiba', 'daniar', '0a3a2bd1be023c1fcb21866bc08dc6ea', '21050114130096', 'Ilmu Gizi', 'Kedokteran', '2016', '1'),
(85, 'Laili M', 'laili', '9093efe4f0dbf6dec1e428c8c158f6af', '21030116120069', 'FKM', 'FKM', '2016', '1'),
(86, 'Zahrotun M', 'zahrotun', '0d4ce97eaf66b2fd80c97d2ec7b3fe43', '21080115130089', 'Oceanografi', 'FPIK', '2015', '1'),
(87, 'Ahmad Nova', 'nova', '1a9c91f6e0310d4f55b7ee7f22c2c9df', '21060117130098', 'Pertanian', 'FPP', '2017', '1'),
(88, 'M Okki Irfa', 'okki', '8d3dfed5277db6589fed0b708600dec3', '110801413306', 'FKM', 'FKM', '2014', '1'),
(89, 'Abdul Hamid', 'hamid', '37fff357c237d67f2365eab6706bc898', '21080116120093', 'Teknik Lingkungan', 'Teknik', '2016', '1'),
(90, 'Anansya Putri', 'sasya', 'd35b8718cd4fd3cb45b0fb21d311a443', '21090117120098', 'Teknik Perkapalan', 'Teknik', '2017', '1'),
(91, 'Hasbi Fikri', 'hasbi', '70f8186201b1660ebf05ccb04e1ddb95', '21090117120078', 'Ilmu Kelautan', 'FPIK', '2017', '1'),
(92, 'Marezta O', 'marezta', '098a435ca377cd8054928daf65f18af1', '210130114120055', 'Hukum', 'Hukum', '2014', '1'),
(93, 'Fajar Rian', 'fajar', '24bc50d85ad8fa9cda686145cf1f8aca', '2104011300106', 'Teknik Informatika', 'FSM', '2013', '1'),
(94, 'Dhika Bayangkara', 'dhika', '0d2fab94da6704708f8eabf28dc68719', '21090115120087', 'Fisika', 'FSM', '2015', '1'),
(95, 'Anton Setiawan', 'anton', '784742a66a3a0c271feced5b149ff8db', '21120116120056', 'Kimia', 'FSM', '2016', '1'),
(96, 'Haris Asrofi', 'haris', 'c0ba88b8bca79ca3b50b96abdf431766', '21090116120044', 'Fisika', 'FSM', '2016', '1'),
(97, 'Zila Wati', 'zila', '2d46b90699fba363b030475bb0780392', '2103117120045', 'Psikologi', 'Psikologi', '2017', '1'),
(98, 'Dwi Purwati', 'dwi', '7aa2602c588c05a93baf10128861aeb9', '21030115120033', 'Teknologi Pangan', 'FPP', '2015', '1'),
(99, 'Sabana Khuliq', 'sabana', 'ebdb1dfabe263b96bc4e71a62ea7b1d7', '2103117120045', 'Psikologi', 'Psikologi', '2017', '1'),
(100, 'Tommi Dedi', 'dedi', 'c5897fbcc14ddcf30dca31b2735c3d7e', '2103117120045', 'Psikologi', 'Psikologi', '2017', '1'),
(101, 'Gilang Zakaria', 'guiza', '6c063091a42670d9aa403ddc201f5d70', '21120113120008', 'Peternakan', 'FPP', '2013', '1'),
(102, 'Akbar Yazid S', 'yazid', 'ad097d2585bc7c62fd1ed53083637aaa', '21120114120013', 'Teknik Kimia', 'Teknik', '2014', '1'),
(103, 'Muhammad Ibnu Hafiz', 'hafiz', '839a54bf20626e4942bc8f11873f0654', '21030113120009', 'Teknik Kimia', 'Teknik', '2013', '1'),
(104, 'Burhanudin', 'burhann', 'fe9e3203ad8d1387bf8c8d1d889b902b', '21129113120009', 'Teknik Komputer', 'Teknik', '2013', '1'),
(105, 'Ristiani', 'risti', 'f4e4ed60089aa5d06938cb7ace645b4b', '21030115130098', 'Teknik Kimia', 'Teknik', '2015', '1'),
(106, 'Fatahilah', 'fata', '5e2da5426f23df20a054c733d59a85bb', '21050115120008', 'Teknik Mesin', 'Teknik', '2015', '1'),
(107, 'Fahrizal Rizki', 'risqi', '1cef7ac56702c7e78e683adf09170eec', '21120114130065', 'Teknik Komputer', 'Teknik', '2014', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=328;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
