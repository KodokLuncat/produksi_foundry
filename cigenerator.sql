-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2021 pada 01.46
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cigenerator`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(15, 1, 1),
(19, 1, 3),
(24, 1, 9),
(29, 2, 2),
(30, 1, 2),
(31, 1, 10),
(32, 1, 11),
(33, 1, 12),
(34, 1, 13),
(35, 3, 10),
(36, 3, 11),
(37, 3, 12),
(38, 3, 13),
(39, 3, 14),
(40, 1, 14),
(41, 1, 15),
(42, 1, 16),
(43, 1, 17),
(44, 1, 18),
(45, 1, 19),
(46, 3, 15),
(47, 3, 16),
(48, 3, 17),
(49, 3, 18),
(50, 3, 19),
(51, 2, 10),
(52, 2, 11),
(53, 2, 12),
(54, 2, 19),
(55, 2, 18),
(56, 2, 17),
(57, 2, 16),
(58, 2, 15),
(59, 2, 14),
(60, 2, 13),
(61, 1, 20),
(62, 1, 21),
(63, 1, 22),
(64, 1, 23),
(65, 1, 24),
(66, 1, 25),
(67, 3, 20),
(68, 3, 21),
(69, 3, 22),
(70, 3, 23),
(71, 3, 24),
(72, 3, 25),
(73, 4, 24),
(74, 4, 10),
(78, 4, 14),
(79, 4, 15),
(80, 4, 16),
(81, 4, 17),
(82, 4, 18),
(83, 4, 19),
(84, 5, 10),
(88, 5, 14),
(89, 5, 15),
(90, 5, 16),
(91, 5, 17),
(92, 5, 18),
(93, 5, 19),
(94, 5, 24),
(95, 2, 20),
(96, 2, 21),
(97, 2, 22),
(98, 2, 23),
(99, 2, 25),
(100, 2, 26),
(101, 2, 9),
(102, 5, 20),
(103, 4, 20),
(104, 1, 28),
(105, 2, 28),
(106, 5, 28),
(107, 4, 28),
(108, 5, 11),
(109, 5, 12),
(110, 5, 13),
(111, 4, 11),
(112, 4, 12),
(113, 4, 13),
(114, 1, 26),
(115, 1, 30),
(116, 1, 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_material`
--

