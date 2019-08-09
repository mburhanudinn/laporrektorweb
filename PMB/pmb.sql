-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2017 at 07:25 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmb`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `NO` varchar(20) NOT NULL,
  `ID_DESA` varchar(20) NOT NULL,
  `DES` varchar(20) NOT NULL,
  `ID_KECAMATAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`NO`, `ID_DESA`, `DES`, `ID_KECAMATAN`) VALUES
('1', 'DS01', 'Klesem', 'KC01'),
('2', 'DS02', 'Bodas', 'KC01'),
('3', 'DS03', 'Gembong', 'KC01'),
('4', 'DS04', 'Sukoharjo', 'KC01'),
('5', 'DS05', 'Garung Wiyoro', 'KC01'),
('6', 'DS06', 'Bubak', 'KC01'),
('7', 'DS07', 'Bojong Koneng', 'KC01'),
('8', 'DS08', 'Luragung', 'KC01'),
('9', 'DS09', 'Kandangserang', 'KC01'),
('10', 'DS10', 'Wangkelang', 'KC01'),
('100', 'DS100', 'Kalijoyo', 'KC08'),
('101', 'DS101', 'Wonorejo', 'KC08'),
('102', 'DS102', 'Pekiringan Alit', 'KC08'),
('103', 'DS103', 'Kutorojo', 'KC08'),
('104', 'DS104', 'Kajen', 'KC08'),
('105', 'DS105', 'Nyamok', 'KC08'),
('106', 'DS106', 'Tanjung Kulon', 'KC08'),
('107', 'DS107', 'Tanjung Sari', 'KC08'),
('108', 'DS108', 'Gejig', 'KC08'),
('109', 'DS109', 'Kebon Agung', 'KC08'),
('11', 'DS11', 'Lambur', 'KC01'),
('110', 'DS110', 'Sangkanjoyo', 'KC08'),
('111', 'DS111', 'Salit', 'KC08'),
('112', 'DS112', 'Sambiroto', 'KC08'),
('113', 'DS113', 'Rowolaku', 'KC08'),
('114', 'DS114', 'Windurejo', 'KC09'),
('115', 'DS115', 'Ujung Negoro', 'KC09'),
('116', 'DS116', 'Brondang', 'KC09'),
('117', 'DS117', 'Podosari', 'KC09'),
('118', 'DS118', 'Kwasen', 'KC09'),
('119', 'DS119', 'Langensari', 'KC09'),
('12', 'DS12', 'Tajur', 'KC01'),
('120', 'DS120', 'Jagung', 'KC09'),
('121', 'DS121', 'Watu Gajah', 'KC09'),
('122', 'DS122', 'Karangrejo', 'KC09'),
('123', 'DS123', 'karyomukti', 'KC09'),
('124', 'DS124', 'Kesesi', 'KC09'),
('125', 'DS125', 'Srinahan', 'KC09'),
('126', 'DS126', 'Kaibahan', 'KC09'),
('127', 'DS127', 'Watu Payung', 'KC09'),
('128', 'DS128', 'Krandon', 'KC09'),
('129', 'DS129', 'Ponolawen', 'KC09'),
('13', 'DS13', 'Trajumas', 'KC01'),
('130', 'DS130', 'Kalimade', 'KC09'),
('131', 'DS131', 'Sidomulyo', 'KC09'),
('132', 'DS132', 'Sukorejo', 'KC09'),
('133', 'DS133', 'Sidosari', 'KC09'),
('134', 'DS134', 'Mulyorejo', 'KC09'),
('135', 'DS135', 'Pantirejo', 'KC09'),
('136', 'DS136', 'Kwigaran', 'KC09'),
('137', 'DS137', 'Ketanon Ageng', 'KC10'),
('138', 'DS138', 'Mrican', 'KC10'),
('139', 'DS139', 'Bulaksari', 'KC10'),
('14', 'DS14', 'Karang Gondang', 'KC01'),
('140', 'DS140', 'Sumub Lor', 'KC10'),
('141', 'DS141', 'Sumub Kidul', 'KC10'),
('142', 'DS142', 'Kalijambe', 'KC10'),
('143', 'DS143', 'Purworejo', 'KC10'),
('144', 'DS144', 'Kedungjaran', 'KC10'),
('145', 'DS145', 'Klunjukan', 'KC10'),
('146', 'DS146', 'Gebang Kerep', 'KC10'),
('147', 'DS147', 'Purwodadi', 'KC10'),
('148', 'DS148', 'Bulak Pelem', 'KC10'),
('149', 'DS149', 'Tegal Suruh', 'KC10'),
('15', 'DS15', 'Werdi', 'KC02'),
('150', 'DS150', 'Krasak Ageng', 'KC10'),
('151', 'DS151', 'Sijeruk', 'KC10'),
('152', 'DS152', 'Sragi', 'KC10'),
('153', 'DS153', 'Tegalontar', 'KC10'),
('154', 'DS154', 'Mejasem', 'KC11'),
('155', 'DS155', 'Wonosari', 'KC11'),
('156', 'DS156', 'Tengeng Wetan', 'KC11'),
('157', 'DS157', 'Tunjungsari', 'KC11'),
('158', 'DS158', 'Blimbing Wuluh', 'KC11'),
('159', 'DS159', 'Pait', 'KC11'),
('16', 'DS16', 'Winduaji', 'KC02'),
('160', 'DS160', 'Tengeng Kulon', 'KC11'),
('161', 'DS161', 'Rembun', 'KC11'),
('162', 'DS162', 'Yosorejo', 'KC11'),
('163', 'DS163', 'Siwalan', 'KC11'),
('164', 'DS164', 'Boyo Teluk', 'KC11'),
('165', 'DS165', 'Depok', 'KC11'),
('166', 'DS166', 'Blacanan', 'KC11'),
('167', 'DS167', 'Bukur', 'KC12'),
('168', 'DS168', 'SM Jomblang Bogo', 'KC12'),
('169', 'DS169', 'Panti Anom', 'KC12'),
('17', 'DS17', 'Krandegan', 'KC02'),
('170', 'DS170', 'Randumukti Waren', 'KC12'),
('171', 'DS171', 'Legok Lele', 'KC12'),
('172', 'DS172', 'Bojong Wetan', 'KC12'),
('173', 'DS173', 'Wangan Dowo', 'KC12'),
('174', 'DS174', 'Duwet', 'KC12'),
('175', 'DS175', 'Ketitang Kidul', 'KC12'),
('176', 'DS176', 'Menjangan', 'KC12'),
('177', 'DS177', 'Ketitang Lor', 'KC12'),
('178', 'DS178', 'Rejosari', 'KC12'),
('179', 'DS179', 'Bojong Lor', 'KC12'),
('18', 'DS18', 'Lumeneng', 'KC02'),
('180', 'DS180', 'Bojong Minggir', 'KC12'),
('181', 'DS181', 'Wiroditan', '182'),
('182', 'DS182', 'Kemasan', 'KC12'),
('183', 'DS183', 'Jajarwayang', 'KC12'),
('184', 'DS184', 'Babalan Lor', 'KC12'),
('185', 'DS185', 'Babalan Kidul', 'KC12'),
('186', 'DS186', 'Karangsari', 'KC12'),
('187', 'DS187', 'Sembung Jambu', 'KC12'),
('188', 'DS188', 'Kalipancur', 'KC12'),
('189', 'DS189', 'Jetak Kidul', 'KC13'),
('19', 'DS19', 'Tanggeran', 'KC02'),
('190', 'DS190', 'Sastrodirjan', 'KC13'),
('191', 'DS191', 'Legok Gunung', 'KC13'),
('192', 'DS192', 'Galang Pengampon', 'KC13'),
('193', 'DS193', 'Kwagen', 'KC13'),
('194', 'DS194', 'Getas', 'KC13'),
('195', 'DS195', 'Rowokkembu', 'KC13'),
('196', 'DS196', 'Wonopringgo', 'KC13'),
('197', 'DS197', 'Sampih', 'KC13'),
('198', 'DS198', 'Gondang', 'KC13'),
('199', 'DS199', 'Wonorejo', 'KC13'),
('20', 'DS20', 'Kaliboja', 'KC02'),
('200', 'DS200', 'Jetak Lenkong', 'KC13'),
('201', 'DS201', 'Pegaden Tengah', 'KC13'),
('202', 'DS202', 'Surobayan', 'KC13'),
('203', 'DS203', 'Rowo Cacing', 'KC14'),
('204', 'DS204', 'Langkap', 'KC14'),
('205', 'DS205', 'Pejomblangan', 'KC14'),
('206', 'DS206', 'Tosaran', 'KC14'),
('207', 'DS207', 'Pakis Putih', 'KC14'),
('208', 'DS208', 'Kedung Patangewu', 'KC14'),
('209', 'DS209', 'Kedungwuni Timur', 'KC14'),
('21', 'DS21', 'Kaliombo', 'KC02'),
('210', 'DS210', 'Podo', 'KC14'),
('211', 'DS211', 'Kwayangan', 'KC14'),
('212', 'DS212', 'Proto', 'KC14'),
('213', 'DS213', 'Salakbrojo', 'KC14'),
('214', 'DS214', 'Ambokembng', 'KC14'),
('215', 'DS215', 'Pekajangan', 'KC14'),
('216', 'DS216', 'Tangkil Tengah', 'KC14'),
('217', 'DS217', 'Tangkil Kulon', 'KC14'),
('218', 'DS218', 'Karang Dowo', 'KC14'),
('219', 'DS219', 'Bugangan', 'KC14'),
('22', 'DS22', 'Botosari', 'KC02'),
('220', 'DS220', 'Rengas', 'KC14'),
('221', 'DS221', 'Kedungwuni Barat', 'KC14'),
('222', 'DS222', 'Kalilembu', 'KC15'),
('223', 'DS223', 'Kaligawe', 'KC15'),
('224', 'DS224', 'Kedungkebo', 'KC15'),
('225', 'DS225', 'Pagumengan Mas', 'KC15'),
('226', 'DS226', 'Logandeng', 'KC15'),
('227', 'DS227', 'Jrebeng Kembang', 'KC15'),
('228', 'DS228', 'KB Rowo Pucang', 'KC15'),
('229', 'DS229', 'Pangkah', 'KC15'),
('23', 'DS23', 'Sawangan', 'KC02'),
('230', 'DS230', 'Karangdadap', 'KC15'),
('231', 'DS231', 'Kebonsari', 'KC15'),
('232', 'DS232', 'Pegandon', 'KC15'),
('233', 'DS233', 'Coprayan', 'KC16'),
('234', 'DS234', 'Sapugarut', 'KC16'),
('235', 'DS235', 'Wonoyoso', 'KC16'),
('236', 'DS236', 'Bligo', 'KC16'),
('237', 'DS237', 'Pakumbulan', 'KC16'),
('238', 'DS238', 'Watusalam', 'KC16'),
('239', 'DS239', 'Simbang Wetan', 'KC16'),
('24', 'DS24', 'Paninggaran', 'KC02'),
('240', 'DS240', 'Simbang Kulon', 'KC16'),
('241', 'DS241', 'Kertijayan', 'KC16'),
('242', 'DS242', 'Pawedan', 'KC16'),
('243', 'DS243', 'Wuled', 'KC17'),
('244', 'DS244', 'Ngalian', 'KC17'),
('245', 'DS245', 'Pandanarum', 'KC17'),
('246', 'DS246', 'Karanganyar', 'KC17'),
('247', 'DS247', 'Slirejo', 'KC17'),
('148', 'DS248', 'Pucung', 'KC17'),
('249', 'DS249', 'Sidorejo', 'KC17'),
('25', 'DS25', 'Domiyang', 'KC02'),
('250', 'DS250', 'Curug', 'KC17'),
('251', 'DS251', 'Samborejo', 'KC17'),
('252', 'DS252', 'Tanjung', 'KC17'),
('253', 'DS253', 'Dadirejo', 'KC17'),
('254', 'DS254', 'Pacar', 'KC17'),
('255', 'DS255', 'Karangjompo', 'KC17'),
('256', 'DS256', 'Tegaldowo', 'KC17'),
('257', 'DS257', 'Mulyorejo', 'KC17'),
('258', 'DS258', 'Jeruksari', 'KC17'),
('259', 'DS259', 'Kadipaten', 'KC18'),
('26', 'DS26', 'Notogiwang', 'KC02'),
('260', 'DS260', 'Delegukang', 'KC18'),
('261', 'DS261', 'Karangjati', 'KC18'),
('262', 'DS262', 'Petukanan', 'KC18'),
('263', 'DS263', 'Wiradesa', 'KC18'),
('264', 'DS264', 'Waru Kidul', 'KC18'),
('265', 'DS265', 'Bondansari', 'KC18'),
('266', 'DS266', 'Waru Lor', 'KC18'),
('267', 'DS267', 'Kampil', 'KC18'),
('268', 'DS268', 'Gumawang', 'KC18'),
('269', 'DS269', 'Kepatihan', 'KC18'),
('27', 'DS27', 'Lambanggelun', 'KC02'),
('270', 'DS270', 'Mayangan', 'KC18'),
('271', 'DS271', 'Pekuncen', 'KC18'),
('272', 'DS272', 'Bener', 'KC18'),
('273', 'DS273', 'Kemplong', 'KC18'),
('274', 'DS274', 'Kauman', 'KC18'),
('275', 'DS275', 'Werdi', 'KC19'),
('276', 'DS276', 'Rowoyoso', 'KC19'),
('277', 'DS277', 'Bebel', 'KC19'),
('278', 'DS278', 'Wonokerto Wetan', 'KC19'),
('279', 'DS279', 'Sijambe', 'KC19'),
('28', 'DS28', 'Tenogo', 'KC02'),
('280', 'DS280', 'Pesanggrahan', 'KC19'),
('281', 'DS281', 'Pecakaran', 'KC19'),
('282', 'DS282', 'Api-Api', 'KC19'),
('283', 'DS283', 'Wonokerto Kulon', 'KC19'),
('284', 'DS284', 'Tratebang', 'KC19'),
('285', 'DS285', 'Semut', 'KC19'),
('29', 'DS29', 'Pedagung', 'KC02'),
('30', 'DS30', 'Tembelang Gunung', 'KC03'),
('31', 'DS31', 'Pamutih', 'KC03'),
('32', 'DS32', 'Depok', 'KC03'),
('33', 'DS33', 'Wonosido', 'KC03'),
('34', 'DS34', 'Timbangsari', 'KC03'),
('35', 'DS35', 'Sidomulyo', 'KC03'),
('36', 'DS36', 'Kutorembet', 'KC03'),
('37', 'DS37', 'Lebakbarang', 'KC03'),
('38', 'DS38', 'Kepundutan', 'KC03'),
('39', 'DS39', 'Bantarkulon', 'KC03'),
('40', 'DS40', 'Mendolo', 'KC03'),
('41', 'DS41', 'Sumego', 'KC04'),
('42', 'DS42', 'Songgodadi', 'KC04'),
('43', 'DS43', 'Curug Muncar', 'KC04'),
('44', 'DS44', 'Gumelem', 'KC04'),
('45', 'DS45', 'Tlogohendro', 'KC04'),
('46', 'DS46', 'Yosorejo', 'KC04'),
('47', 'DS47', 'Tlogopakis', 'KC04'),
('48', 'DS48', 'Kasimpar', 'KC04'),
('49', 'DS49', 'Kayupuring', 'KC04'),
('50', 'DS50', 'Mesoyi', 'KC05'),
('51', 'DS51', 'Jolotigo', 'KC05'),
('52', 'DS52', 'Sengare', 'KC05'),
('53', 'DS53', 'Donowangun', 'KC05'),
('54', 'DS54', 'Talun', 'KC05'),
('55', 'DS55', 'Banjarsari', 'KC05'),
('56', 'DS56', 'Kalirejo', 'KC05'),
('57', 'DS57', 'Batursari', 'KC05'),
('58', 'DS58', 'Karangasem', 'KC05'),
('59', 'DS59', 'Krompeng', 'KC05'),
('60', 'DS60', 'Pungangan', 'KC06'),
('61', 'DS61', 'Sidoharjo', 'KC06'),
('62', 'DS62', 'Lemah Abang', 'KC06'),
('63', 'DS63', 'Rogoselo', 'KC06'),
('64', 'DS64', 'Harjosari', 'KC06'),
('65', 'DS65', 'Larikan', 'KC06'),
('66', 'DS66', 'Sawangan', 'KC06'),
('67', 'DS67', 'Dororejo', 'KC06'),
('68', 'DS68', 'Doro', 'KC06'),
('69', 'DS69', 'Randusari', 'KC06'),
('70', 'DS70', 'Kutosari', 'KC06'),
('71', 'DS71', 'Wringin Ageng', 'KC06'),
('72', 'DS72', 'Kalimojosari', 'KC06'),
('73', 'DS73', 'Bligorejo', 'KC06'),
('74', 'DS74', 'Gutomo', 'KC07'),
('75', 'DS75', 'Limbangan', 'KC07'),
('76', 'DS76', 'Karanggondang', 'KC07'),
('77', 'DS77', 'Lolong', 'KC07'),
('78', 'DS78', 'Pedawang', 'KC07'),
('79', 'DS79', 'Pododadi', 'KC07'),
('80', 'DS80', 'Legok Kalong', 'KC07'),
('81', 'DS81', 'Karangsari', 'KC07'),
('82', 'DS82', 'Kulu', 'KC07'),
('83', 'DS83', 'Banjarejo', 'KC07'),
('84', 'DS84', 'Wonosari', 'KC07'),
('85', 'DS85', 'Sukosari', 'KC07'),
('86', 'DS86', 'Sidomukti', 'KC07'),
('87', 'DS87', 'Kayugeritan', 'KC07'),
('88', 'DS88', 'Kutosari', 'KC07'),
('89', 'DS89', 'Tambakroto', 'KC08'),
('90', 'DS90', 'Kutorejo', 'KC08'),
('91', 'DS91', 'Linggoasri', 'KC08'),
('92', 'DS92', 'Brengkolang', 'KC08'),
('93', 'DS93', 'Pringsurat', 'KC08'),
('94', 'DS94', 'Sukoyoso', 'KC08'),
('95', 'DS95', 'Sinangoh Prendeng', 'KC08'),
('96', 'DS96', 'Kajongan', 'KC08'),
('97', 'DS97', 'Pekiringan Ageng', 'KC08'),
('98', 'DS98', 'Gandarum', 'KC08'),
('99', 'DS99', 'Sabar Wangi', 'KC08');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `NO` varchar(20) NOT NULL,
  `ID_KECAMATAN` varchar(20) NOT NULL,
  `KECAMATAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`NO`, `ID_KECAMATAN`, `KECAMATAN`) VALUES
('1', 'KC01', 'Kandangserang'),
('2', 'KC02', 'Paninggaran'),
('3', 'KC03', 'Lebakbarang'),
('4', 'KC04', 'Petungkriyono'),
('5', 'KC05', 'Talun'),
('6', 'KC06', 'Doro'),
('7', 'KC07', 'Karanganyar'),
('8', 'KC08', 'Kajen'),
('9', 'KC09', 'Kesesi'),
('10', 'KC10', 'Sragi'),
('11', 'KC11', 'Siwalan'),
('12', 'KC12', 'Bojong'),
('13', 'KC13', 'Wonopringgo'),
('14', 'KC14', 'Kedungwungi'),
('15', 'KC15', 'Karangdadap'),
('16', 'KC16', 'Buaran'),
('17', 'KC17', 'Tirto'),
('18', 'KC18', 'Wiradesa'),
('19', 'KC19', 'Wonokerto');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `NO` varchar(20) NOT NULL,
  `ID_DESA` varchar(20) NOT NULL,
  `ID_KECAMATAN` varchar(20) NOT NULL,
  `OP_BAKU` varchar(20) NOT NULL,
  `OP_JUMLAH` varchar(20) NOT NULL,
  `OP_MINGGU1` varchar(20) NOT NULL,
  `JUMLAH_M1` varchar(20) NOT NULL,
  `OP_MINGU2` varchar(20) NOT NULL,
  `JUMLAH_M2` varchar(20) NOT NULL,
  `OP_MINGUU3` varchar(20) NOT NULL,
  `JUMLAH_M3` varchar(20) NOT NULL,
  `TANGGAL_SETOR` varchar(20) NOT NULL,
  `DENDA_M1` varchar(20) NOT NULL,
  `JML_DENDA_M1` varchar(20) NOT NULL,
  `DENDA_M2` varchar(20) NOT NULL,
  `JML_DENDA_M2` varchar(20) NOT NULL,
  `DENDA_M3` varchar(20) NOT NULL,
  `JML_DENDA_M3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`NO`, `ID_DESA`, `ID_KECAMATAN`, `OP_BAKU`, `OP_JUMLAH`, `OP_MINGGU1`, `JUMLAH_M1`, `OP_MINGU2`, `JUMLAH_M2`, `OP_MINGUU3`, `JUMLAH_M3`, `TANGGAL_SETOR`, `DENDA_M1`, `JML_DENDA_M1`, `DENDA_M2`, `JML_DENDA_M2`, `DENDA_M3`, `JML_DENDA_M3`) VALUES