CREATE TABLE `tbl_material` (
  `id_material` int(11) NOT NULL,
  `material` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_material`
--

INSERT INTO `tbl_material` (`id_material`, `material`) VALUES
(1, 'Brass'),
(2, 'Bronze'),
(3, 'Cast Iron'),
(4, 'Cast Steels');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'KELOLA MENU', 'kelolamenu', 'fa fa-server', 0, 'y'),
(2, 'KELOLA PENGGUNA', 'user', 'fa fa-user-o', 0, 'y'),
(3, 'level PENGGUNA', 'userlevel', 'fa fa-users', 0, 'y'),
(9, 'Contoh Form', 'welcome/form', 'fa fa-id-card', 0, 'y'),
(10, 'Work Order', 'work_order', 'fa fa-industry', 0, 'y'),
(11, 'detail work order', 'wo_detail', 'fa fa-calendar-check-o', 10, 'y'),
(12, 'list work order', 'wo', 'fa fa-calendar-check-o', 10, 'y'),
(13, 'finshing', 'wo_finishing', 'fa fa-calendar-check-o', 10, 'n'),
(14, 'Produk', 'produk', 'fa fa-database', 0, 'y'),
(15, 'Grafik', 'grafik', 'fa fa-bar-chart', 0, 'y'),
(16, 'Daily Report', 'daily_report', 'fa fa-angle-double-right', 15, 'y'),
(17, 'grafik core', 'grafik_core', 'fa fa-angle-double-right', 15, 'y'),
(18, 'grafik casting', 'grafik_casting', 'fa fa-angle-double-right', 15, 'y'),
(19, 'grafik finishing', 'grafik_finishing', 'fa fa-angle-double-right', 15, 'y'),
(20, 'Data Produk', 'data_produk', 'fa fa-chevron-right', 14, 'y'),
(21, 'part number', 'part_number', 'fa fa-chevron-right', 14, 'y'),
(22, 'partname', 'partname', 'fa fa-chevron-right', 14, 'y'),
(23, 'size', 'size', 'fa fa-chevron-right', 14, 'y'),
(25, 'type', 'type', 'fa fa-chevron-right', 14, 'y'),
(26, 'Part', 'part', 'fa fa-chevron-right', 14, 'y'),
(30, 'Material', 'material', 'fa fa-chevron-right', 14, 'y'),
(31, 'Casting', 'wo_casting', 'fa fa-calendar-check-o', 10, 'n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_part`
--

CREATE TABLE `tbl_part` (
  `id_part` int(11) NOT NULL,
  `part` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_part`
--

INSERT INTO `tbl_part` (`id_part`, `part`) VALUES
(1, 'Body'),
(2, 'Disc'),
(3, 'Bonnet'),
(4, 'Yoke');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_partname`
--

CREATE TABLE `tbl_partname` (
  `id_partname` int(11) NOT NULL,
  `partname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_partname`
--

INSERT INTO `tbl_partname` (`id_partname`, `partname`) VALUES
(1, 'Gate Valve'),
(2, 'Gate CI'),
(3, 'Globe CI'),
(4, 'K Gate'),
(5, 'Gate Valve CI Rising'),
(6, 'Gate CI NR'),
(7, 'Gate CI FE'),
(8, 'Globe Valve 5K'),
(9, 'Globe Valve 16K'),
(10, 'Swing Check');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_partnumber`
--

CREATE TABLE `tbl_partnumber` (
  `id_partnumber` int(11) NOT NULL,
  `part_number` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_partnumber`
--

INSERT INTO `tbl_partnumber` (`id_partnumber`, `part_number`) VALUES
(1, 'ACIGT16-040'),
(2, 'ACIGT16-050'),
(3, 'ACIGT16-100'),
(4, 'ACIGT4-040'),
(5, 'ACIGT4-050'),
(6, 'ACIGT4-080'),
(7, 'ACIGT4-100'),
(8, 'ACIGTNR-050'),
(9, 'ACIGTNR-080'),
(10, 'ACIGTNR-100'),
(11, 'ARGBT1-015'),
(12, 'ARGBT1-020'),
(13, 'ARGBT1-025'),
(14, 'ARGBT1-032'),
(15, 'ARGBT1-040'),
(16, 'ARGBT1-050'),
(17, 'ARGBT1-065'),
(18, 'ARGBT1-080'),
(19, 'ARGBT1-100'),
(20, 'ARGBT150-015'),
(21, 'ARGBT150-020'),
(22, 'ARGBT150-025'),
(23, 'ARGBT150-032'),
(24, 'ARGBT150-040'),
(25, 'ARGBT150-050'),
(26, 'ARGBT150-065'),
(27, 'ARGBT150-080'),
(28, 'ARGBT150-100'),
(29, 'B2026 5K-015'),
(30, 'B2026 5K-020'),
(31, 'B2026 5K-025'),
(32, 'B2026 5K-032'),
(33, 'B2026 5K-040'),
(34, 'B2026 5K-050'),
(35, 'F7351/F7301-015'),
(36, 'F7351/F7301-020'),
(37, 'F7351/F7301-025'),
(38, 'F7351/F7301-032'),
(39, 'F7351/F7301-040'),
(40, 'F7351/F7301-050'),
(41, 'F7351/F7301-065'),
(42, 'F7353-050'),
(43, 'F7353-065'),
(44, 'F7353-080'),
(45, 'F7363-050'),
(46, 'F7363-065'),
(47, 'F7363-080'),
(48, 'F7367-015'),
(49, 'F7367-020'),
(50, 'F7367-025'),
(51, 'F7367-032'),
(52, 'F7367-040'),
(53, 'F7367-050'),
(54, 'F7367-065'),
(55, 'F7367-080'),
(56, 'F7367-100'),
(57, 'F7371-015'),
(58, 'F7371-020'),
(59, 'F7371-025'),
(60, 'F7371-032'),
(61, 'F7371-040'),
(62, 'F7409/F7303-015'),
(63, 'F7409/F7303-020'),
(64, 'F7409/F7303-025'),
(65, 'F7409/F7303-032'),
(66, 'F7409/F7303-040'),
(67, 'F7409/F7303-050'),
(68, 'F7409/F7303-065');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_part_number` int(11) NOT NULL,
  `part_number` varchar(30) NOT NULL,
  `part_name` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `part` varchar(20) NOT NULL,
  `material` varchar(20) NOT NULL,
  `weight_core` varchar(20) NOT NULL,
  `weight_casting` varchar(20) NOT NULL,
  `weight_yield` varchar(20) NOT NULL,
  `weight_mach` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_part_number`, `part_number`, `part_name`, `size`, `type`, `part`, `material`, `weight_core`, `weight_casting`, `weight_yield`, `weight_mach`) VALUES
(1, 'ARGBT1-015', 'Gate Valve', '1/2\"', 'GV', 'Body', 'Brass', '0,04 Kg', '0,148 Kg', '', ''),
(2, 'ARGBT1-015', 'Gate Valve', '1/2\"', 'GV', 'Disc', 'Brass', '', '0,036 Kg', '', ''),
(3, 'ARGBT1-015', 'Gate Valve', '1/2\"', 'GV', 'Bonnet', 'Brass', '', '0,06 Kg', '', ''),
(4, 'ARGBT1-020', 'Gate Valve', '3/4\"', 'GV', 'Body', 'Brass', '', '0,245 Kg', '', ''),
(5, 'ARGBT1-020', 'Gate Valve', '3/4\"', 'GV', 'Disc', 'Brass', '', '0,045 Kg', '', ''),
(6, 'ARGBT1-020', 'Gate Valve', '3/4\"', 'GV', 'Bonnet', 'Brass', '', '0,087 Kg', '', ''),
(7, 'ARGBT1-025', 'Gate Valve', '1\"', 'GV', 'Body', 'Brass', '0,12 Kg', '0,3565 Kg', '', ''),
(8, 'ARGBT1-025', 'Gate Valve', '1\"', 'GV', 'Disc', 'Brass', '0,004 Kg', '0,0256 Kg', '', ''),
(9, 'ARGBT1-025', 'Gate Valve', '1\"', 'GV', 'Bonnet', 'Brass', '', '0,12 Kg', '', ''),
(10, 'ARGBT1-032', 'Gate Valve', '1-1/4\"', 'GV', 'Body', 'Brass', '0,21 Kg', '0,58 Kg', '', ''),
(11, 'ARGBT1-032', 'Gate Valve', '1-1/4\"', 'GV', 'Disc', 'Brass', '0,017 Kg', '0,074 Kg', '', ''),
(12, 'ARGBT1-032', 'Gate Valve', '1-1/4\"', 'GV', 'Bonnet', 'Brass', '0,009 Kg', '0,114 Kg', '', ''),
(13, 'ARGBT1-040', 'Gate Valve', '1-1/2\"', 'GV', 'Body', 'Brass', '0,24 Kg', '0,778 Kg', '', ''),
(14, 'ARGBT1-040', 'Gate Valve', '1-1/2\"', 'GV', 'Disc', 'Brass', '', '0,095 Kg', '', ''),
(15, 'ARGBT1-040', 'Gate Valve', '1-1/2\"', 'GV', 'Bonnet', 'Brass', '', '0,154 Kg', '', ''),
(16, 'ARGBT1-050', 'Gate Valve', '2\"', 'GV', 'Body', 'Brass', '', '1,1005 Kg', '', ''),
(17, 'ARGBT1-050', 'Gate Valve', '2\"', 'GV', 'Disc', 'Brass', '', '0,175 Kg', '', ''),
(18, 'ARGBT1-050', 'Gate Valve', '2\"', 'GV', 'Bonnet', 'Brass', '0,013 Kg', '0,211 Kg', '', ''),
(19, 'ARGBT1-065', 'Gate Valve', '2-1/2\"', 'GV', 'Body', 'Brass', '', '2,029 Kg', '', ''),
(20, 'ARGBT1-065', 'Gate Valve', '2-1/2\"', 'GV', 'Disc', 'Brass', '', '0,256 Kg', '', ''),
(21, 'ARGBT1-065', 'Gate Valve', '2-1/2\"', 'GV', 'Bonnet', 'Brass', '', '0,312 Kg', '', ''),
(22, 'ARGBT1-080', 'Gate Valve', '3\"', 'GV', 'Body', 'Brass', '', '2,912 Kg', '', ''),
(23, 'ARGBT1-080', 'Gate Valve', '3\"', 'GV', 'Disc', 'Brass', '', '0,455 Kg', '', ''),
(24, 'ARGBT1-080', 'Gate Valve', '3\"', 'GV', 'Bonnet', 'Brass', '', '0,52 Kg', '', ''),
(25, 'ARGBT1-100', 'Gate Valve', '4\"', 'GV', 'Body', 'Brass', '2,66 Kg', '4,545 Kg', '', ''),
(26, 'ARGBT1-100', 'Gate Valve', '4\"', 'GV', 'Disc', 'Brass', '', '0,697 Kg', '', ''),
(27, 'ARGBT1-100', 'Gate Valve', '4\"', 'GV', 'Bonnet', 'Brass', '', '0,817 Kg', '', ''),
(28, 'ARGBT150-015', 'Gate Valve', '1/2\"', 'GV', 'Body', 'Bronze', '0,04 Kg', '0,166 Kg', '', ''),
(29, 'ARGBT150-015', 'Gate Valve', '1/2\"', 'GV', 'Disc', 'Bronze', '', '0,036 Kg', '', ''),
(30, 'ARGBT150-015', 'Gate Valve', '1/2\"', 'GV', 'Bonnet', 'Bronze', '', '0,312 Kg', '', ''),
(31, 'ARGBT150-020', 'Gate Valve', '3/4\"', 'GV', 'Body', 'Bronze', '', '0,262 Kg', '', ''),
(32, 'ARGBT150-020', 'Gate Valve', '3/4\"', 'GV', 'Disc', 'Bronze', '', '0,0486 Kg', '2,209 Kg', ''),
(33, 'ARGBT150-020', 'Gate Valve', '3/4\"', 'GV', 'Bonnet', 'Bronze', '', '0,118833333 Kg', '4,497 Kg', ''),
(34, 'ARGBT150-025', 'Gate Valve', '1\"', 'GV', 'Body', 'Bronze', '0,12 Kg', '0,374 Kg', '', ''),
(35, 'ARGBT150-025', 'Gate Valve', '1\"', 'GV', 'Disc', 'Bronze', '0,004 Kg', '0,0486 Kg', '2,209 Kg', ''),
(36, 'ARGBT150-025', 'Gate Valve', '1\"', 'GV', 'Bonnet', 'Bronze', '', '0,145 Kg', '', ''),
(37, 'ARGBT150-032', 'Gate Valve', '1-1/4\"', 'GV', 'Body', 'Bronze', '0,21 Kg', '0,591 Kg', '', ''),
(38, 'ARGBT150-032', 'Gate Valve', '1-1/4\"', 'GV', 'Disc', 'Bronze', '0,017 Kg', '0,1149 Kg', '1,734 Kg', ''),
(39, 'ARGBT150-032', 'Gate Valve', '1-1/4\"', 'GV', 'Bonnet', 'Bronze', '0,009 Kg', '0,4018 Kg', '0,4722 Kg', ''),
(40, 'ARGBT150-040', 'Gate Valve', '1-1/2\"', 'GV', 'Body', 'Bronze', '0,24 Kg', '0,778 Kg', '', ''),
(41, 'ARGBT150-040', 'Gate Valve', '1-1/2\"', 'GV', 'Disc', 'Bronze', '', '0,148 Kg', '1,566 Kg', ''),
(42, 'ARGBT150-040', 'Gate Valve', '1-1/2\"', 'GV', 'Bonnet', 'Bronze', '', '0,502125 Kg', '0,563875 Kg', ''),
(43, 'ARGBT150-050', 'Gate Valve', '2\"', 'GV', 'Body', 'Bronze', '', '1,144 Kg', '', ''),
(44, 'ARGBT150-050', 'Gate Valve', '2\"', 'GV', 'Disc', 'Bronze', '', '0,188 Kg', '', ''),
(45, 'ARGBT150-050', 'Gate Valve', '2\"', 'GV', 'Bonnet', 'Bronze', '0,013 Kg', '0,4745 Kg', '0,737125 Kg', ''),
(46, 'ARGBT150-065', 'Gate Valve', '2-1/2\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(47, 'ARGBT150-065', 'Gate Valve', '2-1/2\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(48, 'ARGBT150-065', 'Gate Valve', '2-1/2\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(49, 'ARGBT150-080', 'Gate Valve', '3\"', 'GV', 'Body', 'Bronze', '', '3,28 Kg', '3,264 Kg', ''),
(50, 'ARGBT150-080', 'Gate Valve', '3\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(51, 'ARGBT150-080', 'Gate Valve', '3\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(52, 'ARGBT150-100', 'Gate Valve', '4\"', 'GV', 'Body', 'Bronze', '', '5,4 Kg', '4,774 Kg', ''),
(53, 'ARGBT150-100', 'Gate Valve', '4\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(54, 'ARGBT150-100', 'Gate Valve', '4\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(55, 'B2026 5K-015', 'Gate Valve', '1/2\"', 'B2026', 'Body', 'Bronze', '', '1,195 Kg', '', ''),
(56, 'B2026 5K-015', 'Gate Valve', '1/2\"', 'B2026', 'Disc', 'Bronze', '', '0,1088 Kg', '', ''),
(57, 'B2026 5K-015', 'Gate Valve', '1/2\"', 'B2026', 'Bonnet', 'Bronze', '', '0,1084 Kg', '', ''),
(58, 'B2026 5K-020', 'Gate Valve', '3/4\"', 'B2026', 'Body', 'Bronze', '0,16 Kg', '1,482 Kg', '', ''),
(59, 'B2026 5K-020', 'Gate Valve', '3/4\"', 'B2026', 'Disc', 'Bronze', '', '0,1088 Kg', '', ''),
(60, 'B2026 5K-020', 'Gate Valve', '3/4\"', 'B2026', 'Bonnet', 'Bronze', '', '0,1084 Kg', '', ''),
(61, 'B2026 5K-025', 'Gate Valve', '1\"', 'B2026', 'Body', 'Bronze', '', '1,701 Kg', '', ''),
(62, 'B2026 5K-025', 'Gate Valve', '1\"', 'B2026', 'Disc', 'Bronze', '', '0,088 Kg', '', ''),
(63, 'B2026 5K-025', 'Gate Valve', '1\"', 'B2026', 'Bonnet', 'Bronze', '', '0,1084 Kg', '', ''),
(64, 'B2026 5K-032', 'Gate Valve', '1-1/4\"', 'B2026', 'Body', 'Bronze', '', '3,0375 Kg', '', ''),
(65, 'B2026 5K-032', 'Gate Valve', '1-1/4\"', 'B2026', 'Disc', 'Bronze', '', '0,1096 Kg', '', ''),
(66, 'B2026 5K-032', 'Gate Valve', '1-1/4\"', 'B2026', 'Bonnet', 'Bronze', '', '0,258 Kg', '', ''),
(67, 'B2026 5K-040', 'Gate Valve', '1-1/2\"', 'B2026', 'Body', 'Bronze', '0,358 Kg', '3,591 Kg', '3,526 Kg', ''),
(68, 'B2026 5K-040', 'Gate Valve', '1-1/2\"', 'B2026', 'Disc', 'Bronze', '', '0,112 Kg', '', ''),
(69, 'B2026 5K-040', 'Gate Valve', '1-1/2\"', 'B2026', 'Bonnet', 'Bronze', '', '0,258 Kg', '', ''),
(70, 'B2026 5K-050', 'Gate Valve', '2\"', 'B2026', 'Body', 'Bronze', '', '4,391 Kg', '', ''),
(71, 'B2026 5K-050', 'Gate Valve', '2\"', 'B2026', 'Disc', 'Bronze', '', '0,188 Kg', '', ''),
(72, 'B2026 5K-050', 'Gate Valve', '2\"', 'B2026', 'Bonnet', 'Bronze', '', '0,286 Kg', '', ''),
(73, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Body', 'Cast Iron', '3,417 Kg', '8,303 Kg', '', ''),
(74, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Disc', 'Cast Iron', '0,291 Kg', '2,7995 Kg', '2,1315 Kg', ''),
(75, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Bonnet', 'Cast Iron', '1,216 Kg', '6,606 Kg', '3,673 Kg', ''),
(76, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Yoke', 'Cast Iron', '0,097 Kg', '4,257 Kg', '2,519 Kg', ''),
(77, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Body', 'Cast Iron', '', '10,246 Kg', '', ''),
(78, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Disc', 'Cast Iron', '0,1935 Kg', '1,99675 Kg', '2,6865 Kg', ''),
(79, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Bonnet', 'Cast Iron', '0,883 Kg', '4,5805 Kg', '3,028 Kg', ''),
(80, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Yoke', 'Cast Iron', '0,056 Kg', '1,0885 Kg', '1,7835 Kg', ''),
(81, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Body', 'Cast Iron', '', '', '', ''),
(82, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Disc', 'Cast Iron', '', '', '', ''),
(83, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Bonnet', 'Cast Iron', '', '', '', ''),
(84, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Yoke', 'Cast Iron', '', '', '', ''),
(85, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Body', 'Cast Iron', '5,057 Kg', '', '', ''),
(86, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Disc', 'Cast Iron', '', '', '', ''),
(87, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Bonnet', 'Cast Iron', '5,269 Kg', '', '', ''),
(88, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Yoke', 'Cast Iron', '', '', '', ''),
(89, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Body', 'Cast Iron', '', '', '', ''),
(90, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Disc', 'Cast Iron', '', '', '', ''),
(91, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Bonnet', 'Cast Iron', '', '', '', ''),
(92, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Yoke', 'Cast Iron', '', '', '', ''),
(93, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Body', 'Cast Iron', '', '', '', ''),
(94, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Disc', 'Cast Iron', '', '', '', ''),
(95, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Bonnet', 'Cast Iron', '', '', '', ''),
(96, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Yoke', 'Cast Iron', '', '', '', ''),
(97, 'F7367-015', 'K Gate', '1/2\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(98, 'F7367-015', 'K Gate', '1/2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(99, 'F7367-015', 'K Gate', '1/2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(100, 'F7367-020', 'K Gate', '3/4\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(101, 'F7367-020', 'K Gate', '3/4\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(102, 'F7367-020', 'K Gate', '3/4\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(103, 'F7367-025', 'K Gate', '1\"', 'F7367', 'Body', 'Bronze', '', '', '4,5363 Kg', ''),
(104, 'F7367-025', 'K Gate', '1\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(105, 'F7367-025', 'K Gate', '1\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(106, 'F7367-032', 'K Gate', '1-1/4\"', 'F7367', 'Body', 'Bronze', '0,444 Kg', '', '4,6875 Kg', ''),
(107, 'F7367-032', 'K Gate', '1-1/4\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(108, 'F7367-032', 'K Gate', '1-1/4\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(109, 'F7367-040', 'K Gate', '1-1/2\"', 'F7367', 'Body', 'Bronze', '0,639 Kg', '', '5,4485 Kg', ''),
(110, 'F7367-040', 'K Gate', '1-1/2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(111, 'F7367-040', 'K Gate', '1-1/2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(112, 'F7367-050', 'K Gate', '2\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(113, 'F7367-050', 'K Gate', '2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(114, 'F7367-050', 'K Gate', '2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(115, 'F7367-065', 'K Gate', '2-1/2\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(116, 'F7367-065', 'K Gate', '2-1/2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(117, 'F7367-065', 'K Gate', '2-1/2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(118, 'F7367-080', 'K Gate', '3\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(119, 'F7367-080', 'K Gate', '3\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(120, 'F7367-080', 'K Gate', '3\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(121, 'F7367-100', 'K Gate', '4\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(122, 'F7367-100', 'K Gate', '4\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(123, 'F7367-100', 'K Gate', '4\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(124, 'ACIGT4-040', 'Gate Valve CI Rising', '1-1/2\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(125, 'ACIGT4-040', 'Gate Valve CI Rising', '1-1/2\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(126, 'ACIGT4-040', 'Gate Valve CI Rising', '1-1/2\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(127, 'ACIGT4-050', 'Gate Valve CI Rising', '2\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(128, 'ACIGT4-050', 'Gate Valve CI Rising', '2\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(129, 'ACIGT4-050', 'Gate Valve CI Rising', '2\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(130, 'ACIGT4-080', 'Gate Valve CI Rising', '3\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(131, 'ACIGT4-080', 'Gate Valve CI Rising', '3\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(132, 'ACIGT4-080', 'Gate Valve CI Rising', '3\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(133, 'ACIGT4-100', 'Gate Valve CI Rising', '4\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(134, 'ACIGT4-100', 'Gate Valve CI Rising', '4\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(135, 'ACIGT4-100', 'Gate Valve CI Rising', '4\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(136, 'ACIGTNR-050', 'Gate CI NR', '2\"', 'ACIGTNR', 'Body', 'Cast Iron', '', '', '', ''),
(137, 'ACIGTNR-050', 'Gate CI NR', '2\"', 'ACIGTNR', 'Disc', 'Cast Iron', '', '', '', ''),
(138, 'ACIGTNR-050', 'Gate CI NR', '2\"', 'ACIGTNR', 'Bonnet', 'Cast Iron', '', '', '', ''),
(139, 'ACIGTNR-080', 'Gate CI NR', '3\"', 'ACIGTNR', 'Body', 'Cast Iron', '', '', '', ''),
(140, 'ACIGTNR-080', 'Gate CI NR', '3\"', 'ACIGTNR', 'Disc', 'Cast Iron', '', '', '', ''),
(141, 'ACIGTNR-080', 'Gate CI NR', '3\"', 'ACIGTNR', 'Bonnet', 'Cast Iron', '', '', '', ''),
(142, 'ACIGTNR-100', 'Gate CI NR', '4\"', 'ACIGTNR', 'Body', 'Cast Iron', '', '', '', ''),
(143, 'ACIGTNR-100', 'Gate CI NR', '4\"', 'ACIGTNR', 'Disc', 'Cast Iron', '', '', '', ''),
(144, 'ACIGTNR-100', 'Gate CI NR', '4\"', 'ACIGTNR', 'Bonnet', 'Cast Iron', '', '', '', ''),
(145, 'ACIGT16-040', 'Gate CI FE', '1-1/2\"', 'ACIGT16', 'Body', 'Cast Iron', '', '', '', ''),
(146, 'ACIGT16-040', 'Gate CI FE', '1-1/2\"', 'ACIGT16', 'Disc', 'Cast Iron', '', '', '', ''),
(147, 'ACIGT16-040', 'Gate CI FE', '1-1/2\"', 'ACIGT16', 'Bonnet', 'Cast Iron', '', '', '', ''),
(148, 'ACIGT16-050', 'Gate CI FE', '2\"', 'ACIGT16', 'Body', 'Cast Iron', '', '', '', ''),
(149, 'ACIGT16-050', 'Gate CI FE', '2\"', 'ACIGT16', 'Disc', 'Cast Iron', '', '', '', ''),
(150, 'ACIGT16-050', 'Gate CI FE', '2\"', 'ACIGT16', 'Bonnet', 'Cast Iron', '', '', '', ''),
(151, 'ACIGT16-100', 'Gate CI FE', '4\"', 'ACIGT16', 'Body', 'Cast Iron', '', '', '', ''),
(152, 'ACIGT16-100', 'Gate CI FE', '4\"', 'ACIGT16', 'Disc', 'Cast Iron', '', '', '', ''),
(153, 'ACIGT16-100', 'Gate CI FE', '4\"', 'ACIGT16', 'Bonnet', 'Cast Iron', '', '', '', ''),
(154, 'F7351/F7301-015', 'Globe Valve 5K', '1/2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(155, 'F7351/F7301-015', 'Globe Valve 5K', '1/2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(156, 'F7351/F7301-015', 'Globe Valve 5K', '1/2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(157, 'F7351/F7301-020', 'Globe Valve 5K', '3/4\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(158, 'F7351/F7301-020', 'Globe Valve 5K', '3/4\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(159, 'F7351/F7301-020', 'Globe Valve 5K', '3/4\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(160, 'F7351/F7301-025', 'Globe Valve 5K', '1\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(161, 'F7351/F7301-025', 'Globe Valve 5K', '1\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(162, 'F7351/F7301-025', 'Globe Valve 5K', '1\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(163, 'F7351/F7301-032', 'Globe Valve 5K', '1-1/4\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(164, 'F7351/F7301-032', 'Globe Valve 5K', '1-1/4\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(165, 'F7351/F7301-032', 'Globe Valve 5K', '1-1/4\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(166, 'F7351/F7301-040', 'Globe Valve 5K', '1-1/2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(167, 'F7351/F7301-040', 'Globe Valve 5K', '1-1/2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(168, 'F7351/F7301-040', 'Globe Valve 5K', '1-1/2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(169, 'F7351/F7301-050', 'Globe Valve 5K', '2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(170, 'F7351/F7301-050', 'Globe Valve 5K', '2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(171, 'F7351/F7301-050', 'Globe Valve 5K', '2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(172, 'F7351/F7301-065', 'Globe Valve 5K', '2-1/2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(173, 'F7351/F7301-065', 'Globe Valve 5K', '2-1/2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(174, 'F7351/F7301-065', 'Globe Valve 5K', '2-1/2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(175, 'F7409/F7303-015', 'Globe Valve 16K', '1/2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(176, 'F7409/F7303-015', 'Globe Valve 16K', '1/2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(177, 'F7409/F7303-015', 'Globe Valve 16K', '1/2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(178, 'F7409/F7303-020', 'Globe Valve 16K', '3/4\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(179, 'F7409/F7303-020', 'Globe Valve 16K', '3/4\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(180, 'F7409/F7303-020', 'Globe Valve 16K', '3/4\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(181, 'F7409/F7303-025', 'Globe Valve 16K', '1\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(182, 'F7409/F7303-025', 'Globe Valve 16K', '1\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(183, 'F7409/F7303-025', 'Globe Valve 16K', '1\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(184, 'F7409/F7303-032', 'Globe Valve 16K', '1-1/4\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(185, 'F7409/F7303-032', 'Globe Valve 16K', '1-1/4\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(186, 'F7409/F7303-032', 'Globe Valve 16K', '1-1/4\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(187, 'F7409/F7303-040', 'Globe Valve 16K', '1-1/2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(188, 'F7409/F7303-040', 'Globe Valve 16K', '1-1/2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(189, 'F7409/F7303-040', 'Globe Valve 16K', '1-1/2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(190, 'F7409/F7303-050', 'Globe Valve 16K', '2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(191, 'F7409/F7303-050', 'Globe Valve 16K', '2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(192, 'F7409/F7303-050', 'Globe Valve 16K', '2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(193, 'F7409/F7303-065', 'Globe Valve 16K', '2-1/2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(194, 'F7409/F7303-065', 'Globe Valve 16K', '2-1/2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(195, 'F7409/F7303-065', 'Globe Valve 16K', '2-1/2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(196, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Body', 'Bronze', '', '', '', ''),
(197, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Disc', 'Bronze', '', '', '', ''),
(198, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Bonnet', 'Bronze', '', '', '', ''),
(199, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Yoke', 'Bronze', '', '', '', ''),
(200, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Body', 'Bronze', '', '', '', ''),
(201, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Disc', 'Bronze', '', '', '', ''),
(202, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Bonnet', 'Bronze', '', '', '', ''),
(203, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Yoke', 'Bronze', '', '', '', ''),
(204, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Body', 'Bronze', '', '', '', ''),
(205, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Disc', 'Bronze', '', '', '', ''),
(206, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Bonnet', 'Bronze', '', '', '', ''),
(207, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Yoke', 'Bronze', '', '', '', ''),
(208, 'F7371-015', 'Swing Check', '1/2\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(209, 'F7371-015', 'Swing Check', '1/2\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(210, 'F7371-015', 'Swing Check', '1/2\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(211, 'F7371-020', 'Swing Check', '3/4\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(212, 'F7371-020', 'Swing Check', '3/4\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(213, 'F7371-020', 'Swing Check', '3/4\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(214, 'F7371-025', 'Swing Check', '1\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(215, 'F7371-025', 'Swing Check', '1\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(216, 'F7371-025', 'Swing Check', '1\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(217, 'F7371-032', 'Swing Check', '1-1/4\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(218, 'F7371-032', 'Swing Check', '1-1/4\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(219, 'F7371-032', 'Swing Check', '1-1/4\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(220, 'F7371-040', 'Swing Check', '1-1/2\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(221, 'F7371-040', 'Swing Check', '1-1/2\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(222, 'F7371-040', 'Swing Check', '1-1/2\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(769, 'ARGBT1-015', 'Gate Valve', '1/2\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(770, 'ARGBT1-015', 'Gate Valve', '1/2\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(771, 'ARGBT1-015', 'Gate Valve', '1/2\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(772, 'ARGBT1-020', 'Gate Valve', '3/4\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(773, 'ARGBT1-020', 'Gate Valve', '3/4\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(774, 'ARGBT1-020', 'Gate Valve', '3/4\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(775, 'ARGBT1-025', 'Gate Valve', '1\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(776, 'ARGBT1-025', 'Gate Valve', '1\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(777, 'ARGBT1-025', 'Gate Valve', '1\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(778, 'ARGBT1-032', 'Gate Valve', '1-1/4\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(779, 'ARGBT1-032', 'Gate Valve', '1-1/4\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(780, 'ARGBT1-032', 'Gate Valve', '1-1/4\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(781, 'ARGBT1-040', 'Gate Valve', '1-1/2\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(782, 'ARGBT1-040', 'Gate Valve', '1-1/2\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(783, 'ARGBT1-040', 'Gate Valve', '1-1/2\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(784, 'ARGBT1-050', 'Gate Valve', '2\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(785, 'ARGBT1-050', 'Gate Valve', '2\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(786, 'ARGBT1-050', 'Gate Valve', '2\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(787, 'ARGBT1-065', 'Gate Valve', '2-1/2\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(788, 'ARGBT1-065', 'Gate Valve', '2-1/2\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(789, 'ARGBT1-065', 'Gate Valve', '2-1/2\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(790, 'ARGBT1-080', 'Gate Valve', '3\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(791, 'ARGBT1-080', 'Gate Valve', '3\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(792, 'ARGBT1-080', 'Gate Valve', '3\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(793, 'ARGBT1-100', 'Gate Valve', '4\"', 'GV', 'Body', 'Brass', '', '', '', ''),
(794, 'ARGBT1-100', 'Gate Valve', '4\"', 'GV', 'Disc', 'Brass', '', '', '', ''),
(795, 'ARGBT1-100', 'Gate Valve', '4\"', 'GV', 'Bonnet', 'Brass', '', '', '', ''),
(796, 'ARGBT150-015', 'Gate Valve', '1/2\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(797, 'ARGBT150-015', 'Gate Valve', '1/2\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(798, 'ARGBT150-015', 'Gate Valve', '1/2\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(799, 'ARGBT150-020', 'Gate Valve', '3/4\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(800, 'ARGBT150-020', 'Gate Valve', '3/4\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(801, 'ARGBT150-020', 'Gate Valve', '3/4\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(802, 'ARGBT150-025', 'Gate Valve', '1\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(803, 'ARGBT150-025', 'Gate Valve', '1\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(804, 'ARGBT150-025', 'Gate Valve', '1\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(805, 'ARGBT150-032', 'Gate Valve', '1-1/4\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(806, 'ARGBT150-032', 'Gate Valve', '1-1/4\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(807, 'ARGBT150-032', 'Gate Valve', '1-1/4\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(808, 'ARGBT150-040', 'Gate Valve', '1-1/2\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(809, 'ARGBT150-040', 'Gate Valve', '1-1/2\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(810, 'ARGBT150-040', 'Gate Valve', '1-1/2\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(811, 'ARGBT150-050', 'Gate Valve', '2\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(812, 'ARGBT150-050', 'Gate Valve', '2\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(813, 'ARGBT150-050', 'Gate Valve', '2\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(814, 'ARGBT150-065', 'Gate Valve', '2-1/2\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(815, 'ARGBT150-065', 'Gate Valve', '2-1/2\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(816, 'ARGBT150-065', 'Gate Valve', '2-1/2\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(817, 'ARGBT150-080', 'Gate Valve', '3\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(818, 'ARGBT150-080', 'Gate Valve', '3\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(819, 'ARGBT150-080', 'Gate Valve', '3\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(820, 'ARGBT150-100', 'Gate Valve', '4\"', 'GV', 'Body', 'Bronze', '', '', '', ''),
(821, 'ARGBT150-100', 'Gate Valve', '4\"', 'GV', 'Disc', 'Bronze', '', '', '', ''),
(822, 'ARGBT150-100', 'Gate Valve', '4\"', 'GV', 'Bonnet', 'Bronze', '', '', '', ''),
(823, 'B2026 5K-015', 'Gate Valve', '1/2\"', 'B2026', 'Body', 'Bronze', '', '', '', ''),
(824, 'B2026 5K-015', 'Gate Valve', '1/2\"', 'B2026', 'Disc', 'Bronze', '', '', '', ''),
(825, 'B2026 5K-015', 'Gate Valve', '1/2\"', 'B2026', 'Bonnet', 'Bronze', '', '', '', ''),
(826, 'B2026 5K-020', 'Gate Valve', '3/4\"', 'B2026', 'Body', 'Bronze', '', '', '', ''),
(827, 'B2026 5K-020', 'Gate Valve', '3/4\"', 'B2026', 'Disc', 'Bronze', '', '', '', ''),
(828, 'B2026 5K-020', 'Gate Valve', '3/4\"', 'B2026', 'Bonnet', 'Bronze', '', '', '', ''),
(829, 'B2026 5K-025', 'Gate Valve', '1\"', 'B2026', 'Body', 'Bronze', '', '', '', ''),
(830, 'B2026 5K-025', 'Gate Valve', '1\"', 'B2026', 'Disc', 'Bronze', '', '', '', ''),
(831, 'B2026 5K-025', 'Gate Valve', '1\"', 'B2026', 'Bonnet', 'Bronze', '', '', '', ''),
(832, 'B2026 5K-032', 'Gate Valve', '1-1/4\"', 'B2026', 'Body', 'Bronze', '', '', '', ''),
(833, 'B2026 5K-032', 'Gate Valve', '1-1/4\"', 'B2026', 'Disc', 'Bronze', '', '', '', ''),
(834, 'B2026 5K-032', 'Gate Valve', '1-1/4\"', 'B2026', 'Bonnet', 'Bronze', '', '', '', ''),
(835, 'B2026 5K-040', 'Gate Valve', '1-1/2\"', 'B2026', 'Body', 'Bronze', '', '', '', ''),
(836, 'B2026 5K-040', 'Gate Valve', '1-1/2\"', 'B2026', 'Disc', 'Bronze', '', '', '', ''),
(837, 'B2026 5K-040', 'Gate Valve', '1-1/2\"', 'B2026', 'Bonnet', 'Bronze', '', '', '', ''),
(838, 'B2026 5K-050', 'Gate Valve', '2\"', 'B2026', 'Body', 'Bronze', '', '', '', ''),
(839, 'B2026 5K-050', 'Gate Valve', '2\"', 'B2026', 'Disc', 'Bronze', '', '', '', ''),
(840, 'B2026 5K-050', 'Gate Valve', '2\"', 'B2026', 'Bonnet', 'Bronze', '', '', '', ''),
(841, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Body', 'Cast Iron', '', '', '', ''),
(842, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Disc', 'Cast Iron', '', '', '', ''),
(843, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Bonnet', 'Cast Iron', '', '', '', ''),
(844, 'F7363-050', 'Gate CI', '2\"', 'F7363', 'Yoke', 'Cast Iron', '', '', '', ''),
(845, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Body', 'Cast Iron', '', '', '', ''),
(846, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Disc', 'Cast Iron', '', '', '', ''),
(847, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Bonnet', 'Cast Iron', '', '', '', ''),
(848, 'F7363-065', 'Gate CI', '2-1/2\"', 'F7363', 'Yoke', 'Cast Iron', '', '', '', ''),
(849, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Body', 'Cast Iron', '', '', '', ''),
(850, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Disc', 'Cast Iron', '', '', '', ''),
(851, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Bonnet', 'Cast Iron', '', '', '', ''),
(852, 'F7363-080', 'Gate CI', '3\"', 'F7363', 'Yoke', 'Cast Iron', '', '', '', ''),
(853, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Body', 'Cast Iron', '', '', '', ''),
(854, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Disc', 'Cast Iron', '', '', '', ''),
(855, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Bonnet', 'Cast Iron', '', '', '', ''),
(856, 'F7353-050', 'Globe CI', '2\"', 'F7353', 'Yoke', 'Cast Iron', '', '', '', ''),
(857, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Body', 'Cast Iron', '', '', '', ''),
(858, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Disc', 'Cast Iron', '', '', '', ''),
(859, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Bonnet', 'Cast Iron', '', '', '', ''),
(860, 'F7353-065', 'Globe CI', '2-1/2\"', 'F7353', 'Yoke', 'Cast Iron', '', '', '', ''),
(861, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Body', 'Cast Iron', '', '', '', ''),
(862, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Disc', 'Cast Iron', '', '', '', ''),
(863, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Bonnet', 'Cast Iron', '', '', '', ''),
(864, 'F7353-080', 'Globe CI', '3\"', 'F7353', 'Yoke', 'Cast Iron', '', '', '', ''),
(865, 'F7367-015', 'K Gate', '1/2\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(866, 'F7367-015', 'K Gate', '1/2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(867, 'F7367-015', 'K Gate', '1/2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(868, 'F7367-020', 'K Gate', '3/4\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(869, 'F7367-020', 'K Gate', '3/4\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(870, 'F7367-020', 'K Gate', '3/4\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(871, 'F7367-025', 'K Gate', '1\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(872, 'F7367-025', 'K Gate', '1\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(873, 'F7367-025', 'K Gate', '1\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(874, 'F7367-032', 'K Gate', '1-1/4\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(875, 'F7367-032', 'K Gate', '1-1/4\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(876, 'F7367-032', 'K Gate', '1-1/4\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(877, 'F7367-040', 'K Gate', '1-1/2\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(878, 'F7367-040', 'K Gate', '1-1/2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(879, 'F7367-040', 'K Gate', '1-1/2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(880, 'F7367-050', 'K Gate', '2\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(881, 'F7367-050', 'K Gate', '2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(882, 'F7367-050', 'K Gate', '2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(883, 'F7367-065', 'K Gate', '2-1/2\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(884, 'F7367-065', 'K Gate', '2-1/2\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(885, 'F7367-065', 'K Gate', '2-1/2\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(886, 'F7367-080', 'K Gate', '3\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(887, 'F7367-080', 'K Gate', '3\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(888, 'F7367-080', 'K Gate', '3\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(889, 'F7367-100', 'K Gate', '4\"', 'F7367', 'Body', 'Bronze', '', '', '', ''),
(890, 'F7367-100', 'K Gate', '4\"', 'F7367', 'Disc', 'Bronze', '', '', '', ''),
(891, 'F7367-100', 'K Gate', '4\"', 'F7367', 'Bonnet', 'Bronze', '', '', '', ''),
(892, 'ACIGT4-040', 'Gate Valve CI Rising', '1-1/2\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(893, 'ACIGT4-040', 'Gate Valve CI Rising', '1-1/2\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(894, 'ACIGT4-040', 'Gate Valve CI Rising', '1-1/2\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(895, 'ACIGT4-050', 'Gate Valve CI Rising', '2\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(896, 'ACIGT4-050', 'Gate Valve CI Rising', '2\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(897, 'ACIGT4-050', 'Gate Valve CI Rising', '2\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(898, 'ACIGT4-080', 'Gate Valve CI Rising', '3\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(899, 'ACIGT4-080', 'Gate Valve CI Rising', '3\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(900, 'ACIGT4-080', 'Gate Valve CI Rising', '3\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(901, 'ACIGT4-100', 'Gate Valve CI Rising', '4\"', 'ACIGT4', 'Body', 'Cast Iron', '', '', '', ''),
(902, 'ACIGT4-100', 'Gate Valve CI Rising', '4\"', 'ACIGT4', 'Disc', 'Cast Iron', '', '', '', ''),
(903, 'ACIGT4-100', 'Gate Valve CI Rising', '4\"', 'ACIGT4', 'Bonnet', 'Cast Iron', '', '', '', ''),
(904, 'ACIGTNR-050', 'Gate CI NR', '2\"', 'ACIGTNR', 'Body', 'Cast Iron', '', '', '', ''),
(905, 'ACIGTNR-050', 'Gate CI NR', '2\"', 'ACIGTNR', 'Disc', 'Cast Iron', '', '', '', ''),
(906, 'ACIGTNR-050', 'Gate CI NR', '2\"', 'ACIGTNR', 'Bonnet', 'Cast Iron', '', '', '', ''),
(907, 'ACIGTNR-080', 'Gate CI NR', '3\"', 'ACIGTNR', 'Body', 'Cast Iron', '', '', '', ''),
(908, 'ACIGTNR-080', 'Gate CI NR', '3\"', 'ACIGTNR', 'Disc', 'Cast Iron', '', '', '', ''),
(909, 'ACIGTNR-080', 'Gate CI NR', '3\"', 'ACIGTNR', 'Bonnet', 'Cast Iron', '', '', '', ''),
(910, 'ACIGTNR-100', 'Gate CI NR', '4\"', 'ACIGTNR', 'Body', 'Cast Iron', '', '', '', ''),
(911, 'ACIGTNR-100', 'Gate CI NR', '4\"', 'ACIGTNR', 'Disc', 'Cast Iron', '', '', '', ''),
(912, 'ACIGTNR-100', 'Gate CI NR', '4\"', 'ACIGTNR', 'Bonnet', 'Cast Iron', '', '', '', ''),
(913, 'ACIGT16-040', 'Gate CI FE', '1-1/2\"', 'ACIGT16', 'Body', 'Cast Iron', '', '', '', ''),
(914, 'ACIGT16-040', 'Gate CI FE', '1-1/2\"', 'ACIGT16', 'Disc', 'Cast Iron', '', '', '', ''),
(915, 'ACIGT16-040', 'Gate CI FE', '1-1/2\"', 'ACIGT16', 'Bonnet', 'Cast Iron', '', '', '', ''),
(916, 'ACIGT16-050', 'Gate CI FE', '2\"', 'ACIGT16', 'Body', 'Cast Iron', '', '', '', ''),
(917, 'ACIGT16-050', 'Gate CI FE', '2\"', 'ACIGT16', 'Disc', 'Cast Iron', '', '', '', ''),
(918, 'ACIGT16-050', 'Gate CI FE', '2\"', 'ACIGT16', 'Bonnet', 'Cast Iron', '', '', '', ''),
(919, 'ACIGT16-100', 'Gate CI FE', '4\"', 'ACIGT16', 'Body', 'Cast Iron', '', '', '', ''),
(920, 'ACIGT16-100', 'Gate CI FE', '4\"', 'ACIGT16', 'Disc', 'Cast Iron', '', '', '', ''),
(921, 'ACIGT16-100', 'Gate CI FE', '4\"', 'ACIGT16', 'Bonnet', 'Cast Iron', '', '', '', ''),
(922, 'F7351/F7301-015', 'Globe Valve 5K', '1/2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(923, 'F7351/F7301-015', 'Globe Valve 5K', '1/2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(924, 'F7351/F7301-015', 'Globe Valve 5K', '1/2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(925, 'F7351/F7301-020', 'Globe Valve 5K', '3/4\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(926, 'F7351/F7301-020', 'Globe Valve 5K', '3/4\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(927, 'F7351/F7301-020', 'Globe Valve 5K', '3/4\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(928, 'F7351/F7301-025', 'Globe Valve 5K', '1\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(929, 'F7351/F7301-025', 'Globe Valve 5K', '1\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(930, 'F7351/F7301-025', 'Globe Valve 5K', '1\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(931, 'F7351/F7301-032', 'Globe Valve 5K', '1-1/4\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(932, 'F7351/F7301-032', 'Globe Valve 5K', '1-1/4\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(933, 'F7351/F7301-032', 'Globe Valve 5K', '1-1/4\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(934, 'F7351/F7301-040', 'Globe Valve 5K', '1-1/2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(935, 'F7351/F7301-040', 'Globe Valve 5K', '1-1/2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(936, 'F7351/F7301-040', 'Globe Valve 5K', '1-1/2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(937, 'F7351/F7301-050', 'Globe Valve 5K', '2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(938, 'F7351/F7301-050', 'Globe Valve 5K', '2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(939, 'F7351/F7301-050', 'Globe Valve 5K', '2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(940, 'F7351/F7301-065', 'Globe Valve 5K', '2-1/2\"', 'F7351/F7301', 'Body', 'Bronze', '', '', '', ''),
(941, 'F7351/F7301-065', 'Globe Valve 5K', '2-1/2\"', 'F7351/F7301', 'Disc', 'Bronze', '', '', '', ''),
(942, 'F7351/F7301-065', 'Globe Valve 5K', '2-1/2\"', 'F7351/F7301', 'Bonnet', 'Bronze', '', '', '', ''),
(943, 'F7409/F7303-015', 'Globe Valve 16K', '1/2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(944, 'F7409/F7303-015', 'Globe Valve 16K', '1/2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(945, 'F7409/F7303-015', 'Globe Valve 16K', '1/2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(946, 'F7409/F7303-020', 'Globe Valve 16K', '3/4\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(947, 'F7409/F7303-020', 'Globe Valve 16K', '3/4\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(948, 'F7409/F7303-020', 'Globe Valve 16K', '3/4\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(949, 'F7409/F7303-025', 'Globe Valve 16K', '1\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(950, 'F7409/F7303-025', 'Globe Valve 16K', '1\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(951, 'F7409/F7303-025', 'Globe Valve 16K', '1\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(952, 'F7409/F7303-032', 'Globe Valve 16K', '1-1/4\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(953, 'F7409/F7303-032', 'Globe Valve 16K', '1-1/4\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(954, 'F7409/F7303-032', 'Globe Valve 16K', '1-1/4\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(955, 'F7409/F7303-040', 'Globe Valve 16K', '1-1/2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(956, 'F7409/F7303-040', 'Globe Valve 16K', '1-1/2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(957, 'F7409/F7303-040', 'Globe Valve 16K', '1-1/2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(958, 'F7409/F7303-050', 'Globe Valve 16K', '2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(959, 'F7409/F7303-050', 'Globe Valve 16K', '2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(960, 'F7409/F7303-050', 'Globe Valve 16K', '2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(961, 'F7409/F7303-065', 'Globe Valve 16K', '2-1/2\"', 'F7409/F7303', 'Body', 'Bronze', '', '', '', ''),
(962, 'F7409/F7303-065', 'Globe Valve 16K', '2-1/2\"', 'F7409/F7303', 'Disc', 'Bronze', '', '', '', ''),
(963, 'F7409/F7303-065', 'Globe Valve 16K', '2-1/2\"', 'F7409/F7303', 'Bonnet', 'Bronze', '', '', '', ''),
(964, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Body', 'Bronze', '', '', '', ''),
(965, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Disc', 'Bronze', '', '', '', ''),
(966, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Bonnet', 'Bronze', '', '', '', ''),
(967, 'F7363-050', 'Gate Valve', '2\"', 'F7363', 'Yoke', 'Bronze', '', '', '', ''),
(968, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Body', 'Bronze', '', '', '', ''),
(969, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Disc', 'Bronze', '', '', '', ''),
(970, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Bonnet', 'Bronze', '', '', '', ''),
(971, 'F7363-065', 'Gate Valve', '2-1/2\"', 'F7363', 'Yoke', 'Bronze', '', '', '', ''),
(972, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Body', 'Bronze', '', '', '', ''),
(973, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Disc', 'Bronze', '', '', '', ''),
(974, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Bonnet', 'Bronze', '', '', '', ''),
(975, 'F7363-080', 'Gate Valve', '3\"', 'F7363', 'Yoke', 'Bronze', '', '', '', ''),
(976, 'F7371-015', 'Swing Check', '1/2\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(977, 'F7371-015', 'Swing Check', '1/2\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(978, 'F7371-015', 'Swing Check', '1/2\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(979, 'F7371-020', 'Swing Check', '3/4\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(980, 'F7371-020', 'Swing Check', '3/4\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(981, 'F7371-020', 'Swing Check', '3/4\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(982, 'F7371-025', 'Swing Check', '1\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(983, 'F7371-025', 'Swing Check', '1\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(984, 'F7371-025', 'Swing Check', '1\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(985, 'F7371-032', 'Swing Check', '1-1/4\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(986, 'F7371-032', 'Swing Check', '1-1/4\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(987, 'F7371-032', 'Swing Check', '1-1/4\"', 'F7371', 'Bonnet', 'Bronze', '', '', '', ''),
(988, 'F7371-040', 'Swing Check', '1-1/2\"', 'F7371', 'Body', 'Bronze', '', '', '', ''),
(989, 'F7371-040', 'Swing Check', '1-1/2\"', 'F7371', 'Disc', 'Bronze', '', '', '', ''),
(990, 'F7371-040', 'Swing Check', '1-1/2\"', 'F7371', 'Bonnet', 'Bronze', '0', '0.00 Kg', '0', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id_size` int(11) NOT NULL,
  `size` varchar(10) NOT NULL,
  `dn` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_size`
--

INSERT INTO `tbl_size` (`id_size`, `size`, `dn`) VALUES
(1, '1/2\"', 15),
(2, '3/4\"', 20),
(3, '1\"', 25),
(4, '1-1/4\"', 32),
(5, '1-1/2\"', 40),
(6, '2\"', 50),
(7, '2-1/2\"', 80),
(8, '3\"', 100),
(9, '4\"', 65);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_type`
--

CREATE TABLE `tbl_type` (
  `id_type` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_type`
--

INSERT INTO `tbl_type` (`id_type`, `type`) VALUES
(1, 'GV'),
(2, 'B2026'),
(3, 'F7363'),
(4, 'F7367'),
(5, 'ACIGT4'),
(6, 'ACIGTNR'),
(7, 'ACIGT16'),
(8, 'F7351/F7301'),
(9, 'F7409/F7303'),
(10, 'F7371');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_users` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(7, 'PPIC', 'ppic.mav@gmail.com', '$2y$04$1xqPHSLJ7ZxrPDA7QExpiO4h.x8KKbvb8.GfwyhUXlBiSA5KuhUdq', 'helmet2.png', 3, 'y'),
(8, 'QC', 'qc.mav@gmail.com', '$2y$04$Prwq7SeYrPKYmpozR9F/ZuAQLdis8LxeAxmscztzs3ntAe6B8QvWi', 'helmet.png', 4, 'y'),
(9, 'Admin Produksi', 'produksi.mav@gmail.com', '$2y$04$GP1IXs5ZzoKcv/4ZHhRoiu4iFpgYuZ/7hLwaDzYDBrqvO5gz2WYGG', 'helmet1.png', 5, 'y'),
(10, 'Admin', 'admin@gmail.com', '$2y$04$cRqaN.grzw3YEjVNMAMumeai0iXrBCmLPHsPYvTUl05E4uRdAyfSi', 'atomix_user311.png', 2, 'y'),
(12, 'Super Admin', 'superadmin@gmail.com', '$2y$04$gkpiAzppaEYoFTyDI1L9PuViIQqwL6dTV3Bi7VtnQ5AcFzLxz8B8G', 'icons81.png', 1, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'PPIC'),
(4, 'QC'),
(5, 'Produksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wo`
--

CREATE TABLE `tbl_wo` (
  `ID` int(10) NOT NULL,
  `no_wo` varchar(25) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_wo`
--

INSERT INTO `tbl_wo` (`ID`, `no_wo`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 'WO-20211113-0001', '2021-11-16', '2021-11-24'),
(2, 'WO-20211113-0002', '2021-11-16', '2021-11-25'),
(3, 'WO-20211113-0003', '2021-11-14', '2021-11-15'),
(5, 'WO-20211116-0004', '2021-11-16', '2021-11-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wo_casting`
--

CREATE TABLE `tbl_wo_casting` (
  `id_wo_casting` int(11) NOT NULL,
  `no_wo_casting` varchar(25) NOT NULL,
  `type_wo` varchar(25) NOT NULL,
  `part_number_casting` varchar(25) NOT NULL,
  `part_name_casting` varchar(25) NOT NULL,
  `part_casting` varchar(25) NOT NULL,
  `size_casting` varchar(25) NOT NULL,
  `plan_casting` int(10) NOT NULL,
  `actual_casting` int(10) NOT NULL,
  `ok_casting` int(10) NOT NULL,
  `ng_casting` int(10) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_wo_casting`
--

INSERT INTO `tbl_wo_casting` (`id_wo_casting`, `no_wo_casting`, `type_wo`, `part_number_casting`, `part_name_casting`, `part_casting`, `size_casting`, `plan_casting`, `actual_casting`, `ok_casting`, `ng_casting`, `deskripsi`) VALUES
(1, 'WO-20211113-0002', 'CASTING', 'ARGBT1-032', 'Gate Valve', 'Body', '1-1/4\"', 50, 0, 0, 0, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wo_core`
--

CREATE TABLE `tbl_wo_core` (
  `id_wo_core` int(11) NOT NULL,
  `no_wo_core` varchar(25) NOT NULL,
  `type_wo` varchar(25) NOT NULL,
  `part_number_core` varchar(25) NOT NULL,
  `part_name_core` varchar(25) NOT NULL,
  `part_core` varchar(25) NOT NULL,
  `size_core` varchar(25) NOT NULL,
  `plan_core` int(10) NOT NULL,
  `actual_core` int(10) NOT NULL,
  `ok_core` int(10) NOT NULL,
  `ng_core` int(10) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_wo_core`
--

INSERT INTO `tbl_wo_core` (`id_wo_core`, `no_wo_core`, `type_wo`, `part_number_core`, `part_name_core`, `part_core`, `size_core`, `plan_core`, `actual_core`, `ok_core`, `ng_core`, `deskripsi`) VALUES
(2, 'WO-20211113-0001', 'CORE', 'ARGBT1-015', 'Gate Valve', 'Body', '1/2\"', 25, 0, 0, 0, '-'),
(3, 'WO-20211113-0002', 'CASTING', 'ARGBT1-020', 'Gate Valve', 'Body', '3/4\"', 10, 0, 0, 0, '-'),
(4, 'WO-20211113-0001', 'CORE', 'ARGBT1-025', 'Gate Valve', 'Body', '1\"', 10, 0, 0, 0, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wo_detail`
--

CREATE TABLE `tbl_wo_detail` (
  `id_wo_detail` int(11) NOT NULL,
  `no_wo_detail` varchar(25) NOT NULL,
  `type_wo` enum('CORE','CASTING','FINISHING') NOT NULL,
  `status_wo` enum('DONE','DELAY','CANCEL','PROCCESS') NOT NULL,
  `part_number_wo` varchar(25) NOT NULL,
  `part_name_wo` varchar(25) NOT NULL,
  `part_wo` varchar(25) NOT NULL,
  `size_wo` varchar(25) NOT NULL,
  `plan_wo` int(10) NOT NULL,
  `actual_wo` int(10) NOT NULL,
  `ok_wo` int(10) NOT NULL,
  `ng_wo` int(10) NOT NULL,
  `deskripsi_wo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_wo_detail`
--

INSERT INTO `tbl_wo_detail` (`id_wo_detail`, `no_wo_detail`, `type_wo`, `status_wo`, `part_number_wo`, `part_name_wo`, `part_wo`, `size_wo`, `plan_wo`, `actual_wo`, `ok_wo`, `ng_wo`, `deskripsi_wo`) VALUES
(1, 'WO-20211113-0001', 'CORE', 'DELAY', 'ARGBT1-015', 'Gate Valve', 'Body', '1/2\"', 10, 0, 0, 0, '-'),
(2, 'WO-20211113-0001', 'CORE', 'DELAY', 'ARGBT1-020', 'Gate Valve', 'Body', '3/4\"', 10, 0, 0, 0, '-'),
(3, 'WO-20211113-0001', 'CORE', 'DELAY', 'ARGBT1-020', 'Gate Valve', 'Bonnet', '3/4\"', 10, 0, 0, 0, '-'),
(5, 'WO-20211113-0002', 'CASTING', 'DELAY', 'ARGBT1-020', 'Gate Valve', 'Body', '3/4\"', 9, 0, 0, 0, '-'),
(6, 'WO-20211113-0002', 'CASTING', 'DELAY', 'ARGBT1-032', 'Gate Valve', 'Disc', '1\"', 10, 0, 0, 0, '-'),
(7, 'WO-20211113-0003', 'FINISHING', 'PROCCESS', 'ARGBT1-100', 'Gate Valve', 'Bonnet', '4\"', 10, 0, 0, 0, '-'),
(8, 'WO-20211116-0004', 'CORE', 'CANCEL', 'ARGBT150-100', 'Gate Valve', 'Body', '4\"', 10, 0, 0, 0, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wo_finishing`
--

CREATE TABLE `tbl_wo_finishing` (
  `id_wo_finishing` int(11) NOT NULL,
  `no_wo_finishing` varchar(25) NOT NULL,
  `type_wo` varchar(25) NOT NULL,
  `part_number_finishing` varchar(25) NOT NULL,
  `part_name_finishing` varchar(25) NOT NULL,
  `part_finishing` varchar(25) NOT NULL,
  `size_finishing` varchar(25) NOT NULL,
  `plan_finishing` int(10) NOT NULL,
  `actual_finishing` int(10) NOT NULL,
  `ok_finishing` int(10) NOT NULL,
  `ng_finishing` int(10) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_material`
--
ALTER TABLE `tbl_material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tbl_part`
--
ALTER TABLE `tbl_part`
  ADD PRIMARY KEY (`id_part`);

--
-- Indeks untuk tabel `tbl_partname`
--
ALTER TABLE `tbl_partname`
  ADD PRIMARY KEY (`id_partname`);

--
-- Indeks untuk tabel `tbl_partnumber`
--
ALTER TABLE `tbl_partnumber`
  ADD PRIMARY KEY (`id_partnumber`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_part_number`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id_size`);

--
-- Indeks untuk tabel `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- Indeks untuk tabel `tbl_wo`
--
ALTER TABLE `tbl_wo`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tbl_wo_casting`
--
ALTER TABLE `tbl_wo_casting`
  ADD PRIMARY KEY (`id_wo_casting`);

--
-- Indeks untuk tabel `tbl_wo_core`
--
ALTER TABLE `tbl_wo_core`
  ADD PRIMARY KEY (`id_wo_core`);

--
-- Indeks untuk tabel `tbl_wo_detail`
--
ALTER TABLE `tbl_wo_detail`
  ADD PRIMARY KEY (`id_wo_detail`);

--
-- Indeks untuk tabel `tbl_wo_finishing`
--
ALTER TABLE `tbl_wo_finishing`
  ADD PRIMARY KEY (`id_wo_finishing`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `tbl_material`
--
ALTER TABLE `tbl_material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tbl_part`
--
ALTER TABLE `tbl_part`
  MODIFY `id_part` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_partname`
--
ALTER TABLE `tbl_partname`
  MODIFY `id_partname` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_partnumber`
--
ALTER TABLE `tbl_partnumber`
  MODIFY `id_partnumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_part_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_wo`
--
ALTER TABLE `tbl_wo`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_wo_casting`
--
ALTER TABLE `tbl_wo_casting`
  MODIFY `id_wo_casting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_wo_core`
--
ALTER TABLE `tbl_wo_core`
  MODIFY `id_wo_core` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_wo_detail`
--
ALTER TABLE `tbl_wo_detail`
  MODIFY `id_wo_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_wo_finishing`
--
ALTER TABLE `tbl_wo_finishing`
  MODIFY `id_wo_finishing` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