('1', 'DS01', 'KC01', '1.420', '12.850.379', '1.420', '12.850.379', '0', '0', '1.420', '12.850.379', '21 Mei 2016', '0', '0', '0', '0', '0', '0'),
('2', 'DS02', 'KC01', '1.602', '13.757.648', '1.602', '13.757.648', '0', '0', '1.602', '13.757.648', '12 Mei 2016', '0', '0', '0', '0', '0', '0'),
('3', 'DS03', 'KC01', '3.319', '40.008.790', '3.319', '40.008.790', '0', '0', '3.319', '40.008.790', '26 September 2016', '0', '0', '0', '0', '0', '0'),
('4', 'DS04', 'KC01', '1.650', '17.967.603', '1.650', '17.967.603', '0', '0', '1.650', '17.967.603', '22 September 2016', '0', '0', '0', '0', '0', '0'),
('5', 'DS05', 'KC01', '2.864', '45.834.675', '654', '10.997.298', '138', '1.960.270', '792', '12.957.568', '11 Oktober 2016', '0', '0', '138', '39.206', '138', '39.206'),
('6', 'DS06', 'KC01', '1.317', '20.961.587', '1.317', '20.961.587', '0', '0', '1.317', '20.961.587', '22 September 2016', '0', '0', '0', '0', '0', '0'),
('7', 'DS07', 'KC01', '2.057', '28.360.839', '2.057', '28.360.839', '0', '0', '2.057', '28.360.839', '30 September 2016', '0', '0', '0', '0', '0', '0'),
('8', 'DS08', 'KC01', '3.051', '44.880.520', '2.236', '30.888.324', '373', '2.446.669', '2.609', '33.334.993', '14 Oktober 2016', '2', '425', '373', '48.930', '375', '49.355'),
('9', 'DS09', 'KC01', '1.120', '16.534.617', '1.120', '16.534.617', '0', '0', '1.120', '16.534.617', '22 September 2016', '0', '0', '0', '0', '0', '0'),
('10', 'DS10', 'KC01', '1.960', '32.025.837', '1.688', '27.618.453', '170', '2.174.245', '1.858', '20.792.698', '14 Oktober 2016', '155', '72.549', '170', '43.492', '325', '116.041'),
('11', 'DS11', 'KC01', '2.742', '35.727.678', '2.742', '35.727.678', '0', '0', '2.742', '35.727.678', '20 Juni 2016', '0', '0', '0', '0', '0', '0'),
('12', 'DS12', 'KC01', '1.448', '22.939.597', '817', '13.064.004', '311', '1.941.128', '1.128', '15.005.132', '14 Oktober 2016', '109', '37.827', '311', '38.822', '420', '76.649'),
('13', 'DS13', 'KC01', '1.664', '19.939.597', '1.664', '19.939.597', '0', '0', '1.664', '19.939.597', '26 September 2016', '0', '0', '0', '0', '0', '0'),
('14', 'DS14', 'KC01', '1.436', '17.392.300', '955', '11.686.364', '179', '1.960.787', '1.134', '13.647.151', '13 Oktober 2016', '82', '18.733', '179', '39.217', '261', '57.950'),
('15', 'DS15', 'KC02', '1.985', '23.797.610', '214', '2.997.401', '0', '0', '214', '2.997.401', '26 September 2016', '0', '0', '0', '0', '0', '0'),
('16', 'DS16', 'KC02', '2.093', '14.301.741', '780', '9.071.198', '0', '0', '780', '9.071.198', '15 Agustus 2016', '0', '0', '0', '0', '0', '0'),
('17', 'DS17', 'KC02', '1.608', '21.285.571', '1.608', '21.285.571', '0', '0', '1.608', '21.285.571', '21 September 2016', '0', '0', '0', '0', '0', '0'),
('18 ', 'DS18', 'KC02', '2.672', '36.039.244', '1.429', '18.901.694', '0', '0', '1.429', '18.901.694', '14 September 2016', '0', '0', '0', '0', '0', '0'),
('19', 'DS19', 'KC02', '1.581', '25.331.742', '1.581', '25.331.742', '0', '0', '1.581', '25.331.742', '2 September 2016', '0', '0', '0', '0', '0', '0'),
('20', 'DS20', 'KC02', '1.719', '33.765.795', '1.079', '22.684.083', '103', '1.468.425', '1.182', '24.152.508', '11 Oktober 2016', '0', '0', '103', '29.372', '103', '29.372'),
('21', 'DS21', 'KC02', '1.159', '14.215.491', '959', '11.861.637', '0', '0', '959', '11.861.637', '27 September 2016', '0', '0', '0', '0', '0', '0'),
('22', 'DS22', 'KC02', '1.614', '16.110.749', '1.614', '16.110.749', '0', '0', '1.614', '16.110.749', '7 September 2016', '0', '0', '0', '0', '0', '0'),
('23', 'DS23', 'KC02', '2.040', '30.008.054', '1.509', '20.695.177', '7', '101.940', '1.516', '20.797.117', '12 Oktober 2016', '115', '48.613', '7', '2.039', '122', '50.652'),
('24', 'DS24', 'KC02', '2.384', '52.067.037', '1.433', '35.194.558', '0', '0', '1.433', '35.194.558', '5 Oktober 2016', '7', '2.912', '0', '0', '7', '2.912'),
('25', 'DS25', 'KC02', '2.818', '42.025.372', '682', '8.272.732', '0', '0', '682', '8.272.732', '29 September 2016', '0', '0', '0', '0', '0', '0'),
('26', 'DS26', 'KC02', '2.322', '35.093.458', '1.182', '17.861.278', '0', '0', '1.182', '17.861.278', '7 Oktober 2016', '68', '21.865', '0', '0', '68', '21.865'),
('27', 'DS27', 'KC02', '2.981', '45.949.552', '1.732', '24.105.567', '597', '4.901.887', '2.329', '29.007.454', '12 Oktober 2016', '234', '51.176', '597', '98.046', '831', '149.222'),
('28', 'DS28', 'KC02', '1.109', '27.065.016', '829', '21.113.787', '41', '649.798', '870', '21.763.585', '12 Oktober 2016', '0', '0', '41', '12.997', '41', '12.997'),
('29', 'DS29', 'KC02', '436', '10.194.074', '436', '10.194.074', '0', '0', '436', '10.194.074', '7 September 2016', '0', '0', '0', '0', '0', '0'),
('30', 'DS30', 'KC03', '1.069', '21.731.854', '1.069', '21.731.854', '0', '0', '1.069', '21.731.854', '25 Mei 2016', '0', '0', '0', '0', '0', '0'),
('31', 'DS31', 'KC03', '905', '14.004.687', '905', '14.004.687', '0', '0', '905', '14.004.687', '23 Mei 2016', '0', '0', '0', '0', '0', '0'),
('32', 'DS32', 'KC03', '359', '6.055.330', '359', '6.055.330', '0', '0', '359', '6.055.330', '23 Maret 2016', '0', '0', '0', '0', '0', '0'),
('33', 'DS33', 'KC03', '346', '4.155.255', '346', '4.155.255', '0', '0', '346', '4.155.255', '21 Maret 2016', '0', '0', '0', '0', '0', '0'),
('34', 'DS34', 'KC03', '541', '9.125.505', '541', '9.125.505', '0', '0', '541', '9.125.505', '9 Mei 2016', '0', '0', '0', '0', '0', '0'),
('35', 'DS35', 'KC03', '2.083', '32.104.614', '2.083', '32.104.614', '0', '0', '2.083', '32.104.614', '19 Juli 2016', '0', '0', '0', '0', '0', '0'),
('36', 'DS36', 'KC03', '352', '8.311.870', '352', '8.311.870', '0', '0', '352', '8.311.870', '6 Juni 2016', '0', '0', '0', '0', '0', '0'),
('37', 'DS37', 'KC03', '1.563', '27.053.298', '1.563', '27.053.298', '0', '0', '1.563', '27.053.298', '18 Juli 2016', '0', '0', '0', '0', '0', '0'),
('38', 'DS38', 'KC03', '434', '6.445.602', '434', '6.445.602', '0', '0', '434', '6.445.602', '9 Mei 2016', '0', '0', '0', '0', '0', '0'),
('39', 'DS39', 'KC03', '699', '14.674.058', '699', '14.674.058', '0', '0', '699', '14.674.058', '20 Juli 2016', '0', '0', '0', '0', '0', '0'),
('40', 'DS40', 'KC03', '535', '9.540.259', '535', '9.540.259', '0', '0', '535', '9.540.259', '15 Juli 2016', '0', '0', '0', '0', '0', '0'),
('41', 'DS41', 'KC04', '2.141', '26.866.338', '2.141', '26.866.338', '0', '0', '2.141', '26.866.338', '29 April 2016', '0', '0', '0', '0', '0', '0'),
('42', 'DS42', 'KC04', '1.164', '10.863.019', '1.164', '10.863.019', '0', '0', '1.164', '10.863.019', '18 Mei 2016', '0', '0', '0', '0', '0', '0'),
('43', 'DS43', 'KC04', '400', '4.938.220', '400', '4.938.220', '0', '0', '400', '4.938.220', '13 Mei 2016', '0', '0', '0', '0', '0', '0'),
('44', 'DS44', 'KC04', '591', '8.230.802', '591', '8.230.802', '0', '0', '591', '8.230.802', '10 Mei 2016', '0', '0', '0', '0', '0', '0'),
('45', 'DS45', 'KC04', '1.603', '26.240.871', '1.603', '26.240.871', '0', '0', '1.603', '26.240.871', '10 Mei 2016', '0', '0', '0', '0', '0', '0'),
('46', 'DS46', 'KC04', '1.161', '19.293.622', '1.161', '19.293.622', '0', '0', '1.161', '19.293.622', '1 Agustus 2016', '0', '0', '0', '0', '0', '0'),
('47', 'DS47', 'KC04', '1.982', '16.764.595', '1.982', '16.764.595', '0', '0', '1.982', '16.764.595', '10 Mei 1016', '0', '0', '0', '0', '0', '0'),
('48', 'DS48', 'KC04', '934', '12.013.635', '934', '12.013.635', '0', '0', '934', '12.013.635', '11 Agustus 2016', '0', '0', '0', '0', '0', '0'),
('49', 'DS49', 'KC04', '1.394', '22.264.936', '1.394', '22.264.936', '0', '0', '1.394', '22.264.936', '9 Agustus 2016', '0', '0', '0', '0', '0', '0'),
('50', 'DS50', 'KC05', '2.832', '51.431.382', '2.115', '36.925.534', '0', '0', '2.115', '36.925.534', '7 Oktober 2016', '130', '58.837', '0', '0', '130', '58.837'),
('51', 'DS51', 'KC05', '1.696', '30.301.507', '1.287', '22.459.903', '0', '0', '1.287', '22.459.903', '15 September 2016', '0', '0', '0', '0', '0', '0'),
('52', 'DS52', 'KC05', '4.258', '70.592.688', '3.072', '50.914.441', '0', '0', '3.072', '50.914.441', '7 Oktober 2016', '53', '16.787', '0', '0', '53', '16.787'),
('53', 'DS53', 'KC05', '3.488', '56.693.744', '1.546', '23.695.996', '0', '0', '1.546', '23.695.996', '29 September 2016', '0', '0', '0', '0', '0', '0'),
('54', 'DS54', 'KC05', '2.456', '54.002.135', '867', '19.181.644', '0', '0', '867', '19.181.644', '30 September 2016', '0', '0', '0', '0', '0', '0'),
('55', 'DS55', 'KC05', '1.840', '41.731.123', '1.306', '27.251.815', '22', '507.942', '1.328', '27.759.757', '12 Oktober 2016', '24', '11.506', '22', '10.160', '46', '21.666'),
('56', 'DS56', 'KC05', '1.684', '50.028.349', '1.099', '33.789.015', '0', '0', '1.099', '33.789.015', '7 Oktober 2016', '64', '42.135', '0', '0', '64', '42.135'),
('57', 'DS57', 'KC05', '1.473', '28.562.656', '1.089', '20.535.009', '0', '0', '1.089', '20.535.009', '7 Oktober 2016', '234', '95.483', '0', '0', '234', '95.483'),
('58', 'DS58', 'KC05', '1.876', '37.136.295', '1.314', '26.090.441', '0', '0', '1.314', '26.090.441', '7 Oktober 2016', '76', '28.025', '0', '0', '76', '28.025'),
('59', 'DS59', 'KC05', '1.713', '41.305.924', '976', '23.237.710', '0', '0', '976', '23.237.710', '29 September 2016', '0', '0', '0', '0', '0', '0'),
('60', 'DS60', 'KC06', '503', '10.584.199', '503', '10.584.199', '0', '0', '503', '10.584.199', '26 September 2016', '0', '0', '0', '0', '0', '0'),
('61', 'DS61', 'KC06', '665', '14.088.184', '665', '14.088.184', '0', '0', '665', '14.088.184', '5 Agustus 2016', '0', '0', '0', '0', '0', '0'),
('62', 'DS62', 'KC06', '2.806', '63.492.640', '2.806', '63.492.640', '0', '0', '2.806', '63.492.640', '21 September 2016', '0', '0', '0', '0', '0', '0'),
('63', 'DS63', 'KC06', '2.875', '96.628.935', '879', '30.899.196', '295', '9.108.903', '1.174', '40.008.099', '12 Oktober 2016', '0', '0', '295', '182.176', '295', '182.176'),
('64', 'DS64', 'KC06', '1.450', '56.631.578', '1.033', '38.457.785', '0', '0', '1.033', '38.457.785', '30 September 2016', '0', '0', '0', '0', '0', '0'),
('65', 'DS65', 'KC06', '1.097', '39.550.817', '1.097', '39.550.817', '0', '0', '1.097', '39.550.817', '18 Mei 2016', '0', '0', '0', '0', '0', '0'),
('66', 'DS66', 'KC06', '1.863', '78.867.714', '1.081', '43.836.520', '46', '2.175.673', '1.127', '46.012.193', '11 Oktober 2016', '2', '3.619', '46', '43.510', '48', '47.129'),
('67', 'DS67', 'KC06', '2.603', '70.307.729', '1.606', '42.534.097', '0', '0', '1.606', '42.534.097', '30 September 2016', '0', '0', '0', '0', '0', '0'),
('68', 'DS68', 'KC06', '1.971', '55.103.958', '1.283', '37.168.088', '4', '56.166', '1.287', '37.224.254', '10 Oktober 2016', '29', '26.014', '4', '1.123', '33', '27.137'),
('69', 'DS69', 'KC06', '1.215', '29.201.811', '745', '17.277.458', '0', '0', '745', '17.277.458', '7 Oktober 2016', '6', '4.013', '0', '0', '6', '4.013'),
('70', 'DS70', 'KC06', '1.231', '41.810.570', '931', '28.482.707', '1', '12.632', '932', '28.495.339', '14 Oktober 2016', '16', '13.022', '1', '253', '17', '13.275'),
('71', 'DS71', 'KC06', '2.635', '70.152.530', '2.635', '70.152.530', '0', '0', '2.635', '70.152.530', '26 September 2016', '0', '0', '0', '0', '0', '0'),
('72', 'DS72', 'KC06', '2.671', '66.741.244', '1.511', '36.953.776', '0', '0', '1.511', '36.953.776', '7 Oktober 2016', '2', '9.466', '0', '0', '2', '9.466'),
('73', 'DS73', 'KC06', '2.422', '67.373.054', '1.599', '45.413.896', '15', '413.085', '1.574', '45.826.981', '11 Oktober 2016', '18', '14.781', '15', '8.263', '33', '23.044'),
('74', 'DS74', 'KC07', '1.491', '52.192.999', '465', '14.076.635', '0', '0', '465', '14.076.635', '29 September 2016', '0', '0', '0', '0', '0', '0'),
('75', 'DS75', 'KC07', '1.486', '56.020.116', '720', '17.270.968', '3', '40.180', '723', '17.311.148', '13 Oktober 2016', '396', '196.555', '3', '804', '399', '197.359'),
('76', 'DS76', 'KC07', '1.022', '29.557.783', '1.022', '29.557.783', '0', '0', '1.022', '29.557.783', '17 September 2016', '0', '0', '0', '0', '0', '0'),
('77', 'DS77', 'KC07', '1.687', '40.107.043', '1.687', '40.107.043', '0', '0', '1.687', '40.107.043', '29 September 2016', '0', '0', '0', '0', '0', '0'),
('78', 'DS78', 'KC07', '1.482', '56.808.484', '403', '12.900.529', '0', '0', '403', '12.900.529', '4 Oktober 2016', '23', '15.576', '0', '0', '23', '15.576'),
('79', 'DS79', 'KC07', '3.008', '66.267.333', '1.894', '40.463.248', '149', '3.088.944', '2.043', '43.552.192', '13 Oktober 2016', '0', '0', '149', '61.783', '149', '61.783'),
('80', 'DS80', 'KC07', '2.410', '113.647.963', '1.063', '52.119.006', '0', '0', '1.063', '52.119.006', '30 September 2016', '0', '0', '0', '0', '0', '0'),
('81', 'DS81', 'KC07', '2.194', '125.395.856', '814', '41.476.443', '2', '122.140', '816', '41.598.583', '5 Oktober 2016', '1', '1.750', '0', '0', '1', '1.750'),
('82', 'DS82', 'KC07', '1.512', '67.271.598', '814', '41.476.443', '2', '122.140', '816', '41.598.583', '11 Oktober 2016', '22', '27.521', '2', '2.443', '24', '29.964'),
('83', 'DS83', 'KC07', '998', '37.008.358', '628', '20.477.803', '54', '2.219.589', '682', '22.697.392', '12 Oktober 2016', '26', '21.131', '54', '44.392', '80', '65.523'),
('84', 'DS84', 'KC07', '1.719', '41.014.266', '1.719', '41.014.266', '0', '0', '1.719', '41.014.266', '28 September 2016', '0', '0', '0', '0', '0', '0'),
('85', 'DS85', 'KC07', '1.593', '38.431.307', '1.593', '38.431.307', '0', '0', '1.593', '38.431.307', '28 September 2016', '0', '0', '0', '0', '0', '0'),
('86', 'DS86', 'KC07', '1.417', '57.273.408', '1.130', '41.891.351', '81', '3.879.984', '1.211', '45.771.335', '10 Oktober 2016', '0', '0', '81', '77.602', '81', '77.602'),
('87', 'DS87', 'KC07', '1.234', '34.474.436', '1.234', '34.474.436', '0', '0', '1.234', '34.474.436', '29 September 2016', '0', '0', '0', '0', '0', '0'),
('88', 'DS88', 'KC07', '1.384', '53.865.437', '840', '26.821.734', '0', '0', '840', '26.821.734', '5 Oktober 2016', '110', '76.580', '0', '0', '110', '76.580'),
('89', 'DS89', 'KC08', '1.843', '43.642.518', '1.843', '43.642.518', '0', '0', '1.843', '43.642.518', '22 September 2016', '0', '0', '0', '0', '0', '0'),
('90', 'DS90', 'KC08', '1.306', '50.870.253', '1.306', '50.870.253', '0', '0', '1.306', '50.870.253', '22 September 2016', '0', '0', '0', '0', '0', '0'),
('91', 'DS91', 'KC08', '1.298', '37.819.918', '870', '25.101.331', '29', '1.278.521', '899', '26.379.852', '11 Oktober 2016', '117', '71.662', '29', '25.572', '146', '97.234'),
('92', 'DS92', 'KC08', '491', '9.614.737', '491', '9.614.737', '0', '0', '491', '9.614.737', '25 Agustus 2016', '0', '0', '0', '0', '0', '0'),
('93', 'DS93', 'KC08', '1.083', '22.510.695', '1.083', '22.510.695', '0', '0', '1.083', '22.510.695', '26 September 2016', '0', '0', '0', '0', '0', '0'),
('94', 'DS94', 'KC08', '1.010', '33.329.027', '1.010', '33.329.027', '0', '0', '1.010', '33.329.027', '23 September 2016', '0', '0', '0', '0', '0', '0'),
('95', 'DS95', 'KC08', '1.282', '52.870.564', '1.282', '52.870.564', '0', '0', '1.282', '52.870.564', '19 September 2016', '0', '0', '0', '0', '0', '0'),
('96', 'DS96', 'KC08', '836', '41.984.114', '836', '41.984.114', '0', '0', '836', '41.984.114', '27 September 2016', '0', '0', '0', '0', '0', '0'),
('97', 'DS97', 'KC08', '939', '23.760.278', '939', '23.760.278', '0', '0', '939', '23.760.278', '27 September 2016', '0', '0', '0', '0', '0', '0'),
('98', 'DS98', 'KC08', '2.666', '106.076.698', '683', '26.521.310', '58', '2.477.694', '741', '28.999.004', '12 Oktober 2016', '2', '1.754', '58', '49.554', '60', '51.308'),
('99', 'DS99', 'KC08', '999', '26.880.470', '999', '26.880.470', '0', '0', '999', '26.880.470', '20 September 2016', '0', '0', '0', '0', '0', '00'),
('100', 'DS100', 'KC08', '1.781', '143.476.104', '502', '83.129.429', '0', '0', '502', '83.129.429', '7 Oktober 2016', '1', '1.174', '0', '0', '1', '1.174'),
('101', 'DS101', 'KC08', '1.316', '41.083.091', '1.316', '41.083.091', '0', '0', '1.316', '41.083.091', '31 Mei 2016', '0', '0', '0', '0', '0', '0'),
('102', 'DS102', 'KC08', '1.407', '35.345.247', '1.407', '35.345.247', '0', '0', '1.407', '35.345.247', '27 Seotember 2016', '0', '0', '0', '0', '0', '0'),
('103', 'DS103', 'KC08', '979', '19.804.570', '165', '3.494.790', '814', '16.409.780', '979', '19.804.570', '11 Oktober 2016', '0', '0', '814', '326.212', '814', '326.212'),
('104', 'DS104', 'KC08', '1.555', '118.365.723', '1.215', '92.361.712', '12', '1.516.652', '1.227', '93.878.364', '11 Oktober 2016', '31', '40.283', '12', '30.334', '43', '60.617'),
('105', 'DS105', 'KC08', '1.613', '83.748.827', '974', '60.750.181', '69', '3.908.037', '1.043', '64.658.218', '14 Oktober 2016', '54', '56.479', '69', '78.162', '123', '134.641'),
('106', 'DS106', 'KC08', '1.549', '51.290.588', '1.157', '39.256.778', '176', '4.808.755', '1.333', '44.065.533', '13 Oktober 2016', '24', '8.920', '176', '96.177', '200', '105.097'),
('107', 'DS107', 'KC08', '1.561', '54.311.882', '1.451', '48.927.089', '1', '52.344', '1.452', '48.979.433', '10 Oktober 2016', '18', '19.342', '1', '1.047', '19', '20.389'),
('108', 'DS108', 'KC08', '3.313', '138.567.584', '2.922', '116.442.612', '0', '0', '2.922', '116.442.612', '7 Oktober 2016', '38', '31.485', '0', '0', '38', '31.485'),
('109', 'DS109', 'KC08', '2.940', '94.412.353', '2.520', '84.073.214', '6', '153.488', '2.526', '84.226.702', '14 Oktober 2016', '116', '77.109', '6', '3.071', '122', '80.180'),
('110', 'DS110', 'KC08', '1.123', '53.096.328', '650', '26.950.640', '9', '375.404', '659', '27.326.044', '13 Oktober 2016', '0', '0', '9', '7.508', '9', '7.508'),
('111', 'DS111', 'KC08', '1.231', '38.240.527', '1.231', '38.240.527', '0', '0', '1.231', '38.240.527', '31 Agustus 2016', '0', '0', '0', '0', '0', '0'),
('112', 'DS112', 'KC08', '1.490', '44.118.852', '1.320', '39.825.280', '0', '0', '1.320', '39.825.280', '4 Oktober 2016', '117', '75.641', '0', '0', '117', '75.641'),
('113', 'DS113', 'KC08', '1.258', '67.074.236', '716', '36.009.696', '38', '2.724.024', '754', '38.733.720', '12 Oktober 2016', '0', '0', '38', '54.479', '38', '54.479'),
('114', 'DS114', 'KC09', '3.844', '61.480.670', '1.626', '23.753.074', '72', '1.380.473', '1.698', '25.133.547', '10 Oktober 2016', '231', '71.892', '72', '27.610', '303', '99.502'),
('115', 'DS115', 'KC09', '1.930', '29.307.019', '1.930', '29.307.019', '0', '0', '1.930', '29.307.019', '20 September 2016', '0', '0', '0', '0', '0', '0'),
('116', 'DS116', 'KC09', '1.575', '25.972.299', '1.423', '23.780.998', '0', '0', '1.423', '23.780.998', '30 September 2016', '0', '0', '0', '0', '0', '0'),
('117', 'DS117', 'KC09', '2.398', '48.681.745', '1.178', '20.543.673', '70', '1.489.035', '1.248', '22.032.708', '10 Oktober 2016', '183', '82.363', '70', '29.778', '253', '112.141'),
('118', 'DS118', 'KC09', '2.311', '102.549.336', '1.807', '74.781.635', '62', '1.573.768', '1.869', '76.335.403', '11 Oktober 2016', '27', '23.699', '62', '31.476', '89', '55.175'),
('119', 'DS119', 'KC09', '1.526', '66.570.401', '645', '31.101.972', '72', '3.693.415', '717', '34.795.387', '11 Oktober 2016', '7', '4.641', '72', '73.867', '79', '78.508'),
('120', 'DS120', 'KC09', '1.962', '89.820.341', '941', '46.023.615', '0', '0', '941', '46.023.615', '7 Oktober 2016', '168', '131.843', '0', '0', '168', '131.843'),
('121', 'DS121', 'KC09', '910', '44.259.659', '525', '28.378.733', '0', '0', '525', '28.278.733', '5 Oktober 2016', '34', '32.847', '0', '0', '34', '32.847'),
('122', 'DS122', 'KC09', '1.343', '56.591.590', '1.342', '53.795.630', '1', '2.795.960', '1.343', '56.591.590', '13 Oktober 2016', '0', '0', '1', '55.919', '1', '55.919'),
('123', 'DS123', 'KC09', '1.838', '82.446.204', '1.838', '82.446.204', '0', '0', '1.838', '82.446.204', '21 September 2016', '0', '0', '0', '0', '0', '0'),
('124', 'DS124', 'KC09', '3.895', '138.033.695', '3.125', '101.458.762', '54', '5.155.155', '3.179', '106.613.917', '13 Oktober 2016', '54', '49.639', '54', '103.107', '108', '152.746'),
('125', 'DS125', 'KC09', '1.180', '47.715.239', '598', '25.302.727', '103', '3.891.051', '701', '29.193.778', '13 Oktober 2016', '44', '35.142', '103', '77.824', '147', '112.966'),
('126', 'DS126', 'KC09', '2.096', '90.044.693', '1.052', '48.675.675', '36', '1.191.730', '1.088', '49.867.405', '11 Oktober 2016', '34', '43.164', '36', '23.834', '70', '66.998'),
('127', 'DS127', 'KC09', '1.046', '34.116.698', '622', '18.979.228', '66', '1.346.599', '688', '20.325.827', '13 Oktober 2016', '38', '24.282', '66', '26.931', '104', '51.213'),
('128', 'DS128', 'KC09', '2.231', '99.081.150', '1.301', '55.905.423', '10', '8.704.264', '1.311', '64.609.687', '11 Oktober 2016', '158', '223.105', '74', '79.491', '232', '302.596'),
('129', 'DS129', 'KC09', '2.257', '73.327.330', '2.257', '73.327.330', '0', '0', '2.257', '73.327.330', '22 September 2016', '0', '0', '0', '0', '0', '0'),
('130', 'DS130', 'KC09', '1.394', '52.380.911', '779', '30.500.162', '74', '3.974.584', '853', '34.474.746', '14 Oktober 2016', '158', '223.105', '74', '79.491', '232', '302.596'),
('131', 'DS131', 'KC09', '1.813', '61.595.137', '1.391', '61.595.137', '0', '0', '1.391', '61.595.137', '30 September 2016', '0', '0', '0', '0', '0', '0'),
('132', 'DS132', 'KC09', '2.485', '50.326.715', '1.643', '27.357.401', '110', '3.480.020', '1.753', '30.837.421', '13 Oktober 2016', '260', '91.171', '110', '69.598', '370', '160.769'),
('133', 'DS133', 'KC09', '1.978', '93.260.634', '1.676', '74.502.726', '187', '5.583.152', '1.863', '80.085.878', '11 Oktober 2016', '24', '26.367', '187', '111.665', '211', '138.032'),
('134', 'DS134', 'KC09', '1.890', '70.837.571', '1.299', '48.734.707', '59', '1.861.778', '1.358', '50.596.485', '13 Oktober 2016', '143', '110.456', '59', '37.233', '202', '147.689'),
('135', 'DS135', 'KC09', '1.676', '65.952.955', '1.232', '45.904.682', '122', '3.403.372', '1.354', '49.308.054', '13 Oktober 2016', '10', '23.245', '122', '68.068', '132', '91.313'),
('136', 'DS136', 'KC09', '1.283', '60.334.349', '859', '35.925.513', '0', '0', '859', '35.925.513', '6 Oktober 2016', '38', '68.592', '0', '0', '38', '68.592');

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id_desa` varchar(50) DEFAULT NULL,
  `id_tagihan` varchar(60) DEFAULT NULL,
  `op_realisasi` varchar(50) DEFAULT NULL,
  `jml_realisasi` varchar(50) DEFAULT NULL,
  `op_selisih` varchar(50) DEFAULT NULL,
  `jml_selisih` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id_desa`, `id_tagihan`, `op_realisasi`, `jml_realisasi`, `op_selisih`, `jml_selisih`) VALUES
('DS01', 'TGN01', '19999', '199999', '1010', '101010'),
('DS02', 'TGN02', '19090', '190000', '1919', '600000'),
('DS03', 'TGN03', '1990', '798979', '76456', '6567567');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`ID_DESA`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`ID_KECAMATAN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
